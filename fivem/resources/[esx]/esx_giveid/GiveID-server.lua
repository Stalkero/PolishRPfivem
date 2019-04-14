local eyeColours = {
	"Zielone",
	"Szmaragdowe",
	"Jasny niebieski",
	"Niebieski ocean",
	"Jasnobrązowy",
	"Ciemny brąz",
	"Orzechowe",
	"Ciemny szary",
	"Jasny szary",
	"Różowy",
	"Żółty",
	"Fioletowy",
	"Zaciemnienie",
	"Odcienie szarego",
	"Tequila Sunrise",
	"Atomic",
	"Warp",
	"ECola",
	"Space Ranger",
	"Ying Yang",
	"Bullseye",
	"Lizard",
	"Dragon",
	"Extra Terrestrial",
	"Goat",
	"Smiley",
	"Possessed",
	"Demon",
	"Infected",
	"Alien",
	"Undead",
	"Zombie"
}

RegisterNetEvent("esx_giveid:GiveIdToPlayer")
AddEventHandler("esx_giveid:GiveIdToPlayer", function(targetPlayer)
    local requestingPly = source
    local characterInfo = GetCharacterInfo(source)
    if characterInfo then
        TriggerClientEvent("esx_giveid:GiveIdResponse", requestingPly, GetPlayerName(targetPlayer))
        TriggerClientEvent("esx_giveid:DisplayPlayerId", targetPlayer, characterInfo, requestingPly)
    else
        TriggerClientEvent("esx_giveid:GiveIdResponse", requestingPly, false)
        TriggerClientEvent("esx_giveid:DisplayPlayerId", targetPlayer, false, false)
    end
end)

function GetCharacterInfo(source)
	local result = MySQL.Sync.fetchAll('SELECT firstname, lastname, dateofbirth, sex, job,job_grade FROM users WHERE identifier = @identifier', {
		['@identifier'] = GetPlayerIdentifiers(source)[1]
	})
	if result[1] and result[1].firstname and result[1].lastname and result[1].dateofbirth and result[1].sex and result[1].job and result[1].job_grade then
		--if result[1].skin ~= nil then
		--	local playerSkin = json.decode(result[1].skin)
		--	local eyeColor = eyeColours[playerSkin["eye_color"] + 1]
		--end
		--local feet, inches = tostring(result[1].height / 30.48):match("([^.]+).([^.]+)")
		--local properinches = math.ceil((tonumber(string.sub(inches, 1, 2)) / 100) * 12)
		local gender = ""
		local praca = ""
		local grade = "Nie wymagane"
		if result[1].sex == "M" then
			gender = "Mężczyzna"
		elseif result[1].sex == "F" then
			gender = "Kobieta"
		elseif result[1].job == "armyair" then

			praca = "Marynarka Wojskowa"

			if result[1].job_grade == "0" then
				grade = "Marynarz"
			elseif result[1].job_grade == "1" then
				grade = "Starszy Marynarz"
			elseif result[1].job_grade == "2" then
				grade = "Mat"
			elseif result[1].job_grade == "3" then
				grade = "Starszy Mat"
			elseif result[1].job_grade == "4" then
				grade = "Bosmanmat"
			elseif result[1].job_grade == "5" then
				grade = "Bosman"
			elseif result[1].job_grade == "6" then
				grade = "Starszy Bosman"
			elseif result[1].job_grade == "7" then
				grade = "Młodszy Chorąży Marynarki"
			elseif result[1].job_grade == "8" then
				grade = "Chorąży Marynarki"
			elseif result[1].job_grade == "9" then
				grade = "Starszy Chorąży Marynarki"
			elseif result[1].job_grade == "10" then
				grade = "Starszy Chorąży Sztabowy Marynarki"
			elseif result[1].job_grade == "11" then
				grade = "Podporucznik Marynarki"
			elseif result[1].job_grade == "12" then
				grade = "Porucznik Marynarki"
			elseif result[1].job_grade == "13" then
				grade = "Kapitan Marynarki"
			elseif result[1].job_grade == "14" then
				grade = "Komandor Marynarki"
			elseif result[1].job_grade == "15" then
				grade = "Komandor Porucznik"
			elseif result[1].job_grade == "16" then
				grade = "Komandor"
			elseif result[1].job_grade == "17" then
				grade = "Kontradmirał"
			elseif result[1].job_grade == "18" then
				grade = "Wiceadmirał"
			elseif result[1].job_grade == "19" then
				grade = "Admirał Floty"
			elseif result[1].job_grade == "20" then
				grade = "Admirał"
			end
		end
		--return ("Name: %s %s\nDOB: %s\nGender: %s\nEye Color: %s"):format(result[1].firstname, result[1].lastname, result[1].dateofbirth, gender, eyeColor)
		return ("Imię: %s %s\nData urodzenia: %s\nPłeć: %s\nPraca: %s\nStopień: %s"):format(result[1].firstname, result[1].lastname, result[1].dateofbirth, gender,result[1].job,result[1].job_grade)
	else
		return GetPlayerName(source)
	end
end