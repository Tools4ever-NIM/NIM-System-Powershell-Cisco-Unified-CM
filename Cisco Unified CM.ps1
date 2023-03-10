#
# Cisco Unified CM.ps1 - Cisco Unified CM (AXL API)
#


$Log_MaskableKeys = @(
    # Put a comma-separated list of attribute names here, whose value should be masked before 
    'Password'
)


#
# System functions
#
function Idm-SystemInfo {
    param (
        # Operations
        [switch] $Connection,
        [switch] $TestConnection,
        [switch] $Configuration,
        # Parameters
        [string] $ConnectionParams
    )

    Log info "-Connection=$Connection -TestConnection=$TestConnection -Configuration=$Configuration -ConnectionParams='$ConnectionParams'"
    
    if ($Connection) {
        @(
            @{
                name = 'hostname'
                type = 'textbox'
                label = 'Hostname'
                description = 'Hostname of server'
                value = ''
            }
            @{
                name = 'username'
                type = 'textbox'
                label = 'Username'
                label_indent = $true
                description = 'User account name'
                value = ''
            }
            @{
                name = 'password'
                type = 'textbox'
                password = $true
                label = 'Password'
                label_indent = $true
                description = 'User account password'
                value = ''
            }
            @{
                name = 'version'
                type = 'textbox'
                label = 'Version'
                label_indent = $true
                description = 'AXL API Version'
                value = '14.0'
            }
            @{
                name = 'nr_of_sessions'
                type = 'textbox'
                label = 'Max. number of simultaneous sessions'
                description = ''
                value = 5
            }
            @{
                name = 'sessions_idle_timeout'
                type = 'textbox'
                label = 'Session cleanup idle time (minutes)'
                description = ''
                value = 30
            }
        )
    }

    if ($TestConnection) {
        
    }

    if ($Configuration) {
        @()
    }

    Log info "Done"
}

function Idm-OnUnload {
}


