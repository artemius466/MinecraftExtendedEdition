-- name: \\#EB6046\\Mine\\#46EB61\\craft \\#AFEB46\\[\\#EBE846\\EXT\\#AFEB46\\]\\#FFFFFF\\
-- description: \\#EB6046\\Y\\#FFFFFF\\ to \\#46EB61\\place\\#FFFFFF\\ block\n\\#EB6046\\Dpad UP\\#FFFFFF\\ to \\#46EB61\\change\\#FFFFFF\\ block\n\\#46EB61\\Switch\\#FFFFFF\\ builder mode with \\#EB6046\\Dpad DOWN\\#FFFFFF\\

local blockSw = false
local builderMode = true

local menuOpened = true

local ON_GRID = true
local GRID_SIZE = 200

local startDialog = true

local curObjectBeh = id_bhvCannon
local curObjectModel = E_MODEL_CANNON_BASE

---@param x number|integer X Position of rect
---@param y number|integer Y Position of rect
---@param width number|integer Width of rect
---@param height number|integer Height of rect
---@param thickness number|integer Thickness of outline
function djui_hud_render_rect_outlined(x, y, width, height, thickness)
    if opacity == nil then opacity = 255 end

    djui_hud_set_color(0, 0, 0, 180)
    djui_hud_render_rect(x, y, width, height)

    djui_hud_set_color(0, 0, 0, 100)
    djui_hud_render_rect(x - thickness, y - thickness, thickness, height + thickness * 2)
    djui_hud_render_rect(x + (width - thickness) + thickness, y, thickness, height + thickness)
    djui_hud_render_rect(x, y - thickness, width + thickness, thickness)
    djui_hud_render_rect(x, y + (height - thickness) + thickness, width, thickness)
end

---@param x number|integer X Position of button
---@param y number|integer Y Position of button
---@param width number|integer Width of button
---@param height number|integer Height of button
---@param thickness number|integer Thickness of outline
---@param selected boolean If button is selected
function djui_hud_button_render(x, y, width, height, thickness, selected)
    if opacity == nil then opacity = 255 end

    if selected == true then
        djui_hud_set_color(60, 60, 60, 255)
    else
        djui_hud_set_color(10, 10, 10, 255)
    end
    djui_hud_render_rect(x, y, width, height)
    if selected == true then
        djui_hud_set_color(0, 101, 173, 255)
    else
        djui_hud_set_color(30, 30, 30, 255)
    end
    djui_hud_render_rect(x - thickness, y - thickness, thickness, height + thickness * 2)
    djui_hud_render_rect(x + (width - thickness) + thickness, y, thickness, height + thickness)
    djui_hud_render_rect(x, y - thickness, width + thickness, thickness)
    djui_hud_render_rect(x, y + (height - thickness) + thickness, width, thickness)
end

local function find_object_index_from_name(name)
    for i, v in pairs(objects) do
        if v.name == name then
            return i
        end
    end
end

local function get_object_list_by_page(page)
    for i, v in pairs(objects) do
        
    end
end

local function to_grid(n)
	if ON_GRID then
		return math.floor(n/GRID_SIZE + .5) * GRID_SIZE
	else
		return n
	end
end

--outline place
function bhv_outlineblock_init(obj)
    obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
	cur_obj_scale(4.01)
	obj.oOpacity = 255
	obj.oFaceAnglePitch = 0
	obj.oFaceAngleYaw = 0
	obj.oFaceAngleRoll = 0
end

id_bhvOutlineblock = hook_behavior(nil, OBJ_LIST_DEFAULT, true, bhv_outlineblock_init, nil)

function find_place()
    local obj = obj_get_first(OBJ_LIST_DEFAULT)
    while obj ~= nil do
        if get_id_from_behavior(obj.behavior) == id_bhvOutlineblock then
            return obj
        end
        obj = obj_get_next(obj)
    end
    return nil
end

local place

