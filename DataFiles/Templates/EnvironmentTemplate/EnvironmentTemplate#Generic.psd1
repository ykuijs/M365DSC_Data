@{
    AllNodes    = @(
        @{
            NodeName        = 'localhost'
            CertificateFile = '.\DSCEncryptionCert.cer'           # The file name of the encryption certificate
            CertThumbprint  = '<EncryptionCertificateThumbprint>' # The thumbprint of the encryption certificate (should be in $encryptionCertThumb)
        }
    )
    NonNodeData = @{
        Environment    = @{
            Name             = '{{Tenant_Name}}'      # Environment name
            ShortName        = '{{Tenant_ShortName}}' # Environment short name
            TenantId         = '{{TenantId}}'         # The name of the tenant that belongs to the given environment
            OrganizationName = '{{Tenant_Name}}'      # The same as TenantId
            UsedWorkloads    = @{
                Azure              = $true            # Specifies if this workload is used in the configuration
                AzureAD            = $true            # Specifies if this workload is used in the configuration
                AzureDevOps        = $true            # Specifies if this workload is used in the configuration
                Commerce           = $true            # Specifies if this workload is used in the configuration
                Defender           = $true            # Specifies if this workload is used in the configuration
                Exchange           = $true            # Specifies if this workload is used in the configuration
                Fabric             = $true            # Specifies if this workload is used in the configuration
                Intune             = $true            # Specifies if this workload is used in the configuration
                Office365          = $true            # Specifies if this workload is used in the configuration
                OneDrive           = $true            # Specifies if this workload is used in the configuration
                Planner            = $true            # Specifies if this workload is used in the configuration
                PowerPlatform      = $true            # Specifies if this workload is used in the configuration
                SecurityCompliance = $true            # Specifies if this workload is used in the configuration
                Sentinel           = $true            # Specifies if this workload is used in the configuration
                ServicesHub        = $true            # Specifies if this workload is used in the configuration
                SharePoint         = $true            # Specifies if this workload is used in the configuration
                Teams              = $true            # Specifies if this workload is used in the configuration
                Viva               = $true            # Specifies if this workload is used in the configuration
            }
            CICD             = @{
                DependsOn     = ''                           # Specifies the name of the environment that this environment depends on during deployment. Leave empty when dependency does not exist
                UseCodeBranch = 'main'                       # Specifies the code branch that should be used for the deployment (not used in the current version of the solution)
                Approvers     = @(
                    @{
                        Principal = 'test.user@domain.com'   # UPN of the entity that should approve the deployment
                        Type      = 'User'                   # The provided principal is an user
                    }
                    @{
                        Principal = 'test.group@domain.com'  # UPN of the entity that should approve the deployment
                        Type      = 'Group'                  # The provided principal is an user
                    }
                )
            }
            Tokens           = @{
                TenantGuid       = '3788f651-cd16-4482-b823-05c62208bc4b' # {{TenantGuid}}
                Tenant_ShortName = 'TST'                                  # {{Tenant_ShortName}}
                Tenant_Name      = 'TestEnv'                              # {{Tenant_Name}}

                Forest_Code      = 'TST'                                  # {{Forest_Code}}
                TenantId         = 'testenv.onmicrosoft.com'              # {{TenantId}}
            }
        }
        AppCredentials = @(
            @{
                Workload       = 'Azure'
                ApplicationId  = '<appid>'         # The AppId of the DSC app for the given operations center (should be in $DSCApp.AppId)
                CertThumbprint = '<certThumprint>' # The thumbprint of the encryption certificate for the given operations center (should be in $DSCCertThumb)
            }
            @{
                Workload       = 'AzureAD'
                ApplicationId  = '<appid>'         # The AppId of the DSC app for the given operations center (should be in $DSCApp.AppId)
                CertThumbprint = '<certThumprint>' # The thumbprint of the encryption certificate for the given operations center (should be in $DSCCertThumb)
            }
            @{
                Workload       = 'AzureDevOps'
                ApplicationId  = '<appid>'         # The AppId of the DSC app for the given operations center (should be in $DSCApp.AppId)
                CertThumbprint = '<certThumprint>' # The thumbprint of the encryption certificate for the given operations center (should be in $DSCCertThumb)
            }
            @{
                Workload       = 'Commerce'
                ApplicationId  = '<appid>'         # The AppId of the DSC app for the given operations center (should be in $DSCApp.AppId)
                CertThumbprint = '<certThumprint>' # The thumbprint of the encryption certificate for the given operations center (should be in $DSCCertThumb)
            }
            @{
                Workload       = 'Defender'
                ApplicationId  = '<appid>'         # The AppId of the DSC app for the given operations center (should be in $DSCApp.AppId)
                CertThumbprint = '<certThumprint>' # The thumbprint of the encryption certificate for the given operations center (should be in $DSCCertThumb)
            }
            @{
                Workload       = 'Exchange'
                ApplicationId  = '<appid>'         # The AppId of the DSC app for the given operations center (should be in $DSCApp.AppId)
                CertThumbprint = '<certThumprint>' # The thumbprint of the encryption certificate for the given operations center (should be in $DSCCertThumb)
            }
            @{
                Workload       = 'Fabric'
                ApplicationId  = '<appid>'         # The AppId of the DSC app for the given operations center (should be in $DSCApp.AppId)
                CertThumbprint = '<certThumprint>' # The thumbprint of the encryption certificate for the given operations center (should be in $DSCCertThumb)
            }
            @{
                Workload       = 'Intune'
                ApplicationId  = '<appid>'         # The AppId of the DSC app for the given operations center (should be in $DSCApp.AppId)
                CertThumbprint = '<certThumprint>' # The thumbprint of the encryption certificate for the given operations center (should be in $DSCCertThumb)
            }
            @{
                Workload       = 'Office365'
                ApplicationId  = '<appid>'         # The AppId of the DSC app for the given operations center (should be in $DSCApp.AppId)
                CertThumbprint = '<certThumprint>' # The thumbprint of the encryption certificate for the given operations center (should be in $DSCCertThumb)
            }
            @{
                Workload       = 'OneDrive'
                ApplicationId  = '<appid>'         # The AppId of the DSC app for the given operations center (should be in $DSCApp.AppId)
                CertThumbprint = '<certThumprint>' # The thumbprint of the encryption certificate for the given operations center (should be in $DSCCertThumb)
            }
            @{
                Workload       = 'Planner'
                ApplicationId  = '<appid>'         # The AppId of the DSC app for the given operations center (should be in $DSCApp.AppId)
                CertThumbprint = '<certThumprint>' # The thumbprint of the encryption certificate for the given operations center (should be in $DSCCertThumb)
            }
            @{
                Workload       = 'PowerPlatform'
                ApplicationId  = '<appid>'         # The AppId of the DSC app for the given operations center (should be in $DSCApp.AppId)
                CertThumbprint = '<certThumprint>' # The thumbprint of the encryption certificate for the given operations center (should be in $DSCCertThumb)
            }
            @{
                Workload       = 'SecurityCompliance'
                ApplicationId  = '<appid>'         # The AppId of the DSC app for the given operations center (should be in $DSCApp.AppId)
                CertThumbprint = '<certThumprint>' # The thumbprint of the encryption certificate for the given operations center (should be in $DSCCertThumb)
            }
            @{
                Workload       = 'Sentinel'
                ApplicationId  = '<appid>'         # The AppId of the DSC app for the given operations center (should be in $DSCApp.AppId)
                CertThumbprint = '<certThumprint>' # The thumbprint of the encryption certificate for the given operations center (should be in $DSCCertThumb)
            }
            @{
                Workload       = 'ServicesHub'
                ApplicationId  = '<appid>'         # The AppId of the DSC app for the given operations center (should be in $DSCApp.AppId)
                CertThumbprint = '<certThumprint>' # The thumbprint of the encryption certificate for the given operations center (should be in $DSCCertThumb)
            }
            @{
                Workload       = 'SharePoint'
                ApplicationId  = '<appid>'         # The AppId of the DSC app for the given operations center (should be in $DSCApp.AppId)
                CertThumbprint = '<certThumprint>' # The thumbprint of the encryption certificate for the given operations center (should be in $DSCCertThumb)
            }
            @{
                Workload       = 'Teams'
                ApplicationId  = '<appid>'         # The AppId of the DSC app for the given operations center (should be in $DSCApp.AppId)
                CertThumbprint = '<certThumprint>' # The thumbprint of the encryption certificate for the given operations center (should be in $DSCCertThumb)
            }
            @{
                Workload       = 'Viva'
                ApplicationId  = '<appid>'         # The AppId of the DSC app for the given operations center (should be in $DSCApp.AppId)
                CertThumbprint = '<certThumprint>' # The thumbprint of the encryption certificate for the given operations center (should be in $DSCCertThumb)
            }
        )
    }
}
