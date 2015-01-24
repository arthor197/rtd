numbers = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}
rtdtimeout = false
rdmnumber = table.Random( numbers )

hook.Add( 'PlayerSay', 'rtdchatcommand', function( ply, text )
	
	text = string.lower( text )
	
	if ( string.sub( text, 1, 4 ) == "!rtd" ) then
		if rtdtimeout == false then
			-- RTD effect "1" Sets the players HP to 100
			if rdmnumber == "1" then
				rtdtimeout = true
				ply:SetHealth( 100 )
				ply:PrintMessage( HUD_PRINTTALK, "RTD: Your rolled - HP set to 100!" )
				timer.Create( "rtdtimeouttimer", 120, 0, function() rtdtimeout = false end )
			end
			-- RTD effect "2" Sets the players HP to 25
			if rdmnumber == "2" then
				rtdtimeout = true
				ply:SetHealth( 25 )
				ply:PrintMessage( HUD_PRINTTALK, "RTD: Your rolled - HP set to 25!" )
				timer.Create( "rtdtimeouttimer2", 120, 0, function() rtdtimeout = false end )
			end
			-- RTD effect "3" Makes the player have a low amount of gravity (They float around the map) for 20 secs
			if rdmnumber == "3" then
				rtdtimeout = true
				ply:SetGravity( 10000 )
				ply:PrintMessage( HUD_PRINTTALK, "RTD: Your rolled - Who cares about Gravity? for 20 secs!" )
				timer.Create( "gravitytimeer", 20, 0, function() Player:SetGravity( 800 ) end )
				timer.Create( "rtdtimeouttimer3", 120, 0, function() rtdtimeout = false end )
			end
			-- RTD effect "4" Sets the player on fire for 10 seconds
			if rdmnumber == "4" then
				rtdtimeout = true
				ply:PrintMessage( HUD_PRINTTALK, "RTD: Your rolled - FIRE!" )
				ply:Ignite( 10 )
				timer.Create( "rtdtimeouttimer4", 120, 0, function() rtdtimeout = false end )
			end
			-- RTD effect "5" Makes the player lose there spare ammo (All the ammo not curretnly in a gun)
			if rdmnumber == "5" then
				rtdtimeout = true
				ply:PrintMessage( HUD_PRINTTALK, "RTD: Your rolled - I've lost meh spare ammo!" )
				ply:StripAmmo()
				timer.Create( "rtdtimeouttimer5", 120, 0, function() rtdtimeout = false end )
			end
			-- RTD effect "6" Makes the player god mode for 10 seconds
			if rdmnumber == "6" then
				rtdtimeout = true
				ply:PrintMessage( HUD_PRINTTALK, "RTD: Your rolled - I am GOD! for 10 secs" )
				ply:GodEnable()
				timer.Create( "godmodetimer", 10, 0, function() ply:GodDisable() end )
				timer.Create( "rtdtimeouttimer6", 120, 0, function() rtdtimeout = false end )
			end
			-- RTD effect "7" Removes all the players weapons
			if rdmnumber == "7" then
				rtdtimeout = true
				ply:StripWeapons()
				ply:PrintMessage( HUD_PRINTTALK, "RTD: Your rolled - Where are my guns at?" )
				timer.Create( "rtdtimeouttimer7", 120, 0, function() rtdtimeout = false end )
			end
			-- RTD effect "8" Makes the players screen go RED for 10 seconds (With a 5 second delay)
			if rdmnumber == "8" then
				rtdtimeout = true
				ply:ScreenFade( color_red, 5, 10 )
				ply:PrintMessage( HUD_PRINTTALK, "RTD: Your rolled - I'm seeing RED!? For 10 seconds" )
				timer.Create( "rtdtimeouttimer8", 120, 0, function() rtdtimeout = false end )
			end
			-- RTD effect "9" Makes the player run really fast for 30 seconds
			if rdmnumber == "9" then
				rtdtimeout = true
				ply:SetRunSpeed( 2000 )
				ply:PrintMessage( HUD_PRINTTALK, "RTD: Your rolled - I'm the FLASH! For 30 seconds" )
				timer.Create( "runspeedtimer", 30, 0, function() ply:SetRunSpeed( 500 ) end )
				timer.Create( "rtdtimeouttimer9", 120, 0, function() rtdtimeout = false end )
			end
			-- RTD effect "10" Sets the players Armor level to 100
			if rdmnumber == "10" then
				rtdtimeout = true
				ply:SetArmor( 100 )
				ply:PrintMessage( HUD_PRINTTALK, "RTD: Your rolled - I've got Armor!" )
				timer.Create( "rtdtimeouttimer10", 120, 0, function() rtdtimeout = false end )
			end
		end
		if rtdtimeout == true then
			ply:PrintMessage( HUD_PRINTTALK, "RTD: You are on a 2 minute cool-down" )
		end
	end
end)