function place_block(x,y,z)
	if builderMode then
		if not blockSw then
			local box = spawn_sync_object(
				id_bhvBreakableBox,
				E_MODEL_BREAKABLE_BOX,
				x,y,z,
				function (obj)
					obj.oOpacity = 255
					obj.oFaceAnglePitch = 0
					obj.oFaceAngleYaw = 0
					obj.oFaceAngleRoll = 0
				end
			)
		else
			local box = spawn_sync_object(
				curObjectBeh,
				curObjectModel,
				x,y,z,
				function (obj)
					obj.oOpacity = 255
					obj.oFaceAnglePitch = 0
					obj.oFaceAngleYaw = 0
					obj.oFaceAngleRoll = 0
				end
			)
		end
		
		play_sound(SOUND_GENERAL_BOX_LANDING, {x=x,y=y,z=z} )
	end
end

function mario_update_local(m)
	local rgt = math.sin(m.intendedYaw/32688 * math.pi)--idk the max angle value so i just went with this
	local fwd = math.cos(m.intendedYaw/32688 * math.pi)
	
	local in_air = m.pos.y - m.floorHeight > 5
	local crouching = (m.controller.buttonDown & Z_TRIG) ~= 0
	local posX = to_grid( m.pos.x + (in_air and 0 or rgt*GRID_SIZE) )
	local posY = to_grid( m.pos.y + ((in_air or crouching) and -GRID_SIZE or 0) )
	local posZ = to_grid( m.pos.z + (in_air and 0 or fwd*GRID_SIZE) )
	
	--update outline box pos
	place = find_place()--prob not best to run this every update
	if not place then
			place = spawn_sync_object(
				id_bhvOutlineblock,
				E_MODEL_EXCLAMATION_BOX_OUTLINE,
				posX,posY,posZ,
				nil
			)
	else
		if builderMode == true then
			place.oPosX = posX
			place.oPosY = posY - 8
			place.oPosZ = posZ
		else
			place.oPosX = 0
			place.oPosY = 0
			place.oPosZ = 0
		end
	end
	
	
	--place block
	if (m.controller.buttonPressed & Y_BUTTON) ~= 0 then
		local nearest = obj_get_nearest_object_with_behavior_id(place, id_bhvBreakableBox)
		
		if nearest then
			local dist = dist_between_objects(place, nearest)
			if dist >= GRID_SIZE-10 then
				place_block(posX,posY,posZ)
			else
				play_sound(SOUND_MENU_CAMERA_BUZZ, m.marioObj.header.gfx.cameraToObject)
			end
		else
			place_block(posX,posY,posZ)
		end
    end

	if (m.controller.buttonPressed & U_JPAD) ~= 0 then
		blockSw = not blockSw
        if not blockSw then
		    djui_popup_create("Enabled default block!", 1)
        else
		    djui_popup_create("Enabled custom block!", 1)
        end
    end

    if (m.controller.buttonPressed & D_JPAD) ~= 0 then
		builderMode = not builderMode
        if builderMode then
		    djui_popup_create("Enabled builder mode!", 1)
        else
		    djui_popup_create("Disabled builder mode!", 1)
        end
    end
end

function on_warp()
	if place then
		obj_mark_for_deletion(place)
	end
end

function on_start()
	if startDialog then
		startDialog = false
		djui_popup_create("Welcome to Minecraft [EXTENDED EDITION]!\nPlace blocks with Y\nSwitch block type with Dpad UP\nSwitch builder mode with Dpad DOWN", 4)
	end
end

function mario_update(m)
    if m.playerIndex == 0 then
        mario_update_local(m)
    end
end

local function change_block(block, behavior)
    if find_object_index_from_name(block) ~= nil then
        if behavior == nil then
            curObjectBeh = objects[find_object_index_from_name(block)].behavior
        elseif behavior == "" then
            curObjectBeh = objects[find_object_index_from_name(block)].behavior
        else
            curObjectBeh = objects[find_object_index_from_name(behavior)].behavior
        end
        curObjectModel = objects[find_object_index_from_name(block)].model

        djui_popup_create("Ok! Now additional object is \\#ffff00\\"..block, 1)
    else
        djui_popup_create("Object isn't found!", 1)
    end
end

function set_object_spawn(msg)
	msg = string.upper(msg)
    local args = {}
    for argument in msg:gmatch("%S+") do table.insert(args, argument) end

    change_block(args[1])
