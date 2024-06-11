@{
	NonNodeData = @{
		Teams = @{
			ChannelsPolicies = @(
				@{
					AllowChannelSharingToExternalUser             = $true
					AllowPrivateChannelCreation                   = $true
					AllowSharedChannelCreation                    = $true
					AllowUserToParticipateInExternalSharedChannel = $true
					Ensure                                        = 'Present'
					Identity                                      = 'Global'
				}
			)
		}
	}
}
