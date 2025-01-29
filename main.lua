-- name: \\#EB6046\\Mine\\#46EB61\\craft \\#AFEB46\\[\\#EBE846\\EXT\\#AFEB46\\]\\#FFFFFF\\
-- description: \\#EB6046\\Y\\#FFFFFF\\ to \\#46EB61\\place\\#FFFFFF\\ block\n\\#EB6046\\Dpad UP\\#FFFFFF\\ to \\#46EB61\\change\\#FFFFFF\\ block\n\\#46EB61\\Switch\\#FFFFFF\\ builder mode with \\#EB6046\\Dpad DOWN\\#FFFFFF\\

local objects = {
    {name = "1UP", model = E_MODEL_1UP, behavior = id_bhv1Up},
    {name = "1UP_JUMP_ON_APPROACH", model = E_MODEL_1UP, behavior = id_bhv1upJumpOnApproach},
    {name = "1UP_RUNNING_AWAY", model = E_MODEL_1UP, behavior = id_bhv1upRunningAway},
    {name = "1UP_SLIDING", model = E_MODEL_1UP, behavior = id_bhv1upSliding},
    {name = "1UP_WALKING", model = E_MODEL_1UP, behavior = id_bhv1upWalking},
    {name = "BITS_ARROW_PLATFORM", model = E_MODEL_BITS_ARROW_PLATFORM, behavior = id_bhvActivatedBackAndForthPlatform},
    {name = "BITFS_ELEVATOR", model = E_MODEL_BITFS_ELEVATOR, behavior = id_bhvActivatedBackAndForthPlatform},
    {name = "ALPHA_BOO_KEY", model = E_MODEL_BETA_BOO_KEY, behavior = id_bhvAlphaBooKey},
    {name = "ANIMATED_TEXTURE", model = E_MODEL_SPARKLES_ANIMATION, behavior = id_bhvAnimatedTexture},
    {name = "YOSHI_EGG", model = E_MODEL_YOSHI_EGG, behavior = id_bhvAnimatedTexture},
    {name = "BITS_STAIRCASE", model = E_MODEL_BITS_STAIRCASE, behavior = id_bhvAnimatesOnFloorSwitchPress},
    {name = "BALCONY_BIG_BOO", model = E_MODEL_BOO, behavior = id_bhvBalconyBigBoo},
    {name = "BBH_TILTING_TRAP", model = E_MODEL_BBH_TILTING_FLOOR_PLATFORM, behavior = id_bhvBbhTiltingTrapPlatform},
    {name = "BBH_TUMBLING_PLATFORM", model = E_MODEL_BBH_TUMBLING_PLATFORM, behavior = id_bhvBbhTumblingBridge},
    {name = "BEGINNING_PEACH", model = E_MODEL_PEACH, behavior = id_bhvBeginningPeach},
    {name = "BETA_BOO_KEY", model = E_MODEL_BETA_BOO_KEY, behavior = id_bhvBeginningPeach},
    {name = "BETA_CHEST_BOTTOM", model = E_MODEL_TREASURE_CHEST_BASE, behavior = id_bhvBetaChestBottom},
    {name = "BETA_CHEST_LID", model = E_MODEL_TREASURE_CHEST_LID, behavior = id_bhvBetaChestLid},
    {name = "BETA_FISH_SPLASH_SPAWNER", model = E_MODEL_STAR, behavior = id_bhvBetaFishSplashSpawner},
    {name = "BETA_HOLDABLE_OBJECT", model = E_MODEL_STAR, behavior = id_bhvBetaHoldableObject},
    {name = "BETA_MOVING_FLAME", model = E_MODEL_RED_FLAME, behavior = id_bhvBetaMovingFlames},
    {name = "BETA_MOVING_FLAMES", model = E_MODEL_RED_FLAME, behavior = id_bhvBetaMovingFlamesSpawn},
    {name = "BETA_TRAMPOLINE_TOP", model = E_MODEL_TRAMPOLINE, behavior = id_bhvBetaTrampolineTop},
    {name = "BIG_BOULDER", model = E_MODEL_HMC_ROLLING_ROCK, behavior = id_bhvBigBoulder},
    {name = "BIG_BOULDER_GENERATOR", model = E_MODEL_STAR, behavior = id_bhvBigBoulderGenerator},
    {name = "BIG_BULLY", model = E_MODEL_BULLY_BOSS, behavior = id_bhvBigBully},
    {name = "BIG_CHILL_BULLY", model = E_MODEL_BIG_CHILL_BULLY, behavior = id_bhvBigChillBully},
    {name = "BIRD", model = E_MODEL_BIRDS, behavior = id_bhvBird},
    {name = "BIRD_SOUNDS", model = E_MODEL_STAR, behavior = id_bhvBirdsSoundLoop},
    {name = "BITFS_SINKING_CAGE", model = E_MODEL_BITFS_SINKING_CAGE_PLATFORM, behavior = id_bhvBitfsSinkingCagePlatform},
    {name = "BITFS_SINKING_PLATFORMS", model = E_MODEL_BITFS_SINKING_PLATFORMS, behavior = id_bhvBitfsSinkingPlatforms},
    {name = "BITFS_TILTING_PYRAMID", model = E_MODEL_BITFS_TILTING_SQUARE_PLATFORM, behavior = id_bhvBitfsTiltingInvertedPyramid},
    {name = "BOWSER_BLACK_SMOKE", model = E_MODEL_BOWSER_SMOKE, behavior = id_bhvBlackSmokeBowser},
    {name = "MARIO_BLACK_SMOKE", model = E_MODEL_BURN_SMOKE, behavior = id_bhvBlackSmokeMario},
    {name = "UPWARD_BLACK_SMOKE", model = E_MODEL_BURN_SMOKE, behavior = id_bhvBlackSmokeUpward},
    {name = "UNUSED_BLACK_SMOKE", model = E_MODEL_BURN_SMOKE_UNUSED, behavior = id_bhvBlackSmokeMario},
    {name = "BLUE_BOWSER_FLAME", model = E_MODEL_BLUE_FLAME, behavior = id_bhvBlueBowserFlame},
    {name = "BLUE_COIN_JUMPING", model = E_MODEL_BLUE_COIN, behavior = id_bhvBlueCoinJumping},
    {name = "BLUE_COIN_SLIDING", model = E_MODEL_BLUE_COIN, behavior = id_bhvBlueCoinSliding},
    {name = "BLUE_COIN_SWITCH", model = E_MODEL_BLUE_COIN_SWITCH, behavior = id_bhvBlueCoinSwitch},
    {name = "BLUE_FISH", model = E_MODEL_FISH, behavior = id_bhvBlueFish},
    {name = "BLUE_FLAME_GROUP", model = E_MODEL_BLUE_FLAME, behavior = id_bhvBlueFlamesGroup},
    {name = "BOB_BOWLING_BALL_SPAWNER", model = E_MODEL_STAR, behavior = id_bhvBobBowlingBallSpawner},
    {name = "BOBOMB", model = E_MODEL_BLACK_BOBOMB, behavior = id_bhvBobomb},
    {name = "BOBOMB_ANCHOR_MARIO", model = E_MODEL_STAR, behavior = id_bhvBobombAnchorMario},
    {name = "BOBOMB_BUDDY", model = E_MODEL_BOBOMB_BUDDY, behavior = id_bhvBobombBuddy},
    {name = "CANNON_BOBOMB_BUDDY", model = E_MODEL_BOBOMB_BUDDY, behavior = id_bhvBobombBuddyOpensCannon},
    {name = "BOBOMB_BULLY_DEATH_SMOKE", model = E_MODEL_SMOKE, behavior = id_bhvBobombBullyDeathSmoke},
    {name = "BOBOMB_FUSE_SMOKE", model = E_MODEL_SMOKE, behavior = id_bhvBobombFuseSmoke},
    {name = "BOO", model = E_MODEL_BOO, behavior = id_bhvBoo},
    {name = "BBH_STAIRCASE_STEP", model = E_MODEL_BBH_STAIRCASE_STEP, behavior = id_bhvBooBossSpawnedBridge},
    {name = "BOO_IN_CASTLE", model = E_MODEL_BOO_CASTLE, behavior = id_bhvBooInCastle},
    {name = "BOUNCING_FIREBALL", model = E_MODEL_RED_FLAME, behavior = id_bhvBouncingFireball},
    {name = "BOUNCING_FIREBALL_FLAME", model = E_MODEL_RED_FLAME, behavior = id_bhvBouncingFireballFlame},
    {name = "BOWLING_BALL", model = E_MODEL_BOWLING_BALL, behavior = id_bhvBowlingBall},
    {name = "BOWSER", model = E_MODEL_BOWSER, behavior = id_bhvBowser},
    {name = "BOWSER2", model = E_MODEL_BOWSER2, behavior = id_bhvBowser},
    {name = "BOWSER_BODY_ANCHOR", model = E_MODEL_STAR, behavior = id_bhvBowserBodyAnchor},
    {name = "BOWSER_BOMB", model = E_MODEL_BOWSER_BOMB, behavior = id_bhvBowserBomb},
    {name = "BOWSER_BOMB_EXPLOSION", model = E_MODEL_BOWSER_FLAMES, behavior = id_bhvBowserBombExplosion},
    {name = "BOWSER_KEY_COURSE_EXIT", model = E_MODEL_BOWSER_KEY_CUTSCENE, behavior = id_bhvBowserKeyCourseExit},
    {name = "BOWSER_KEY_UNLOCK_DOOR", model = E_MODEL_BOWSER_KEY_CUTSCENE, behavior = id_bhvBowserKeyUnlockDoor},
    {name = "BOWSER_SHOCKWAVE", model = E_MODEL_BOWSER_WAVE, behavior = id_bhvBowserShockWave},
    {name = "BOWSER_SUB", model = E_MODEL_DDD_BOWSER_SUB, behavior = id_bhvBowsersSub},
    {name = "BOWSER_SUB_DOOR", model = E_MODEL_DDD_BOWSER_SUB_DOOR, behavior = id_bhvBowserSubDoor},
    {name = "BOWSER_TAIL_ANCHOR", model = E_MODEL_STAR, behavior = id_bhvBowserTailAnchor},
    {name = "BREAKABLE_BOX", model = E_MODEL_BREAKABLE_BOX, behavior = id_bhvBreakableBox},
    {name = "ERROR", model = E_MODEL_ERROR_MODEL, behavior = id_bhvBreakableBox},
    {name = "SMALL_BREAKABLE_BOX", model = E_MODEL_BREAKABLE_BOX_SMALL, behavior = id_bhvBreakableBoxSmall},
    {name = "BREATH_PARTICLE_SPAWNER", model = E_MODEL_STAR, behavior = id_bhvBreathParticleSpawner},
    {name = "BUB", model = E_MODEL_BUB, behavior = id_bhvBub},
    {name = "BUBBA", model = E_MODEL_BUBBA, behavior = id_bhvBubba},
    {name = "BULLET_BILL", model = E_MODEL_BULLET_BILL, behavior = id_bhvBulletBill},
    {name = "BUTTERFLY", model = E_MODEL_BUTTERFLY, behavior = id_bhvButterfly},
    {name = "CAMERA_LAKITU", model = E_MODEL_LAKITU, behavior = id_bhvCameraLakitu},
    {name = "CANNON", model = E_MODEL_CANNON_BASE, behavior = id_bhvCannon},
    {name = "CANNON_BARREL", model = E_MODEL_CANNON_BARREL, behavior = id_bhvCannonBarrel},
    {name = "CANNON_CLOSED", model = E_MODEL_DL_CANNON_LID, behavior = id_bhvCannonClosed},
    {name = "CAP_SWITCH", model = E_MODEL_CAP_SWITCH, behavior = id_bhvCapSwitch},
    {name = "CAP_SWITCH_EXCLAMATION", model = E_MODEL_CAP_SWITCH_EXCLAMATION, behavior = id_bhvCapSwitch},
    {name = "CAP_SWITCH_BASE", model = E_MODEL_CAP_SWITCH_BASE, behavior = id_bhvCapSwitchBase},
    {name = "CASTLE_FLAG", model = E_MODEL_CASTLE_GROUNDS_FLAG, behavior = id_bhvCastleFlagWaving},
    {name = "CASTLE_FLOOR_TRAP", model = E_MODEL_CASTLE_BOWSER_TRAP, behavior = id_bhvCastleFloorTrap},
    {name = "CHAIN_CHOMP", model = E_MODEL_CHAIN_CHOMP, behavior = id_bhvChainChomp},
    {name = "CHAIN_CHOMP_GATE", model = E_MODEL_BOB_CHAIN_CHOMP_GATE, behavior = id_bhvChainChompGate},
    {name = "CHECKERBOARD_ELEVATOR", model = E_MODEL_CHECKERBOARD_PLATFORM, behavior = id_bhvCheckerboardElevatorGroup},
    {name = "CHUCKYA", model = E_MODEL_CHUCKYA, behavior = id_bhvChuckya},
    {name = "CHUCKYA_ANCHOR_MARIO", model = E_MODEL_STAR, behavior = id_bhvChuckyaAnchorMario},
    {name = "CIRCLING_AMP", model = E_MODEL_AMP, behavior = id_bhvCirclingAmp},
    {name = "CLAM_SHELL", model = E_MODEL_CLAM_SHELL, behavior = id_bhvClamShell},
    {name = "CLOCK_HOUR_HAND", model = E_MODEL_CASTLE_CLOCK_HOUR_HAND, behavior = id_bhvClockHourHand},
    {name = "CLOCK_MINUTE_HAND", model = E_MODEL_CASTLE_CLOCK_MINUTE_HAND, behavior = id_bhvClockMinuteHand},
    {name = "CLOUD", model = E_MODEL_FWOOSH, behavior = id_bhvCloud},
    {name = "COFFIN", model = E_MODEL_BBH_WOODEN_TOMB, behavior = id_bhvCoffin},
    {name = "COFFIN_SPAWNER", model = E_MODEL_STAR, behavior = id_bhvCoffinSpawner},
    {name = "COIN_FORMATION", model = E_MODEL_STAR, behavior = id_bhvCoinFormation},
    {name = "CONTROLLABLE_PLATFORM", model = E_MODEL_HMC_METAL_PLATFORM, behavior = id_bhvControllablePlatform},
    {name = "DDD_MOVING_POLE", model = E_MODEL_DDD_POLE, behavior = id_bhvDddMovingPole},
    {name = "CLOCK_PENDULUM", model = E_MODEL_CASTLE_CLOCK_PENDULUM, behavior = id_bhvDecorativePendulum},
    {name = "DIRT_PARTICLE", model = E_MODEL_DIRT_ANIMATION, behavior = id_bhvDirtParticleSpawner},
    {name = "DONUT_PLATFORM", model = E_MODEL_RR_DONUT_PLATFORM, behavior = id_bhvDonutPlatform},
    {name = "CASTLE_DOOR", model = E_MODEL_CASTLE_CASTLE_DOOR, behavior = id_bhvDoor},
    {name = "BBH_DOOR", model = E_MODEL_BBH_HAUNTED_DOOR, behavior = id_bhvDoor},
    {name = "HMC_WOODEN_DOOR", model = E_MODEL_HMC_WOODEN_DOOR, behavior = id_bhvDoor},
    {name = "HMC_METAL_DOOR", model = E_MODEL_HMC_METAL_DOOR, behavior = id_bhvDoor},
    {name = "HMC_HAZY_MAZE_DOOR", model = E_MODEL_HMC_HAZY_MAZE_DOOR, behavior = id_bhvDoor},
    {name = "CCM_CABIN_DOOR", model = E_MODEL_CCM_CABIN_DOOR, behavior = id_bhvDoor},
    {name = "CASTLE_METAL_DOOR", model = E_MODEL_CASTLE_METAL_DOOR, behavior = id_bhvDoor},
    {name = "CASTLE_DOOR_0_STARS", model = E_MODEL_CASTLE_DOOR_0_STARS, behavior = id_bhvDoor},
    {name = "CASTLE_DOOR_1_STARS", model = E_MODEL_CASTLE_DOOR_1_STAR, behavior = id_bhvDoor},
    {name = "CASTLE_DOOR_3_STARS", model = E_MODEL_CASTLE_DOOR_3_STARS, behavior = id_bhvDoor},
    {name = "CASTLE_KEY_DOOR", model = E_MODEL_CASTLE_KEY_DOOR, behavior = id_bhvDoor},
    {name = "DORRIE", model = E_MODEL_DORRIE, behavior = id_bhvDorrie},
    {name = "ENEMY_LAKITU", model = E_MODEL_ENEMY_LAKITU, behavior = id_bhvEnemyLakitu},    
    {name = "EXPLOSION", model = E_MODEL_EXPLOSION, behavior = id_bhvExplosion},
    {name = "EYEROK_BOSS", model = E_MODEL_STAR, behavior = id_bhvEyerokBoss},
    {name = "EYEROK_LEFT_HAND", model = E_MODEL_EYEROK_LEFT_HAND, behavior = id_bhvEyerokHand},
    {name = "EYEROK_RIGHT_HAND", model = E_MODEL_EYEROK_RIGHT_HAND, behavior = id_bhvEyerokHand},
    {name = "FALLING_BOWSER_PLATFORM_1", model = E_MODEL_BOWSER_3_FALLING_PLATFORM_1, behavior = id_bhvFallingBowserPlatform},
    {name = "FALLING_BOWSER_PLATFORM_2", model = E_MODEL_BOWSER_3_FALLING_PLATFORM_2, behavior = id_bhvFallingBowserPlatform},
    {name = "FALLING_BOWSER_PLATFORM_3", model = E_MODEL_BOWSER_3_FALLING_PLATFORM_3, behavior = id_bhvFallingBowserPlatform},
    {name = "FALLING_BOWSER_PLATFORM_4", model = E_MODEL_BOWSER_3_FALLING_PLATFORM_4, behavior = id_bhvFallingBowserPlatform},
    {name = "FALLING_BOWSER_PLATFORM_5", model = E_MODEL_BOWSER_3_FALLING_PLATFORM_5, behavior = id_bhvFallingBowserPlatform},
    {name = "FALLING_BOWSER_PLATFORM_6", model = E_MODEL_BOWSER_3_FALLING_PLATFORM_6, behavior = id_bhvFallingBowserPlatform},
    {name = "FALLING_BOWSER_PLATFORM_7", model = E_MODEL_BOWSER_3_FALLING_PLATFORM_7, behavior = id_bhvFallingBowserPlatform},
    {name = "FALLING_BOWSER_PLATFORM_8", model = E_MODEL_BOWSER_3_FALLING_PLATFORM_8, behavior = id_bhvFallingBowserPlatform},
    {name = "FALLING_BOWSER_PLATFORM_9", model = E_MODEL_BOWSER_3_FALLING_PLATFORM_9, behavior = id_bhvFallingBowserPlatform},
    {name = "FALLING_BOWSER_PLATFORM_10", model = E_MODEL_BOWSER_3_FALLING_PLATFORM_10, behavior = id_bhvFallingBowserPlatform},
    {name = "FALLING_PILLAR", model = E_MODEL_JRB_FALLING_PILLAR, behavior = id_bhvFallingPillar},
    {name = "BITS_FERRIS_WHEEL_AXLE", model = E_MODEL_BITS_FERRIS_WHEEL_AXLE, behavior = id_bhvFerrisWheelAxle},
    {name = "BITDW_FERRIS_WHEEL_AXLE", model = E_MODEL_BITDW_FERRIS_WHEEL_AXLE, behavior = id_bhvFerrisWheelAxle},
    {name = "FEW_BLUE_FISH_SPAWNER", model = E_MODEL_STAR, behavior = id_bhvFewBlueFishSpawner},
    {name = "FIRE_PIRANHA_PLANT", model = E_MODEL_PIRANHA_PLANT, behavior = id_bhvFirePiranhaPlant},
    {name = "FIRE_SPITTER", model = E_MODEL_BOWLING_BALL, behavior = id_bhvFireSpitter},
    {name = "FISH_SPAWNER", model = E_MODEL_STAR, behavior = id_bhvFishSpawner},
    {name = "FLAME", model = E_MODEL_RED_FLAME, behavior = id_bhvFlame},
    {name = "FLAME_BOUNCING", model = E_MODEL_RED_FLAME, behavior = id_bhvFlameBouncing},
    {name = "FLAME_BOWSER", model = E_MODEL_BLUE_FLAME, behavior = id_bhvFlameBowser},
    {name = "LARGE_FLAME_BURNING_OUT", model = E_MODEL_RED_FLAME, behavior = id_bhvFlameLargeBurningOut},
    {name = "MOVING_FLAME_FORWARD_GROWING", model = E_MODEL_RED_FLAME, behavior = id_bhvFlameMovingForwardGrowing},
    {name = "FLAMETHROWER", model = E_MODEL_STAR, behavior = id_bhvFlamethrower},
    {name = "FLOOR_SWITCH_ANIMATES_OBJECT", model = E_MODEL_PURPLE_SWITCH, behavior = id_bhvFloorSwitchAnimatesObject},
    {name = "FLOOR_SWITCH_GRILLS", model = E_MODEL_PURPLE_SWITCH, behavior = id_bhvFloorSwitchGrills},
    {name = "FLOOR_SWITCH_HARDCODED_MODEL", model = E_MODEL_PURPLE_SWITCH, behavior = id_bhvFloorSwitchHardcodedModel},
    {name = "FLOOR_SWITCH_HIDDEN_OBJECTS", model = E_MODEL_PURPLE_SWITCH, behavior = id_bhvFloorSwitchHiddenObjects},
    {name = "FLOOR_TRAP_IN_CASTLE", model = E_MODEL_CASTLE_BOWSER_TRAP, behavior = id_bhvFloorTrapInCastle},
    {name = "FLY_GUY", model = E_MODEL_FLYGUY, behavior = id_bhvFlyGuy},
    {name = "FLYING_BOOK", model = E_MODEL_BOOKEND, behavior = id_bhvFlyingBookend},
    {name = "FREE_BOWLING_BALL", model = E_MODEL_BOWLING_BALL, behavior = id_bhvFreeBowlingBall},
    {name = "GHOST_HUNT_BIG_BOO", model = E_MODEL_BOO, behavior = id_bhvGhostHuntBigBoo},
    {name = "GHOST_HUNT_BOO", model = E_MODEL_BOO, behavior = id_bhvGhostHuntBoo},
    {name = "GIANT_POLE", model = E_MODEL_STAR, behavior = id_bhvGiantPole},
    {name = "GOOMBA", model = E_MODEL_GOOMBA, behavior = id_bhvGoomba},
    {name = "GOOMBA_TRIPLET_SPAWNER", model = E_MODEL_STAR, behavior = id_bhvGoombaTripletSpawner},
    {name = "GRAND_STAR", model = E_MODEL_STAR, behavior = id_bhvGrandStar},
    {name = "GRINDEL", model = E_MODEL_SSL_GRINDEL, behavior = id_bhvGrindel},
    {name = "HAUNTED_BOOKSHELF", model = E_MODEL_BBH_MOVING_BOOKSHELF, behavior = id_bhvHauntedBookshelf},
    {name = "HAUNTED_CHAIR", model = E_MODEL_HAUNTED_CHAIR, behavior = id_bhvHauntedChair},
    {name = "HEAVE_HO", model = E_MODEL_HEAVE_HO, behavior = id_bhvHeaveHo},
    {name = "HIDDEN_1UP", model = E_MODEL_1UP, behavior = id_bhvHidden1up},
    {name = "HIDDEN_1UP_IN_POLE", model = E_MODEL_1UP, behavior = id_bhvHidden1upInPole},
    {name = "HIDDEN_1UP_IN_POLE_SPAWNER", model = E_MODEL_1UP, behavior = id_bhvHidden1upInPoleSpawner},
    {name = "HIDDEN_1UP_IN_POLE_TRIGGER", model = E_MODEL_1UP, behavior = id_bhvHidden1upInPoleTrigger},
    {name = "HIDDEN_1UP_TRIGGER", model = E_MODEL_1UP, behavior = id_bhvHidden1upTrigger},
    {name = "HIDDEN_AT_120_STARS", model = E_MODEL_CASTLE_GROUNDS_CANNON_GRILL, behavior = id_bhvHiddenAt120Stars},
    {name = "HIDDEN_BLUE_COIN", model = E_MODEL_BLUE_COIN, behavior = id_bhvHiddenBlueCoin},
    {name = "HIDDEN_OBJECT", model = E_MODEL_BREAKABLE_BOX, behavior = id_bhvHiddenObject},
    {name = "HIDDEN_RED_COIN_STAR", model = E_MODEL_STAR, behavior = id_bhvHiddenRedCoinStar},
    {name = "HIDDEN_STAIRCASE_STEP", model = E_MODEL_BBH_STAIRCASE_STEP, behavior = id_bhvHiddenStaircaseStep},
    {name = "HIDDEN_STAR", model = E_MODEL_STAR, behavior = id_bhvHiddenStar},
    {name = "HIDDEN_STAR_TRIGGER", model = E_MODEL_STAR, behavior = id_bhvHiddenStarTrigger},
    {name = "HMC_ELEVATOR", model = E_MODEL_HMC_ELEVATOR_PLATFORM, behavior = id_bhvHmcElevatorPlatform},
    {name = "HOMING_AMP", model = E_MODEL_AMP, behavior = id_bhvHomingAmp},
    {name = "HOOT", model = E_MODEL_HOOT, behavior = id_bhvHoot},
    {name = "HORIZONTAL_GRINDEL", model = E_MODEL_SSL_GRINDEL, behavior = id_bhvHorizontalGrindel},
    {name = "IDLE_WATER_WAVE", model = E_MODEL_IDLE_WATER_WAVE, behavior = id_bhvIdleWaterWave},
    {name = "INITIALIZE_CHANGING_WATER_LEVEL", model = E_MODEL_STAR, behavior = id_bhvInitializeChangingWaterLevel},
    {name = "IN_SUNKEN_SHIP_1", model = E_MODEL_STAR, behavior = id_bhvInSunkenShip},
    {name = "IN_SUNKEN_SHIP_2", model = E_MODEL_STAR, behavior = id_bhvInSunkenShip2},
    {name = "IN_SUNKEN_SHIP_3", model = E_MODEL_STAR, behavior = id_bhvInSunkenShip3},
    {name = "JET_STREAM", model = E_MODEL_STAR, behavior = id_bhvJetStream},
    {name = "JET_STREAM_RING_SPAWNER", model = E_MODEL_STAR, behavior = id_bhvJetStreamRingSpawner},
    {name = "JET_STREAM_WATER_RING", model = E_MODEL_WATER_RING, behavior = id_bhvJetStreamWaterRing},
    {name = "JRB_FLOATING_PLATFORM", model = E_MODEL_JRB_FLOATING_PLATFORM, behavior = id_bhvJrbFloatingPlatform},
    {name = "JRB_SLIDING_BOX", model = E_MODEL_JRB_SLIDING_BOX, behavior = id_bhvJrbSlidingBox},
    {name = "JUMPING_BOX", model = E_MODEL_BREAKABLE_BOX_SMALL, behavior = id_bhvJumpingBox},
    {name = "KICKABLE_BOARD", model = E_MODEL_WF_KICKABLE_BOARD, behavior = id_bhvKickableBoard},
    {name = "KING_BOBOMB", model = E_MODEL_KING_BOBOMB, behavior = id_bhvKingBobomb},
    {name = "KLEPTO", model = E_MODEL_KLEPTO, behavior = id_bhvKlepto},
    {name = "KOOPA", model = E_MODEL_KOOPA_WITH_SHELL, behavior = id_bhvKoopa},
    {name = "KOOPA_WITHOUT_SHELL", model = E_MODEL_KOOPA_WITHOUT_SHELL, behavior = id_bhvKoopa},
    {name = "KOOPA_FLAG", model = E_MODEL_KOOPA_FLAG, behavior = id_bhvKoopaFlag},
    {name = "KOOPA_RACE_ENDPOINT", model = E_MODEL_KOOPA_FLAG, behavior = id_bhvKoopaRaceEndpoint},
    {name = "KOOPA_SHELL", model = E_MODEL_KOOPA_SHELL, behavior = id_bhvKoopaShell},
    {name = "KOOPA_SHELL_UNDERWATER", model = E_MODEL_KOOPA_SHELL, behavior = id_bhvKoopaShellUnderwater},
    {name = "LARGE_BOMP", model = E_MODEL_STAR, behavior = id_bhvLargeBomp},
    {name = "LLL_BOWSER_PUZZLE", model = E_MODEL_STAR, behavior = id_bhvLllBowserPuzzle},
    {name = "LLL_DRAWBRIDGE", model = E_MODEL_LLL_DRAWBRIDGE_PART, behavior = id_bhvLllDrawbridge},
    {name = "LLL_WOOD_BRIDGE", model = E_MODEL_LLL_WOOD_BRIDGE, behavior = id_bhvLllFloatingWoodBridge},
    {name = "LLL_OCTAGON", model = E_MODEL_LLL_MOVING_OCTAGONAL_MESH_PLATFORM, behavior = id_bhvLllMovingOctagonalMeshPlatform},
    {name = "LLL_ROLLING_LOG", model = E_MODEL_LLL_ROLLING_LOG, behavior = id_bhvLllRollingLog},
    {name = "LLL_ROTATING_FIRE_BLOCK", model = E_MODEL_LLL_ROTATING_BLOCK_FIRE_BARS, behavior = id_bhvLllRotatingBlockWithFireBars},
    {name = "LLL_ROTATING_HEXAGON_PLATFORM", model = E_MODEL_STAR, behavior = id_bhvLllRotatingHexagonalPlatform},
    {name = "LLL_ROTATING_HEXAGON", model = E_MODEL_LLL_ROTATING_HEXAGONAL_RING, behavior = id_bhvLllRotatingHexagonalRing},
    {name = "LLL_SINKING_RECTANGLE", model = E_MODEL_LLL_SINKING_RECTANGULAR_PLATFORM, behavior = id_bhvLllSinkingRectangularPlatform},
    {name = "LLL_SINKING_ROCK", model = E_MODEL_LLL_SINKING_ROCK_BLOCK, behavior = id_bhvLllSinkingRockBlock},
    {name = "LLL_SINKING_SQUARES", model = E_MODEL_LLL_SINKING_SQUARE_PLATFORMS, behavior = id_bhvLllSinkingSquarePlatforms},
    {name = "LLL_TILTING_PYRAMID", model = E_MODEL_LLL_TILTING_SQUARE_PLATFORM, behavior = id_bhvLllTiltingInvertedPyramid},
    {name = "LLL_TUMBLING_BRIDGE", model = E_MODEL_LLL_LARGE_FALLING_PLATFORM, behavior = id_bhvLllTumblingBridge},
    {name = "LLL_VOLCANO_FALLING_TRAP", model = E_MODEL_LLL_VOLCANO_FALLING_TRAP, behavior = id_bhvLllVolcanoFallingTrap},
    {name = "MACRO_UKIKI", model = E_MODEL_UKIKI, behavior = id_bhvMacroUkiki},
    {name = "MAD_PIANO", model = E_MODEL_MAD_PIANO, behavior = id_bhvMadPiano},
    {name = "MANTA_RAY", model = E_MODEL_MANTA_RAY, behavior = id_bhvMantaRay},
    {name = "MANTA_RAY_RING", model = E_MODEL_WATER_RING, behavior = id_bhvMantaRayWaterRing},
    {name = "MANY_BLUE_FISH_SPAWNER", model = E_MODEL_STAR, behavior = id_bhvManyBlueFishSpawner},
    {name = "MERRY_GO_ROUND", model = E_MODEL_BBH_MERRY_GO_ROUND, behavior = id_bhvMerryGoRound},
    {name = "MERRY_GO_ROUND_BIG_BOO", model = E_MODEL_BOO, behavior = id_bhvMerryGoRoundBigBoo},
    {name = "MERRY_GO_ROUND_BOO", model = E_MODEL_BOO, behavior = id_bhvMerryGoRoundBoo},
    {name = "BBH_MESH_ELEVATOR", model = E_MODEL_BBH_MESH_ELEVATOR, behavior = id_bhvMeshElevator},
    {name = "SIGN", model = E_MODEL_WOODEN_SIGNPOST, behavior = id_bhvMessagePanel},
    {name = "METAL_CAP", model = E_MODEL_MARIOS_METAL_CAP, behavior = id_bhvMetalCap},
    {name = "MIPS", model = E_MODEL_MIPS, behavior = id_bhvMips},
    {name = "MOVING_BLUE_COIN", model = E_MODEL_BLUE_COIN, behavior = id_bhvMovingBlueCoin},
    {name = "MOVING_YELLOW_COIN", model = E_MODEL_YELLOW_COIN, behavior = id_bhvMovingYellowCoin},
    {name = "MR_BLIZZARD", model = E_MODEL_MR_BLIZZARD, behavior = id_bhvMrBlizzard},
    {name = "MR_I", model = E_MODEL_MR_I, behavior = id_bhvMrI},
    {name = "NORMAL_CAP", model = E_MODEL_MARIOS_CAP, behavior = id_bhvNormalCap},
    {name = "BITS_ROTATING_OCTAGON", model = E_MODEL_BITS_OCTAGONAL_PLATFORM, behavior = id_bhvOctagonalPlatformRotating},
    {name = "ONE_COIN", model = E_MODEL_YELLOW_COIN, behavior = id_bhvOneCoin},
    {name = "OPENABLE_GRILL", model = E_MODEL_BOB_BARS_GRILLS, behavior = id_bhvOpenableGrill},
    {name = "ORANGE_NUMBER", model = E_MODEL_NUMBER, behavior = id_bhvOrangeNumber},
    {name = "WEIRD_BABY_PENGUIN", model = E_MODEL_PENGUIN, behavior = id_bhvPenguinBaby},
    {name = "PIRANHA_PLANT", model = E_MODEL_PIRANHA_PLANT, behavior = id_bhvPiranhaPlant},
    {name = "PIT_BOWLING_BALL", model = E_MODEL_BOWLING_BALL, behavior = id_bhvPitBowlingBall},
    {name = "BITFS_PLATFORM_ON_TRACK", model = E_MODEL_BITFS_PLATFORM_ON_TRACK, behavior = id_bhvPlatformOnTrack},
    {name = "CCM_PLATFORM_ON_TRACK", model = E_MODEL_CCM_ROPEWAY_LIFT, behavior = id_bhvPlatformOnTrack},
    {name = "CHECKERBOARD_PLATFORM_ON_TRACK", model = E_MODEL_CHECKERBOARD_PLATFORM, behavior = id_bhvPlatformOnTrack},
    {name = "RR_FLYING_CARPET", model = E_MODEL_RR_FLYING_CARPET, behavior = id_bhvPlatformOnTrack},
    {name = "PLAYS_MUSIC_WHEN_TOUCHED", model = E_MODEL_STAR, behavior = id_bhvPlaysMusicTrackWhenTouched},
    {name = "POKEY", model = E_MODEL_POKEY_HEAD, behavior = id_bhvPokey},
    {name = "PURPLE_SWITCH_HIDDEN_BOXES", model = E_MODEL_PURPLE_SWITCH, behavior = id_bhvPurpleSwitchHiddenBoxes},
    {name = "PUSHABLE_METAL_BOX", model = E_MODEL_METAL_BOX, behavior = id_bhvPushableMetalBox},
    {name = "PYRAMID_ELEVATOR", model = E_MODEL_SSL_PYRAMID_ELEVATOR, behavior = id_bhvPyramidElevator},
    {name = "PYRAMID_TOP", model = E_MODEL_SSL_PYRAMID_TOP, behavior = id_bhvPyramidTop},
    {name = "RECOVERY_HEART", model = E_MODEL_HEART, behavior = id_bhvRecoveryHeart},
    {name = "RED_COIN", model = E_MODEL_RED_COIN, behavior = id_bhvRedCoin},
    {name = "JRB_ROCK", model = E_MODEL_JRB_ROCK, behavior = id_bhvRockSolid},
    {name = "RR_CRUISER_WING", model = E_MODEL_RR_CRUISER_WING, behavior = id_bhvRrCruiserWing},
    {name = "RR_ELEVATOR", model = E_MODEL_RR_ELEVATOR_PLATFORM, behavior = id_bhvRrElevatorPlatform},
    {name = "RR_ROTATING_BRIDGE", model = E_MODEL_RR_ROTATING_BRIDGE_PLATFORM, behavior = id_bhvRrRotatingBridgePlatform},
    {name = "SAND_SOUND_LOOP", model = E_MODEL_STAR, behavior = id_bhvSandSoundLoop},
    {name = "SCUTTLEBUG", model = E_MODEL_SCUTTLEBUG, behavior = id_bhvScuttlebug},
    {name = "SEAWEED", model = E_MODEL_SEAWEED, behavior = id_bhvSeaweed},
    {name = "RR_SEESAW", model = E_MODEL_RR_SEESAW_PLATFORM, behavior = id_bhvSeesawPlatform},
    {name = "BOB_SEESAW", model = E_MODEL_BOB_SEESAW_PLATFORM, behavior = id_bhvSeesawPlatform},
    {name = "BITS_SEESAW", model = E_MODEL_BITS_SEESAW_PLATFORM, behavior = id_bhvSeesawPlatform},
    {name = "BITDW_SEESAW", model = E_MODEL_BITDW_SEESAW_PLATFORM, behavior = id_bhvSeesawPlatform},
    {name = "BITFS_SEESAW", model = E_MODEL_BITFS_SEESAW_PLATFORM, behavior = id_bhvSeesawPlatform},
    {name = "JRB_SHIP_BACK_LEFT", model = E_MODEL_JRB_SHIP_BACK_LEFT_PART, behavior = id_bhvShipPart3},
    {name = "JRB_SHIP_BACK_RIGHT", model = E_MODEL_JRB_SHIP_BACK_RIGHT_PART, behavior = id_bhvShipPart3},
    {name = "JRB_SHIP_LEFT_HALF", model = E_MODEL_JRB_SHIP_LEFT_HALF_PART, behavior = id_bhvShipPart3},
    {name = "JRB_SHIP_RIGHT_HALF", model = E_MODEL_JRB_SHIP_RIGHT_HALF_PART, behavior = id_bhvShipPart3},
    {name = "SKEETER", model = E_MODEL_SKEETER, behavior = id_bhvSkeeter},
    {name = "BITS_SLIDING_PLATFORM", model = E_MODEL_BITS_SLIDING_PLATFORM, behavior = id_bhvSlidingPlatform2},
    {name = "RR_SLIDING_PLATFORM", model = E_MODEL_RR_SLIDING_PLATFORM, behavior = id_bhvSlidingPlatform2},
    {name = "SL_SNOW_TRIANGLE", model = E_MODEL_SL_SNOW_TRIANGLE, behavior = id_bhvSlidingSnowMound},
    {name = "SL_SNOWMAN_WIND", model = E_MODEL_STAR, behavior = id_bhvSLSnowmanWind},
    {name = "SL_WALKING_PENGUIN", model = E_MODEL_PENGUIN, behavior = id_bhvSLWalkingPenguin},
    {name = "SMALL_BOMP", model = E_MODEL_STAR, behavior = id_bhvSmallBomp},
    {name = "BABY_PENGUIN", model = E_MODEL_PENGUIN, behavior = id_bhvSmallPenguin},
    {name = "BULLY", model = E_MODEL_BULLY, behavior = id_bhvSmallBully},
    {name = "CHILL_BULLY", model = E_MODEL_CHILL_BULLY, behavior = id_bhvSmallChillBully},
    {name = "WHOMP", model = E_MODEL_WHOMP, behavior = id_bhvSmallWhomp},
    {name = "SMOKE", model = E_MODEL_SMOKE, behavior = id_bhvSmoke},
    {name = "SNOWMANS_BOTTOM", model = E_MODEL_STAR, behavior = id_bhvSnowmansBottom},
    {name = "SNOWMANS_BASE", model = E_MODEL_CCM_SNOWMAN_HEAD, behavior = id_bhvSnowmansHead},
    {name = "SNOW_MOUND_SPAWNER", model = E_MODEL_STAR, behavior = id_bhvSnowMoundSpawn},
    {name = "SNUFIT", model = E_MODEL_SNUFIT, behavior = id_bhvSnufit},
    {name = "SPARKLE", model = E_MODEL_SPARKLES, behavior = id_bhvSparkle},
    {name = "SPAWNED_STAR", model = E_MODEL_STAR, behavior = id_bhvSpawnedStar},
    {name = "SPINDEL", model = E_MODEL_SSL_SPINDEL, behavior = id_bhvSpindel},
    {name = "SPINDRIFT", model = E_MODEL_SPINDRIFT, behavior = id_bhvSpindrift},
    {name = "SPINY", model = E_MODEL_SPINY, behavior = id_bhvSpiny},
    {name = "BITDW_MOVING_SQUARE", model = E_MODEL_BITDW_SQUARE_PLATFORM, behavior = id_bhvSquarishPathMoving},
    {name = "BITDW_MOVING_SQUARES", model = E_MODEL_BITDW_SQUARE_PLATFORM, behavior = id_bhvSquarishPathParent},
    {name = "BITFS_STRETCHING_PLATFORM", model = E_MODEL_BITFS_STRETCHING_PLATFORMS, behavior = id_bhvSquishablePlatform},
    {name = "STAR", model = E_MODEL_STAR, behavior = id_bhvStar},
    {name = "TRANSPARENT_STAR", model = E_MODEL_TRANSPARENT_STAR, behavior = id_bhvStar},
    {name = "STAR_DOOR", model = E_MODEL_CASTLE_STAR_DOOR_8_STARS, behavior = id_bhvStarDoor},
    {name = "STATIC_CHECKERED_PLATFORM", model = E_MODEL_CHECKERBOARD_PLATFORM, behavior = id_bhvStaticCheckeredPlatform},
    {name = "HMC_RED_GRILLS", model = E_MODEL_HMC_RED_GRILLS, behavior = id_bhvStaticObject},
    {name = "PURPLE_MARBLE", model = E_MODEL_PURPLE_MARBLE, behavior = id_bhvStaticObject},
    {name = "SPINY_BALL", model = E_MODEL_SPINY_BALL, behavior = id_bhvStaticObject},
    {name = "WIGGLER_HEAD", model = E_MODEL_WIGGLER_HEAD, behavior = id_bhvStaticObject},
    {name = "WIGGLER_BODY", model = E_MODEL_WIGGLER_BODY, behavior = id_bhvStaticObject},
    {name = "CYAN_FISH", model = E_MODEL_CYAN_FISH, behavior = id_bhvStaticObject},
    {name = "WATER_MINE", model = E_MODEL_WATER_MINE, behavior = id_bhvStaticObject},
    {name = "PIPE", model = E_MODEL_BITS_WARP_PIPE, behavior = id_bhvWarpPipe},
    {name = "HAUNTED_CAGE", model = E_MODEL_HAUNTED_CAGE, behavior = id_bhvStaticObject},
    {name = "BLARGG", model = E_MODEL_BLARGG, behavior = id_bhvStaticObject},
    {name = "EYEROK_LEFT_HAND", model = E_MODEL_EYEROK_LEFT_HAND, behavior = id_bhvStaticObject},
    {name = "TTM_BLUE_SMILEY", model = E_MODEL_TTM_BLUE_SMILEY, behavior = id_bhvStaticObject},
    {name = "TTM_YELLOW_SMILEY", model = E_MODEL_TTM_YELLOW_SMILEY, behavior = id_bhvStaticObject},
    {name = "TTM_STAR_SMILEY", model = E_MODEL_TTM_STAR_SMILEY, behavior = id_bhvStaticObject},
    {name = "TTM_MOON_SMILEY", model = E_MODEL_TTM_MOON_SMILEY, behavior = id_bhvStaticObject},
    {name = "JRB_SUNKEN_SHIP", model = E_MODEL_JRB_SUNKEN_SHIP, behavior = id_bhvSunkenShipPart},
    {name = "JRB_SUNKEN_SHIP_BACK", model = E_MODEL_JRB_SUNKEN_SHIP_BACK, behavior = id_bhvSunkenShipPart},
    {name = "JRB_SHIP_LEFT_HALF", model = E_MODEL_JRB_SHIP_LEFT_HALF_PART, behavior = id_bhvShipPart3},
    {name = "JRB_SHIP_BACK_LEFT", model = E_MODEL_JRB_SHIP_BACK_LEFT_PART, behavior = id_bhvShipPart3},
    {name = "JRB_SHIP_RIGHT_HALF", model = E_MODEL_JRB_SHIP_RIGHT_HALF_PART, behavior = id_bhvShipPart3},
    {name = "JRB_SHIP_BACK_RIGHT", model = E_MODEL_JRB_SHIP_BACK_RIGHT_PART, behavior = id_bhvShipPart3},
    {name = "SUNKEN_SHIP_SET_ROTATION", model = E_MODEL_STAR, behavior = id_bhvSunkenShipSetRotation},
    {name = "SUSHI_SHARK", model = E_MODEL_SUSHI, behavior = id_bhvSushiShark},
    {name = "RR_SWING", model = E_MODEL_RR_SWINGING_PLATFORM, behavior = id_bhvSwingPlatform},
    {name = "SWOOP", model = E_MODEL_SWOOP, behavior = id_bhvSwoop},
    {name = "TANK_FISH_GROUP", model = E_MODEL_STAR, behavior = id_bhvTankFishGroup},
    {name = "TEMPORARY_YELLOW_COIN", model = E_MODEL_YELLOW_COIN, behavior = id_bhvTemporaryYellowCoin},
    {name = "TEN_COINS_SPAWN", model = E_MODEL_STAR, behavior = id_bhvTenCoinsSpawn},
    {name = "THI_BOWLING_BALL_SPAWNER", model = E_MODEL_STAR, behavior = id_bhvThiBowlingBallSpawner},
    {name = "THI_HUGE_ISLAND_TOP", model = E_MODEL_THI_HUGE_ISLAND_TOP, behavior = id_bhvThiHugeIslandTop},
    {name = "THI_TINY_ISLAND_TOP", model = E_MODEL_THI_TINY_ISLAND_TOP, behavior = id_bhvThiTinyIslandTop},
    {name = "THWOMP", model = E_MODEL_THWOMP, behavior = id_bhvThwomp},
    {name = "THWOMP_2", model = E_MODEL_THWOMP, behavior = id_bhvThwomp2},
    {name = "BOWSER_2_ARENA", model = E_MODEL_BOWSER_2_TILTING_ARENA, behavior = id_bhvTiltingBowserLavaPlatform},
    {name = "TOAD", model = E_MODEL_TOAD, behavior = id_bhvToadMessage},
    {name = "WF_TOWER_DOOR", model = E_MODEL_WF_TOWER_DOOR, behavior = id_bhvTowerDoor},
    {name = "WF_TOWER_PLATFORM_GROUP", model = E_MODEL_STAR, behavior = id_bhvTowerPlatformGroup},
    {name = "TOX_BOX", model = E_MODEL_SSL_TOX_BOX, behavior = id_bhvToxBox},
    {name = "TRACK_BALL", model = E_MODEL_BOWLING_BALL, behavior = id_bhvTrackBall},
    {name = "TREASURE_CHEST_BOTTOM", model = E_MODEL_TREASURE_CHEST_BASE, behavior = id_bhvTreasureChestBottom},
    {name = "TREASURE_CHESTS", model = E_MODEL_STAR, behavior = id_bhvTreasureChests},
    {name = "JRB_TREASURE_CHESTS", model = E_MODEL_STAR, behavior = id_bhvTreasureChestsJrb},
    {name = "SHIP_TREASURE_CHESTS", model = E_MODEL_STAR, behavior = id_bhvTreasureChestsShip},
    {name = "TREASURE_CHEST_TOP", model = E_MODEL_TREASURE_CHEST_LID, behavior = id_bhvTreasureChestTop},
    {name = "TREE", model = E_MODEL_BUBBLY_TREE, behavior = id_bhvTree},
    {name = "PALM_TREE", model = E_MODEL_PALM_TREE, behavior = id_bhvTree},
    {name = "SNOW_TREE", model = E_MODEL_SNOW_TREE, behavior = id_bhvTree},
    {name = "SPIKY_TREE", model = E_MODEL_COURTYARD_SPIKY_TREE, behavior = id_bhvTree},
    {name = "TRIPLET_BUTTERFLY", model = E_MODEL_BUTTERFLY, behavior = id_bhvTripletButterfly},
    {name = "TTC_CLOCK_HAND", model = E_MODEL_TTC_CLOCK_HAND, behavior = id_bhvTTC2DRotator},
    {name = "TTC_ROTATING_HEXAGON", model = E_MODEL_TTC_ROTATING_HEXAGON, behavior = id_bhvTTCCog},
    {name = "TTC_ELEVATOR", model = E_MODEL_TTC_ELEVATOR_PLATFORM, behavior = id_bhvTTCElevator},
    {name = "TTC_PUSH_BLOCK", model = E_MODEL_TTC_PUSH_BLOCK, behavior = id_bhvTTCMovingBar},
    {name = "TTC_PENDULUM", model = E_MODEL_TTC_PENDULUM, behavior = id_bhvTTCPendulum},
    {name = "TTC_PIT_BLOCK", model = E_MODEL_TTC_PIT_BLOCK, behavior = id_bhvTTCPitBlock},
    {name = "TTC_ROTATING_CUBE", model = E_MODEL_TTC_ROTATING_CUBE, behavior = id_bhvTTCRotatingSolid},
    {name = "TTC_SPINNER", model = E_MODEL_TTC_SPINNER, behavior = id_bhvTTCSpinner},
    {name = "TTC_TREADMILL", model = E_MODEL_TTC_LARGE_TREADMILL, behavior = id_bhvTTCTreadmill},
    {name = "TTM_BOWLING_BALL_SPAWNER", model = E_MODEL_STAR, behavior = id_bhvTtmBowlingBallSpawner},
    {name = "TTM_ROLLING_LOG", model = E_MODEL_TTM_ROLLING_LOG, behavior = id_bhvTtmRollingLog},
    {name = "PENGUIN_MOTHER", model = E_MODEL_PENGUIN, behavior = id_bhvTuxiesMother},
    {name = "TWEESTER", model = E_MODEL_TWEESTER, behavior = id_bhvTweester},
    {name = "UKIKI", model = E_MODEL_UKIKI, behavior = id_bhvUkiki},
    {name = "UKIKI_CAGE", model = E_MODEL_TTM_STAR_CAGE, behavior = id_bhvUkikiCage},
    {name = "UNAGI", model = E_MODEL_UNAGI, behavior = id_bhvUnagi},
    {name = "UNLOCK_DOOR_STAR", model = E_MODEL_STAR, behavior = id_bhvUnlockDoorStar},
    {name = "UNUSED_FAKE_STAR", model = E_MODEL_CARTOON_STAR, behavior = id_bhvUnusedFakeStar},
    {name = "UNUSED_POUNDABLE_PLATFORM", model = E_MODEL_STAR, behavior = id_bhvUnusedPoundablePlatform},
    {name = "VANISH_CAP", model = E_MODEL_MARIOS_CAP, behavior = id_bhvVanishCap},
    {name = "VOLCANO_SOUND_LOOP", model = E_MODEL_STAR, behavior = id_bhvVolcanoSoundLoop},
    {name = "WATER_AIR_BUBBLE", model = E_MODEL_BUBBLE, behavior = id_bhvWaterAirBubble},
    {name = "WATER_BOMB", model = E_MODEL_WATER_BOMB, behavior = id_bhvWaterBomb},
    {name = "WATER_BOMB_CANNON", model = E_MODEL_CANNON_BARREL, behavior = id_bhvWaterBombCannon},
    {name = "WATER_BOMB_SPAWNER", model = E_MODEL_STAR, behavior = id_bhvWaterBombSpawner},
    {name = "WATERFALL_SOUND_LOOP", model = E_MODEL_STAR, behavior = id_bhvWaterfallSoundLoop},
    {name = "WATER_LEVEL_DIAMOND", model = E_MODEL_WDW_WATER_LEVEL_DIAMOND, behavior = id_bhvWaterLevelDiamond},
    {name = "WATER_LEVEL_PILLAR", model = E_MODEL_CASTLE_WATER_LEVEL_PILLAR, behavior = id_bhvWaterLevelPillar},
    {name = "WDW_EXPRESS_ELEVATOR", model = E_MODEL_WDW_EXPRESS_ELEVATOR, behavior = id_bhvWdwExpressElevator},
    {name = "WDW_RECTANGLE_PLATFORM", model = E_MODEL_WDW_RECTANGULAR_FLOATING_PLATFORM, behavior = id_bhvWdwRectangularFloatingPlatform},
    {name = "WDW_SQUARE_PLATFORM", model = E_MODEL_WDW_SQUARE_FLOATING_PLATFORM, behavior = id_bhvWdwSquareFloatingPlatform},
    {name = "WF_BREAKABLE_WALL_LEFT", model = E_MODEL_WF_BREAKABLE_WALL_LEFT, behavior = id_bhvWfBreakableWallLeft},
    {name = "WF_BREAKABLE_WALL_RIGHT", model = E_MODEL_WF_BREAKABLE_WALL_RIGHT, behavior = id_bhvWfBreakableWallRight},
    {name = "WHIRLPOOL", model = E_MODEL_DL_WHIRLPOOL, behavior = id_bhvWhirlpool},
    {name = "WHOMP_KING", model = E_MODEL_WHOMP, behavior = id_bhvWhompKingBoss},
    {name = "WING_CAP", model = E_MODEL_MARIOS_WING_CAP, behavior = id_bhvWingCap},
    {name = "WOODEN_POST", model = E_MODEL_WOODEN_POST, behavior = id_bhvWoodenPost},
    {name = "YELLOW_BALL", model = E_MODEL_YELLOW_SPHERE, behavior = id_bhvYellowBall},
    {name = "YOSHI", model = E_MODEL_YOSHI, behavior = id_bhvYoshi},
    {name = "PLAYER", model = E_MODEL_MARIO, behavior = id_bhvStaticObject},
    {name = "LUIGI_PLAYER", model = E_MODEL_LUIGI, behavior = id_bhvStaticObject},
    {name = "TOAD_PLAYER", model = E_MODEL_TOAD, behavior = id_bhvStaticObject},
    {name = "WALUIGI_PLAYER", model = E_MODEL_WALUIGI, behavior = id_bhvStaticObject},
    {name = "WARIO_PLAYER", model = E_MODEL_WARIO, behavior = id_bhvStaticObject},
    {name = "BLARGG_TEST", model = E_MODEL_BLARGG, behavior = id_bhvBlargg},
    {name = "WATER_MINE", model = E_MODEL_WATER_MINE, behavior = id_bhvBowserBomb},
    {name = "RIDEABLE_YOSHI", model = E_MODEL_YOSHI, behavior = id_bhvYoshiRideable},
    {name = "JRB_FLOATING_BOX", model = E_MODEL_JRB_SLIDING_BOX, behavior = id_bhvJrbFloatingBox},
    {name = "SNOWMANS_BOTTOM", model = E_MODEL_SNOWMAN_BOTTOM, behavior = id_bhvSnowmansBottom},
    {name = "UNUSED_PENGUIN", model = E_MODEL_PENGUIN, behavior = id_bhvUnused20E0},
}

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

local selectedButton = 1

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
    end
end

hook_event(HOOK_ON_HUD_RENDER, on_hud_render)




