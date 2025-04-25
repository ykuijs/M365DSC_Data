@{
    NonNodeData = @{
        Intune = @{
            DeviceCleanupRule                = @{
                Enabled = $False
                Ensure  = 'Present'
            }
            DeviceEnrollmentLimitRestriction = @(
                @{
                    Description = 'This is the default Device Limit Restriction applied with the lowest priority to all users regardless of group membership.'
                    DisplayName = 'All users and all devices'
                    Ensure      = 'Present'
                    Limit       = 5
                }
            )
        }
    }
}
