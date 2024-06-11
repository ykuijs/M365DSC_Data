@{
    NonNodeData = @{
        Office365          = @{
            AdminAuditLogConfig                 = @{
                IsSingleInstance                = 'Yes'
                UnifiedAuditLogIngestionEnabled = 'Enabled'
            }
            OrgCustomizationSetting             = @{
                Ensure           = 'Present'
                IsSingleInstance = 'Yes'
            }
        }
    }
}