#
# Object CRUD functions
#
$Properties = @{
    Line = @(
        @{ name = 'uuid';                              options = @('default','key')                      }    
        @{ name = 'pattern';                              options = @('default')                      }
        @{ name = 'description';                              options = @('default')                      }
        @{ name = 'usage';                              options = @('default')                      }
        @{ name = 'routePartitionName';                              options = @('default')                      }
        @{ name = 'aarNeighborhoodName';                              options = @('default')                      }
        @{ name = 'aarDestinationMask';                              options = @('default')                      }
        @{ name = 'aarKeepCallHistory';                              options = @('default')                      }
        @{ name = 'aarVoiceMailEnabled';                              options = @('default')                      }
        @{ name = 'callPickupGroupName';                              options = @('default')                      }
        @{ name = 'autoAnswer';                              options = @('default')                      }
        @{ name = 'networkHoldMohAudioSourceId';                              options = @('default')                      }
        @{ name = 'userHoldMohAudioSourceId';                              options = @('default')                      }
        @{ name = 'callingIdPresentationWhenDiverted';                              options = @('default')                      }
        @{ name = 'alertingName';                              options = @('default')                      }
        @{ name = 'asciiAlertingName';                              options = @('default')                      }
        @{ name = 'presenceGroupName';                              options = @('default')                      }
        @{ name = 'shareLineAppearanceCssName';                              options = @('default')                      }
        @{ name = 'voiceMailProfileName';                              options = @('default')                      }
        @{ name = 'patternPrecedence';                              options = @('default')                      }
        @{ name = 'releaseClause';                              options = @('default')                      }
        @{ name = 'hrDuration';                              options = @('default')                      }
        @{ name = 'hrInterval';                              options = @('default')                      }
        @{ name = 'cfaCssPolicy';                              options = @('default')                      }
        @{ name = 'defaultActivatedDeviceName';                              options = @('default')                      }
        @{ name = 'parkMonForwardNoRetrieveDn';                              options = @('default')                      }
        @{ name = 'parkMonForwardNoRetrieveIntDn';                              options = @('default')                      }
        @{ name = 'parkMonForwardNoRetrieveVmEnabled';                              options = @('default')                      }
        @{ name = 'parkMonForwardNoRetrieveIntVmEnabled';                              options = @('default')                      }
        @{ name = 'parkMonForwardNoRetrieveCssName';                              options = @('default')                      }
        @{ name = 'parkMonForwardNoRetrieveIntCssName';                              options = @('default')                      }
        @{ name = 'parkMonReversionTimer';                              options = @('default')                      }
        @{ name = 'partyEntranceTone';                              options = @('default')                      }
        @{ name = 'allowCtiControlFlag';                              options = @('default')                      }
        @{ name = 'rejectAnonymousCall';                              options = @('default')                      }
        @{ name = 'confidentialAccess';                              options = @('default')                      }
        @{ name = 'externalCallControlProfile';                              options = @('default')                      }
        @{ name = 'enterpriseAltNum';                              options = @('default')                      }
        @{ name = 'e164AltNum';                              options = @('default')                      }
        @{ name = 'pstnFailover';                              options = @('default')                      }
    )
    CallingSearchSpace = @(
        @{ name = 'uuid';                              options = @('default','key')                      }    
        @{ name = 'description';                              options = @('default')                      }
        @{ name = 'clause';                              options = @('default')                      }
        @{ name = 'dialPlanWizardGenId';                              options = @('default')                      }
        @{ name = 'partitionUsage';                              options = @('default')                      }
        @{ name = 'name';                              options = @('default')                      }

    )
    CommonPhoneConfig = @(
        @{ name = 'uuid';                              options = @('default','key')                      }    
        @{ name = 'description';                              options = @('default')                      }
        @{ name = 'dndOption';                              options = @('default')                      }
        @{ name = 'dndAlertingType';                              options = @('default')                      }
        @{ name = 'backgroundImage';                              options = @('default')                      }
        @{ name = 'phonePersonalization';                              options = @('default')                      }
        @{ name = 'phoneServiceDisplay';                              options = @('default')                      }
        @{ name = 'sshUserId';                              options = @('default')                      }
        @{ name = 'alwaysUsePrimeLine';                              options = @('default')                      }
        @{ name = 'allwaysUsePrimeLineForVoiceMessage';                              options = @('default')                      }
        @{ name = 'vpnGroupName';                              options = @('default')                      }
        @{ name = 'vpnProfileName';                              options = @('default')                      }
        @{ name = 'featureControlPolicy';                              options = @('default')                      }
    )
    DevicePool = @(
        @{ name = 'uuid';                              options = @('default','key')                      }        
        @{ name = 'name';                              options = @('default')                      }
        @{ name = 'autoSearchSpaceName';                              options = @('default')                      }
        @{ name = 'dateTimeSettingName_uuid';                              options = @('default')                      }
        @{ name = 'dateTimeSettingName_{#text}';                              options = @('default')                      }
        @{ name = 'callManagerGroupName_uuid';                              options = @('default')                      }
        @{ name = 'callManagerGroupName_{#text}';                              options = @('default')                      }
        @{ name = 'mediaResourceListName_uuid';                              options = @('default')                      }
        @{ name = 'mediaResourceListName_{#text}';                              options = @('default')                      }
        @{ name = 'regionName_uuid';                              options = @('default')                      }
        @{ name = 'regionName_{#text}';                              options = @('default')                      }
        @{ name = 'networkLocale';                              options = @('default')                      }
        @{ name = 'srstName_uuid';                              options = @('default')                      }
        @{ name = 'srstName_{#text}';                              options = @('default')                      }
        @{ name = 'connectionMonitorDuration';                              options = @('default')                      }
        @{ name = 'automatedAlternateRoutingCssName';                              options = @('default')                      }
        @{ name = 'aarNeighborhoodName';                              options = @('default')                      }
        @{ name = 'locationName';                              options = @('default')                      }
        @{ name = 'mobilityCssName';                              options = @('default')                      }
        @{ name = 'physicalLocationName';                              options = @('default')                      }
        @{ name = 'deviceMobilityGroupName';                              options = @('default')                      }
        @{ name = 'revertPriority';                              options = @('default')                      }
        @{ name = 'singleButtonBarge';                              options = @('default')                      }
        @{ name = 'joinAcrossLines';                              options = @('default')                      }
        @{ name = 'cgpnTransformationCssName';                              options = @('default')                      }
        @{ name = 'cdpnTransformationCssName';                              options = @('default')                      }
        @{ name = 'localRouteGroupName';                              options = @('default')                      }
        @{ name = 'geoLocationName';                              options = @('default')                      }
        @{ name = 'geoLocationFilterName';                              options = @('default')                      }
        @{ name = 'callingPartyNationalPrefix';                              options = @('default')                      }
        @{ name = 'callingPartyInternationalPrefix';                              options = @('default')                      }
        @{ name = 'callingPartyUnknownPrefix';                              options = @('default')                      }
        @{ name = 'callingPartySubscriberPrefix';                              options = @('default')                      }
        @{ name = 'adjunctCallingSearchSpace';                              options = @('default')                      }
        @{ name = 'callingPartyNationalStripDigits';                              options = @('default')                      }
        @{ name = 'callingPartyInternationalStripDigits';                              options = @('default')                      }
        @{ name = 'callingPartyUnknownStripDigits';                              options = @('default')                      }
        @{ name = 'callingPartySubscriberStripDigits';                              options = @('default')                      }
        @{ name = 'callingPartyNationalTransformationCssName';                              options = @('default')                      }
        @{ name = 'callingPartyInternationalTransformationCssName';                              options = @('default')                      }
        @{ name = 'callingPartyUnknownTransformationCssName';                              options = @('default')                      }
        @{ name = 'callingPartySubscriberTransformationCssName';                              options = @('default')                      }
        @{ name = 'calledPartyNationalPrefix';                              options = @('default')                      }
        @{ name = 'calledPartyInternationalPrefix';                              options = @('default')                      }
        @{ name = 'calledPartyUnknownPrefix';                              options = @('default')                      }
        @{ name = 'calledPartySubscriberPrefix';                              options = @('default')                      }
        @{ name = 'calledPartyNationalStripDigits';                              options = @('default')                      }
        @{ name = 'calledPartyInternationalStripDigits';                              options = @('default')                      }
        @{ name = 'calledPartyUnknownStripDigits';                              options = @('default')                      }
        @{ name = 'calledPartySubscriberStripDigits';                              options = @('default')                      }
        @{ name = 'calledPartyNationalTransformationCssName';                              options = @('default')                      }
        @{ name = 'calledPartyInternationalTransformationCssName';                              options = @('default')                      }
        @{ name = 'calledPartyUnknownTransformationCssName';                              options = @('default')                      }
        @{ name = 'calledPartySubscriberTransformationCssName';                              options = @('default')                      }
        @{ name = 'imeEnrolledPatternGroupName';                              options = @('default')                      }
        @{ name = 'localRouteGroup';                              options = @('default')                      }
        @{ name = 'mraServiceDomain';                              options = @('default')                      }
    )
    Location = @(
        @{ name = 'uuid';                              options = @('default','key')                      }        
        @{ name = 'name';                              options = @('default')                      }
        @{ name = 'withinAudioBandwidth';                              options = @('default')                      }
        @{ name = 'withinVideoBandwidth';                              options = @('default')                      }
        @{ name = 'withinImmersiveKbits';                              options = @('default')                      }
       
    )
    MediaResourceGroup = @(
        @{ name = 'uuid';                              options = @('default','key')                      }        
        @{ name = 'name';                              options = @('default')                      }
        @{ name = 'clause';                              options = @('default')                      }      
    )
    MohAudioSource = @(
        @{ name = 'uuid';                              options = @('default','key')                      }        
        @{ name = 'sourceId';                              options = @('default')                      }
        @{ name = 'name';                              options = @('default')                      }
        @{ name = 'sourceFile';                              options = @('default')                      }      
        @{ name = 'multicast';                              options = @('default')                      }      
        @{ name = 'mohFileStatus';                              options = @('default')                      }      
        @{ name = 'initialAnnouncement';                              options = @('default')                      }      
        @{ name = 'periodicAnnouncement';                              options = @('default')                      }      
        @{ name = 'periodicAnnouncementInterval';                              options = @('default')                      }      
        @{ name = 'localeAnnouncement';                              options = @('default')                      }      
        @{ name = 'initialAnnouncementPlayed';                              options = @('default')                      }      
    )
    Phone = @(
        @{ name = 'uuid';                              options = @('default','key')                      }        
        @{ name = 'name';                              options = @('default')                      }
        @{ name = 'description';                              options = @('default')                      }
        @{ name = 'product';                              options = @('default')                      }
        @{ name = 'model';                              options = @('default')                      }
        @{ name = 'class';                              options = @('default')                      }
        @{ name = 'protocol';                              options = @('default')                      }
        @{ name = 'protocolSide';                              options = @('default')                      }
        @{ name = 'callingSearchSpaceName';                              options = @('default')                      }
        @{ name = 'devicePoolName';                              options = @('default')                      }
        @{ name = 'commonDeviceConfigName';                              options = @('default')                      }
        @{ name = 'commonPhoneConfigName';                              options = @('default')                      }
        @{ name = 'networkLocation';                              options = @('default')                      }
        @{ name = 'locationName';                              options = @('default')                      }
        @{ name = 'mediaResourceListName';                              options = @('default')                      }
        @{ name = 'networkHoldMohAudioSourceId';                              options = @('default')                      }
        @{ name = 'userHoldMohAudioSourceId';                              options = @('default')                      }
        @{ name = 'automatedAlternateRoutingCssName';                              options = @('default')                      }
        @{ name = 'aarNeighborhoodName';                              options = @('default')                      }
        @{ name = 'loadInformation';                              options = @('default')                      }
        @{ name = 'traceFlag';                              options = @('default')                      }
        @{ name = 'mlppIndicationStatus';                              options = @('default')                      }
        @{ name = 'preemption';                              options = @('default')                      }
        @{ name = 'useTrustedRelayPoint';                              options = @('default')                      }
        @{ name = 'retryVideoCallAsAudio';                              options = @('default')                      }
        @{ name = 'securityProfileName';                              options = @('default')                      }
        @{ name = 'sipProfileName';                              options = @('default')                      }
        @{ name = 'cgpnTransformationCssName';                              options = @('default')                      }
        @{ name = 'useDevicePoolCgpnTransformCss';                              options = @('default')                      }
        @{ name = 'geoLocationName';                              options = @('default')                      }
        @{ name = 'geoLocationFilterName';                              options = @('default')                      }
        @{ name = 'sendGeoLocation';                              options = @('default')                      }
        @{ name = 'numberOfButtons';                              options = @('default')                      }
        @{ name = 'phoneTemplateName';                              options = @('default')                      }
        @{ name = 'primaryPhoneName';                              options = @('default')                      }
        @{ name = 'ringSettingIdleBlfAudibleAlert';                              options = @('default')                      }
        @{ name = 'ringSettingBusyBlfAudibleAlert';                              options = @('default')                      }
        @{ name = 'userLocale';                              options = @('default')                      }
        @{ name = 'networkLocale';                              options = @('default')                      }
        @{ name = 'idleTimeout';                              options = @('default')                      }
        @{ name = 'authenticationUrl';                              options = @('default')                      }
        @{ name = 'directoryUrl';                              options = @('default')                      }
        @{ name = 'idleUrl';                              options = @('default')                      }
        @{ name = 'informationUrl';                              options = @('default')                      }
        @{ name = 'messagesUrl';                              options = @('default')                      }
        @{ name = 'proxyServerUrl';                              options = @('default')                      }
        @{ name = 'servicesUrl';                              options = @('default')                      }
        @{ name = 'softkeyTemplateName';                              options = @('default')                      }
        @{ name = 'loginUserId';                              options = @('default')                      }
        @{ name = 'defaultProfileName';                              options = @('default')                      }
        @{ name = 'enableExtensionMobility';                              options = @('default')                      }
        @{ name = 'currentProfileName';                              options = @('default')                      }
        @{ name = 'loginTime';                              options = @('default')                      }
        @{ name = 'loginDuration';                              options = @('default')                      }
        @{ name = 'currentConfig';                              options = @('default')                      }
        @{ name = 'singleButtonBarge';                              options = @('default')                      }
        @{ name = 'joinAcrossLines';                              options = @('default')                      }
        @{ name = 'builtInBridgeStatus';                              options = @('default')                      }
        @{ name = 'callInfoPrivacyStatus';                              options = @('default')                      }
        @{ name = 'hlogStatus';                              options = @('default')                      }
        @{ name = 'ownerUserName';                              options = @('default')                      }
        @{ name = 'ignorePresentationIndicators';                              options = @('default')                      }
        @{ name = 'packetCaptureMode';                              options = @('default')                      }
        @{ name = 'packetCaptureDuration';                              options = @('default')                      }
        @{ name = 'subscribeCallingSearchSpaceName';                              options = @('default')                      }
        @{ name = 'rerouteCallingSearchSpaceName';                              options = @('default')                      }
        @{ name = 'allowCtiControlFlag';                              options = @('default')                      }
        @{ name = 'presenceGroupName';                              options = @('default')                      }
        @{ name = 'unattendedPort';                              options = @('default')                      }
        @{ name = 'requireDtmfReception';                              options = @('default')                      }
        @{ name = 'rfc2833Disabled';                              options = @('default')                      }
        @{ name = 'certificateOperation';                              options = @('default')                      }
        @{ name = 'authenticationMode';                              options = @('default')                      }
        @{ name = 'keySize';                              options = @('default')                      }
        @{ name = 'keyOrder';                              options = @('default')                      }
        @{ name = 'ecKeySize';                              options = @('default')                      }
        @{ name = 'authenticationString';                              options = @('default')                      }
        @{ name = 'certificateStatus';                              options = @('default')                      }
        @{ name = 'upgradeFinishTime';                              options = @('default')                      }
        @{ name = 'deviceMobilityMode';                              options = @('default')                      }
        @{ name = 'roamingDevicePoolName';                              options = @('default')                      }
        @{ name = 'remoteDevice';                              options = @('default')                      }
        @{ name = 'dndOption';                              options = @('default')                      }
        @{ name = 'dndRingSetting';                              options = @('default')                      }
        @{ name = 'dndStatus';                              options = @('default')                      }
        @{ name = 'isActive';                              options = @('default')                      }
        @{ name = 'isDualMode';                              options = @('default')                      }
        @{ name = 'mobilityUserIdName';                              options = @('default')                      }
        @{ name = 'phoneSuite';                              options = @('default')                      }
        @{ name = 'phoneServiceDisplay';                              options = @('default')                      }
        @{ name = 'isProtected';                              options = @('default')                      }
        @{ name = 'mtpRequired';                              options = @('default')                      }
        @{ name = 'mtpPreferedCodec';                              options = @('default')                      }
        @{ name = 'dialRulesName';                              options = @('default')                      }
        @{ name = 'sshUserId';                              options = @('default')                      }
        @{ name = 'digestUser';                              options = @('default')                      }
        @{ name = 'outboundCallRollover';                              options = @('default')                      }
        @{ name = 'hotlineDevice';                              options = @('default')                      }
        @{ name = 'secureInformationUrl';                              options = @('default')                      }
        @{ name = 'secureDirectoryUrl';                              options = @('default')                      }
        @{ name = 'secureMessageUrl';                              options = @('default')                      }
        @{ name = 'secureServicesUrl';                              options = @('default')                      }
        @{ name = 'secureAuthenticationUrl';                              options = @('default')                      }
        @{ name = 'secureIdleUrl';                              options = @('default')                      }
        @{ name = 'alwaysUsePrimeLine';                              options = @('default')                      }
        @{ name = 'alwaysUsePrimeLineForVoiceMessage';                              options = @('default')                      }
        @{ name = 'featureControlPolicy';                              options = @('default')                      }
        @{ name = 'deviceTrustMode';                              options = @('default')                      }
        @{ name = 'earlyOfferSupportForVoiceCall';                              options = @('default')                      }
        @{ name = 'requireThirdPartyRegistration';                              options = @('default')                      }
        @{ name = 'blockIncomingCallsWhenRoaming';                              options = @('default')                      }
        @{ name = 'homeNetworkId';                              options = @('default')                      }
        @{ name = 'AllowPresentationSharingUsingBfcp';                              options = @('default')                      }
        @{ name = 'confidentialAccess';                              options = @('default')                      }
        @{ name = 'requireOffPremiseLocation';                              options = @('default')                      }
        @{ name = 'allowiXApplicableMedia';                              options = @('default')                      }
        @{ name = 'enableCallRoutingToRdWhenNoneIsActive';                              options = @('default')                      }
        @{ name = 'enableActivationID';                              options = @('default')                      }
        @{ name = 'mraServiceDomain';                              options = @('default')                      }
        @{ name = 'allowMraMode';                              options = @('default')                      }  
    )
    PhoneTemplate = @(
        @{ name = 'pkid';                              options = @('default','key')                      }        
        @{ name = 'name';                              options = @('default')                      }
        @{ name = 'numofbuttons';                              options = @('default')                      }
        @{ name = 'usermodifiable';                              options = @('default')                      }
        @{ name = 'tkmodel';                              options = @('default')                      }
        @{ name = 'tkdeviceprotocol';                              options = @('default')                      }
        @{ name = 'privatetemplate';                              options = @('default')                      }
        @{ name = 'versionstamp';                              options = @('default')                      }
        @{ name = 'resettoggle';                              options = @('default')                      }
        @{ name = 'tkreset';                              options = @('default')                      }
    )
    Product = @(
        @{ name = 'enum';                              options = @('default','key')                      }        
        @{ name = 'name';                              options = @('default')                      }
        @{ name = 'moniker';                              options = @('default')                      }
        @{ name = 'tkmodel';                              options = @('default')                      }
        @{ name = 'maxports';                              options = @('default')                      }
        @{ name = 'showindropdown';                              options = @('default')                      }
        @{ name = 'devicenameformat';                              options = @('default')                      }
        @{ name = 'isinstalleddefault';                              options = @('default')                      }
        @{ name = 'devicenamestring';                              options = @('default')                      }
    )
    SipProfile = @(
        @{ name = 'uuid';                              options = @('default','key')                      }            
        @{ name = 'name';                              options = @('default')                      }
        @{ name = 'description';                              options = @('default')                      }
        @{ name = 'defaultTelephonyEventPayloadType';                              options = @('default')                      }
        @{ name = 'redirectByApplication';                              options = @('default')                      }
        @{ name = 'ringing180';                              options = @('default')                      }
        @{ name = 'timerInvite';                              options = @('default')                      }
        @{ name = 'timerRegisterDelta';                              options = @('default')                      }
        @{ name = 'timerRegister';                              options = @('default')                      }
        @{ name = 'timerT1';                              options = @('default')                      }
        @{ name = 'timerT2';                              options = @('default')                      }
        @{ name = 'retryInvite';                              options = @('default')                      }
        @{ name = 'retryNotInvite';                              options = @('default')                      }
        @{ name = 'startMediaPort';                              options = @('default')                      }
        @{ name = 'stopMediaPort';                              options = @('default')                      }
        @{ name = 'callpickupListUri';                              options = @('default')                      }
        @{ name = 'callpickupGroupUri';                              options = @('default')                      }
        @{ name = 'meetmeServiceUrl';                              options = @('default')                      }
        @{ name = 'userInfo';                              options = @('default')                      }
        @{ name = 'dtmfDbLevel';                              options = @('default')                      }
        @{ name = 'callHoldRingback';                              options = @('default')                      }
        @{ name = 'anonymousCallBlock';                              options = @('default')                      }
        @{ name = 'callerIdBlock';                              options = @('default')                      }
        @{ name = 'dndControl';                              options = @('default')                      }
        @{ name = 'telnetLevel';                              options = @('default')                      }
        @{ name = 'timerKeepAlive';                              options = @('default')                      }
        @{ name = 'timerSubscribe';                              options = @('default')                      }
        @{ name = 'timerSubscribeDelta';                              options = @('default')                      }
        @{ name = 'maxRedirects';                              options = @('default')                      }
        @{ name = 'timerOffHookToFirstDigit';                              options = @('default')                      }
        @{ name = 'callForwardUri';                              options = @('default')                      }
        @{ name = 'abbreviatedDialUri';                              options = @('default')                      }
        @{ name = 'confJointEnable';                              options = @('default')                      }
        @{ name = 'rfc2543Hold';                              options = @('default')                      }
        @{ name = 'semiAttendedTransfer';                              options = @('default')                      }
        @{ name = 'enableVad';                              options = @('default')                      }
        @{ name = 'stutterMsgWaiting';                              options = @('default')                      }
        @{ name = 'callStats';                              options = @('default')                      }
        @{ name = 't38Invite';                              options = @('default')                      }
        @{ name = 'faxInvite';                              options = @('default')                      }
        @{ name = 'rerouteIncomingRequest';                              options = @('default')                      }
        @{ name = 'resourcePriorityNamespaceListName';                              options = @('default')                      }
        @{ name = 'enableAnatForEarlyOfferCalls';                              options = @('default')                      }
        @{ name = 'rsvpOverSip';                              options = @('default')                      }
        @{ name = 'fallbackToLocalRsvp';                              options = @('default')                      }
        @{ name = 'sipRe11XxEnabled';                              options = @('default')                      }
        @{ name = 'gClear';                              options = @('default')                      }
        @{ name = 'sendRecvSDPInMidCallInvite';                              options = @('default')                      }
        @{ name = 'enableOutboundOptionsPing';                              options = @('default')                      }
        @{ name = 'optionsPingIntervalWhenStatusOK';                              options = @('default')                      }
        @{ name = 'optionsPingIntervalWhenStatusNotOK';                              options = @('default')                      }
        @{ name = 'deliverConferenceBridgeIdentifier';                              options = @('default')                      }
        @{ name = 'sipOptionsRetryCount';                              options = @('default')                      }
        @{ name = 'sipOptionsRetryTimer';                              options = @('default')                      }
        @{ name = 'sipBandwidthModifier';                              options = @('default')                      }
        @{ name = 'enableUriOutdialSupport';                              options = @('default')                      }
        @{ name = 'userAgentServerHeaderInfo';                              options = @('default')                      }
        @{ name = 'allowPresentationSharingUsingBfcp';                              options = @('default')                      }
        @{ name = 'scriptParameters';                              options = @('default')                      }
        @{ name = 'isScriptTraceEnabled';                              options = @('default')                      }
        @{ name = 'sipNormalizationScript';                              options = @('default')                      }
        @{ name = 'allowiXApplicationMedia';                              options = @('default')                      }
        @{ name = 'dialStringInterpretation';                              options = @('default')                      }
        @{ name = 'acceptAudioCodecPreferences';                              options = @('default')                      }
        @{ name = 'mlppUserAuthorization';                              options = @('default')                      }
        @{ name = 'isAssuredSipServiceEnabled';                              options = @('default')                      }
        @{ name = 'resourcePriorityNamespace';                              options = @('default')                      }
        @{ name = 'useCallerIdCallerNameinUriOutgoingRequest';                              options = @('default')                      }
        @{ name = 'callingLineIdentification';                              options = @('default')                      }
        @{ name = 'rejectAnonymousIncomingCall';                              options = @('default')                      }
        @{ name = 'callpickupUri';                              options = @('default')                      }
        @{ name = 'rejectAnonymousOutgoingCall';                              options = @('default')                      }
        @{ name = 'videoCallTrafficClass';                              options = @('default')                      }
        @{ name = 'sdpTransparency';                              options = @('default')                      }
        @{ name = 'allowMultipleCodecs';                              options = @('default')                      }
        @{ name = 'sipSessionRefreshMethod';                              options = @('default')                      }
        @{ name = 'earlyOfferSuppVoiceCall';                              options = @('default')                      }
        @{ name = 'cucmVersionInSipHeader';                              options = @('default')                      }
        @{ name = 'confidentialAccessLevelHeaders';                              options = @('default')                      }
        @{ name = 'destRouteString';                              options = @('default')                      }
        @{ name = 'inactiveSDPRequired';                              options = @('default')                      }
        @{ name = 'allowRRAndRSBandwidthModifier';                              options = @('default')                      }
    )
    UniversalDeviceTemplate = @(
        @{ name = 'uuid';                              options = @('default','key')                      }                
        @{ name = 'name';                              options = @('default')                      }
        @{ name = 'deviceDescription';                              options = @('default')                      }
        @{ name = 'devicePool';                              options = @('default')                      }
        @{ name = 'deviceSecurityProfile';                              options = @('default')                      }
        @{ name = 'sipProfile';                              options = @('default')                      }
        @{ name = 'phoneButtonTemplate';                              options = @('default')                      }
        @{ name = 'sipDialRules';                              options = @('default')                      }
        @{ name = 'callingSearchSpace';                              options = @('default')                      }
        @{ name = 'callingPartyTransformationCSSForInboundCalls';                              options = @('default')                      }
        @{ name = 'callingPartyTransformationCSSForOutboundCalls';                              options = @('default')                      }
        @{ name = 'reroutingCallingSearchSpace';                              options = @('default')                      }
        @{ name = 'subscribeCallingSearchSpaceName';                              options = @('default')                      }
        @{ name = 'useDevicePoolCallingPartyTransformationCSSforInboundCalls';                              options = @('default')                      }
        @{ name = 'useDevicePoolCallingPartyTransformationCSSforOutboundCalls';                              options = @('default')                      }
        @{ name = 'commonPhoneProfile';                              options = @('default')                      }
        @{ name = 'commonDeviceConfiguration';                              options = @('default')                      }
        @{ name = 'softkeyTemplate';                              options = @('default')                      }
        @{ name = 'featureControlPolicy';                              options = @('default')                      }
        @{ name = 'phonePersonalization';                              options = @('default')                      }
        @{ name = 'mtpPreferredOriginatingCodec';                              options = @('default')                      }
        @{ name = 'outboundCallRollover';                              options = @('default')                      }
        @{ name = 'mediaTerminationPointRequired';                              options = @('default')                      }
        @{ name = 'unattendedPort';                              options = @('default')                      }
        @{ name = 'requiredDtmfReception';                              options = @('default')                      }
        @{ name = 'rfc2833Disabled';                              options = @('default')                      }
        @{ name = 'useTrustedRelayPoint';                              options = @('default')                      }
        @{ name = 'protectedDevice';                              options = @('default')                      }
        @{ name = 'certificateOperation';                              options = @('default')                      }
        @{ name = 'authenticationMode';                              options = @('default')                      }
        @{ name = 'authenticationString';                              options = @('default')                      }
        @{ name = 'keySize';                              options = @('default')                      }
        @{ name = 'keyOrder';                              options = @('default')                      }
        @{ name = 'ecKeySize';                              options = @('default')                      }
        @{ name = 'servicesProvisioning';                              options = @('default')                      }
        @{ name = 'packetCaptureMode';                              options = @('default')                      }
        @{ name = 'packetCaptureDuration';                              options = @('default')                      }
        @{ name = 'secureShellUser';                              options = @('default')                      }
        @{ name = 'secureShellPassword';                              options = @('default')                      }
        @{ name = 'userLocale';                              options = @('default')                      }
        @{ name = 'networkLocale';                              options = @('default')                      }
        @{ name = 'mlppDomain';                              options = @('default')                      }
        @{ name = 'mlppIndication';                              options = @('default')                      }
        @{ name = 'mlppPreemption';                              options = @('default')                      }
        @{ name = 'doNotDisturb';                              options = @('default')                      }
        @{ name = 'dndOption';                              options = @('default')                      }
        @{ name = 'dndIncomingCallAlert';                              options = @('default')                      }
        @{ name = 'aarGroup';                              options = @('default')                      }
        @{ name = 'aarCallingSearchSpace';                              options = @('default')                      }
        @{ name = 'blfPresenceGroup';                              options = @('default')                      }
        @{ name = 'blfAudibleAlertSettingPhoneBusy';                              options = @('default')                      }
        @{ name = 'blfAudibleAlertSettingPhoneIdle';                              options = @('default')                      }
        @{ name = 'userHoldMohAudioSource';                              options = @('default')                      }
        @{ name = 'networkHoldMohAudioSource';                              options = @('default')                      }
        @{ name = 'location';                              options = @('default')                      }
        @{ name = 'geoLocation';                              options = @('default')                      }
        @{ name = 'deviceMobilityMode';                              options = @('default')                      }
        @{ name = 'mediaResourceGroupList';                              options = @('default')                      }
        @{ name = 'remoteDevice';                              options = @('default')                      }
        @{ name = 'hotlineDevice';                              options = @('default')                      }
        @{ name = 'retryVideoCallAsAudio';                              options = @('default')                      }
        @{ name = 'requireOffPremiseLocation';                              options = @('default')                      }
        @{ name = 'ownerUserId';                              options = @('default')                      }
        @{ name = 'mobilityUserId';                              options = @('default')                      }
        @{ name = 'joinAcrossLines';                              options = @('default')                      }
        @{ name = 'alwaysUsePrimeLine';                              options = @('default')                      }
        @{ name = 'alwaysUsePrimeLineForVoiceMessage';                              options = @('default')                      }
        @{ name = 'singleButtonBarge';                              options = @('default')                      }
        @{ name = 'builtInBridge';                              options = @('default')                      }
        @{ name = 'allowControlOfDeviceFromCti';                              options = @('default')                      }
        @{ name = 'ignorePresentationIndicators';                              options = @('default')                      }
        @{ name = 'enableExtensionMobility';                              options = @('default')                      }
        @{ name = 'privacy';                              options = @('default')                      }
        @{ name = 'loggedIntoHuntGroup';                              options = @('default')                      }
        @{ name = 'proxyServer';                              options = @('default')                      }
        @{ name = 'servicesUrl';                              options = @('default')                      }
        @{ name = 'idle';                              options = @('default')                      }
        @{ name = 'idleTimer';                              options = @('default')                      }
        @{ name = 'secureDirUrl';                              options = @('default')                      }
        @{ name = 'messages';                              options = @('default')                      }
        @{ name = 'secureIdleUrl';                              options = @('default')                      }
        @{ name = 'authenticationServer';                              options = @('default')                      }
        @{ name = 'directory';                              options = @('default')                      }
        @{ name = 'secureServicesUrl';                              options = @('default')                      }
        @{ name = 'information';                              options = @('default')                      }
        @{ name = 'secureMessagesUrl';                              options = @('default')                      }
        @{ name = 'secureInformationUrl';                              options = @('default')                      }
        @{ name = 'secureAuthenticationUrl';                              options = @('default')                      }
        @{ name = 'confidentialAccess';                              options = @('default')                      }
    )
}

