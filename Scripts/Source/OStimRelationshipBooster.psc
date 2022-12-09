ScriptName OStimRelationshipBooster Extends Quest

OSexIntegrationMain OStim

Event OnInit()
	OStim = OUtils.GetOStim()
	RegisterForModEvent("ostim_orgasm", "OStimOrgasm")
EndEvent

Event OStimOrgasm(String EventName, String sceneId, Float index, Form Sender)
	Actor Act = Sender As Actor
	Actor Partner = OStim.GetSexPartner(Act)

	If Partner
		Int Rank = Act.GetRelationshipRank(Partner)
		If (Rank == 0)
			Act.SetRelationshipRank(Partner, 1)
		EndIf
	EndIf
EndEvent