end

function split(inputstr, sep)
    if sep == nil then
      sep = "%s"
    end
    local t = {}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
      table.insert(t, str)
    end
    return t
end

function handle_command(msg)
	local pu = string.upper(msg)
    local args = split(pu, nil)

    if args[1] == "SET" then
        change_block(args[2], nil)
    elseif args[1] == "SWITCH" then
        blockSw = not blockSw
        if not blockSw then
		    djui_chat_message_create("Disabled custom block!")
        else
		    djui_chat_message_create("Enabled custom block!")
        end
    elseif args[1] == "TOGGLE" then
        builderMode = not builderMode
        if builderMode then
		    djui_chat_message_create("Enabled builder mode!")
        else
		    djui_chat_message_create("Disabled builder mode!")
        end
    elseif args[1] == "HELP" then
        local txt = "COMMAND | USAGE\nset            | Sets custom block\nswitch       | Toggles custom/default block\ntoggle        | Toggles mod\nhelp            | This command"
        -- djui_chat_message_create("COMMAND | USAGE")
        -- djui_chat_message_create("set     | Sets custom block")
        -- djui_chat_message_create("switch  | Toggles custom/default block")
        -- djui_chat_message_create("toggle  | Toggles mod")
        -- djui_chat_message_create("help    | This command")
        djui_chat_message_create(txt)
    elseif args[1] == "SELECT" then
        menuOpened = not menuOpened
    else
        djui_chat_message_create("I don't recognize this. Type /mc help for more info.")
    end

    return true
end


hook_event(HOOK_ON_WARP, on_warp)
hook_event(HOOK_MARIO_UPDATE, mario_update)
hook_event(HOOK_ON_LEVEL_INIT, on_start)
hook_chat_command("mc", "\\#00ffff\\[set|switch|toggle|select|help]\\#dcdcdc\\", handle_command)

-- GUI
local selectedButtonName = ""
local selectedButton = 1
local page = 1
local cooldown = get_global_timer()

function on_hud_render()
    if menuOpened == true then
        local screenWidth = djui_hud_get_screen_width()
        local screenHeight = djui_hud_get_screen_height()

        djui_hud_set_color(0, 0, 0, 70)
        djui_hud_render_rect(0, 0, screenWidth, screenHeight)

        local width = screenWidth/4
        local height = screenHeight/1.2

        djui_hud_render_rect_outlined((screenWidth/2)-(width/2), (screenHeight/2)-(height/2), width, height, 5)

        local buttonWidth = width/1.2
        local buttonHeight = height/16

        local i = 1
        while i < 14 do
            if selectedButton == i then
                djui_hud_button_render((width/2)-(buttonWidth/2)+(screenWidth/2)-(width/2), ((buttonHeight+(buttonHeight/5))*i)+height/20, buttonWidth, buttonHeight, 2, true)
            else
                djui_hud_button_render((width/2)-(buttonWidth/2)+(screenWidth/2)-(width/2), ((buttonHeight+(buttonHeight/5))*i)+height/20, buttonWidth, buttonHeight, 2, false)
            end
            i = i + 1
        end

        local localPlayer = gMarioStates[0]

        if get_global_timer() > cooldown then
            if localPlayer.controller.stickY > 30 then
                if not (selectedButton == 1) then
                    selectedButton = selectedButton - 1
                else
                    selectedButton = 13
                end
                cooldown = get_global_timer() + 4
            end

            if localPlayer.controller.stickY < -30 then
                if not (selectedButton == 13) then
                    selectedButton = selectedButton + 1
                else
                    selectedButton = 1
                end
                cooldown = get_global_timer() + 4
            end

            if localPlayer.controller.stickX > 30 then
                if not (selectedButton == 1) then
                    page = page - 1
                end
                cooldown = get_global_timer() + 4
            end

            if localPlayer.controller.stickX < -30 then
                if not (selectedButton == 13) then
                    page = page + 1
                end
                cooldown = get_global_timer() + 4
            end
        end
    end
end

hook_event(HOOK_ON_HUD_RENDER, on_hud_render)