function Idm-LinesRead {
    param (
        [switch] $GetMeta,
        [string] $SystemParams,
        [string] $FunctionParams
    )
    $Class = "Line"
    Log info "-GetMeta=$GetMeta -SystemParams='$SystemParams' -FunctionParams='$FunctionParams'"

    if ($GetMeta) {

        Get-ClassMetaData -SystemParams $SystemParams -Class $Class
    }
    else {
        $system_params   = ConvertFrom-Json2 $SystemParams
        $function_params = ConvertFrom-Json2 $FunctionParams

        $properties = $function_params.properties

        if ($properties.length -eq 0) {
            $properties = ($Global:Properties.$Class | Where-Object { $_.options.Contains('default') }).name
        }

        # Assure key is the first column
        $key = ($Global:Properties.$Class | Where-Object { $_.options.Contains('key') }).name
        $properties = @($key) + @($properties | Where-Object { $_ -ne $key })

        try { 
                $xmlRequest = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ns="http://www.cisco.com/AXL/API/{0}">
                <soapenv:Header/>
                <soapenv:Body>
                    <ns:listLine>
                        <searchCriteria>
                            <pattern>%</pattern>
                        </searchCriteria>
                        <returnedTags>
                            <pattern>?</pattern>
                            <description>?</description>
                            <usage>?</usage>
                            <aarVoiceMailEnabled>?</aarVoiceMailEnabled>
                            <alertingName>?</alertingName>
                            <asciiAlertingName>?</asciiAlertingName>
                        </returnedTags>
                    </ns:listLine>
                </soapenv:Body>
                </soapenv:Envelope>' -f $system_params.version

                $response = Open-CiscoUnifiedCMConnection -SystemParams $system_params -FunctionParams $function_params -SoapAction "listLine" -SoapBody $xmlRequest

                $response.Envelope.Body.listLineResponse.return.line | Select-Object $properties
            }
            catch {
                Log error "Failed: $_"
                Write-Error $_
            }
    }

    Log info "Done"
}

