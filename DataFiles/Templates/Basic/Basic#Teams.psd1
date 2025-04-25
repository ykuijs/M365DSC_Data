@{
    NonNodeData = @{
        Teams = @{
            AppPermissionPolicy              = @(
                @{
                    DefaultCatalogApps     = @()
                    DefaultCatalogAppsType = 'BlockedAppList'
                    Ensure                 = 'Present'
                    GlobalCatalogApps      = @()
                    GlobalCatalogAppsType  = 'AllowedAppList'
                    Identity               = 'Global'
                    PrivateCatalogApps     = @()
                    PrivateCatalogAppsType = 'AllowedAppList'
                }
            )
            AppSetupPolicy                   = @(
                @{
                    AllowSideLoading = $False
                    AllowUserPinning = $True
                    Ensure           = 'Present'
                    Identity         = 'Global'
                }
                @{
                    AllowSideLoading = $False
                    AllowUserPinning = $True
                    Ensure           = 'Present'
                    Identity         = 'FirstLineWorker'
                }
            )
            AudioConferencingPolicy          = @(
                @{
                    AllowTollFreeDialin       = $True
                    Ensure                    = 'Present'
                    Identity                  = 'Global'
                    MeetingInvitePhoneNumbers = @()
                }
            )
            CallHoldPolicy                   = @(
                @{
                    Ensure   = 'Present'
                    Identity = 'Global'
                }
            )
            ChannelsPolicy                   = @(
                @{
                    AllowChannelSharingToExternalUser             = $True
                    AllowOrgWideTeamCreation                      = $True
                    AllowPrivateChannelCreation                   = $True
                    AllowSharedChannelCreation                    = $True
                    AllowUserToParticipateInExternalSharedChannel = $True
                    EnablePrivateTeamDiscovery                    = $False
                    Ensure                                        = 'Present'
                    Identity                                      = 'Global'
                }
                @{
                    AllowChannelSharingToExternalUser             = $True
                    AllowOrgWideTeamCreation                      = $True
                    AllowPrivateChannelCreation                   = $True
                    AllowSharedChannelCreation                    = $True
                    AllowUserToParticipateInExternalSharedChannel = $True
                    EnablePrivateTeamDiscovery                    = $False
                    Ensure                                        = 'Present'
                    Identity                                      = 'Tag:Default'
                }
            )
            ClientConfiguration              = @{
                AllowBox                         = $False
                AllowDropBox                     = $False
                AllowEgnyte                      = $False
                AllowEmailIntoChannel            = $True
                AllowGoogleDrive                 = $False
                AllowGuestUser                   = $True
                AllowOrganizationTab             = $True
                AllowResourceAccountSendMessage  = $True
                AllowScopedPeopleSearchandAccess = $False
                AllowShareFile                   = $False
                AllowSkypeBusinessInterop        = $True
                ContentPin                       = 'RequiredOutsideScheduleMeeting'
                ResourceAccountContentAccess     = 'NoAccess'
            }
            ComplianceRecordingPolicy        = @(
                @{
                    ComplianceRecordingApplications                     = @()
                    DisableComplianceRecordingAudioNotificationForCalls = $False
                    Enabled                                             = $False
                    Ensure                                              = 'Present'
                    Identity                                            = 'Global'
                    WarnUserOnRemoval                                   = $True
                }
            )
            CortanaPolicy                    = @(
                @{
                    CortanaVoiceInvocationMode = 'WakeWordPushToTalkUserOverride'
                    Ensure                     = 'Present'
                    Identity                   = 'Global'
                }
            )
            DialInConferencingTenantSettings = @{
                AllowPSTNOnlyMeetingsByDefault   = $False
                AutomaticallyMigrateUserMeetings = $True
                AutomaticallyReplaceAcpProvider  = $False
                AutomaticallySendEmailsToUsers   = $True
                EnableDialOutJoinConfirmation    = $False
                EnableEntryExitNotifications     = $True
                EntryExitAnnouncementsType       = 'ToneOnly'
                IsSingleInstance                 = 'Yes'
                MaskPstnNumbersType              = 'MaskedForExternalUsers'
                PinLength                        = 5
            }
            EmergencyCallingPolicy           = @(
                @{
                    Ensure                     = 'Present'
                    ExternalLocationLookupMode = 'Disabled'
                    Identity                   = 'Global'
                }
            )
            FeedbackPolicy                   = @(
                @{
                    AllowEmailCollection      = $False
                    AllowLogCollection        = $False
                    AllowScreenshotCollection = $False
                    Ensure                    = 'Present'
                    Identity                  = 'Global'
                    ReceiveSurveysMode        = 'EnabledUserOverride'
                    UserInitiatedMode         = 'Enabled'
                }
                @{
                    AllowEmailCollection      = $False
                    AllowLogCollection        = $False
                    AllowScreenshotCollection = $False
                    Ensure                    = 'Present'
                    Identity                  = 'Tag:UserChoice'
                    ReceiveSurveysMode        = 'EnabledUserOverride'
                    UserInitiatedMode         = 'Enabled'
                }
                @{
                    AllowEmailCollection      = $False
                    AllowLogCollection        = $False
                    AllowScreenshotCollection = $False
                    Ensure                    = 'Present'
                    Identity                  = 'Tag:Enabled'
                    ReceiveSurveysMode        = 'Enabled'
                    UserInitiatedMode         = 'Enabled'
                }
                @{
                    AllowEmailCollection      = $False
                    AllowLogCollection        = $False
                    AllowScreenshotCollection = $False
                    Ensure                    = 'Present'
                    Identity                  = 'Tag:Disabled'
                    ReceiveSurveysMode        = 'Disabled'
                    UserInitiatedMode         = 'Disabled'
                }
            )
            FilesPolicy                      = @(
                @{

                    Ensure                = 'Present'
                    Identity              = 'Global'
                    NativeFileEntryPoints = 'Enabled'
                    SPChannelFilesTab     = 'Enabled'
                }
            )
            GuestCallingConfiguration        = @{
                AllowPrivateCalling = $True
            }
            GuestMeetingConfiguration        = @{
                AllowIPVideo            = $True
                AllowMeetNow            = $True
                LiveCaptionsEnabledType = 'DisabledUserOverride'
                ScreenSharingMode       = 'EntireScreen'
            }
            GuestMessagingConfiguration      = @{
                AllowGiphy             = $False
                AllowImmersiveReader   = $True
                AllowMemes             = $False
                AllowStickers          = $False
                AllowUserChat          = $True
                AllowUserDeleteChat    = $False
                AllowUserDeleteMessage = $False
                AllowUserEditMessage   = $False
                GiphyRatingType        = 'Moderate'
            }
            IPPhonePolicy                    = @(
                @{
                    AllowBetterTogether            = 'Enabled'
                    AllowHomeScreen                = 'EnabledUserOverride'
                    AllowHotDesking                = $True
                    Ensure                         = 'Present'
                    HotDeskingIdleTimeoutInMinutes = 120
                    Identity                       = 'Global'
                    SearchOnCommonAreaPhoneMode    = 'Enabled'
                    SignInMode                     = 'UserSignIn'
                }
            )
            MeetingConfiguration             = @{
                ClientAppSharingPort        = 50040
                ClientAppSharingPortRange   = 20
                ClientAudioPort             = 50000
                ClientAudioPortRange        = 20
                ClientMediaPortRangeEnabled = $True
                ClientVideoPort             = 50020
                ClientVideoPortRange        = 20
                CustomFooterText            = ''
                DisableAnonymousJoin        = $False
                EnableQoS                   = $False
            }
            MeetingPolicy                    = @(
                @{
                    AllowAnnotations                           = $True
                    AllowAnonymousUsersToDialOut               = $False
                    AllowAnonymousUsersToJoinMeeting           = $True
                    AllowAnonymousUsersToStartMeeting          = $False
                    AllowBreakoutRooms                         = $True
                    AllowCartCaptionsScheduling                = 'DisabledUserOverride'
                    AllowChannelMeetingScheduling              = $True
                    AllowCloudRecording                        = $True
                    AllowDocumentCollaboration                 = 'Enabled'
                    AllowEngagementReport                      = 'Enabled'
                    AllowExternalParticipantGiveRequestControl = $False
                    AllowIPAudio                               = $True
                    AllowIPVideo                               = $True
                    AllowMeetingCoach                          = $True
                    AllowMeetingReactions                      = $True
                    AllowMeetingRegistration                   = $True
                    AllowMeetNow                               = $True
                    AllowNDIStreaming                          = $False
                    AllowNetworkConfigurationSettingsLookup    = $False
                    AllowOrganizersToOverrideLobbySettings     = $False
                    AllowOutlookAddIn                          = $True
                    AllowParticipantGiveRequestControl         = $True
                    AllowPowerPointSharing                     = $True
                    AllowPrivateMeetingScheduling              = $True
                    AllowPrivateMeetNow                        = $True
                    AllowPSTNUsersToBypassLobby                = $False
                    AllowRecordingStorageOutsideRegion         = $False
                    AllowSharedNotes                           = $True
                    AllowTranscription                         = $False
                    AllowWatermarkForCameraVideo               = $True
                    AllowWatermarkForScreenSharing             = $True
                    AllowWhiteboard                            = $True
                    AutoAdmittedUsers                          = 'EveryoneInCompanyExcludingGuests'
                    ChannelRecordingDownload                   = 'Allow'
                    DesignatedPresenterRoleMode                = 'EveryoneInCompanyUserOverride'
                    EnrollUserOverride                         = 'Disabled'
                    Ensure                                     = 'Present'
                    ExplicitRecordingConsent                   = 'Disabled'
                    Identity                                   = 'Global'
                    InfoShownInReportMode                      = 'FullInformation'
                    IPAudioMode                                = 'EnabledOutgoingIncoming'
                    IPVideoMode                                = 'EnabledOutgoingIncoming'
                    LiveCaptionsEnabledType                    = 'Disabled'
                    LiveInterpretationEnabledType              = 'DisabledUserOverride'
                    LiveStreamingMode                          = 'Disabled'
                    MediaBitRateKb                             = 50000
                    MeetingChatEnabledType                     = 'Enabled'
                    NewMeetingRecordingExpirationDays          = 60
                    PreferredMeetingProviderForIslandsMode     = 'TeamsAndSfb'
                    QnAEngagementMode                          = 'Enabled'
                    RoomPeopleNameUserOverride                 = 'Off'
                    ScreenSharingMode                          = 'EntireScreen'
                    SpeakerAttributionMode                     = 'EnabledUserOverride'
                    StreamingAttendeeMode                      = 'Disabled'
                    TeamsCameraFarEndPTZMode                   = 'Disabled'
                    VideoFiltersMode                           = 'AllFilters'
                    WhoCanRegister                             = 'EveryoneInCompany'
                }
                @{
                    AllowAnnotations                           = $True
                    AllowAnonymousUsersToDialOut               = $False
                    AllowAnonymousUsersToJoinMeeting           = $True
                    AllowAnonymousUsersToStartMeeting          = $False
                    AllowBreakoutRooms                         = $True
                    AllowCartCaptionsScheduling                = 'DisabledUserOverride'
                    AllowChannelMeetingScheduling              = $False
                    AllowCloudRecording                        = $False
                    AllowDocumentCollaboration                 = 'Enabled'
                    AllowEngagementReport                      = 'Enabled'
                    AllowExternalParticipantGiveRequestControl = $False
                    AllowIPAudio                               = $True
                    AllowIPVideo                               = $False
                    AllowMeetingCoach                          = $True
                    AllowMeetingReactions                      = $True
                    AllowMeetingRegistration                   = $True
                    AllowMeetNow                               = $False
                    AllowNDIStreaming                          = $False
                    AllowNetworkConfigurationSettingsLookup    = $False
                    AllowOrganizersToOverrideLobbySettings     = $False
                    AllowOutlookAddIn                          = $False
                    AllowParticipantGiveRequestControl         = $False
                    AllowPowerPointSharing                     = $False
                    AllowPrivateMeetingScheduling              = $False
                    AllowPrivateMeetNow                        = $False
                    AllowPSTNUsersToBypassLobby                = $False
                    AllowRecordingStorageOutsideRegion         = $False
                    AllowSharedNotes                           = $False
                    AllowTranscription                         = $False
                    AllowWatermarkForCameraVideo               = $False
                    AllowWatermarkForScreenSharing             = $False
                    AllowWhiteboard                            = $False
                    AutoAdmittedUsers                          = 'EveryoneInCompany'
                    ChannelRecordingDownload                   = 'Allow'
                    DesignatedPresenterRoleMode                = 'EveryoneUserOverride'
                    EnrollUserOverride                         = 'Disabled'
                    Ensure                                     = 'Present'
                    ExplicitRecordingConsent                   = 'Disabled'
                    Identity                                   = 'Tag:AllOff'
                    InfoShownInReportMode                      = 'FullInformation'
                    IPAudioMode                                = 'EnabledOutgoingIncoming'
                    IPVideoMode                                = 'EnabledOutgoingIncoming'
                    LiveCaptionsEnabledType                    = 'Disabled'
                    LiveInterpretationEnabledType              = 'DisabledUserOverride'
                    LiveStreamingMode                          = 'Disabled'
                    MediaBitRateKb                             = 50000
                    MeetingChatEnabledType                     = 'Disabled'
                    NewMeetingRecordingExpirationDays          = 120
                    PreferredMeetingProviderForIslandsMode     = 'TeamsAndSfb'
                    QnAEngagementMode                          = 'Enabled'
                    RoomPeopleNameUserOverride                 = 'Off'
                    ScreenSharingMode                          = 'Disabled'
                    SpeakerAttributionMode                     = 'EnabledUserOverride'
                    StreamingAttendeeMode                      = 'Disabled'
                    TeamsCameraFarEndPTZMode                   = 'Disabled'
                    VideoFiltersMode                           = 'AllFilters'
                    WhoCanRegister                             = 'Everyone'
                }
                @{
                    AllowAnnotations                           = $True
                    AllowAnonymousUsersToDialOut               = $False
                    AllowAnonymousUsersToJoinMeeting           = $True
                    AllowAnonymousUsersToStartMeeting          = $False
                    AllowBreakoutRooms                         = $True
                    AllowCartCaptionsScheduling                = 'DisabledUserOverride'
                    AllowChannelMeetingScheduling              = $True
                    AllowCloudRecording                        = $True
                    AllowDocumentCollaboration                 = 'Enabled'
                    AllowEngagementReport                      = 'Enabled'
                    AllowExternalParticipantGiveRequestControl = $False
                    AllowIPAudio                               = $True
                    AllowIPVideo                               = $True
                    AllowMeetingCoach                          = $True
                    AllowMeetingReactions                      = $True
                    AllowMeetingRegistration                   = $True
                    AllowMeetNow                               = $True
                    AllowNDIStreaming                          = $False
                    AllowNetworkConfigurationSettingsLookup    = $False
                    AllowOrganizersToOverrideLobbySettings     = $False
                    AllowOutlookAddIn                          = $True
                    AllowParticipantGiveRequestControl         = $True
                    AllowPowerPointSharing                     = $True
                    AllowPrivateMeetingScheduling              = $True
                    AllowPrivateMeetNow                        = $True
                    AllowPSTNUsersToBypassLobby                = $False
                    AllowRecordingStorageOutsideRegion         = $False
                    AllowSharedNotes                           = $True
                    AllowTranscription                         = $False
                    AllowWatermarkForCameraVideo               = $False
                    AllowWatermarkForScreenSharing             = $False
                    AllowWhiteboard                            = $True
                    AutoAdmittedUsers                          = 'EveryoneInCompany'
                    ChannelRecordingDownload                   = 'Allow'
                    DesignatedPresenterRoleMode                = 'EveryoneUserOverride'
                    EnrollUserOverride                         = 'Disabled'
                    Ensure                                     = 'Present'
                    ExplicitRecordingConsent                   = 'Disabled'
                    Identity                                   = 'Tag:Default'
                    InfoShownInReportMode                      = 'FullInformation'
                    IPAudioMode                                = 'EnabledOutgoingIncoming'
                    IPVideoMode                                = 'EnabledOutgoingIncoming'
                    LiveCaptionsEnabledType                    = 'DisabledUserOverride'
                    LiveInterpretationEnabledType              = 'DisabledUserOverride'
                    LiveStreamingMode                          = 'Disabled'
                    MediaBitRateKb                             = 50000
                    MeetingChatEnabledType                     = 'Enabled'
                    NewMeetingRecordingExpirationDays          = 120
                    PreferredMeetingProviderForIslandsMode     = 'TeamsAndSfb'
                    QnAEngagementMode                          = 'Enabled'
                    RoomPeopleNameUserOverride                 = 'Off'
                    ScreenSharingMode                          = 'EntireScreen'
                    SpeakerAttributionMode                     = 'EnabledUserOverride'
                    StreamingAttendeeMode                      = 'Disabled'
                    TeamsCameraFarEndPTZMode                   = 'Disabled'
                    VideoFiltersMode                           = 'AllFilters'
                    WhoCanRegister                             = 'Everyone'
                }
                @{
                    AllowAnnotations                           = $True
                    AllowAnonymousUsersToDialOut               = $False
                    AllowAnonymousUsersToJoinMeeting           = $True
                    AllowAnonymousUsersToStartMeeting          = $False
                    AllowBreakoutRooms                         = $True
                    AllowCartCaptionsScheduling                = 'DisabledUserOverride'
                    AllowChannelMeetingScheduling              = $False
                    AllowCloudRecording                        = $False
                    AllowDocumentCollaboration                 = 'Enabled'
                    AllowEngagementReport                      = 'Enabled'
                    AllowExternalParticipantGiveRequestControl = $False
                    AllowIPAudio                               = $True
                    AllowIPVideo                               = $True
                    AllowMeetingCoach                          = $True
                    AllowMeetingReactions                      = $True
                    AllowMeetingRegistration                   = $True
                    AllowMeetNow                               = $True
                    AllowNDIStreaming                          = $False
                    AllowNetworkConfigurationSettingsLookup    = $False
                    AllowOrganizersToOverrideLobbySettings     = $False
                    AllowOutlookAddIn                          = $False
                    AllowParticipantGiveRequestControl         = $True
                    AllowPowerPointSharing                     = $True
                    AllowPrivateMeetingScheduling              = $False
                    AllowPrivateMeetNow                        = $True
                    AllowPSTNUsersToBypassLobby                = $False
                    AllowRecordingStorageOutsideRegion         = $False
                    AllowSharedNotes                           = $True
                    AllowTranscription                         = $False
                    AllowWatermarkForCameraVideo               = $False
                    AllowWatermarkForScreenSharing             = $False
                    AllowWhiteboard                            = $True
                    AutoAdmittedUsers                          = 'EveryoneInCompany'
                    ChannelRecordingDownload                   = 'Allow'
                    DesignatedPresenterRoleMode                = 'EveryoneUserOverride'
                    EnrollUserOverride                         = 'Disabled'
                    Ensure                                     = 'Present'
                    ExplicitRecordingConsent                   = 'Disabled'
                    Identity                                   = 'Tag:Kiosk'
                    InfoShownInReportMode                      = 'FullInformation'
                    IPAudioMode                                = 'EnabledOutgoingIncoming'
                    IPVideoMode                                = 'EnabledOutgoingIncoming'
                    LiveCaptionsEnabledType                    = 'Disabled'
                    LiveInterpretationEnabledType              = 'DisabledUserOverride'
                    LiveStreamingMode                          = 'Disabled'
                    MediaBitRateKb                             = 50000
                    MeetingChatEnabledType                     = 'Enabled'
                    NewMeetingRecordingExpirationDays          = 120
                    PreferredMeetingProviderForIslandsMode     = 'TeamsAndSfb'
                    QnAEngagementMode                          = 'Enabled'
                    RoomPeopleNameUserOverride                 = 'Off'
                    ScreenSharingMode                          = 'EntireScreen'
                    SpeakerAttributionMode                     = 'EnabledUserOverride'
                    StreamingAttendeeMode                      = 'Disabled'
                    TeamsCameraFarEndPTZMode                   = 'Disabled'
                    VideoFiltersMode                           = 'AllFilters'
                    WhoCanRegister                             = 'Everyone'
                }
            )
            MessagingPolicy                  = @(
                @{
                    AllowGiphy                    = $False
                    AllowImmersiveReader          = $True
                    AllowMemes                    = $False
                    AllowOwnerDeleteMessage       = $False
                    AllowPriorityMessages         = $True
                    AllowRemoveUser               = $True
                    AllowSmartCompose             = $True
                    AllowSmartReply               = $True
                    AllowStickers                 = $False
                    AllowUrlPreviews              = $True
                    AllowUserChat                 = $True
                    AllowUserDeleteChat           = $False
                    AllowUserDeleteMessage        = $True
                    AllowUserEditMessage          = $True
                    AllowUserTranslation          = $False
                    AudioMessageEnabledType       = 'ChatsAndChannels'
                    ChannelsInChatListEnabledType = 'DisabledUserOverride'
                    Ensure                        = 'Present'
                    GiphyRatingType               = 'Moderate'
                    Identity                      = 'Global'
                    ReadReceiptsEnabledType       = 'UserPreference'
                }
                @{
                    AllowGiphy                    = $True
                    AllowImmersiveReader          = $True
                    AllowMemes                    = $True
                    AllowOwnerDeleteMessage       = $False
                    AllowPriorityMessages         = $True
                    AllowRemoveUser               = $True
                    AllowSmartCompose             = $True
                    AllowSmartReply               = $True
                    AllowStickers                 = $True
                    AllowUrlPreviews              = $True
                    AllowUserChat                 = $True
                    AllowUserDeleteChat           = $True
                    AllowUserDeleteMessage        = $True
                    AllowUserEditMessage          = $True
                    AllowUserTranslation          = $True
                    AudioMessageEnabledType       = 'ChatsAndChannels'
                    ChannelsInChatListEnabledType = 'DisabledUserOverride'
                    Ensure                        = 'Present'
                    GiphyRatingType               = 'Moderate'
                    Identity                      = 'Default'
                    ReadReceiptsEnabledType       = 'UserPreference'
                }
            )
            MobilityPolicy                   = @(
                @{
                    Ensure                 = 'Present'
                    Identity               = 'Global'
                    IPAudioMobileMode      = 'AllNetworks'
                    IPVideoMobileMode      = 'AllNetworks'
                    MobileDialerPreference = 'Teams'
                }
                @{
                    Ensure                 = 'Present'
                    Identity               = 'Tag:Default'
                    IPAudioMobileMode      = 'AllNetworks'
                    IPVideoMobileMode      = 'AllNetworks'
                    MobileDialerPreference = 'Teams'
                }
            )
            NetworkRoamingPolicy             = @(
                @{
                    AllowIPVideo   = $True
                    Ensure         = 'Present'
                    Identity       = 'Global'
                    MediaBitRateKb = 50000
                }
            )
            OnlineVoicemailPolicy            = @(
                @{
                    EnableEditingCallAnswerRulesSetting = $True
                    EnableTranscription                 = $True
                    EnableTranscriptionProfanityMasking = $False
                    EnableTranscriptionTranslation      = $True
                    Ensure                              = 'Present'
                    Identity                            = 'Global'
                    MaximumRecordingLength              = '00:05:00'
                    ShareData                           = 'Defer'
                }
                @{
                    EnableEditingCallAnswerRulesSetting = $True
                    EnableTranscription                 = $True
                    EnableTranscriptionProfanityMasking = $False
                    EnableTranscriptionTranslation      = $True
                    Ensure                              = 'Present'
                    Identity                            = 'Default'
                    MaximumRecordingLength              = '00:05:00'
                    ShareData                           = 'Defer'
                }
                @{
                    EnableEditingCallAnswerRulesSetting = $True
                    EnableTranscription                 = $False
                    EnableTranscriptionProfanityMasking = $False
                    EnableTranscriptionTranslation      = $True
                    Ensure                              = 'Present'
                    Identity                            = 'TranscriptionDisabled'
                    MaximumRecordingLength              = '00:05:00'
                    ShareData                           = 'Defer'
                }
                @{
                    EnableEditingCallAnswerRulesSetting = $True
                    EnableTranscription                 = $True
                    EnableTranscriptionProfanityMasking = $True
                    EnableTranscriptionTranslation      = $True
                    Ensure                              = 'Present'
                    Identity                            = 'TranscriptionProfanityMaskingEnabled'
                    MaximumRecordingLength              = '00:05:00'
                    ShareData                           = 'Defer'
                }
            )
            UpdateManagementPolicy           = @(
                @{
                    AllowManagedUpdates = $False
                    AllowPreview        = $False
                    AllowPublicPreview  = 'Disabled'
                    Ensure              = 'Present'
                    Identity            = 'Global'
                    UpdateDayOfWeek     = 1
                    UpdateTime          = '18:00'
                    UpdateTimeOfDay     = '18:00'
                    UseNewTeamsClient   = 'MicrosoftChoice'
                }
                @{
                    AllowManagedUpdates = $False
                    AllowPreview        = $False
                    AllowPublicPreview  = 'Enabled'
                    Ensure              = 'Present'
                    Identity            = 'Tag:Custom - Follow Office Preview'
                    UpdateDayOfWeek     = 1
                    UpdateTime          = '18:00'
                    UpdateTimeOfDay     = '18:00'
                    UseNewTeamsClient   = 'MicrosoftChoice'
                }
            )
            UpgradeConfiguration             = @{
                DownloadTeams    = $False
                IsSingleInstance = 'Yes'
                SfBMeetingJoinUx = 'NativeLimitedClient'
            }
            WorkloadPolicy                   = @(
                @{
                    AllowCalling         = $True
                    AllowCallingPinned   = $True
                    AllowMeeting         = $True
                    AllowMeetingPinned   = $True
                    AllowMessaging       = $True
                    AllowMessagingPinned = $True
                    Ensure               = 'Present'
                    Identity             = 'Global'
                }
            )
        }
    }
}
