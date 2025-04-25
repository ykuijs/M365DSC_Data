<#  Onderdeel      = @(
    @{ is voor de for each variant.

    Onderdeel      = @{
    Is voor de variant als ze single instance zijn.
#>
@{
    NonNodeData = @{
        SharePoint = @{
            AccessControlSettings = @{
                ConditionalAccessPolicy      = 'AllowFullAccess'
                DisallowInfectedFileDownload = $True
                DisplayStartASiteOption      = $False
                EmailAttestationReAuthDays   = 14
                EmailAttestationRequired     = $True
                Ensure                       = 'Present'
                ExternalServicesEnabled      = $True
                IPAddressAllowList           = ''
                IPAddressEnforcement         = $False
                IPAddressWACTokenLifetime    = 15
                IsSingleInstance             = 'Yes'
            }
            BrowserIdleSignout    = @{
                Enabled      = $True
                SignOutAfter = '01:00:00'
                WarnAfter    = '00:55:00'
            }
            SharingSettings       = @{
                BccExternalSharingInvitations              = $False
                DefaultLinkPermission                      = 'View'
                DefaultSharingLinkType                     = 'Direct'
                EnableGuestSignInAcceleration              = $False
                Ensure                                     = 'Present'
                FileAnonymousLinkType                      = 'View'
                FolderAnonymousLinkType                    = 'View'
                IsSingleInstance                           = 'Yes'
                MySiteSharingCapability                    = 'ExternalUserAndGuestSharing'
                NotifyOwnersWhenItemsReshared              = $True
                PreventExternalUsersFromResharing          = $True
                ProvisionSharedWithEveryoneFolder          = $False
                RequireAcceptingAccountMatchInvitedAccount = $True
                RequireAnonymousLinksExpireInDays          = 14
                UniqueId                                   = 'SharingAllowList'
                SharingCapability                          = 'ExternalUserAndGuestSharing'
                SharingDomainRestrictionMode               = 'AllowList'
                ShowAllUsersClaim                          = $False
                ShowEveryoneClaim                          = $False
                ShowEveryoneExceptExternalUsersClaim       = $True
                ShowPeoplePickerSuggestionsForGuestUsers   = $False
            }
            TenantCdnEnabled      = @(
                @{
                    CdnType = 'Public'
                    Enable  = $False
                }
                @{
                    CdnType = 'Private'
                    Enable  = $False
                }
            )
            TenantSettings        = @{
                ApplyAppEnforcedRestrictionsToAdHocRecipients = $True
                CommentsOnSitePagesDisabled                   = $False
                Ensure                                        = 'Present'
                FilePickerExternalImageSearchEnabled          = $True
                HideDefaultThemes                             = $False
                LegacyAuthProtocolsEnabled                    = $False
                MarkNewFilesSensitiveByDefault                = 'AllowExternalSharing'
                MaxCompatibilityLevel                         = 15
                MinCompatibilityLevel                         = 15
                NotificationsInSharePointEnabled              = $True
                OfficeClientADALDisabled                      = $False
                OwnerAnonymousNotification                    = $True
                PublicCdnAllowedFileTypes                     = 'CSS,EOT,GIF,ICO,JPEG,JPG,JS,MAP,PNG,SVG,TTF,WOFF'
                PublicCdnEnabled                              = $False
                SearchResolveExactEmailOrUPN                  = $False
                SignInAccelerationDomain                      = ''
                UseFindPeopleInPeoplePicker                   = $False
                UsePersistentCookiesForExplorerView           = $False
                UserVoiceForFeedbackEnabled                   = $True
                SocialBarOnSitePagesDisabled                  = $False
            }
        }
    }
}