function Idm-CallingSearchSpacesRead {
    param (
        [switch] $GetMeta,
        [string] $SystemParams,
        [string] $FunctionParams
    )

    $Class = "CallingSearchSpace"
    Log info "-GetMeta=$GetMeta -SystemParams='$SystemParams' -FunctionParams='$FunctionParams'"

    if ($GetMeta) {

        Get-ClassMetaData -SystemParams $SystemParams -Class $Class
    }
    else {
        $system_params   = ConvertFrom-Json2 $SystemParams
        $function_params = ConvertFrom-Json2 $FunctionParams

        $properties = $function_params.properties

        if ($properties.length -eq 0) {
            $properties = ($Global:Properties.$Class | Where-Object { $_.options.Contains('default') }).name
        }

        # Assure key is the first column
        $key = ($Global:Properties.$Class | Where-Object { $_.options.Contains('key') }).name
        $properties = @($key) + @($properties | Where-Object { $_ -ne $key })

        try { 
                $xmlRequest = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ns="http://www.cisco.com/AXL/API/{0}">
                <soapenv:Header/>
                <soapenv:Body>
                   <ns:listCss>
                      <searchCriteria>
                         <name>%</name>
                      </searchCriteria>
                      <returnedTags uuid="?">
                         <description>?</description>
                         <clause>?</clause>
                         <dialPlanWizardGenId>?</dialPlanWizardGenId>
                         <partitionUsage>?</partitionUsage>
                         <name>?</name>
                      </returnedTags>
                   </ns:listCss>
                </soapenv:Body>
             </soapenv:Envelope>' -f $system_params.version

                $response = Open-CiscoUnifiedCMConnection -SystemParams $system_params -FunctionParams $function_params -SoapAction "listCss" -SoapBody $xmlRequest

                $response.Envelope.Body.listCssResponse.return.css | Select-Object $properties
            }
            catch {
                Log error "Failed: $_"
                Write-Error $_
            }
    }

    Log info "Done"
}

function Idm-CommonPhoneConfigRead {
    param (
        [switch] $GetMeta,
        [string] $SystemParams,
        [string] $FunctionParams
    )
    $Class = "CommonPhoneConfig"
    Log info "-GetMeta=$GetMeta -SystemParams='$SystemParams' -FunctionParams='$FunctionParams'"

    if ($GetMeta) {

        Get-ClassMetaData -SystemParams $SystemParams -Class $Class
    }
    else {
        $system_params   = ConvertFrom-Json2 $SystemParams
        $function_params = ConvertFrom-Json2 $FunctionParams

        $properties = $function_params.properties

        if ($properties.length -eq 0) {
            $properties = ($Global:Properties.$Class | Where-Object { $_.options.Contains('default') }).name
        }

        # Assure key is the first column
        $key = ($Global:Properties.$Class | Where-Object { $_.options.Contains('key') }).name
        $properties = @($key) + @($properties | Where-Object { $_ -ne $key })

        try { 
                $xmlRequest = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ns="http://www.cisco.com/AXL/API/{0}">
                <soapenv:Header/>
                <soapenv:Body>
                   <ns:listCommonPhoneConfig>
                      <searchCriteria>
                         <name>%</name>
                      </searchCriteria>
                      <returnedTags>
                         <name/>
                         <description/>
                         <dndOption/>
                         <dndAlertingType/>
                         <backgroundImage/>
                         <phonePersonalization/>
                         <phoneServiceDisplay/>
                         <sshUserId/>
                         <alwaysUsePrimeLine/>
                         <alwaysUsePrimeLineForVoiceMessage/>
                         <vpnGroupName/>
                         <vpnProfileName/>
                         <featureControlPolicy/>
                      </returnedTags>
                   </ns:listCommonPhoneConfig>
                </soapenv:Body>
             </soapenv:Envelope>' -f $system_params.version
                
                $response = Open-CiscoUnifiedCMConnection -SystemParams $system_params -FunctionParams $function_params -SoapAction "listCommonPhoneConfig" -SoapBody $xmlRequest

                $response.Envelope.Body.listCommonPhoneConfigResponse.return.commonPhoneConfig | Select-Object $properties
            }
            catch {
                Log error "Failed: $_"
                Write-Error $_
            }
    }

    Log info "Done"
}

