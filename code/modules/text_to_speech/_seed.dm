#define TTS_CATEGORY_OTHER 0
#define TTS_CATEGORY_WARCRAFT3 "WarCraft 3"
#define TTS_CATEGORY_HALFLIFE2 "Half-Life 2"
#define TTS_CATEGORY_STARCRAFT "StarCraft"
#define TTS_CATEGORY_PORTAL2 "Portal 2"
#define TTS_CATEGORY_STALKER "STALKER"
#define TTS_CATEGORY_DOTA2 "Dota 2"
#define TTS_CATEGORY_LOL "League of Legends"

#define TTS_GENDER_ANY 0
#define TTS_GENDER_MALE 1
#define TTS_GENDER_FEMALE 2

/datum/tts_seed
	var/name = "STUB"
	var/value = "STUB"
	var/category = TTS_CATEGORY_OTHER
	var/gender = TTS_GENDER_ANY
	var/datum/tts_provider/provider = /datum/tts_provider

/datum/tts_seed/vv_edit_var(var_name, var_value)
	return FALSE
