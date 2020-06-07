; only works if the desktop resolution = 2560x1440
; only works if the game is borderless fullscreen (set game to window mode and then press alt + enter)
; auto close chat if health < 65% (only works if a scroll bar is already there, which mostly is)
; auto nexus if health < 45%
; auto heal if health < 65% and class = priest (only works with the layout of a t0 - t6 tome)
; auto drink mana potion if spell can't be used
; auto drink health potion if spell can't be used and no mana potions
; auto loot health and mana potions (if that doesn't work try a different cursor)
; auto zoom out map to max

Loop {
	sleep 10
	IfWinActive, RotMGExalt
	{
		PixelGetColor, chatcolor, 8, 1359
		PixelGetColor, hpcolorheal, 2382, 611
		PixelGetColor, nexuscolor, 2030, 44
		PixelGetColor, hpcolor, 2290, 611
		PixelGetColor, priestcolor1, 2253, 749
		PixelGetColor, priestcolor2, 2225, 789
		PixelGetColor, priestcolor3, 2285, 758
		PixelGetColor, mpcolor, 2235, 667
		PixelGetColor, spellcolor, 2219, 736
		PixelGetColor, mppotioncolor, 2335, 1146
		PixelGetColor, hppotioncolor, 2113, 1146
		PixelGetColor, potioncolor1a, 2155, 1267
		PixelGetColor, potioncolor1b, 2153, 1264
		PixelGetColor, potioncolor2a, 2266, 1267
		PixelGetColor, potioncolor2b, 2263, 1264
		PixelGetColor, potioncolor3a, 2375, 1267
		PixelGetColor, potioncolor3b, 2373, 1264
		PixelGetColor, potioncolor4a, 2486, 1267
		PixelGetColor, potioncolor4b, 2484, 1264
		PixelGetColor, potioncolor5a, 2155, 1376
		PixelGetColor, potioncolor5b, 2153, 1373
		PixelGetColor, potioncolor6a, 2266, 1376
		PixelGetColor, potioncolor6b, 2263, 1373
		PixelGetColor, potioncolor7a, 2375, 1376
		PixelGetColor, potioncolor7b, 2373, 1373
		PixelGetColor, potioncolor8a, 2486, 1376
		PixelGetColor, potioncolor8b, 2484, 1373
		PixelGetColor, mapcolor, 2514, 73
		
		if (chatcolor = 0x666666) and (hpcolorheal = 0x545454)
		{
			Send {Esc}
			sleep 100
		}
		else if (nexuscolor != 0xFFFFFF) and (hpcolor = 0x545454)
		{
			Send R
		}
		else if (nexuscolor != 0xFFFFFF) and (hpcolorheal = 0x545454) and (priestcolor1 = 0x111111) and (priestcolor2 = 0x111111) and (priestcolor3 = 0x111111)
		{
			Send {RButton}
			sleep 100
		}
		else if (nexuscolor != 0xFFFFFF) and (mpcolor = 0x545454) and (spellcolor = 0x212121) and (mppotioncolor = 0x545454)
		{
			Send V
			sleep 100
		}
		else if (nexuscolor != 0xFFFFFF) and (hpcolorheal = 0x545454) and (hppotioncolor = 0x545454)
		{
			Send F
			sleep 100
		}
		
		if (nexuscolor != 0xFFFFFF) and (potioncolor1a = 0xFFFFFF) and (potioncolor1b = 0x0E0E0E)
		{
			MouseMove, 2149, 1270
			Send {LButton}
		}
		else if (nexuscolor != 0xFFFFFF) and (potioncolor2a = 0xFFFFFF) and (potioncolor2b = 0x0E0E0E)
		{
			MouseMove, 2259, 1270
			Send {LButton}
		}
		else if (nexuscolor != 0xFFFFFF) and (potioncolor3a = 0xFFFFFF) and (potioncolor3b = 0x0E0E0E)
		{
			MouseMove, 2369, 1270
			Send {LButton}
		}
		else if (nexuscolor != 0xFFFFFF) and (potioncolor4a = 0xFFFFFF) and (potioncolor4b = 0x0E0E0E)
		{
			MouseMove, 2480, 1270
			Send {LButton}
		}
		else if (nexuscolor != 0xFFFFFF) and (potioncolor5a = 0xFFFFFF) and (potioncolor5b = 0x0E0E0E)
		{
			MouseMove, 2149, 1380
			Send {LButton}
		}
		else if (nexuscolor != 0xFFFFFF) and (potioncolor6a = 0xFFFFFF) and (potioncolor6b = 0x0E0E0E)
		{
			MouseMove, 2259, 1380
			Send {LButton}
		}
		else if (nexuscolor != 0xFFFFFF) and (potioncolor7a = 0xFFFFFF) and (potioncolor7b = 0x0E0E0E)
		{
			MouseMove, 2369, 1380
			Send {LButton}
		}
		else if (nexuscolor != 0xFFFFFF) and (potioncolor8a = 0xFFFFFF) and (potioncolor8b = 0x0E0E0E)
		{
			MouseMove, 2480, 1380
			Send {LButton}
		}
		
		if (mapcolor = 0x7B7B7B)
		{
			Send {WheelDown}
		}
	}
}