function Idm-DevicePoolsRead {
    param (
        [switch] $GetMeta,
        [string] $SystemParams,
        [string] $FunctionParams
    )

    $Class = "DevicePool"
    Log info "-GetMeta=$GetMeta -SystemParams='$SystemParams' -FunctionParams='$FunctionParams'"

    if ($GetMeta) {

        Get-ClassMetaData -SystemParams $SystemParams -Class $Class
    }
    else {
        $system_params   = ConvertFrom-Json2 $SystemParams
        $function_params = ConvertFrom-Json2 $FunctionParams

        $properties = $function_params.properties

        if ($properties.length -eq 0) {
            $properties = ($Global:Properties.$Class | Where-Object { $_.options.Contains('default') }).name           
        }

        # Assure key is the first column
        $key = ($Global:Properties.$Class | Where-Object { $_.options.Contains('key') }).name
        $properties = @($key) + @($properties | Where-Object { $_ -ne $key })

        try { 
                $xmlRequest = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ns="http://www.cisco.com/AXL/API/{0}">
                <soapenv:Header/>
                <soapenv:Body>
                   <ns:listDevicePool>
                      <searchCriteria>
                            <name>%</name>
                       </searchCriteria>
                       <returnedTags>
                         <name/>
                         <autoSearchSpaceName/>
                         <dateTimeSettingName/>
                         <callManagerGroupName/>
                         <mediaResourceListName/>
                         <regionName/>
                         <networkLocale/>
                         <srstName/>
                         <connectionMonitorDuration/>
                         <automatedAlternateRoutingCssName/>
                         <aarNeighborhoodName/>
                         <locationName/>
                         <mobilityCssName/>
                         <physicalLocationName/>
                         <deviceMobilityGroupName/>
                         <revertPriority/>
                         <singleButtonBarge/>
                         <joinAcrossLines/>
                         <cgpnTransformationCssName/>
                         <cdpnTransformationCssName/>
                         <localRouteGroupName/>
                         <geoLocationName/>
                         <geoLocationFilterName/>
                         <callingPartyNationalPrefix/>
                         <callingPartyInternationalPrefix/>
                         <callingPartyUnknownPrefix/>
                         <callingPartySubscriberPrefix/>
                         <adjunctCallingSearchSpace/>
                         <callingPartyNationalStripDigits/>
                         <callingPartyInternationalStripDigits/>
                         <callingPartyUnknownStripDigits/>
                         <callingPartySubscriberStripDigits/>
                         <callingPartyNationalTransformationCssName/>
                         <callingPartyInternationalTransformationCssName/>
                         <callingPartyUnknownTransformationCssName/>
                         <callingPartySubscriberTransformationCssName/>
                         <calledPartyNationalPrefix/>
                         <calledPartyInternationalPrefix/>
                         <calledPartyUnknownPrefix/>
                         <calledPartySubscriberPrefix/>
                         <calledPartyNationalStripDigits/>
                         <calledPartyInternationalStripDigits/>
                         <calledPartyUnknownStripDigits/>
                         <calledPartySubscriberStripDigits/>
                         <calledPartyNationalTransformationCssName/>
                         <calledPartyInternationalTransformationCssName/>
                         <calledPartyUnknownTransformationCssName/>
                         <calledPartySubscriberTransformationCssName/>
                         <imeEnrolledPatternGroupName/>
                         <localRouteGroup>
                            <name/>
                            <value/>
                         </localRouteGroup>
                      </returnedTags>
                   </ns:listDevicePool>
                </soapenv:Body>
             </soapenv:Envelope>' -f $system_params.version
                
                $response = Open-CiscoUnifiedCMConnection -SystemParams $system_params -FunctionParams $function_params -SoapAction "listDevicePool" -SoapBody $xmlRequest
      
                foreach($item in $response.Envelope.Body.listDevicePoolResponse.return.devicePool )
                {
                    ($item | ConvertTo-FlatObject) | Select-Object $properties                 
                }

            }
            catch {
                Log error "Failed: $_"
                Write-Error $_
            }
    }

    Log info "Done"
}

function Idm-LocationsRead {
    param (
        [switch] $GetMeta,
        [string] $SystemParams,
        [string] $FunctionParams
    )

    $Class = "Location"
    Log info "-GetMeta=$GetMeta -SystemParams='$SystemParams' -FunctionParams='$FunctionParams'"

    if ($GetMeta) {

        Get-ClassMetaData -SystemParams $SystemParams -Class $Class
    }
    else {
        $system_params   = ConvertFrom-Json2 $SystemParams
        $function_params = ConvertFrom-Json2 $FunctionParams

        $properties = $function_params.properties

        if ($properties.length -eq 0) {
            $properties = ($Global:Properties.$Class | Where-Object { $_.options.Contains('default') }).name           
        }

        # Assure key is the first column
        $key = ($Global:Properties.$Class | Where-Object { $_.options.Contains('key') }).name
        $properties = @($key) + @($properties | Where-Object { $_ -ne $key })

        try { 
                $xmlRequest = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ns="http://www.cisco.com/AXL/API/{0}">
                <soapenv:Header/>
                <soapenv:Body>
                   <ns:listLocation>
                      <searchCriteria>
                         <name>%</name>
                      </searchCriteria>
                      <returnedTags>
                         <name/>
                         <id/>
                         <withinAudioBandwidth/>
                         <withinVideoBandwidth/>
                         <withinImmersiveKbits/>
                      </returnedTags>
                   </ns:listLocation>
                </soapenv:Body>
             </soapenv:Envelope>' -f $system_params.version
                
                $response = Open-CiscoUnifiedCMConnection -SystemParams $system_params -FunctionParams $function_params -SoapAction "listLocation" -SoapBody $xmlRequest
      
                foreach($item in $response.Envelope.Body.listLocationResponse.return.location )
                {
                    ($item | ConvertTo-FlatObject) | Select-Object $properties                 
                }

            }
            catch {
                Log error "Failed: $_"
                Write-Error $_
            }
    }

    Log info "Done"
}

function Idm-MediaResourceGroupsRead {
    param (
        [switch] $GetMeta,
        [string] $SystemParams,
        [string] $FunctionParams
    )

    $Class = "MediaResourceGroup"
    Log info "-GetMeta=$GetMeta -SystemParams='$SystemParams' -FunctionParams='$FunctionParams'"

    if ($GetMeta) {

        Get-ClassMetaData -SystemParams $SystemParams -Class $Class
    }
    else {
        $system_params   = ConvertFrom-Json2 $SystemParams
        $function_params = ConvertFrom-Json2 $FunctionParams

        $properties = $function_params.properties

        if ($properties.length -eq 0) {
            $properties = ($Global:Properties.$Class | Where-Object { $_.options.Contains('default') }).name           
        }

        # Assure key is the first column
        $key = ($Global:Properties.$Class | Where-Object { $_.options.Contains('key') }).name
        $properties = @($key) + @($properties | Where-Object { $_ -ne $key })

        try { 
                $xmlRequest = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ns="http://www.cisco.com/AXL/API/{0}">
                <soapenv:Header/>
                <soapenv:Body>
                   <ns:listMediaResourceGroup>
                      <searchCriteria>
                         <name>%</name>
                      </searchCriteria>
                      <returnedTags>
                         <name/>
                         <description/>
                         <multicast/>
                      </returnedTags>
                   </ns:listMediaResourceGroup>
                </soapenv:Body>
             </soapenv:Envelope>' -f $system_params.version
                
                $response = Open-CiscoUnifiedCMConnection -SystemParams $system_params -FunctionParams $function_params -SoapAction "listMediaResourceGroup" -SoapBody $xmlRequest
      
                foreach($item in $response.Envelope.Body.listMediaResourceGroupResponse.return.mediaResourceGroup )
                {
                    ($item | ConvertTo-FlatObject) | Select-Object $properties                 
                }

            }
            catch {
                Log error "Failed: $_"
                Write-Error $_
            }
    }

    Log info "Done"
}

function Idm-MohAudioSourcesRead {
    param (
        [switch] $GetMeta,
        [string] $SystemParams,
        [string] $FunctionParams
    )

    $Class = "MohAudioSource"
    Log info "-GetMeta=$GetMeta -SystemParams='$SystemParams' -FunctionParams='$FunctionParams'"

    if ($GetMeta) {

        Get-ClassMetaData -SystemParams $SystemParams -Class $Class
    }
    else {
        $system_params   = ConvertFrom-Json2 $SystemParams
        $function_params = ConvertFrom-Json2 $FunctionParams

        $properties = $function_params.properties

        if ($properties.length -eq 0) {
            $properties = ($Global:Properties.$Class | Where-Object { $_.options.Contains('default') }).name           
        }

        # Assure key is the first column
        $key = ($Global:Properties.$Class | Where-Object { $_.options.Contains('key') }).name
        $properties = @($key) + @($properties | Where-Object { $_ -ne $key })

        try { 
                $xmlRequest = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ns="http://www.cisco.com/AXL/API/{0}">
                <soapenv:Header/>
                <soapenv:Body>
                   <ns:listMohAudioSource>
                      <searchCriteria>
                         <name>%</name>
                      </searchCriteria>
                      <returnedTags>
                         <sourceId/>
                         <name/>
                         <sourceFile/>
                         <multicast/>
                         <mohFileStatus/>
                         <initialAnnouncement/>
                         <periodicAnnouncement/>
                         <periodicAnnouncementInterval/>
                         <localeAnnouncement/>
                         <initialAnnouncementPlayed/>
                      </returnedTags>
                   </ns:listMohAudioSource>
                </soapenv:Body>
             </soapenv:Envelope>' -f $system_params.version
                
                $response = Open-CiscoUnifiedCMConnection -SystemParams $system_params -FunctionParams $function_params -SoapAction "listMohAudioSource" -SoapBody $xmlRequest
      
                foreach($item in $response.Envelope.Body.listMohAudioSourceResponse.return.mohAudioSource )
                {
                    ($item | ConvertTo-FlatObject) | Select-Object $properties                 
                }

            }
            catch {
                Log error "Failed: $_"
                Write-Error $_
            }
    }

    Log info "Done"
}
function Idm-PhonesRead {
    param (
        [switch] $GetMeta,
        [string] $SystemParams,
        [string] $FunctionParams
    )

    $Class = "Phone"
    Log info "-GetMeta=$GetMeta -SystemParams='$SystemParams' -FunctionParams='$FunctionParams'"

    if ($GetMeta) {

        Get-ClassMetaData -SystemParams $SystemParams -Class $Class
    }
    else {
        $system_params   = ConvertFrom-Json2 $SystemParams
        $function_params = ConvertFrom-Json2 $FunctionParams

        $properties = $function_params.properties

        if ($properties.length -eq 0) {
            $properties = ($Global:Properties.$Class | Where-Object { $_.options.Contains('default') }).name           
        }

        # Assure key is the first column
        $key = ($Global:Properties.$Class | Where-Object { $_.options.Contains('key') }).name
        $properties = @($key) + @($properties | Where-Object { $_ -ne $key })

        try { 
                $xmlRequest = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ns="http://www.cisco.com/AXL/API/{0}">
                <soapenv:Header/>
                <soapenv:Body>
                   <ns:listPhone>
                      <searchCriteria>
                            <name>%</name>
                       </searchCriteria>
                       <returnedTags>
                         <name/>
                         <description/>
                         <product/>
                         <model/>
                         <class/>
                      </returnedTags>
                   </ns:listPhone>
                </soapenv:Body>
             </soapenv:Envelope>' -f $system_params.version
                
                $response = Open-CiscoUnifiedCMConnection -SystemParams $system_params -FunctionParams $function_params -SoapAction "listPhone" -SoapBody $xmlRequest
      
                foreach($item in $response.Envelope.Body.listPhoneResponse.return.phone )
                {
                    ($item | ConvertTo-FlatObject) | Select-Object $properties                 
                }

            }
            catch {
                Log error "Failed: $_"
                Write-Error $_
            }
    }

    Log info "Done"
}

