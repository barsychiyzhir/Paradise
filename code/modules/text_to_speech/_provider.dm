/datum/tts_provider
	var/name = "STUB"
	var/is_enabled = TRUE

	// Throttling
	var/is_throttled = FALSE
	var/throttled_until = 0

/datum/tts_provider/proc/request(text, datum/tts_seed/seed, datum/callback/proc_callback)
	return TRUE

/datum/tts_provider/proc/process_response(datum/http_response/response)
	return null

/datum/tts_provider/proc/throttle_check()
	if(is_throttled && throttled_until < world.time)
		return TRUE
	is_throttled = FALSE
	return FALSE

/datum/tts_provider/proc/whisper(text)
	return text

/datum/tts_provider/proc/faster(text)
	return text
