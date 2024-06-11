@{
    AllNodes    = @(
        @{
            NodeName        = 'localhost'
            CertificateFile = '.\DSCCertificate.cer'
        }
    )
    NonNodeData = @{
        Environment    = @{
            Name             = '{{Tenant_Name}}'
            ShortName        = '{{Tenant_ShortName}}'
            TenantId         = '{{TenantId}}'
            OrganizationName = '{{Tenant_Name}}'
            UsedWorkloads    = @{
                AzureAD            = $true
                Exchange           = $true
                Intune             = $true
                Office365          = $true
                OneDrive           = $true
                Planner            = $true
                PowerPlatform      = $true
                SecurityCompliance = $true
                SharePoint         = $true
                Teams              = $true
            }
            CICD             = @{
                DependsOn     = ''
                UseCodeBranch = 'main'
                Approvers     = @(
                    @{
                        Principal = 'test.user@domain.com'
                        Type      = 'User'
                    }
                    @{
                        Principal = 'test.group@domain.com'
                        Type      = 'Group'
                    }
                )
            }
            Tokens           = @{
                TenantGuid       = '3788f651-cd16-4482-b823-05c62208bc4b' #{{TenantGuid}}
                Tenant_ShortName = 'TST' #{{Tenant_ShortName}}
                Tenant_Name      = 'TestEnv' #{{Tenant_Name}}

                Forest_Code      = 'TST' #{{Forest_Code}}
                TenantId         = 'testenv.onmicrosoft.com' #{{TenantId}}
                INTGroupID       = 'bc3f8ba6-38cd-4d2a-8e17-7937feb4fed5' #{{INTGroupID}}
                INTGroupName     = 'EntraID-MDM-Ont-Devices-RWOV Werkplek' #{{INTGroupName}}
            }
        }
        AppCredentials = @(
            @{
                Workload       = 'AzureAD'
                ApplicationId  = '6f071d50-a442-4ef1-b241-6a7752915227'
                CertThumbprint = 'DF2E5A319EB5CEF233964275B519810C9393FD05'
            }
            @{
                Workload       = 'Exchange'
                ApplicationId  = '6f071d50-a442-4ef1-b241-6a7752915227'
                CertThumbprint = 'DF2E5A319EB5CEF233964275B519810C9393FD05'
            }
            @{
                Workload       = 'Intune'
                ApplicationId  = '6f071d50-a442-4ef1-b241-6a7752915227'
                CertThumbprint = 'DF2E5A319EB5CEF233964275B519810C9393FD05'
            }
            @{
                Workload       = 'Office365'
                ApplicationId  = '6f071d50-a442-4ef1-b241-6a7752915227'
                CertThumbprint = 'DF2E5A319EB5CEF233964275B519810C9393FD05'
            }
            @{
                Workload       = 'OneDrive'
                ApplicationId  = '6f071d50-a442-4ef1-b241-6a7752915227'
                CertThumbprint = 'DF2E5A319EB5CEF233964275B519810C9393FD05'
            }
            @{
                Workload       = 'Planner'
                ApplicationId  = '6f071d50-a442-4ef1-b241-6a7752915227'
                CertThumbprint = 'DF2E5A319EB5CEF233964275B519810C9393FD05'
            }
            @{
                Workload       = 'PowerPlatform'
                ApplicationId  = '6f071d50-a442-4ef1-b241-6a7752915227'
                CertThumbprint = 'DF2E5A319EB5CEF233964275B519810C9393FD05'
            }
            @{
                Workload       = 'SecurityCompliance'
                ApplicationId  = '6f071d50-a442-4ef1-b241-6a7752915227'
                CertThumbprint = 'DF2E5A319EB5CEF233964275B519810C9393FD05'
            }
            @{
                Workload       = 'SharePoint'
                ApplicationId  = '6f071d50-a442-4ef1-b241-6a7752915227'
                CertThumbprint = 'DF2E5A319EB5CEF233964275B519810C9393FD05'
            }
            @{
                Workload       = 'Teams'
                ApplicationId  = '6f071d50-a442-4ef1-b241-6a7752915227'
                CertThumbprint = 'DF2E5A319EB5CEF233964275B519810C9393FD05'
            }
        )
    }
}