function Idm-PhoneTemplatesRead {
    param (
        [switch] $GetMeta,
        [string] $SystemParams,
        [string] $FunctionParams
    )

    $Class = "PhoneTemplate"
    Log info "-GetMeta=$GetMeta -SystemParams='$SystemParams' -FunctionParams='$FunctionParams'"

    if ($GetMeta) {

        Get-ClassMetaData -SystemParams $SystemParams -Class $Class
    }
    else {
        $system_params   = ConvertFrom-Json2 $SystemParams
        $function_params = ConvertFrom-Json2 $FunctionParams

        $properties = $function_params.properties

        if ($properties.length -eq 0) {
            $properties = ($Global:Properties.$Class | Where-Object { $_.options.Contains('default') }).name           
        }

        # Assure key is the first column
        $key = ($Global:Properties.$Class | Where-Object { $_.options.Contains('key') }).name
        $properties = @($key) + @($properties | Where-Object { $_ -ne $key })

        try { 
                $xmlRequest = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ns="http://www.cisco.com/AXL/API/{0}">
                <soapenv:Header/>
                <soapenv:Body>
                   <ns:executeSQLQuery>
                      <sql>select * from phonetemplate</sql>
                   </ns:executeSQLQuery>
                </soapenv:Body>
             </soapenv:Envelope>' -f $system_params.version
                
                $response = Open-CiscoUnifiedCMConnection -SystemParams $system_params -FunctionParams $function_params -SoapAction "executeSQLQuery" -SoapBody $xmlRequest
      
                foreach($item in $response.Envelope.Body.executeSQLQueryResponse.return.row )
                {
                    ($item | ConvertTo-FlatObject) | Select-Object $properties                 
                }

            }
            catch {
                Log error "Failed: $_"
                Write-Error $_
            }
    }

    Log info "Done"
}

function Idm-ProductsRead {
    param (
        [switch] $GetMeta,
        [string] $SystemParams,
        [string] $FunctionParams
    )

    $Class = "Product"
    Log info "-GetMeta=$GetMeta -SystemParams='$SystemParams' -FunctionParams='$FunctionParams'"

    if ($GetMeta) {

        Get-ClassMetaData -SystemParams $SystemParams -Class $Class
    }
    else {
        $system_params   = ConvertFrom-Json2 $SystemParams
        $function_params = ConvertFrom-Json2 $FunctionParams

        $properties = $function_params.properties

        if ($properties.length -eq 0) {
            $properties = ($Global:Properties.$Class | Where-Object { $_.options.Contains('default') }).name           
        }

        # Assure key is the first column
        $key = ($Global:Properties.$Class | Where-Object { $_.options.Contains('key') }).name
        $properties = @($key) + @($properties | Where-Object { $_ -ne $key })

        try { 
                $xmlRequest = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ns="http://www.cisco.com/AXL/API/{0}">
                <soapenv:Header/>
                <soapenv:Body>
                   <ns:executeSQLQuery>
                      <sql>SELECT * FROM typeproduct</sql>
                   </ns:executeSQLQuery>
                </soapenv:Body>
             </soapenv:Envelope>' -f $system_params.version
                
                $response = Open-CiscoUnifiedCMConnection -SystemParams $system_params -FunctionParams $function_params -SoapAction "executeSQLQuery" -SoapBody $xmlRequest
      
                foreach($item in $response.Envelope.Body.executeSQLQueryResponse.return.row )
                {
                    ($item | ConvertTo-FlatObject) | Select-Object $properties                 
                }

            }
            catch {
                Log error "Failed: $_"
                Write-Error $_
            }
    }

    Log info "Done"
}

function Idm-SipProfilesRead {
    param (
        [switch] $GetMeta,
        [string] $SystemParams,
        [string] $FunctionParams
    )

    $Class = "SipProfile"
    Log info "-GetMeta=$GetMeta -SystemParams='$SystemParams' -FunctionParams='$FunctionParams'"

    if ($GetMeta) {

        Get-ClassMetaData -SystemParams $SystemParams -Class $Class
    }
    else {
        $system_params   = ConvertFrom-Json2 $SystemParams
        $function_params = ConvertFrom-Json2 $FunctionParams

        $properties = $function_params.properties

        if ($properties.length -eq 0) {
            $properties = ($Global:Properties.$Class | Where-Object { $_.options.Contains('default') }).name           
        }

        # Assure key is the first column
        $key = ($Global:Properties.$Class | Where-Object { $_.options.Contains('key') }).name
        $properties = @($key) + @($properties | Where-Object { $_ -ne $key })

        try { 
                $xmlRequest = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ns="http://www.cisco.com/AXL/API/{0}">
                <soapenv:Header/>
                <soapenv:Body>
                    <ns:listSipProfile>
                        <searchCriteria>           
                            <name>%</name>
                        </searchCriteria>
                        <returnedTags>            
                            <name/>
                            <description/>
                            <defaultTelephonyEventPayloadType/>
                            <redirectByApplication/>
                            <ringing180/>
                            <timerInvite/>
                            <timerRegisterDelta/>
                            <timerRegister/>
                            <timerT1/>
                            <timerT2/>
                            <retryInvite/>
                            <retryNotInvite/>
                            <startMediaPort/>
                            <stopMediaPort/>
                            <callpickupListUri/>
                            <callpickupGroupUri/>
                            <meetmeServiceUrl/>
                            <userInfo/>
                            <dtmfDbLevel/>
                            <callHoldRingback/>
                            <anonymousCallBlock/>
                            <callerIdBlock/>
                            <dndControl/>
                            <telnetLevel/>
                            <timerKeepAlive/>
                            <timerSubscribe/>
                            <timerSubscribeDelta/>
                            <maxRedirects/>
                            <timerOffHookToFirstDigit/>
                            <callForwardUri/>
                            <abbreviatedDialUri/>
                            <confJointEnable/>
                            <rfc2543Hold/>
                            <semiAttendedTransfer/>
                            <enableVad/>
                            <stutterMsgWaiting/>
                            <callStats/>
                            <t38Invite/>
                            <rerouteIncomingRequest/>
                            <resourcePriorityNamespaceListName/>
                            <enableAnatForEarlyOfferCalls/>
                            <rsvpOverSip/>
                            <fallbackToLocalRsvp/>
                            <sipRe11XxEnabled/>
                            <gClear/>
                            <sendRecvSDPInMidCallInvite/>
                            <enableOutboundOptionsPing/>
                            <optionsPingIntervalWhenStatusOK/>
                            <optionsPingIntervalWhenStatusNotOK/>
                            <deliverConferenceBridgeIdentifier/>
                            <sipOptionsRetryCount/>
                            <sipOptionsRetryTimer/>
                            <sipBandwidthModifier/>
                            <enableUriOutdialSupport/>
                            <userAgentServerHeaderInfo/>
                            <allowPresentationSharingUsingBfcp/>
                            <scriptParameters/>
                            <isScriptTraceEnabled/>
                            <sipNormalizationScript/>
                            <allowiXApplicationMedia/>
                            <dialStringInterpretation/>
                            <acceptAudioCodecPreferences/>
                            <mlppUserAuthorization/>
                            <isAssuredSipServiceEnabled/>
                            <resourcePriorityNamespace/>
                            <useCallerIdCallerNameinUriOutgoingRequest/>
                            <callingLineIdentification/>
                            <rejectAnonymousIncomingCall/>
                            <callpickupUri/>
                            <rejectAnonymousOutgoingCall/>
                            <videoCallTrafficClass/>
                            <sdpTransparency/>
                            <allowMultipleCodecs/>
                            <sipSessionRefreshMethod/>
                            <earlyOfferSuppVoiceCall/>
                            <cucmVersionInSipHeader/>
                            <confidentialAccessLevelHeaders/>
                            <destRouteString/>
                            <inactiveSDPRequired/>
                        </returnedTags>
                    </ns:listSipProfile>
                </soapenv:Body>
             </soapenv:Envelope>' -f $system_params.version
                
                $response = Open-CiscoUnifiedCMConnection -SystemParams $system_params -FunctionParams $function_params -SoapAction "listSipProfile" -SoapBody $xmlRequest
      
                foreach($item in $response.Envelope.Body.listSipProfileResponse.return.sipProfile )
                {
                    ($item | ConvertTo-FlatObject) | Select-Object $properties                 
                }

            }
            catch {
                Log error "Failed: $_"
                Write-Error $_
            }
    }

    Log info "Done"
}

