@{
    NonNodeData = @{
        AzureAD = @{
            AdministrativeUnit                       = @()
            Application                              = @()
            AuthenticationMethodPolicy              = @(
                @{
                    Description                 = 'The tenant-wide policy that controls which authentication methods are allowed in the tenant, authentication method registration requirements, and self-service password reset settings'
                    DisplayName                 = 'Authentication Methods Policy'
                    Ensure                      = 'Present'
                    Id                          = 'authenticationMethodsPolicy'
                    SystemCredentialPreferences = @{
                        Excludetargets = @()
                        IncludeTargets = @(
                            @{
                                Id         = 'all_users'
                                TargetType = 'group'
                            }
                        )
                        State          = 'disabled'
                    }
                    RegistrationEnforcement     = @{
                        AuthenticationMethodsRegistrationCampaign = @{
                            SnoozeDurationInDays = 10
                            Excludetargets       = @()
                            IncludeTargets       = @(
                                @{
                                    TargetedAuthenticationMethod = 'microsoftAuthenticator'
                                    TargetType                   = 'group'
                                    Id                           = 'all_users'
                                }
                            )
                            State                = 'enabled'
                        }
                    }
                }
            )
            AuthenticationMethodPolicyAuthenticator = @(
                @{
                    Ensure                = 'Present'
                    Id                    = 'MicrosoftAuthenticator'
                    IsSoftwareOathEnabled = $True
                    State                 = 'enabled'
                    Excludetargets        = @()
                    IncludeTargets        = @(
                        @{
                            Id         = 'all_users'
                            TargetType = 'group'
                        }
                    )
                    FeatureSettings       = @{
                        DisplayLocationInformationRequiredState = @{
                            excludetarget = @()
                            IncludeTarget = @{
                                Id         = 'all_users'
                                TargetType = 'group'
                            }
                            State         = 'enabled'
                        }
                        NumberMatchingRequiredState             = @{
                            excludetarget = @()
                            IncludeTarget = @{
                                Id         = 'all_users'
                                TargetType = 'group'
                            }
                            State         = 'enabled'
                        }
                        CompanionAppAllowedState                = @{
                            excludetarget = @()
                            IncludeTarget = @{
                                Id         = 'all_users'
                                TargetType = 'group'
                            }
                            State         = 'enabled'
                        }
                        DisplayAppInformationRequiredState      = @{
                            excludetarget = @()
                            IncludeTarget = @{
                                Id         = 'all_users'
                                TargetType = 'group'
                            }
                            State         = 'enabled'
                        }
                    }
                }
            )
            AuthenticationMethodPolicyEmail         = @(
                @{
                    AllowExternalIdToUseEmailOtp = 'default'
                    Ensure                       = 'Present'
                    Id                           = 'Email'
                    State                        = 'disabled'
                    IncludeTargets               = @()
                    Excludetargets               = @()
                }
            )
            AuthenticationMethodPolicySms           = @(
                @{
                    Ensure         = 'Present'
                    Id             = 'Sms'
                    State          = 'disabled'
                    IncludeTargets = @()
                    Excludetargets = @()
                }
            )
            AuthorizationPolicy                       = @{
                AllowedToSignUpEmailBasedSubscriptions                  = $True
                AllowedToUseSSPR                                        = $True
                AllowEmailVerifiedUsersToJoinOrganization               = $False
                AllowInvitesFrom                                        = 'adminsGuestInvitersAndAllMembers'
                BlockMsolPowerShell                                     = $False
                DefaultUserRoleAllowedToCreateApps                      = $False
                DefaultUserRoleAllowedToCreateSecurityGroups            = $False
                DefaultUserRoleAllowedToCreateTenants                   = $False
                DefaultUserRoleAllowedToReadBitlockerKeysForOwnedDevice = $True
                DefaultUserRoleAllowedToReadOtherUsers                  = $True
                Description                                             = 'Used to manage authorization related settings across the company.'
                DisplayName                                             = 'Authorization Policy'
                Ensure                                                  = 'Present'
                GuestUserRole                                           = 'RestrictedGuest'
                IsSingleInstance                                        = 'Yes'
            }
            GroupLifecyclePolicy                      = @{
                UniqueID            = 'GroupLifecyclePolicy'
                Ensure              = 'Present'
                GroupLifetimeInDays = 365
                IsSingleInstance    = 'Yes'
                ManagedGroupTypes   = 'All'
            }
            GroupsNamingPolicy                        = @{}
            GroupsSettings                            = @{
                AllowGuestsToAccessGroups     = $True
                AllowGuestsToBeGroupOwner     = $False
                AllowToAddGuests              = $True
                EnableGroupCreation           = $False
                EnableMIPLabels               = $True
                Ensure                        = 'Present'
                GuestUsageGuidelinesUrl       = ''
                IsSingleInstance              = 'Yes'
                UsageGuidelinesUrl            = ''
                GroupCreationAllowedGroupName = 'grp-{{Forest_Code}}-rol-g-AddM365Groups'
            }
            SecurityDefaults                          = @{
                Description      = 'Security defaults is a set of basic identity security mechanisms recommended by Microsoft. When enabled, these recommendations will be automatically enforced in your organization. Administrators and users will be better protected from common identity related attacks.'
                DisplayName      = 'Security Defaults'
                IsEnabled        = $False
                IsSingleInstance = 'Yes'
            }
            TenantDetails                             = @{
                IsSingleInstance                     = 'Yes'
                MarketingNotificationEmails          = @()
                SecurityComplianceNotificationMails  = @()
                SecurityComplianceNotificationPhones = @()
                TechnicalNotificationMails           = @('user@domain.com')
            }
        }
    }
}
