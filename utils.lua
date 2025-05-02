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

function djui_hud_button_render(x, y, width, height, thickness, selected, text)
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

    djui_hud_set_color(255, 255, 255, 255)

    local screenWidth = djui_hud_get_screen_width()
    local screenHeight = djui_hud_get_screen_height()
    local screenSize = screenWidth+screenHeight

    local fontSize = screenSize/100
    local minFontSize = (fontSize - 0) / (30 - 0)

    local textLen = djui_hud_measure_text(text)*minFontSize
    local tx = (width/2)-(textLen/2)+x
    local ty = (height/2)-(fontSize/2)+y
    djui_hud_print_text(text, tx, ty, minFontSize)
end