function Idm-UniversalDeviceTemplatesRead {
    param (
        [switch] $GetMeta,
        [string] $SystemParams,
        [string] $FunctionParams
    )

    $Class = "UniversalDeviceTemplate"
    Log info "-GetMeta=$GetMeta -SystemParams='$SystemParams' -FunctionParams='$FunctionParams'"

    if ($GetMeta) {

        Get-ClassMetaData -SystemParams $SystemParams -Class $Class
    }
    else {
        $system_params   = ConvertFrom-Json2 $SystemParams
        $function_params = ConvertFrom-Json2 $FunctionParams

        $properties = $function_params.properties

        if ($properties.length -eq 0) {
            $properties = ($Global:Properties.$Class | Where-Object { $_.options.Contains('default') }).name           
        }

        # Assure key is the first column
        $key = ($Global:Properties.$Class | Where-Object { $_.options.Contains('key') }).name
        $properties = @($key) + @($properties | Where-Object { $_ -ne $key })

        try { 
                $xmlRequest = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ns="http://www.cisco.com/AXL/API/{0}">
                <soapenv:Header/>
                <soapenv:Body>
                    <ns:listUniversalDeviceTemplate sequence="?">
                    <searchCriteria>
                        <name>%</name>
                    </searchCriteria>
                    <returnedTags>
                    <name>?</name>
                    <deviceDescription>?</deviceDescription>
                    <devicePool>?</devicePool>
                    <deviceSecurityProfile>?</deviceSecurityProfile>
                    <sipProfile>?</sipProfile>
                    <phoneButtonTemplate>?</phoneButtonTemplate>
                    <sipDialRules>?</sipDialRules>
                    <callingSearchSpace>?</callingSearchSpace>
                    <callingPartyTransformationCSSForInboundCalls>?</callingPartyTransformationCSSForInboundCalls>
                    <callingPartyTransformationCSSForOutboundCalls>?</callingPartyTransformationCSSForOutboundCalls>
                    <reroutingCallingSearchSpace>?</reroutingCallingSearchSpace>
                    <subscribeCallingSearchSpaceName>?</subscribeCallingSearchSpaceName>
                    <useDevicePoolCallingPartyTransformationCSSforInboundCalls>?</useDevicePoolCallingPartyTransformationCSSforInboundCalls>
                    <useDevicePoolCallingPartyTransformationCSSforOutboundCalls>?</useDevicePoolCallingPartyTransformationCSSforOutboundCalls>
                    <commonPhoneProfile>?</commonPhoneProfile>
                    <commonDeviceConfiguration>?</commonDeviceConfiguration>
                    <softkeyTemplate>?</softkeyTemplate>
                    <featureControlPolicy>?</featureControlPolicy>
                    <phonePersonalization>?</phonePersonalization>
                    <mtpPreferredOriginatingCodec>?</mtpPreferredOriginatingCodec>
                    <outboundCallRollover>?</outboundCallRollover>
                    <mediaTerminationPointRequired>?</mediaTerminationPointRequired>
                    <unattendedPort>?</unattendedPort>
                    <requiredDtmfReception>?</requiredDtmfReception>
                    <rfc2833Disabled>?</rfc2833Disabled>
                    <useTrustedRelayPoint>?</useTrustedRelayPoint>
                    <protectedDevice>?</protectedDevice>
                    <authenticationMode>?</authenticationMode>
                    <authenticationString>?</authenticationString>
                    <keySize>?</keySize>
                    <servicesProvisioning>?</servicesProvisioning>
                    <packetCaptureMode>?</packetCaptureMode>
                    <packetCaptureDuration>?</packetCaptureDuration>
                    <secureShellUser>?</secureShellUser>
                    <secureShellPassword>?</secureShellPassword>
                    <userLocale>?</userLocale>
                    <networkLocale>?</networkLocale>
                    <mlppDomain>?</mlppDomain>
                    <mlppIndication>?</mlppIndication>
                    <mlppPreemption>?</mlppPreemption>
                    <doNotDisturb>?</doNotDisturb>
                    <dndOption>?</dndOption>
                    <dndIncomingCallAlert>?</dndIncomingCallAlert>
                    <aarGroup>?</aarGroup>
                    <aarCallingSearchSpace>?</aarCallingSearchSpace>
                    <blfPresenceGroup>?</blfPresenceGroup>
                    <blfAudibleAlertSettingPhoneBusy>?</blfAudibleAlertSettingPhoneBusy>
                    <blfAudibleAlertSettingPhoneIdle>?</blfAudibleAlertSettingPhoneIdle>
                    <userHoldMohAudioSource>?</userHoldMohAudioSource>
                    <networkHoldMohAudioSource>?</networkHoldMohAudioSource>
                    <location>?</location>
                    <geoLocation>?</geoLocation>
                    <deviceMobilityMode>?</deviceMobilityMode>
                    <mediaResourceGroupList>?</mediaResourceGroupList>
                    <remoteDevice>?</remoteDevice>
                    <hotlineDevice>?</hotlineDevice>
                    <retryVideoCallAsAudio>?</retryVideoCallAsAudio>
                    <requireOffPremiseLocation>?</requireOffPremiseLocation>
                    <ownerUserId>?</ownerUserId>
                    <mobilityUserId>?</mobilityUserId>
                    <joinAcrossLines>?</joinAcrossLines>
                    <alwaysUsePrimeLine>?</alwaysUsePrimeLine>
                    <alwaysUsePrimeLineForVoiceMessage>?</alwaysUsePrimeLineForVoiceMessage>
                    <singleButtonBarge>?</singleButtonBarge>
                    <builtInBridge>?</builtInBridge>
                    <allowControlOfDeviceFromCti>?</allowControlOfDeviceFromCti>
                    <ignorePresentationIndicators>?</ignorePresentationIndicators>
                    <enableExtensionMobility>?</enableExtensionMobility>
                    <recordingOptions>?</recordingOptions>
                    <privacy>?</privacy>
                    <loggedIntoHuntGroup>?</loggedIntoHuntGroup>
                    <proxyServer>?</proxyServer>
                    <servicesUrl>?</servicesUrl>
                    <idle>?</idle>
                    <idleTimer>?</idleTimer>
                    <secureDirUrl>?</secureDirUrl>
                    <messages>?</messages>
                    <secureIdleUrl>?</secureIdleUrl>
                    <authenticationServer>?</authenticationServer>
                    <directory>?</directory>
                    <secureServicesUrl>?</secureServicesUrl>
                    <information>?</information>
                    <secureMessagesUrl>?</secureMessagesUrl>
                    <secureInformationUrl>?</secureInformationUrl>
                    <secureAuthenticationUrl>?</secureAuthenticationUrl>
                    <externalPhoneNumber>?</externalPhoneNumber>
                    <audibleMsgWaitingicatorPolicy>?</audibleMsgWaitingicatorPolicy>
                    <logMissedCalls>?</logMissedCalls>
                    <visualMsgWaitingIndicatorPolicy>?</visualMsgWaitingIndicatorPolicy>
                    <lineLabel>?</lineLabel>
                    <displayCallerId>?</displayCallerId>
                    <MaxNumberOfCalls>?</MaxNumberOfCalls>
                    <ringSettingWhenPhoneIdle>?</ringSettingWhenPhoneIdle>
                    <busyTrigger>?</busyTrigger>
                    <ringSettingWhenPhoneInUse>?</ringSettingWhenPhoneInUse>
                    <directoryNumber>?</directoryNumber>
                    <recordingProfile>?</recordingProfile>
                    <callPickupGroupAudioAlertSettingPhoneActive>?</callPickupGroupAudioAlertSettingPhoneActive>
                    <callPickupGroupAudioAlertSettingPhoneIdle>?</callPickupGroupAudioAlertSettingPhoneIdle>
                    <monitoringCallingSearchSpace>?</monitoringCallingSearchSpace>
                    <confidentialAccess>
                        <confidentialAccessMode>?</confidentialAccessMode>
                        <confidentialAccessLevel>?</confidentialAccessLevel>
                    </confidentialAccess>
                    </returnedTags>
                </ns:listUniversalDeviceTemplate>
                </soapenv:Body>
             </soapenv:Envelope>' -f $system_params.version
                
                $response = Open-CiscoUnifiedCMConnection -SystemParams $system_params -FunctionParams $function_params -SoapAction "listUniversalDeviceTemplate" -SoapBody $xmlRequest
      
                foreach($item in $response.Envelope.Body.listUniversalDeviceTemplateResponse.return.universalDeviceTemplate )
                {
                    ($item | ConvertTo-FlatObject) | Select-Object $properties                 
                }

            }
            catch {
                Log error "Failed: $_"
                Write-Error $_
            }
    }

    Log info "Done"
}

function Open-CiscoUnifiedCMConnection {
    param (
        [hashtable] $SystemParams,
        [hashtable] $FunctionParams,
        [string] $SoapAction,
        [string] $SoapBody

    )
    $uri = "https://{0}/axl/" -f $SystemParams.hostname

    $webClient = new-object System.Net.WebClient -ErrorAction Stop

    $webClient.Headers.Add("Content-Type","text/xml")
    $webClient.Headers.Add("SOAPAction",("CUCM:DB ver={0} {1}" -f $SystemParams.version, $SoapAction))
    
    $webClient.Credentials = new-object System.Net.NetworkCredential($SystemParams.username, $SystemParams.password)

    [xml]$webClient.UploadString($uri, $xmlRequest)
}

