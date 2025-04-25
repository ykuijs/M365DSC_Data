@{
    NonNodeData = @{
        OneDrive = @{
            Settings = @{
                BlockMacSync                              = $False
                DisableReportProblemDialog                = $False
                DomainGuids                               = @()
                Ensure                                    = 'Present'
                ExcludedFileExtensions                    = @('scr', 'pst')
                IsSingleInstance                          = 'Yes'
                NotificationsInOneDriveForBusinessEnabled = $True
                NotifyOwnersWhenInvitationsAccepted       = $True
                ODBAccessRequests                         = 'Unspecified'
                ODBMembersCanShare                        = 'Unspecified'
                OneDriveForGuestsEnabled                  = $False
                OneDriveStorageQuota                      = 1048576
                OrphanedPersonalSitesRetentionPeriod      = 30
                TenantRestrictionEnabled                  = $False
            }
        }
    }
}
