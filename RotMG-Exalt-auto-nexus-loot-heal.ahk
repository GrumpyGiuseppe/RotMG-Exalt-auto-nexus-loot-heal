; only works if the desktop resolution = 2560x1440 and the ingame resolution = 1920x1080
; only works if the game is borderless fullscreen (set game to window mode and then press alt + enter)
; only works if UI shadows are disabled in the ingame settings
; auto close chat if health < 70% (only works if a scroll bar is already there, which mostly is)
; auto nexus if health < 40%
; auto heal if health < 70% and class = priest
; auto drink health potion if spell can't be used or class != priest
; auto drink mana potion if spell can't be used and no health potions
; auto loot health and mana potions if health potions aren't maxed (if that doesn't work try a different cursor or use YoloMouse)
; auto zoom out map to max

Loop {
	sleep 10
	IfWinActive, RotMGExalt
	{
		PixelGetColor, chatcolor, 9, 1360
		PixelGetColor, hpcolorheal, 2410, 612
		PixelGetColor, nexuscolor, 2030, 44
		PixelGetColor, hpcolor1, 2125, 625
		PixelGetColor, hpcolor2, 2274, 612
		PixelGetColor, priestcolor1, 2265, 740
		PixelGetColor, priestcolor2, 2294, 770
		PixelGetColor, priestcolor3, 2234, 745
		PixelGetColor, mpcolor, 2235, 668
		PixelGetColor, spellcolor, 2219, 736
		PixelGetColor, mppotioncolor, 2398, 1164
		PixelGetColor, hppotioncolor, 2176, 1164
		PixelGetColor, hppotioncolormax, 2221, 1166
		PixelGetColor, potioncolor1a, 2157, 1273
		PixelGetColor, potioncolor1b, 2173, 1305
		PixelGetColor, potioncolor2a, 2270, 1273
		PixelGetColor, potioncolor2b, 2285, 1305
		PixelGetColor, potioncolor3a, 2378, 1273
		PixelGetColor, potioncolor3b, 2395, 1305
		PixelGetColor, potioncolor4a, 2489, 1273
		PixelGetColor, potioncolor4b, 2505, 1305
		PixelGetColor, potioncolor5a, 2157, 1380
		PixelGetColor, potioncolor5b, 2173, 1416
		PixelGetColor, potioncolor6a, 2270, 1380
		PixelGetColor, potioncolor6b, 2285, 1416
		PixelGetColor, potioncolor7a, 2378, 1380
		PixelGetColor, potioncolor7b, 2395, 1416
		PixelGetColor, potioncolor8a, 2489, 1380
		PixelGetColor, potioncolor8b, 2505, 1416
		PixelGetColor, mapcolor, 2514, 73
		
		if (nexuscolor != 0xFFFFFF) and (chatcolor = 0x666666) and (hpcolorheal = 0x545454)
		{
			Send {Esc}
			sleep 100
		}
		else if (nexuscolor != 0xFFFFFF) and (hpcolor1 = 0xFFFFFF) and (hpcolor2 = 0x545454)
		{
			Send R
		}
		else if (nexuscolor != 0xFFFFFF) and (hpcolorheal = 0x545454) and (priestcolor1 = 0x0B0B0B) and (priestcolor2 = 0x212121) and (priestcolor3 = 0x363636)
		{
			Send {RButton}
			sleep 100
		}
		else if (nexuscolor != 0xFFFFFF) and (hpcolorheal = 0x545454) and (hppotioncolor != 0x545454)
		{
			Send F
			sleep 100
		}
		else if (nexuscolor != 0xFFFFFF) and (hpcolorheal = 0x545454) and (mpcolor = 0x545454) and (spellcolor = 0x212121) and (mppotioncolor != 0x545454)
		{
			Send V
			sleep 100
		}
		
		if (hppotioncolormax != 0x373737) and (potioncolor1a = 0xFFFFFF) and (potioncolor1b = 0xFFFFFF)
		{
			MouseMove, 2177, 1270
			Send {LButton}
		}
		else if (hppotioncolormax != 0x373737) and (potioncolor2a = 0xFFFFFF) and (potioncolor2b = 0xFFFFFF)
		{
			MouseMove, 2288, 1270
			Send {LButton}
		}
		else if (hppotioncolormax != 0x373737) and (potioncolor3a = 0xFFFFFF) and (potioncolor3b = 0xFFFFFF)
		{
			MouseMove, 2399, 1270
			Send {LButton}
		}
		else if (hppotioncolormax != 0x373737) and (potioncolor4a = 0xFFFFFF) and (potioncolor4b = 0xFFFFFF)
		{
			MouseMove, 2510, 1270
			Send {LButton}
		}
		else if (hppotioncolormax != 0x373737) and (potioncolor5a = 0xFFFFFF) and (potioncolor5b = 0xFFFFFF)
		{
			MouseMove, 2177, 1380
			Send {LButton}
		}
		else if (hppotioncolormax != 0x373737) and (potioncolor6a = 0xFFFFFF) and (potioncolor6b = 0xFFFFFF)
		{
			MouseMove, 2288, 1380
			Send {LButton}
		}
		else if (hppotioncolormax != 0x373737) and (potioncolor7a = 0xFFFFFF) and (potioncolor7b = 0xFFFFFF)
		{
			MouseMove, 2399, 1380
			Send {LButton}
		}
		else if (hppotioncolormax != 0x373737) and (potioncolor8a = 0xFFFFFF) and (potioncolor8b = 0xFFFFFF)
		{
			MouseMove, 2510, 1380
			Send {LButton}
		}
		
		if (nexuscolor != 0xFFFFFF) and (mapcolor = 0x7B7B7B)
		{
			Send {WheelDown}
		}
	}
}
