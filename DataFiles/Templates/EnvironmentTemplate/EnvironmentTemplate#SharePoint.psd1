@{
    NonNodeData = @{
        SharePoint     = @{
            SharingSettings = @{
                UniqueId                 = 'SharingAllowList'
                SharingAllowedDomainList = @('domain.com')
            }
            TenantSettings          = @{
                LegacyAuthProtocolsEnabled = $False
            }
        }
    }
}
