/datum/event/blob
	announceWhen	= 60
	endWhen			= 120
	var/obj/effect/blob/core/Blob

/datum/event/blob/announce()
	event_announcement.Announce("Confirmed outbreak of level 5 biohazard aboard [station_name()]. All personnel must contain the outbreak.", "Biohazard Alert", 'sound/AI/outbreak5.ogg')

/datum/event/blob/start()
	var/turf/T = pick(blobstart)
	if(!T)
		return kill()
	var/list/candidates = pollCandidates("Do you want to play as a blob?", ROLE_BLOB, 1)
	var/mob/C
	if(candidates.len)
		C = pick(candidates)
		Blob = new /obj/effect/blob/core(T, 200, null, 2, 0, 1)
		Blob.create_overmind(C.client, 1)
		for(var/i = 1; i < rand(3, 6), i++)
			Blob.process()
	else
		return kill()

/datum/event/blob/tick()
	if(!Blob)
		kill()
		return
	if(IsMultiple(activeFor, 3))
		Blob.process()