function Get-ClassMetaData {
    param (
        [string] $SystemParams,
        [string] $Class
    )
    
    @(
        @{
            name = 'properties'
            type = 'grid'
            label = 'Properties'
            description = 'Selected properties'
            table = @{
                rows = @( $Global:Properties.$Class | ForEach-Object {
                    @{
                        name = $_.name
                        usage_hint = @( @(
                            foreach ($opt in $_.options) {
                                if ($opt -notin @('default', 'idm', 'key')) { continue }

                                if ($opt -eq 'idm') {
                                    $opt.Toupper()
                                }
                                else {
                                    $opt.Substring(0,1).Toupper() + $opt.Substring(1)
                                }
                            }
                        ) | Sort-Object) -join ' | '
                    }
                })
                settings_grid = @{
                    selection = 'multiple'
                    key_column = 'name'
                    checkbox = $true
                    filter = $true
                    columns = @(
                        @{
                            name = 'name'
                            display_name = 'Name'
                        }
                        @{
                            name = 'usage_hint'
                            display_name = 'Usage hint'
                        }
                    )
                }
            }
            value = ($Global:Properties.$Class | Where-Object { $_.options.Contains('default') }).name
        }
    )
}
Function ConvertTo-FlatObject {
    <#
    # Modified from Original to remove "$Object." prefix
    .SYNOPSIS
        Flatten an object to simplify discovery of data

    .DESCRIPTION
        Flatten an object. This function will take an object, and flatten the properties using their full path into a single object with one layer of properties.

        You can use this to flatten XML, JSON, and other arbitrary objects.
        
        This can simplify initial exploration and discovery of data returned by APIs, interfaces, and other technologies.

        NOTE:
            Use tools like Get-Member, Select-Object, and Show-Object to further explore objects.
            This function does not handle certain data types well. It was original designed to expand XML and JSON.

    .PARAMETER InputObject
        Object to flatten
    
    .PARAMETER Exclude
        Exclude any nodes in this list. Accepts wildcards.

        Example:
            -Exclude price, title

    .PARAMETER ExcludeDefault
        Exclude default properties for sub objects. True by default.
        
        This simplifies views of many objects (e.g. XML) but may exclude data for others (e.g. if flattening a process, ProcessThread properties will be excluded)

    .PARAMETER Include
        Include only leaves in this list. Accepts wildcards.

        Example:
            -Include Author, Title

    .PARAMETER Value
        Include only leaves with values like these arguments. Accepts wildcards.
    
    .PARAMETER MaxDepth
        Stop recursion at this depth.

    .INPUTS
        Any object

    .OUTPUTS
        System.Management.Automation.PSCustomObject

    .EXAMPLE

        #Pull unanswered PowerShell questions from StackExchange, Flatten the data to date a feel for the schema
        Invoke-RestMethod "https://api.stackexchange.com/2.0/questions/unanswered?order=desc&sort=activity&tagged=powershell&pagesize=10&site=stackoverflow" |
            ConvertTo-FlatObject -Include Title, Link, View_Count

            $object.items[0].owner.link : http://stackoverflow.com/users/1946412/julealgon
            $object.items[0].view_count : 7
            $object.items[0].link : http://stackoverflow.com/questions/26910789/is-it-possible-to-reuse-a-param-block-across-multiple-functions
            $object.items[0].title : Is it possible to reuse a &#39;param&#39; block across multiple functions?
            $object.items[1].owner.link : http://stackoverflow.com/users/4248278/nitin-tyagi
            $object.items[1].view_count : 8
            $object.items[1].link : http://stackoverflow.com/questions/26909879/use-powershell-to-retreive-activated-features-for-sharepoint-2010
            $object.items[1].title : Use powershell to retreive Activated features for sharepoint 2010
            ...

    .EXAMPLE

        #Set up some XML to work with
        $object = [xml]'
            <catalog>
               <book id="bk101">
                  <author>Gambardella, Matthew</author>
                  <title>XML Developers Guide</title>
                  <genre>Computer</genre>
                  <price>44.95</price>
               </book>
               <book id="bk102">
                  <author>Ralls, Kim</author>
                  <title>Midnight Rain</title>
                  <genre>Fantasy</genre>
                  <price>5.95</price>
               </book>
            </catalog>'

        #Call the flatten command against this XML
            ConvertTo-FlatObject $object -Include Author, Title, Price
    
            #Result is a flattened object with the full path to the node, using $object as the root.
            #Only leaf properties we specified are included (author,title,price)

                $object.catalog.book[0].author : Gambardella, Matthew
                $object.catalog.book[0].title : XML Developers Guide
                $object.catalog.book[0].price : 44.95
                $object.catalog.book[1].author : Ralls, Kim
                $object.catalog.book[1].title : Midnight Rain
                $object.catalog.book[1].price : 5.95

        #Invoking the property names should return their data if the orginal object is in $object:
            $object.catalog.book[1].price
                5.95

            $object.catalog.book[0].title
                XML Developers Guide

    .EXAMPLE

        #Set up some XML to work with
            [xml]'<catalog>
               <book id="bk101">
                  <author>Gambardella, Matthew</author>
                  <title>XML Developers Guide</title>
                  <genre>Computer</genre>
                  <price>44.95</price>
               </book>
               <book id="bk102">
                  <author>Ralls, Kim</author>
                  <title>Midnight Rain</title>
                  <genre>Fantasy</genre>
                  <price>5.95</price>
               </book>
            </catalog>' |
                ConvertTo-FlatObject -exclude price, title, id
    
        Result is a flattened object with the full path to the node, using XML as the root. Price and title are excluded.

            $Object.catalog : catalog
            $Object.catalog.book : {book, book}
            $object.catalog.book[0].author : Gambardella, Matthew
            $object.catalog.book[0].genre : Computer
            $object.catalog.book[1].author : Ralls, Kim
            $object.catalog.book[1].genre : Fantasy

    .EXAMPLE
        #Set up some XML to work with
            [xml]'<catalog>
               <book id="bk101">
                  <author>Gambardella, Matthew</author>
                  <title>XML Developers Guide</title>
                  <genre>Computer</genre>
                  <price>44.95</price>
               </book>
               <book id="bk102">
                  <author>Ralls, Kim</author>
                  <title>Midnight Rain</title>
                  <genre>Fantasy</genre>
                  <price>5.95</price>
               </book>
            </catalog>' |
                ConvertTo-FlatObject -Value XML*, Fantasy

        Result is a flattened object filtered by leaves that matched XML* or Fantasy

            $Object.catalog.book[0].title : XML Developers Guide
            $Object.catalog.book[1].genre : Fantasy

    .EXAMPLE
        #Get a single process with all props, flatten this object. Don't exclude default properties
        Get-Process | select -first 1 -skip 10 -Property * | ConvertTo-FlatObject -ExcludeDefault $false

        #NOTE - There will likely be bugs for certain complex objects like this.
                For example, $Object.StartInfo.Verbs.SyncRoot.SyncRoot... will loop until we hit MaxDepth. (Note: SyncRoot is now addressed individually)

    .NOTES
        I have trouble with algorithms. If you have a better way to handle this, please let me know!

    .FUNCTIONALITY
        General Command
    #>
    [cmdletbinding()]
    param(
        
        [parameter( Mandatory = $True,
                    ValueFromPipeline = $True)]
        [PSObject[]]$InputObject,

        [string[]]$Exclude = "",

        [bool]$ExcludeDefault = $True,

        [string[]]$Include = $null,

        [string[]]$Value = $null,

        [int]$MaxDepth = 10
    )
    Begin
    {
        #region FUNCTIONS

            #Before adding a property, verify that it matches a Like comparison to strings in $Include...
            Function IsIn-Include {
                param($prop)
                if(-not $Include) {$True}
                else {
                    foreach($Inc in $Include)
                    {
                        if($Prop -like $Inc)
                        {
                            $True
                        }
                    }
                }
            }

            #Before adding a value, verify that it matches a Like comparison to strings in $Value...
            Function IsIn-Value {
                param($val)
                if(-not $Value) {$True}
                else {
                    foreach($string in $Value)
                    {
                        if($val -like $string)
                        {
                            $True
                        }
                    }
                }
            }

            Function Get-Exclude {
                [cmdletbinding()]
                param($obj)

                #Exclude default props if specified, and anything the user specified. Thanks to Jaykul for the hint on [type]!
                    if($ExcludeDefault)
                    {
                        Try
                        {
                            $DefaultTypeProps = @( $obj.gettype().GetProperties() | Select -ExpandProperty Name -ErrorAction Stop )
                            if($DefaultTypeProps.count -gt 0)
                            {
                                Write-Verbose "Excluding default properties for $($obj.gettype().Fullname):`n$($DefaultTypeProps | Out-String)"
                            }
                        }
                        Catch
                        {
                            Write-Verbose "Failed to extract properties from $($obj.gettype().Fullname): $_"
                            $DefaultTypeProps = @()
                        }
                    }
                    
                    @( $Exclude + $DefaultTypeProps ) | Select -Unique
            }

            #Function to recurse the Object, add properties to object
            Function Recurse-Object {
                [cmdletbinding()]
                param(
                    $Object,
                    [string[]]$path = '',
                    [psobject]$Output,
                    $depth = 0
                )

                # Handle initial call
                    Write-Verbose "Working in path $Path at depth $depth"
                    Write-Debug "Recurse Object called with PSBoundParameters:`n$($PSBoundParameters | Out-String)"
                    $Depth++

                #Exclude default props if specified, and anything the user specified.
                    $ExcludeProps = @( Get-Exclude $object )

                #Get the children we care about, and their names
                    $Children = $object.psobject.properties | Where {$ExcludeProps -notcontains $_.Name }
                    Write-Debug "Working on properties:`n$($Children | select -ExpandProperty Name | Out-String)"

                #Loop through the children properties.
                foreach($Child in @($Children))
                {
                    $ChildName = $Child.Name
                    $ChildValue = $Child.Value

                    Write-Debug "Working on property $ChildName with value $($ChildValue | Out-String)"
                    # Handle special characters...
                        if($ChildName -match '[^a-zA-Z0-9_]')
                        {
                            $FriendlyChildName = "{$ChildName}"
                        }
                        else
                        {
                            $FriendlyChildName = $ChildName
                        }

                    #Add the property.
                        if((IsIn-Include $ChildName) -and (IsIn-Value $ChildValue) -and $Depth -le $MaxDepth)
                        {
                            Write-Debug "ChildName [$($ChildName)] - $ChildValue $($ChildValue) - Depth [$($Depth)] - Path [$($Path)] - Path Length [$($path.Length)] - FriendlyChildName [$FriendlyChildName]"

                            if([string]::IsNullOrEmpty($Path)) {
                                $ThisPath = $FriendlyChildName
                            } else {
                                $ThisPath = @( $Path + $FriendlyChildName ) -join "_"
                            }
                            if("$($ChildValue)" -ne 'System.Xml.XmlElement')
                            {
                                $Output | Add-Member -MemberType NoteProperty -Name $ThisPath -Value "$($ChildValue)"
                                Write-Verbose "Adding member '$ThisPath'"
                            }
                        }

                    #Handle null...
                        if($ChildValue -eq $null)
                        {
                            Write-Verbose "Skipping NULL $ChildName"
                            continue
                        }

                    #Handle evil looping. Will likely need to expand this. Any thoughts on a better approach?
                        if(
                            (
                                $ChildValue.GetType() -eq $Object.GetType() -and
                                $ChildValue -is [datetime]
                            ) -or
                            (
                                $ChildName -eq "SyncRoot" -and
                                -not $ChildValue
                            )
                        )
                        {
                            Write-Verbose "Skipping $ChildName with type $($ChildValue.GetType().fullname)"
                            continue
                        }

                    #Check for arrays
                        $IsArray = @($ChildValue).count -gt 1
                        $count = 0
                        
                    #Set up the path to this node and the data...
                    if([string]::IsNullOrEmpty($Path)) {
                        $CurrentPath = $FriendlyChildName
                    } else {
                        $CurrentPath = @( $Path + $FriendlyChildName ) -join "_"
                    }

                    #Exclude default props if specified, and anything the user specified.
                        $ExcludeProps = @( Get-Exclude $ChildValue )

                    #Get the children's children we care about, and their names. Also look for signs of a hashtable like type
                        $ChildrensChildren = $ChildValue.psobject.properties | Where {$ExcludeProps -notcontains $_.Name }
                        $HashKeys = if($ChildValue.Keys -notlike $null -and $ChildValue.Values)
                        {
                            $ChildValue.Keys
                        }
                        else
                        {
                            $null
                        }
                        Write-Debug "Found children's children $($ChildrensChildren | select -ExpandProperty Name | Out-String)"

                    #If we aren't at max depth or a leaf...
                    if(
                        (@($ChildrensChildren).count -ne 0 -or $HashKeys) -and
                        $Depth -lt $MaxDepth
                    )
                    {
                        #This handles hashtables. But it won't recurse...
                            if($HashKeys)
                            {
                                Write-Verbose "Working on hashtable $CurrentPath"
                                foreach($key in $HashKeys)
                                {
                                    Write-Verbose "Adding value from hashtable $CurrentPath['$key']"
                                    $Output | Add-Member -MemberType NoteProperty -name "$CurrentPath['$key']" -value "$($ChildValue["$key"])"
                                    $Output = Recurse-Object -Object $ChildValue["$key"] -Path "$CurrentPath['$key']" -Output $Output -depth $depth 
                                }
                            }
                        #Sub children? Recurse!
                            else
                            {
                                if($IsArray)
                                {
                                    foreach($item in @($ChildValue))
                                    {  
                                        Write-Verbose "Recursing through array node '$CurrentPath'"
                                        $Output = Recurse-Object -Object $item -Path "$CurrentPath[$count]" -Output $Output -depth $depth
                                        $Count++
                                    }
                                }
                                else
                                {
                                    Write-Verbose "Recursing through node '$CurrentPath'"
                                    $Output = Recurse-Object -Object $ChildValue -Path $CurrentPath -Output $Output -depth $depth
                                }
                            }
                        }
                    }
                
                $Output
            }

        #endregion FUNCTIONS
    }
    Process
    {
        Foreach($Object in $InputObject)
        {
            #Flatten the XML and write it to the pipeline
                Recurse-Object -Object $Object -Output $( New-Object -TypeName PSObject )
        }
    }
}
