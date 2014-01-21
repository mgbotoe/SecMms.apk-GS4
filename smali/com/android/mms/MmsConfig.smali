.class public Lcom/android/mms/MmsConfig;
.super Ljava/lang/Object;
.source "MmsConfig.java"


# static fields
.field private static final ALERT_NOT_EXPIRED_ORDER:Ljava/lang/String; = "alert_expired=0"

.field public static final ALL_ALERTS:I = 0x1f

.field private static final BUBBLE_STYPE_1PAGE:Ljava/lang/String; = "1page"

.field private static final BUBBLE_STYPE_ALLPAGE:Ljava/lang/String; = "allpage"

.field private static final CMAS_ALL_IN_ONE_TOP:Ljava/lang/String; = "type=110"

.field private static final CMAS_AMBER_TOP:Ljava/lang/String; = "type=103"

.field private static final CMAS_EXTREME_TOP:Ljava/lang/String; = "type=101"

.field private static final CMAS_PRESIDENTIAL_TOP:Ljava/lang/String; = "type=100"

.field public static final CMAS_PROVIDER_ATT:I = 0x2

.field public static final CMAS_PROVIDER_CHO:I = 0x6

.field public static final CMAS_PROVIDER_GENERAL:I = 0x0

.field public static final CMAS_PROVIDER_KT:I = 0x9

.field public static final CMAS_PROVIDER_LGU:I = 0xa

.field public static final CMAS_PROVIDER_SKT:I = 0x8

.field public static final CMAS_PROVIDER_SPR:I = 0x4

.field public static final CMAS_PROVIDER_TFG:I = 0x7

.field public static final CMAS_PROVIDER_TMO:I = 0x1

.field public static final CMAS_PROVIDER_USC:I = 0x5

.field public static final CMAS_PROVIDER_VZW:I = 0x3

.field private static final CMAS_SEVERE_TOP:Ljava/lang/String; = "type=102"

.field private static final CMAS_TEST_MSG_TOP:Ljava/lang/String; = "type=104"

.field private static final CMAS_UNREAD_COUNT:Ljava/lang/String; = "unread_count > 0"

.field private static DEBUG_mBlockContextAwareness:Z = false

.field private static final DEFAULT_HTTP_KEY_X_WAP_PROFILE:Ljava/lang/String; = "x-wap-profile"

.field private static final DEFAULT_HttpSocketTimeout:I = 0xea60

.field private static final DEFAULT_PROXY_AUTH:Ljava/lang/String; = "Proxy-Authorization"

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android-Mms/2.0"

.field private static final DEFAULT_USER_NAI:Ljava/lang/String; = "ril.cdma.usernai"

.field public static final EMOJI_SUPPORT_ONLYMMS:I = 0x1

.field public static final EMOJI_SUPPORT_SMSMMS:I = 0x2

.field private static final IMAGE_RESIZ_EQUALITY_FACTOR_DEFAULT:I = 0x50

.field public static final LONG_EMAIL_FEATURE_ACTIVE:Z = false

#the value of this static final field might be set in the static constructor
.field private static final MAX_IMAGE_HEIGHT:I = 0x0

.field private static final MAX_IMAGE_HEIGHT_RESTRICTED_MODE:I = 0x1e0

#the value of this static final field might be set in the static constructor
.field private static final MAX_IMAGE_WIDTH:I = 0x0

.field private static final MAX_IMAGE_WIDTH_RESTRICTED_MODE:I = 0x280

.field private static final MAX_TEXT_LENGTH:I = 0x7d0

.field public static MMS_GALLERY_VIEW_DISABLE:Ljava/lang/String; = null

.field public static MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_MMS:Ljava/lang/String; = null

.field public static MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_TEXT_MMS:Ljava/lang/String; = null

.field private static final NEW_MESSAGING_PREF_VERSION:Ljava/lang/String; = "1.0.0"

.field public static final ONE_PAGE_MMS_VIEW_FEATURE_ACTIVE:Z = false

.field private static final PREF_VERSION_FILENAME:Ljava/lang/String; = "pref_version"

.field public static final PRESIDENTIAL_ONLY:I = 0x1

.field public static SMS_DB_COUNT:I = 0x0

.field public static final SWEEP_AREA_EXCLUDE_AVARTAR:Ljava/lang/String; = "ExcludeAvatar"

.field public static final SWEEP_AREA_LIST_ALL:Ljava/lang/String; = "ListAll"

.field private static final TAG:Ljava/lang/String; = "Mms/MmsConfig"

.field public static final TEXT_TEMPLATE_TYPE_CSC:I = 0x2

.field public static final TEXT_TEMPLATE_TYPE_GENERIC:I = 0x1

.field public static final TEXT_TEMPLATE_TYPE_NONE:I = 0x0

.field public static TMO_CMAS_FEATURE:Z = false

.field public static TRANSLATOR_PACKAGE_NAME:Ljava/lang/String; = null

.field private static final VALUE_TRUE:Ljava/lang/String; = "true"

.field private static mDM:Landroid/util/DisplayMetrics;

.field private static pref_DebugContext:Landroid/content/SharedPreferences;

.field private static sAddLogsToRecipientSearchList:Z

.field private static sAddSendOptionInComposer:Z

.field private static sAliasEnabled:Z

.field private static sAliasRuleMaxChars:I

.field private static sAliasRuleMinChars:I

.field private static sAllowAttachAudio:Z

.field private static sAttachmentFilenameEncodingType:Ljava/lang/String;

.field private static sAvailableSizeForRestrictAutoDownload:I

.field private static sBlockSendMmsWithOnlySubject:Z

.field private static sCBChannel:[Ljava/lang/String;

.field private static sCMASVender:Lcom/android/mms/cmas/CMASVender;

.field private static sChameleonTextTemplate:[Ljava/lang/String;

.field private static sCmasConversationListQuery:Ljava/lang/String;

.field private static sContactMatchCliDigit:I

.field private static sContactReplacePackageAs:Ljava/lang/String;

.field private static sDefaultMMSMessagesPerThread:I

.field private static final sDefaultRetryQuality:[I

.field private static sDefaultSMSMessagesPerThread:I

.field private static sDisableAddressPlusEdit:Z

.field private static sDisableBackgroundStyleWithImage:Z

.field private static sDisableConvertingEffectBetweenSMSMMS:Z

.field private static sDisableEnterKeyInput:Z

.field private static sDisableLandscapeActionbarHide:Z

.field private static sDisableLeftAttachButtonUI:Z

.field private static sDisableMmsAllPageBubble:Z

.field private static sDisableParsingAudioFilenameFromPart:Z

.field private static sDisableRecipientSearchByCharMatchingDigit:Z

.field private static sDisableSaveRingtoneMenu:Z

.field private static sDisableSavingInbox4CBChannel:Ljava/lang/String;

.field private static sDisableSmscEditableOnlyFor:Z

.field private static sDisplayPushSenderAddress:Z

.field private static sEmailGateway:Ljava/lang/String;

.field private static sEmbeddedTextTemplateType:I

.field private static sEmojiSupportType:I

.field private static sEnable3GHDVoice:Z

.field private static sEnableAddContactIn1stDepthComposerOption:Z

.field private static sEnableAddPrefix4InternationalCall:Z

.field private static sEnableAddRecipients:Z

.field private static sEnableAllContextMenuInMsgViewer:Z

.field private static sEnableAnonymousThread:Z

.field private static sEnableApnOnOff:Z

.field private static sEnableAttachmentFilenameEncoding:Z

.field private static sEnableAuthMdn:Z

.field private static sEnableAutoChangeKoreanNationalCode:Z

.field private static sEnableBcdNumber:Z

.field private static sEnableBlackList:Z

.field private static sEnableBlackListForCHN:Z

.field private static sEnableBlackListForKor:Z

.field private static sEnableBlackListSeperateCallReject:Z

.field private static sEnableCBChDisplayinStatusBar:Ljava/lang/String;

.field private static sEnableCBChannel:Z

.field private static sEnableCBMessage:Z

.field private static sEnableCBNotifications:Z

.field private static sEnableCMASTestOnOff:Z

.field private static sEnableCTWap:Z

.field private static sEnableCallbackNumber:Z

.field private static sEnableCbsVariation4:Ljava/lang/String;

.field private static sEnableChameleon:Z

.field private static sEnableCheckAvailableStorage:Z

.field private static sEnableCheckFDNContactWhenMMSSend:Z

.field private static sEnableCheckNumAreaCode:Z

.field private static sEnableChoseongSearch:Z

.field private static sEnableClipboardOnViewer:Z

.field public static sEnableCombindAndForwardMessage:Z

.field private static sEnableComposeTypeUI:Z

.field private static sEnableContactInfoInBubble:Z

.field private static sEnableCopyToSim:Z

.field private static sEnableDSAC:Z

.field private static sEnableDefaultFocusToMsgBody:Z

.field private static sEnableDefaultRingtone:Z

.field private static sEnableDelaySendSMS:Z

.field private static sEnableDeleteButtonOnActionBar:Z

.field private static sEnableDeletePermanentFailure:Z

.field private static sEnableDialogAlertWhenTextInput:Ljava/lang/String;

.field private static sEnableDiscardSameCreateWapPush:Z

.field private static sEnableDisplayNameAndNumberonTitle:Z

.field private static sEnableDoCoMoDeliveryReportFormat:Z

.field private static sEnableDocomoAccountAsDefault:Z

.field private static sEnableDraftMessageBox:Z

.field private static sEnableDualNumber4Korea:Z

.field private static sEnableEmoji:Z

.field private static sEnableEmptySms:Z

.field private static sEnableEms:Z

.field private static sEnableEurKrDecoding:Z

.field private static sEnableFlickThreadView:Z

.field private static sEnableFolderView:Z

.field private static sEnableFontSize:Z

.field private static sEnableFontSizeByVolumeKey:Z

.field private static sEnableGroupMms:Z

.field private static sEnableIS41Email:Z

.field private static sEnableInfiniteDispMMSProgressbar:Z

.field private static sEnableIpCall:Z

.field private static sEnableKTSMSReadConfirm:Z

.field private static sEnableKoreanSpecialCharacter:Z

.field private static sEnableKsc5601:Z

.field private static sEnableLguHttpHeader:Z

.field private static sEnableLimitMmsBodyByte:Z

.field private static sEnableLimitOnMmsSubjectByByte:Z

.field private static sEnableLocation:Z

.field private static sEnableLockedMsgManager:Z

.field private static sEnableLogs:Z

.field private static sEnableMMSDeliveryReports:Z

.field private static sEnableMMSReadReports:Z

.field private static sEnableMMSSendDeliveryReports:Z

.field private static sEnableMMSStatusUIForCHN:Z

.field private static sEnableManageSimMessages:Z

.field private static sEnableMediaDuration:Z

.field private static sEnableMenuInsertSenderInfoWhenFwdMsg:Z

.field private static sEnableMenuMmsServerAddr:Z

.field private static sEnableMessageAutoView:Z

.field private static sEnableMessageDbBackupKeystring:Z

.field private static sEnableMessageMaxTextLengthInAllSlides:Z

.field private static sEnableMessageReminderAlert:Z

.field private static sEnableMessageShare:Z

.field private static sEnableMmsAutoDownload4Spam:Z

.field private static sEnableMmsCreationMode:Z

.field private static sEnableMmsDeliveryTime:Z

.field private static sEnableMmsDetailVzw:Z

.field private static sEnableMmsExpiryDate:Z

.field private static sEnableMmsMobiledataOff:Z

.field private static sEnableMmsOnePageViewer:Z

.field private static sEnableMmsPriority:Z

.field private static sEnableMmsServerTime:Z

.field private static sEnableMmsSubjectConcept4Korea:Z

.field private static sEnableMmsTransactionCustomize4Korea:Z

.field private static sEnableMmsUserInputApn:Z

.field private static sEnableMultiCopyToSIM:Z

.field private static sEnableMultiDraftMsgBox:Z

.field private static sEnableMultiLockMenu:Z

.field private static sEnableMultipartSMS:Z

.field private static sEnableMultiwindow:Z

.field private static sEnableNotificationBacklight:Z

.field private static sEnableNotificationBoradcastReceivedMsg:Z

.field private static sEnableNotificationVibrate:Z

.field private static sEnablePhoneNumberFormattingInMsg:Z

.field private static sEnablePickContactLimit:Z

.field public static sEnablePinyinSearch:Z

.field private static sEnablePlusButtonOnRecipient:Z

.field private static sEnablePriority:Z

.field private static sEnableRCS:Z

.field private static sEnableRTSReject:Ljava/lang/String;

.field private static sEnableReceivePortSMS:Z

.field private static sEnableRecordAudio:Z

.field private static sEnableRegisterCalendar:Z

.field private static sEnableRemovingContactThumbnailInMsgList:Z

.field private static sEnableReplaceLabelOnRequestedStatus:Z

.field private static sEnableReplacingCarriageReturnIntoNewLine:Z

.field private static sEnableReplyAll:Z

.field private static sEnableRequestSendNoSrv:Z

.field private static sEnableRetrievalDuringRoaming:Z

.field private static sEnableRoamGuard:Z

.field private static sEnableSIMMessageCountUI:Z

.field private static sEnableSMSC:Z

.field private static sEnableSMSCEditable:Z

.field private static sEnableSMSDeliveryReports:Z

.field private static sEnableSMSP:Z

.field private static sEnableSMemo:Z

.field private static sEnableSNote:Z

.field private static sEnableSOSPrefix:Z

.field private static sEnableSPlanner:Z

.field private static sEnableSaveClassZeroMessage:Z

.field private static sEnableSaveVMessage:Z

.field private static sEnableSegmentedSms:Z

.field private static sEnableSendMmsReadReportPdu:Z

.field private static sEnableSentTimeInSimList:Z

.field private static sEnableServerTimeLabel:Z

.field private static sEnableServiceLoading:Z

.field private static sEnableSignature:Z

.field private static sEnableSlideDuration:Z

.field private static sEnableSlideshowAutoPlay:Z

.field private static sEnableSmsExpiryDate:Z

.field private static sEnableSmsForwardPrefix:Z

.field private static sEnableSmsInputMode:Z

.field private static sEnableSmsMaxByte:Z

.field private static sEnableSmsServerTime:Z

.field private static sEnableSmsSubject:Z

.field private static sEnableSmsViewer:Z

.field private static sEnableSmsViewerPinchZoom:Z

.field private static sEnableSpeedDial:Z

.field private static sEnableSplitMode:Z

.field private static sEnableStageFlightLib:Z

.field private static sEnableStrictImageResizing:Z

.field private static sEnableSubject:Z

.field private static sEnableTextTemplateButton:Z

.field private static sEnableTexttemplatTMOMenu:Z

.field private static sEnableUnknownAddressToNullInDB:Z

.field private static sEnableUnknownURLlink:Z

.field private static sEnableVCalendar:Z

.field private static sEnableVCard:Z

.field private static sEnableVIPList:Z

.field private static sEnableVIPModeApplication:Z

.field private static sEnableVMemo:Z

.field private static sEnableVTask:Z

.field private static sEnableVibration4NotiDuringCall:Z

.field private static sEnableVideoCall:Z

.field private static sEnableVoLTE:Z

.field private static sEnableWapPush:Z

.field private static sEnableWhiteList:Z

.field private static sForwardPrefix:I

.field private static sGalleryView4SingleImageMMSType:Ljava/lang/String;

.field private static sHasQwertykeypad:Z

.field private static sHttpParams:Ljava/lang/String;

.field private static sHttpParamsLine1Key:Ljava/lang/String;

.field private static sHttpSocketTimeout:I

.field private static sImageResizeQualityFactorWhenAttach:I

.field private static sIsContextProviderForAlways:Z

.field private static sLocale:Ljava/lang/String;

.field private static sMaxImageHeight:I

.field private static sMaxImageHeightRestrictedMode:I

.field private static sMaxImageWidth:I

.field private static sMaxImageWidthRestrictedMode:I

.field private static sMaxMessageCountPerThread:I

.field private static sMaxMessageSize:I

.field private static sMaxMessageSizeForResizing:I

.field private static sMaxQuality:Z

.field private static sMaxRawAttachmentCount:I

.field private static sMaxRecipientLength:I

.field private static sMaxSizeScaleForPendingMmsAllowed:I

.field private static sMaxSlideCount:I

.field private static sMaxSubjectLength:I

.field private static sMaxTextLength:I

.field private static sMaximumEmailAddressLength:I

.field private static sMessageReminderAlert:Ljava/lang/String;

.field private static sMinMessageCountPerThread:I

.field private static sMinRecipientLength:I

.field private static sMinimumSlideElementDuration:I

.field private static sMms2gAutodownloadAfterCall:I

.field private static sMmsEnabled:Z

.field private static sMmsExpiry:I

.field private static sMmsHeaderSize:I

.field private static sMmsModeCaptureVideoMaxSize:I

.field private static sMmsPageStyleInBubble:Ljava/lang/String;

.field private static sMmsRecipientLimit:I

.field private static sMmsServerAddressEditable:Z

.field private static sMmsServerPortEditable:Z

.field private static sMmsUaUapAutoCreate:Ljava/lang/String;

.field private static sMmsVersion:F

.field private static sMmsWidgetEnabled:Z

.field private static sMoveReadNDeliverySettingToComposer:Z

.field private static sMsgtoneRepeatInterval:I

.field private static sNotifyWapMMSC:Z

.field private static sOperatorNumeric:Ljava/lang/String;

.field private static sOptionalFieldAttendance:Z

.field private static sPriority:Ljava/lang/String;

.field private static sRecipientLimit:I

.field private static sRemoveInternationalTelNumPrefix:Z

.field private static sSavePdu:Z

.field private static sSetFontSizeByVolumeKey:Z

.field private static sSmsDiscardPrefix:Ljava/lang/String;

.field private static sSmsMaxByte:I

.field private static sSmsToMmsByThreshold:Z

.field private static sSmsToMmsTextThreshold:I

.field private static sSupportHideMmsRoamingAutoDownloadOption:I

.field private static sSupportQwertKeypad:I

.field private static sTWVersion:F

.field private static sTetheringmode:Z

.field private static sTransIdEnabled:Z

.field private static sTransactionLoggable:Z

.field private static sTransactionTimeout:I

.field private static sUaProfTagName:Ljava/lang/String;

.field private static sUaProfUrl:Ljava/lang/String;

.field private static sUserAgent:Ljava/lang/String;

.field private static sUserNai:Ljava/lang/String;

.field private static sVibrateWhen:Ljava/lang/String;

.field private static templateArrayValue:[Ljava/lang/String;

.field private static uspLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    sput v2, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 114
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v0

    :goto_0
    sput v0, Lcom/android/mms/MmsConfig;->MAX_IMAGE_HEIGHT:I

    .line 116
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    :goto_1
    sput v0, Lcom/android/mms/MmsConfig;->MAX_IMAGE_WIDTH:I

    .line 141
    sput-boolean v2, Lcom/android/mms/MmsConfig;->TMO_CMAS_FEATURE:Z

    .line 151
    sput-object v4, Lcom/android/mms/MmsConfig;->sCmasConversationListQuery:Ljava/lang/String;

    .line 158
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sTransIdEnabled:Z

    .line 159
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sMmsEnabled:Z

    .line 160
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sMmsWidgetEnabled:Z

    .line 161
    const v0, 0x4b000

    sput v0, Lcom/android/mms/MmsConfig;->sMaxMessageSize:I

    .line 162
    const-string v0, "Android-Mms/2.0"

    sput-object v0, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    .line 163
    const-string v0, "x-wap-profile"

    sput-object v0, Lcom/android/mms/MmsConfig;->sUaProfTagName:Ljava/lang/String;

    .line 164
    sput-object v4, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    .line 165
    sput-object v4, Lcom/android/mms/MmsConfig;->sHttpParams:Ljava/lang/String;

    .line 166
    sput-object v4, Lcom/android/mms/MmsConfig;->sHttpParamsLine1Key:Ljava/lang/String;

    .line 167
    sput-object v4, Lcom/android/mms/MmsConfig;->sEmailGateway:Ljava/lang/String;

    .line 168
    sget v0, Lcom/android/mms/MmsConfig;->MAX_IMAGE_HEIGHT:I

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    .line 169
    sget v0, Lcom/android/mms/MmsConfig;->MAX_IMAGE_WIDTH:I

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    .line 170
    const/16 v0, 0x1e0

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeightRestrictedMode:I

    .line 171
    const/16 v0, 0x280

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageWidthRestrictedMode:I

    .line 172
    const/16 v0, 0x14

    sput v0, Lcom/android/mms/MmsConfig;->sRecipientLimit:I

    .line 173
    const/16 v0, 0xc8

    sput v0, Lcom/android/mms/MmsConfig;->sDefaultSMSMessagesPerThread:I

    .line 174
    const/16 v0, 0x14

    sput v0, Lcom/android/mms/MmsConfig;->sDefaultMMSMessagesPerThread:I

    .line 175
    sput v6, Lcom/android/mms/MmsConfig;->sMinMessageCountPerThread:I

    .line 176
    const/16 v0, 0x1388

    sput v0, Lcom/android/mms/MmsConfig;->sMaxMessageCountPerThread:I

    .line 177
    const v0, 0xea60

    sput v0, Lcom/android/mms/MmsConfig;->sHttpSocketTimeout:I

    .line 178
    const/4 v0, 0x5

    sput v0, Lcom/android/mms/MmsConfig;->sMinimumSlideElementDuration:I

    .line 179
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sNotifyWapMMSC:Z

    .line 180
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sAllowAttachAudio:Z

    .line 183
    const/4 v0, 0x4

    sput v0, Lcom/android/mms/MmsConfig;->sSmsToMmsTextThreshold:I

    .line 193
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMultipartSMS:Z

    .line 195
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSlideDuration:Z

    .line 196
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMMSReadReports:Z

    .line 197
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSMSDeliveryReports:Z

    .line 198
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMMSDeliveryReports:Z

    .line 199
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMMSSendDeliveryReports:Z

    .line 200
    sput v5, Lcom/android/mms/MmsConfig;->sMaxTextLength:I

    .line 205
    sput v6, Lcom/android/mms/MmsConfig;->sMaxSizeScaleForPendingMmsAllowed:I

    .line 208
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sAliasEnabled:Z

    .line 209
    const/4 v0, 0x2

    sput v0, Lcom/android/mms/MmsConfig;->sAliasRuleMinChars:I

    .line 210
    const/16 v0, 0x30

    sput v0, Lcom/android/mms/MmsConfig;->sAliasRuleMaxChars:I

    .line 213
    const/16 v0, 0x28

    sput v0, Lcom/android/mms/MmsConfig;->sMaxSubjectLength:I

    .line 214
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableLimitOnMmsSubjectByByte:Z

    .line 216
    const/16 v0, 0x1400

    sput v0, Lcom/android/mms/MmsConfig;->sMmsHeaderSize:I

    .line 217
    const/high16 v0, 0x40a0

    sput v0, Lcom/android/mms/MmsConfig;->sTWVersion:F

    .line 218
    const v0, 0x3f99999a

    sput v0, Lcom/android/mms/MmsConfig;->sMmsVersion:F

    .line 220
    const/16 v0, 0x14

    sput v0, Lcom/android/mms/MmsConfig;->sMmsRecipientLimit:I

    .line 224
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableFontSize:Z

    .line 225
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSplitMode:Z

    .line 227
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSmsMaxByte:Z

    .line 228
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableLimitMmsBodyByte:Z

    .line 229
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableEmptySms:Z

    .line 230
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableBlackList:Z

    .line 231
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableWhiteList:Z

    .line 232
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSaveVMessage:Z

    .line 233
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableTextTemplateButton:Z

    .line 237
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableVCalendar:Z

    .line 238
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableVTask:Z

    .line 239
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableServerTimeLabel:Z

    .line 240
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSmsServerTime:Z

    .line 241
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMmsServerTime:Z

    .line 242
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSignature:Z

    .line 243
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSegmentedSms:Z

    .line 244
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSmsSubject:Z

    .line 245
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableAnonymousThread:Z

    .line 246
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSmsForwardPrefix:Z

    .line 247
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableEms:Z

    .line 248
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnablePriority:Z

    .line 249
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableCallbackNumber:Z

    .line 250
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSmsViewerPinchZoom:Z

    .line 251
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableVideoCall:Z

    .line 252
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableStrictImageResizing:Z

    .line 253
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableEmoji:Z

    .line 254
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableDoCoMoDeliveryReportFormat:Z

    .line 255
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableDSAC:Z

    .line 256
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSMSP:Z

    .line 257
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableContactInfoInBubble:Z

    .line 258
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMultiLockMenu:Z

    .line 259
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableCTWap:Z

    .line 260
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableRoamGuard:Z

    .line 261
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableChoseongSearch:Z

    .line 262
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableReplyAll:Z

    .line 263
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMessageReminderAlert:Z

    .line 265
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsExpiryDate:Z

    .line 266
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsPriority:Z

    .line 267
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsDeliveryTime:Z

    .line 268
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSmsExpiryDate:Z

    .line 269
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableNotificationVibrate:Z

    .line 270
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableNotificationBacklight:Z

    .line 271
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMessageAutoView:Z

    .line 272
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableIS41Email:Z

    .line 273
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableBlackListForCHN:Z

    .line 274
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableBlackListSeperateCallReject:Z

    .line 275
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableAttachmentFilenameEncoding:Z

    .line 276
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableDiscardSameCreateWapPush:Z

    .line 278
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sSmsToMmsByThreshold:Z

    .line 279
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSlideshowAutoPlay:Z

    .line 280
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableVCard:Z

    .line 281
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableVMemo:Z

    .line 282
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableLocation:Z

    .line 283
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableRecordAudio:Z

    .line 284
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSPlanner:Z

    .line 285
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSMemo:Z

    .line 286
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSNote:Z

    .line 287
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableCBMessage:Z

    .line 288
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSmsViewer:Z

    .line 289
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableEnterKeyInput:Z

    .line 290
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableRetrievalDuringRoaming:Z

    .line 291
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableWapPush:Z

    .line 292
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableServiceLoading:Z

    .line 293
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableStageFlightLib:Z

    .line 294
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSmsInputMode:Z

    .line 295
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSMSC:Z

    .line 296
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSMSCEditable:Z

    .line 297
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMmsCreationMode:Z

    .line 298
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSubject:Z

    .line 299
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableManageSimMessages:Z

    .line 300
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableCopyToSim:Z

    .line 301
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableCBChannel:Z

    .line 302
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSaveClassZeroMessage:Z

    .line 303
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableFontSizeByVolumeKey:Z

    .line 304
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sSetFontSizeByVolumeKey:Z

    .line 305
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSendMmsReadReportPdu:Z

    .line 306
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableDefaultFocusToMsgBody:Z

    .line 307
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableInfiniteDispMMSProgressbar:Z

    .line 308
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableLockedMsgManager:Z

    .line 309
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSentTimeInSimList:Z

    .line 310
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMessageDbBackupKeystring:Z

    .line 311
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableFolderView:Z

    .line 312
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsOnePageViewer:Z

    .line 313
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableCBNotifications:Z

    .line 314
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableCheckFDNContactWhenMMSSend:Z

    .line 315
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableAllContextMenuInMsgViewer:Z

    .line 316
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMessageMaxTextLengthInAllSlides:Z

    .line 317
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMessageShare:Z

    .line 319
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMenuInsertSenderInfoWhenFwdMsg:Z

    .line 322
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sDisplayPushSenderAddress:Z

    .line 323
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsAutoDownload4Spam:Z

    .line 324
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableAddContactIn1stDepthComposerOption:Z

    .line 325
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnablePlusButtonOnRecipient:Z

    .line 326
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnablePinyinSearch:Z

    .line 328
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableCombindAndForwardMessage:Z

    .line 330
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableDraftMessageBox:Z

    .line 332
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableMmsAllPageBubble:Z

    .line 333
    sput-object v4, Lcom/android/mms/MmsConfig;->sMmsPageStyleInBubble:Ljava/lang/String;

    .line 343
    const-string v0, "com.sec.android.app.translator.TRANSLATE"

    sput-object v0, Lcom/android/mms/MmsConfig;->TRANSLATOR_PACKAGE_NAME:Ljava/lang/String;

    .line 346
    const-string v0, "never"

    sput-object v0, Lcom/android/mms/MmsConfig;->sVibrateWhen:Ljava/lang/String;

    .line 347
    const/16 v0, 0x8c

    sput v0, Lcom/android/mms/MmsConfig;->sSmsMaxByte:I

    .line 348
    sput v6, Lcom/android/mms/MmsConfig;->sMaxSlideCount:I

    .line 349
    sput v2, Lcom/android/mms/MmsConfig;->sForwardPrefix:I

    .line 350
    const-string v0, "normal"

    sput-object v0, Lcom/android/mms/MmsConfig;->sPriority:Ljava/lang/String;

    .line 351
    sput v2, Lcom/android/mms/MmsConfig;->sContactMatchCliDigit:I

    .line 352
    const-string v0, "1"

    sput-object v0, Lcom/android/mms/MmsConfig;->sMessageReminderAlert:Ljava/lang/String;

    .line 353
    const/16 v0, 0x32

    sput v0, Lcom/android/mms/MmsConfig;->sMaxRawAttachmentCount:I

    .line 354
    sput-object v4, Lcom/android/mms/MmsConfig;->sCBChannel:[Ljava/lang/String;

    .line 355
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMenuMmsServerAddr:Z

    .line 357
    sput-object v4, Lcom/android/mms/MmsConfig;->sMmsUaUapAutoCreate:Ljava/lang/String;

    .line 358
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sMmsServerAddressEditable:Z

    .line 359
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sMmsServerPortEditable:Z

    .line 360
    sput-object v4, Lcom/android/mms/MmsConfig;->sSmsDiscardPrefix:Ljava/lang/String;

    .line 361
    sput v3, Lcom/android/mms/MmsConfig;->sMsgtoneRepeatInterval:I

    .line 362
    const v0, 0x93a80

    sput v0, Lcom/android/mms/MmsConfig;->sMmsExpiry:I

    .line 363
    const-string v0, "ASCII"

    sput-object v0, Lcom/android/mms/MmsConfig;->sAttachmentFilenameEncodingType:Ljava/lang/String;

    .line 364
    sput-object v4, Lcom/android/mms/MmsConfig;->sDisableSavingInbox4CBChannel:Ljava/lang/String;

    .line 366
    sput-object v4, Lcom/android/mms/MmsConfig;->sEnableCBChDisplayinStatusBar:Ljava/lang/String;

    .line 369
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableVIPList:Z

    .line 370
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableClipboardOnViewer:Z

    .line 371
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableEurKrDecoding:Z

    .line 372
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableKsc5601:Z

    .line 373
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableBcdNumber:Z

    .line 374
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableAutoChangeKoreanNationalCode:Z

    .line 375
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableKoreanSpecialCharacter:Z

    .line 376
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableComposeTypeUI:Z

    .line 377
    const-string v0, ""

    sput-object v0, Lcom/android/mms/MmsConfig;->sEnableRTSReject:Ljava/lang/String;

    .line 378
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableLguHttpHeader:Z

    .line 379
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnablePhoneNumberFormattingInMsg:Z

    .line 380
    const-string v0, ""

    sput-object v0, Lcom/android/mms/MmsConfig;->sEnableCbsVariation4:Ljava/lang/String;

    .line 381
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSpeedDial:Z

    .line 382
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMultiCopyToSIM:Z

    .line 383
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMMSStatusUIForCHN:Z

    .line 384
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnablePickContactLimit:Z

    .line 385
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSIMMessageCountUI:Z

    .line 386
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableRCS:Z

    .line 389
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sTransactionLoggable:Z

    .line 390
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sOptionalFieldAttendance:Z

    .line 391
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sSavePdu:Z

    .line 393
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableAuthMdn:Z

    .line 396
    sput v2, Lcom/android/mms/MmsConfig;->sMms2gAutodownloadAfterCall:I

    .line 397
    sput v2, Lcom/android/mms/MmsConfig;->sSupportHideMmsRoamingAutoDownloadOption:I

    .line 399
    sput v3, Lcom/android/mms/MmsConfig;->sSupportQwertKeypad:I

    .line 402
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableNotificationBoradcastReceivedMsg:Z

    .line 407
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsMobiledataOff:Z

    .line 408
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMediaDuration:Z

    .line 409
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableUnknownAddressToNullInDB:Z

    .line 410
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsDetailVzw:Z

    .line 411
    sput-object v4, Lcom/android/mms/MmsConfig;->templateArrayValue:[Ljava/lang/String;

    .line 412
    const v0, 0x7d000

    sput v0, Lcom/android/mms/MmsConfig;->sMaxMessageSizeForResizing:I

    .line 413
    const v0, 0x3a980

    sput v0, Lcom/android/mms/MmsConfig;->sTransactionTimeout:I

    .line 414
    const/4 v0, 0x3

    sput v0, Lcom/android/mms/MmsConfig;->sMinRecipientLength:I

    .line 415
    sput v5, Lcom/android/mms/MmsConfig;->sMaxRecipientLength:I

    .line 417
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableVIPModeApplication:Z

    .line 418
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSOSPrefix:Z

    .line 419
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableAddressPlusEdit:Z

    .line 421
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableTexttemplatTMOMenu:Z

    .line 422
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableReceivePortSMS:Z

    .line 423
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableReplaceLabelOnRequestedStatus:Z

    .line 424
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sAddSendOptionInComposer:Z

    .line 425
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableLogs:Z

    .line 426
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableReplacingCarriageReturnIntoNewLine:Z

    .line 427
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableVibration4NotiDuringCall:Z

    .line 439
    sput v3, Lcom/android/mms/MmsConfig;->sEmojiSupportType:I

    .line 442
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sAddLogsToRecipientSearchList:Z

    .line 444
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableDocomoAccountAsDefault:Z

    .line 445
    sput-object v4, Lcom/android/mms/MmsConfig;->sContactReplacePackageAs:Ljava/lang/String;

    .line 448
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableIpCall:Z

    .line 451
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableCheckNumAreaCode:Z

    .line 452
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableRegisterCalendar:Z

    .line 455
    const-string v0, "image"

    sput-object v0, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_MMS:Ljava/lang/String;

    .line 456
    const-string v0, "imagetext"

    sput-object v0, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_TEXT_MMS:Ljava/lang/String;

    .line 457
    const-string v0, "none"

    sput-object v0, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_DISABLE:Ljava/lang/String;

    .line 458
    const-string v0, "none"

    sput-object v0, Lcom/android/mms/MmsConfig;->sGalleryView4SingleImageMMSType:Ljava/lang/String;

    .line 461
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableAddRecipients:Z

    .line 464
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableDeleteButtonOnActionBar:Z

    .line 465
    const/16 v0, 0x78

    sput v0, Lcom/android/mms/MmsConfig;->sMaximumEmailAddressLength:I

    .line 467
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sTetheringmode:Z

    .line 468
    sput-object v4, Lcom/android/mms/MmsConfig;->sUserNai:Ljava/lang/String;

    .line 469
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableConvertingEffectBetweenSMSMMS:Z

    .line 470
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableBackgroundStyleWithImage:Z

    .line 473
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableDisplayNameAndNumberonTitle:Z

    .line 475
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableLandscapeActionbarHide:Z

    .line 477
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sHasQwertykeypad:Z

    .line 479
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableSaveRingtoneMenu:Z

    .line 481
    sput-boolean v2, Lcom/android/mms/MmsConfig;->DEBUG_mBlockContextAwareness:Z

    .line 482
    sput-object v4, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    .line 484
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableLeftAttachButtonUI:Z

    .line 488
    const/16 v0, 0x50

    sput v0, Lcom/android/mms/MmsConfig;->sImageResizeQualityFactorWhenAttach:I

    .line 490
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableRemovingContactThumbnailInMsgList:Z

    .line 492
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sIsContextProviderForAlways:Z

    .line 495
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableChameleon:Z

    .line 496
    sput-object v4, Lcom/android/mms/MmsConfig;->sChameleonTextTemplate:[Ljava/lang/String;

    .line 497
    sput-object v4, Lcom/android/mms/MmsConfig;->sLocale:Ljava/lang/String;

    .line 504
    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableGroupMms:Z

    .line 511
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableVoLTE:Z

    .line 512
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnable3GHDVoice:Z

    .line 513
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableApnOnOff:Z

    .line 514
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsUserInputApn:Z

    .line 515
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableDelaySendSMS:Z

    .line 516
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsSubjectConcept4Korea:Z

    .line 517
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableRecipientSearchByCharMatchingDigit:Z

    .line 518
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsTransactionCustomize4Korea:Z

    .line 519
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableCheckAvailableStorage:Z

    .line 520
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableSmscEditableOnlyFor:Z

    .line 521
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableRequestSendNoSrv:Z

    .line 522
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableDualNumber4Korea:Z

    .line 523
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableParsingAudioFilenameFromPart:Z

    .line 524
    sput-object v4, Lcom/android/mms/MmsConfig;->sEnableDialogAlertWhenTextInput:Ljava/lang/String;

    .line 525
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sBlockSendMmsWithOnlySubject:Z

    .line 526
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableFlickThreadView:Z

    .line 527
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableBlackListForKor:Z

    .line 528
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableAddPrefix4InternationalCall:Z

    .line 529
    sput v2, Lcom/android/mms/MmsConfig;->sAvailableSizeForRestrictAutoDownload:I

    .line 530
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sRemoveInternationalTelNumPrefix:Z

    .line 531
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMultiDraftMsgBox:Z

    .line 532
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableCMASTestOnOff:Z

    .line 533
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sMoveReadNDeliverySettingToComposer:Z

    .line 534
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableKTSMSReadConfirm:Z

    .line 535
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableDeletePermanentFailure:Z

    .line 536
    sput-object v4, Lcom/android/mms/MmsConfig;->sOperatorNumeric:Ljava/lang/String;

    .line 537
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableUnknownURLlink:Z

    .line 538
    sput v5, Lcom/android/mms/MmsConfig;->uspLevel:I

    .line 2095
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/MmsConfig;->sDefaultRetryQuality:[I

    .line 2099
    sput-boolean v2, Lcom/android/mms/MmsConfig;->sMaxQuality:Z

    return-void

    .line 114
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    goto/16 :goto_0

    .line 116
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v0

    goto/16 :goto_1

    .line 2095
    :array_0
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CMASDialogMoveToFrontWhenCallingStatus()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1468
    sget-object v1, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v1}, Lcom/android/mms/cmas/CMASVender;->getCMASProvider()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static DEBUG_getBlockContextAwareness()Z
    .locals 3

    .prologue
    .line 3293
    sget-object v0, Lcom/android/mms/MmsConfig;->pref_DebugContext:Landroid/content/SharedPreferences;

    const-string v1, "DEBUG_mBlockContextAwareness"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static DEBUG_setBlockContextAwareness(Z)V
    .locals 0
    .parameter "mBlockContext"

    .prologue
    .line 3297
    sput-boolean p0, Lcom/android/mms/MmsConfig;->DEBUG_mBlockContextAwareness:Z

    .line 3298
    return-void
.end method

.method public static SetChameleonTextTemplate(Ljava/lang/String;)V
    .locals 1
    .parameter "textTemplate"

    .prologue
    .line 3141
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MmsConfig;->sChameleonTextTemplate:[Ljava/lang/String;

    .line 3142
    return-void
.end method

.method public static SetPreloadTextTemplate(Ljava/lang/String;)V
    .locals 3
    .parameter "cscTemplate"

    .prologue
    .line 3096
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MmsConfig;->templateArrayValue:[Ljava/lang/String;

    .line 3097
    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "templateArrayValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    return-void
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 2473
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2477
    :cond_1
    if-eq v0, v2, :cond_2

    .line 2478
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2481
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2482
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2485
    :cond_3
    return-void
.end method

.method private static checkContextProviderForAlways(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 3366
    const/4 v2, -0x1

    .line 3368
    .local v2, version:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.android.providers.context"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3370
    .local v1, pInfo:Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3374
    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    .line 3375
    const/4 v3, 0x1

    .line 3377
    .end local v1           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 3371
    :catch_0
    move-exception v0

    .line 3372
    .local v0, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private static checkTranslatorEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 606
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 607
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/android/mms/MmsConfig;->TRANSLATOR_PACKAGE_NAME:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 608
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 611
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static disableComponent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "componentName"

    .prologue
    .line 680
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 684
    return-void
.end method

.method private static enableComponent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "componentName"

    .prologue
    const/4 v2, 0x1

    .line 687
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 691
    return-void
.end method

.method private static generateUaString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "vendor"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2386
    const/4 v6, 0x0

    .line 2387
    .local v6, ua:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2388
    .local v2, base:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 2389
    .local v3, buffer:Ljava/lang/StringBuffer;
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2391
    .local v5, model:Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2392
    const-string v2, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    .line 2395
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2396
    .local v7, version:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 2397
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2401
    :goto_0
    const-string v8, "; "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2402
    const-string v8, "en-us; "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2404
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 2405
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2408
    :cond_0
    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 2409
    .local v4, id:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 2410
    const-string v8, " Build/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2411
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2414
    :cond_1
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2448
    .end local v4           #id:Ljava/lang/String;
    .end local v7           #version:Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v6

    .line 2399
    .restart local v7       #version:Ljava/lang/String;
    :cond_3
    const-string v8, "1.0"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2415
    .end local v7           #version:Ljava/lang/String;
    :cond_4
    const-string v8, ""

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2416
    const-string v2, "%s Mozilla/5.0 SMM-MMS/1.2.0"

    .line 2418
    const-string v8, "SAMSUNG-"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2419
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 2420
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2423
    :cond_5
    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2425
    const-string v8, "gsm.version.baseband"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2426
    .local v1, VersionName:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 2427
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2430
    :cond_6
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2431
    goto :goto_1

    .end local v1           #VersionName:Ljava/lang/String;
    :cond_7
    const-string v8, "ggsm-tmo"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2432
    const-string v2, "SAMSUNG-ANDROID-MMS/%s"

    .line 2434
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_8

    .line 2435
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2438
    :cond_8
    const-string v8, "-"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2440
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 2441
    .local v0, Incremental:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_9

    .line 2442
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2445
    :cond_9
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private static generateUapUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "vendor"

    .prologue
    .line 2452
    const/4 v3, 0x0

    .line 2453
    .local v3, uapUrl:Ljava/lang/String;
    const-string v0, "http://wap.samsungmobile.com/uaprof/%s.xml"

    .line 2454
    .local v0, base:Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2455
    .local v2, model:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2457
    .local v1, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 2458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2459
    const-string v4, "ggsm-tmo"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2460
    const-string v4, "BO"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2462
    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2465
    :cond_1
    return-object v3
.end method

.method public static getAddLogsToRecipientSearchList()Z
    .locals 1

    .prologue
    .line 1129
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sAddLogsToRecipientSearchList:Z

    return v0
.end method

.method public static getAddSendOptionInComposer()Z
    .locals 1

    .prologue
    .line 2725
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sAddSendOptionInComposer:Z

    return v0
.end method

.method public static getAliasMaxChars()I
    .locals 1

    .prologue
    .line 856
    sget v0, Lcom/android/mms/MmsConfig;->sAliasRuleMaxChars:I

    return v0
.end method

.method public static getAliasMinChars()I
    .locals 1

    .prologue
    .line 852
    sget v0, Lcom/android/mms/MmsConfig;->sAliasRuleMinChars:I

    return v0
.end method

.method public static getAllowAttachAudio()Z
    .locals 1

    .prologue
    .line 860
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sAllowAttachAudio:Z

    return v0
.end method

.method public static getAttachmentFilenameEncodingType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1536
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1537
    const-string v0, "BASE64"

    sput-object v0, Lcom/android/mms/MmsConfig;->sAttachmentFilenameEncodingType:Ljava/lang/String;

    .line 1539
    :cond_0
    sget-object v0, Lcom/android/mms/MmsConfig;->sAttachmentFilenameEncodingType:Ljava/lang/String;

    return-object v0
.end method

.method public static getAvailableSizeForRestrictAutoDownload()I
    .locals 1

    .prologue
    .line 3524
    sget v0, Lcom/android/mms/MmsConfig;->sAvailableSizeForRestrictAutoDownload:I

    return v0
.end method

.method public static getBlockSendMmsWithOnlySubject()Z
    .locals 1

    .prologue
    .line 3553
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sBlockSendMmsWithOnlySubject:Z

    return v0
.end method

.method public static getCBChannel()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2666
    sget-object v0, Lcom/android/mms/MmsConfig;->sCBChannel:[Ljava/lang/String;

    return-object v0
.end method

.method public static getCDMACMASEnable()Z
    .locals 1

    .prologue
    .line 1380
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCDMACMASEnable()Z

    move-result v0

    return v0
.end method

.method public static getCDMADisplayLatestEnable()Z
    .locals 1

    .prologue
    .line 1388
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCDMADisplayLatestEnable()Z

    move-result v0

    return v0
.end method

.method public static getCMASDialogOKisDismiss()Z
    .locals 1

    .prologue
    .line 1446
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCMASDialogOKisDismiss()Z

    move-result v0

    return v0
.end method

.method public static getCMASProvider()I
    .locals 1

    .prologue
    .line 1341
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCMASProvider()I

    move-result v0

    return v0
.end method

.method public static getChameleonTextTemplate()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3145
    sget-object v0, Lcom/android/mms/MmsConfig;->sChameleonTextTemplate:[Ljava/lang/String;

    return-object v0
.end method

.method public static getCmasAlertSoundMenu()Z
    .locals 1

    .prologue
    .line 1412
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasAlertSoundMenu()Z

    move-result v0

    return v0
.end method

.method public static getCmasAlertTopUnlessRead()Z
    .locals 1

    .prologue
    .line 1366
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasAlertTopUnlessRead()Z

    move-result v0

    return v0
.end method

.method public static getCmasAllInOneThreaded()Z
    .locals 1

    .prologue
    .line 1363
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasAllInOneThreaded()Z

    move-result v0

    return v0
.end method

.method public static getCmasConversationListQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1351
    sget-object v0, Lcom/android/mms/MmsConfig;->sCmasConversationListQuery:Ljava/lang/String;

    return-object v0
.end method

.method public static getCmasFontSizePref()Z
    .locals 1

    .prologue
    .line 1376
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasTestMode()Z

    move-result v0

    return v0
.end method

.method public static getCmasMessageDuplicateMessageCheckFeature()Z
    .locals 1

    .prologue
    .line 1416
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasMessageDuplicateMessageCheckFeature()Z

    move-result v0

    return v0
.end method

.method public static getCmasMessagePriorityCheckFeature()Z
    .locals 1

    .prologue
    .line 1420
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasMessagePriorityCheckFeature()Z

    move-result v0

    return v0
.end method

.method public static getCmasMessageServereBelongToExtreme()Z
    .locals 1

    .prologue
    .line 1438
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasMessageServereBelongToExtreme()Z

    move-result v0

    return v0
.end method

.method public static getCmasNotiDateDescription()Z
    .locals 1

    .prologue
    .line 1404
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasNotiDateDescription()Z

    move-result v0

    return v0
.end method

.method public static getCmasNotificationPref()Z
    .locals 1

    .prologue
    .line 1396
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasNotificationPref()Z

    move-result v0

    return v0
.end method

.method private static getCmasOrderSetting()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1478
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasWhichMsgOnTop()I

    move-result v2

    .line 1479
    .local v2, WhichMsgOnTop:I
    const/4 v0, 0x0

    .line 1481
    .local v0, ConversationListQuery:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasAllInOneThreaded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1482
    const-string v0, "(type=110) AND unread_count > 0 DESC ,"

    move-object v1, v0

    .line 1499
    .end local v0           #ConversationListQuery:Ljava/lang/String;
    .local v1, ConversationListQuery:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1488
    .end local v1           #ConversationListQuery:Ljava/lang/String;
    .restart local v0       #ConversationListQuery:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasAlertTopUnlessRead()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1489
    const/16 v3, 0x1f

    if-ne v2, v3, :cond_1

    .line 1490
    const-string v0, "(type=100 OR type=101 OR type=102 OR type=103 OR type=104) AND unread_count > 0 DESC ,"

    :cond_1
    :goto_1
    move-object v1, v0

    .line 1499
    .end local v0           #ConversationListQuery:Ljava/lang/String;
    .restart local v1       #ConversationListQuery:Ljava/lang/String;
    goto :goto_0

    .line 1495
    .end local v1           #ConversationListQuery:Ljava/lang/String;
    .restart local v0       #ConversationListQuery:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1496
    :cond_3
    const-string v0, "type=100 AND alert_expired=0 DESC ,"

    goto :goto_1
.end method

.method public static getCmasPresidentialOPTOUTPref()Z
    .locals 1

    .prologue
    .line 1392
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasPresidentialOPTOUTPref()Z

    move-result v0

    return v0
.end method

.method public static getCmasPresidentialOnTop()Z
    .locals 1

    .prologue
    .line 1359
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasPresidentialOnTop()Z

    move-result v0

    return v0
.end method

.method public static getCmasPresidentialThreaded()Z
    .locals 1

    .prologue
    .line 1355
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasPresidentialThreaded()Z

    move-result v0

    return v0
.end method

.method public static getCmasTestMessageWithHiddenMenu()Z
    .locals 1

    .prologue
    .line 1408
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasTestMessageWithHiddenMenu()Z

    move-result v0

    return v0
.end method

.method public static getCmasTestSPRFeature()Z
    .locals 1

    .prologue
    .line 1434
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasTestSPRFeature()Z

    move-result v0

    return v0
.end method

.method public static getCmasVibrationPreviewPref()Z
    .locals 1

    .prologue
    .line 1400
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasVibrationPreviewPref()Z

    move-result v0

    return v0
.end method

.method public static getCmasWhichMsgOnTop()I
    .locals 1

    .prologue
    .line 1372
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasWhichMsgOnTop()I

    move-result v0

    return v0
.end method

.method public static getContactMatchCliDigit()I
    .locals 1

    .prologue
    .line 2858
    sget v0, Lcom/android/mms/MmsConfig;->sContactMatchCliDigit:I

    return v0
.end method

.method public static getContactReplacePackageAs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1592
    sget-object v0, Lcom/android/mms/MmsConfig;->sContactReplacePackageAs:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentPrefVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 3439
    const/4 v1, 0x0

    .line 3441
    .local v1, input:Ljava/io/FileInputStream;
    :try_start_0
    const-string v4, "pref_version"

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 3442
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v2, v4

    .line 3443
    .local v2, readCount:I
    new-array v0, v2, [B

    .line 3444
    .local v0, buffer:[B
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 3445
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3450
    .local v3, result:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3452
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3460
    .end local v0           #buffer:[B
    .end local v2           #readCount:I
    .end local v3           #result:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 3447
    :catch_0
    move-exception v4

    .line 3450
    if-eqz v1, :cond_1

    .line 3452
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3459
    :cond_1
    :goto_1
    const-string v4, "Mms/MmsConfig"

    const-string v5, "File didn\'t exist"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3460
    const/4 v3, 0x0

    goto :goto_0

    .line 3450
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    .line 3452
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3455
    :cond_2
    :goto_2
    throw v4

    .line 3453
    .restart local v0       #buffer:[B
    .restart local v2       #readCount:I
    .restart local v3       #result:Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v0           #buffer:[B
    .end local v2           #readCount:I
    .end local v3           #result:Ljava/lang/String;
    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method public static getDefaultMMSMessagesPerThread()I
    .locals 1

    .prologue
    .line 796
    sget v0, Lcom/android/mms/MmsConfig;->sDefaultMMSMessagesPerThread:I

    return v0
.end method

.method public static getDefaultSMSMessagesPerThread()I
    .locals 1

    .prologue
    .line 792
    sget v0, Lcom/android/mms/MmsConfig;->sDefaultSMSMessagesPerThread:I

    return v0
.end method

.method public static getDisableAddressPlusEdit()Z
    .locals 1

    .prologue
    .line 2905
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisableAddressPlusEdit:Z

    return v0
.end method

.method public static getDisableBackgroundStyleWithImage()Z
    .locals 1

    .prologue
    .line 1609
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisableBackgroundStyleWithImage:Z

    return v0
.end method

.method public static getDisableComposerPageCount()Z
    .locals 1

    .prologue
    .line 3708
    const/4 v0, 0x0

    return v0
.end method

.method public static getDisableContactDisplayFormatOneAndOthers()Z
    .locals 2

    .prologue
    .line 3616
    const-string v0, "KOR"

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getDisableConvertingEffectBetweenSMSMMS()Z
    .locals 1

    .prologue
    .line 1602
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sMmsEnabled:Z

    if-nez v0, :cond_0

    .line 1603
    const/4 v0, 0x1

    .line 1605
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisableConvertingEffectBetweenSMSMMS:Z

    goto :goto_0
.end method

.method public static getDisableEnterKeyInput()Z
    .locals 1

    .prologue
    .line 868
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisableEnterKeyInput:Z

    return v0
.end method

.method public static getDisableLandscapeModeonActivity()Z
    .locals 1

    .prologue
    .line 3720
    const/4 v0, 0x0

    return v0
.end method

.method public static getDisableMmsAllPageBubble()Z
    .locals 1

    .prologue
    .line 3389
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisableMmsAllPageBubble:Z

    return v0
.end method

.method public static getDisableParsingAudioFilenameFromPart()Z
    .locals 1

    .prologue
    .line 3544
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisableParsingAudioFilenameFromPart:Z

    return v0
.end method

.method public static getDisableRecipientSearchByCharMatchingDigit()Z
    .locals 1

    .prologue
    .line 3588
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisableRecipientSearchByCharMatchingDigit:Z

    return v0
.end method

.method public static getDisableSavingInbox4CBChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3185
    sget-object v0, Lcom/android/mms/MmsConfig;->sDisableSavingInbox4CBChannel:Ljava/lang/String;

    return-object v0
.end method

.method public static getDisableSmscEditableOnlyFor()Z
    .locals 1

    .prologue
    .line 3530
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisableSmscEditableOnlyFor:Z

    return v0
.end method

.method public static getDisableTabSetting()Z
    .locals 1

    .prologue
    .line 1121
    const/4 v0, 0x1

    return v0
.end method

.method public static getDisableVItemAttachment()Z
    .locals 1

    .prologue
    .line 951
    const/4 v0, 0x0

    return v0
.end method

.method public static getDisplayPushSenderAddress()Z
    .locals 1

    .prologue
    .line 1567
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisplayPushSenderAddress:Z

    return v0
.end method

.method public static getEmailGateway()Ljava/lang/String;
    .locals 1

    .prologue
    .line 752
    sget-object v0, Lcom/android/mms/MmsConfig;->sEmailGateway:Ljava/lang/String;

    return-object v0
.end method

.method public static getEmbeddedTextTemplateType()I
    .locals 1

    .prologue
    .line 1239
    sget v0, Lcom/android/mms/MmsConfig;->sEmbeddedTextTemplateType:I

    return v0
.end method

.method public static getEmojiSupportMode()I
    .locals 1

    .prologue
    .line 1621
    sget v0, Lcom/android/mms/MmsConfig;->sEmojiSupportType:I

    return v0
.end method

.method public static getEnable3GHDVoice()Z
    .locals 1

    .prologue
    .line 3565
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnable3GHDVoice:Z

    return v0
.end method

.method public static getEnable41Widget()Z
    .locals 1

    .prologue
    .line 3753
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableAddPrefix4InternationalCall()Z
    .locals 1

    .prologue
    .line 3557
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableAddPrefix4InternationalCall:Z

    return v0
.end method

.method public static getEnableAddRecipients()Z
    .locals 1

    .prologue
    .line 1160
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableAddRecipients:Z

    return v0
.end method

.method public static getEnableAlertInEcbmMode()Z
    .locals 1

    .prologue
    .line 3657
    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableAllContextMenuInMsgViewer()Z
    .locals 1

    .prologue
    .line 3150
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableAllContextMenuInMsgViewer:Z

    return v0
.end method

.method public static getEnableAnonymousThread()Z
    .locals 1

    .prologue
    .line 1066
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableAnonymousThread:Z

    return v0
.end method

.method public static getEnableApnOnOff()Z
    .locals 1

    .prologue
    .line 3500
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableApnOnOff:Z

    return v0
.end method

.method public static getEnableAttachmentFilenameEncoding()Z
    .locals 1

    .prologue
    .line 1532
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableAttachmentFilenameEncoding:Z

    return v0
.end method

.method public static final getEnableAuthMdn()Z
    .locals 1

    .prologue
    .line 1331
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableAuthMdn:Z

    return v0
.end method

.method public static getEnableAutoChangeKoreanNationalCode()Z
    .locals 1

    .prologue
    .line 2757
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableAutoChangeKoreanNationalCode:Z

    return v0
.end method

.method public static getEnableAutoSmsSending()Z
    .locals 1

    .prologue
    .line 3092
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableAutoVideoResize()Z
    .locals 1

    .prologue
    .line 3712
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableAvatarAttachMenu()Z
    .locals 1

    .prologue
    .line 920
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableBcdNumber()Z
    .locals 1

    .prologue
    .line 2753
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableBcdNumber:Z

    return v0
.end method

.method public static getEnableBlackList()Z
    .locals 1

    .prologue
    .line 2608
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableBlackList:Z

    return v0
.end method

.method public static getEnableBlackListForCHN()Z
    .locals 1

    .prologue
    .line 2867
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableBlackListForCHN:Z

    return v0
.end method

.method public static getEnableBlackListForKor()Z
    .locals 2

    .prologue
    .line 3580
    const-string v0, "KOR"

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getEnableBlackListSeperateCallReject()Z
    .locals 1

    .prologue
    .line 2871
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableBlackListSeperateCallReject:Z

    return v0
.end method

.method public static getEnableCBChannel()Z
    .locals 1

    .prologue
    .line 1046
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCBChannel:Z

    return v0
.end method

.method public static getEnableCBChannel4DisplayInStatusBar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3189
    sget-object v0, Lcom/android/mms/MmsConfig;->sEnableCBChDisplayinStatusBar:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnableCBMessage()Z
    .locals 1

    .prologue
    .line 1042
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCBMessage:Z

    return v0
.end method

.method public static getEnableCBNotifications()Z
    .locals 1

    .prologue
    .line 3181
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCBNotifications:Z

    return v0
.end method

.method public static getEnableCMASTestOnOff()Z
    .locals 1

    .prologue
    .line 3598
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCMASTestOnOff:Z

    return v0
.end method

.method public static getEnableCTWap()Z
    .locals 1

    .prologue
    .line 2733
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCTWap:Z

    return v0
.end method

.method public static getEnableCallbackNumber()Z
    .locals 1

    .prologue
    .line 1260
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCallbackNumber:Z

    return v0
.end method

.method public static getEnableCbsVariation4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2781
    sget-object v0, Lcom/android/mms/MmsConfig;->sEnableCbsVariation4:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnableCdmaCmasOverLte()Z
    .locals 1

    .prologue
    .line 3757
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableChameleon()Z
    .locals 1

    .prologue
    .line 3137
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableChameleon:Z

    return v0
.end method

.method public static getEnableCheckFDNContactWhenMMSSend()Z
    .locals 1

    .prologue
    .line 3192
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCheckFDNContactWhenMMSSend:Z

    return v0
.end method

.method public static getEnableCheckNumAreaCode()Z
    .locals 1

    .prologue
    .line 1133
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCheckNumAreaCode:Z

    return v0
.end method

.method public static getEnableChoseongSearch()Z
    .locals 1

    .prologue
    .line 2809
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableChoseongSearch:Z

    return v0
.end method

.method public static getEnableCiqUsAtt()Z
    .locals 1

    .prologue
    .line 3716
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableClipboardOnViewer()Z
    .locals 1

    .prologue
    .line 2701
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableClipboardOnViewer:Z

    return v0
.end method

.method public static getEnableCmas()Z
    .locals 1

    .prologue
    .line 1430
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getEnableCmas()Z

    move-result v0

    return v0
.end method

.method public static getEnableCombineAndForwardMenu()Z
    .locals 1

    .prologue
    .line 2652
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCombindAndForwardMessage:Z

    return v0
.end method

.method public static getEnableComposeTypeUI()Z
    .locals 1

    .prologue
    .line 2765
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableComposeTypeUI:Z

    return v0
.end method

.method public static getEnableContactInfoInBubble()Z
    .locals 1

    .prologue
    .line 2721
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableContactInfoInBubble:Z

    return v0
.end method

.method public static getEnableCopyToSim()Z
    .locals 1

    .prologue
    .line 1268
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCopyToSim:Z

    return v0
.end method

.method public static getEnableDSAC()Z
    .locals 1

    .prologue
    .line 2713
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDSAC:Z

    return v0
.end method

.method public static getEnableDefaultRingtone()Z
    .locals 1

    .prologue
    .line 2705
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDefaultRingtone:Z

    return v0
.end method

.method public static getEnableDelaySendSMS()Z
    .locals 1

    .prologue
    .line 3512
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDelaySendSMS:Z

    return v0
.end method

.method public static getEnableDeleteButtonOnActionBar()Z
    .locals 1

    .prologue
    .line 1151
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDeleteButtonOnActionBar:Z

    return v0
.end method

.method public static getEnableDeletePermanentFailure()Z
    .locals 1

    .prologue
    .line 3236
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDeletePermanentFailure:Z

    return v0
.end method

.method public static getEnableDialogAlertWhenTextInputForKor()Z
    .locals 2

    .prologue
    .line 3548
    sget-object v0, Lcom/android/mms/MmsConfig;->sEnableDialogAlertWhenTextInput:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/mms/MmsConfig;->sEnableDialogAlertWhenTextInput:Ljava/lang/String;

    const-string v1, "kor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getEnableDiscardSmsCreateWapPush()Z
    .locals 1

    .prologue
    .line 2879
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDiscardSameCreateWapPush:Z

    return v0
.end method

.method public static getEnableDisplayNameAndNumberonTitle()Z
    .locals 1

    .prologue
    .line 1155
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDisplayNameAndNumberonTitle:Z

    return v0
.end method

.method public static getEnableDocomoAccountAsDefault()Z
    .locals 1

    .prologue
    .line 1588
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDocomoAccountAsDefault:Z

    return v0
.end method

.method public static getEnableDraftMessageBox()Z
    .locals 1

    .prologue
    .line 3304
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDraftMessageBox:Z

    return v0
.end method

.method public static getEnableDualNumber4Korea()Z
    .locals 1

    .prologue
    .line 3541
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDualNumber4Korea:Z

    return v0
.end method

.method public static getEnableEasyMode(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 3358
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3359
    .local v0, easyMode:I
    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public static getEnableEmoji()Z
    .locals 1

    .prologue
    .line 896
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableEmoji:Z

    return v0
.end method

.method public static getEnableEmptySms()Z
    .locals 1

    .prologue
    .line 963
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableEmptySms:Z

    return v0
.end method

.method public static getEnableEms()Z
    .locals 1

    .prologue
    .line 2662
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableEms:Z

    return v0
.end method

.method public static getEnableEurKrDecoding()Z
    .locals 1

    .prologue
    .line 2741
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableEurKrDecoding:Z

    return v0
.end method

.method public static getEnableFingerprintService()Z
    .locals 1

    .prologue
    .line 3724
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableFlickThreadView()Z
    .locals 1

    .prologue
    .line 3569
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableFlickThreadView:Z

    return v0
.end method

.method public static getEnableFolderView()Z
    .locals 1

    .prologue
    .line 2633
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableFolderView:Z

    return v0
.end method

.method public static getEnableFontSize()Z
    .locals 1

    .prologue
    .line 1078
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableFontSize:Z

    return v0
.end method

.method public static getEnableFontSizeByVolumeKey()Z
    .locals 1

    .prologue
    .line 2679
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableFontSizeByVolumeKey:Z

    return v0
.end method

.method public static getEnableGridViewOnAddAttachmentMenu()Z
    .locals 1

    .prologue
    .line 1617
    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableGridViewOnAddTextMenu()Z
    .locals 1

    .prologue
    .line 1613
    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableGroupMessage()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3402
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 3407
    const-string v2, "ro.product.device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3408
    .local v0, device:Ljava/lang/String;
    const-string v2, "d2cri"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3409
    const/4 v1, 0x1

    .line 3415
    .end local v0           #device:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 3413
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3415
    sget-boolean v1, Lcom/android/mms/MmsConfig;->sEnableGroupMms:Z

    goto :goto_0
.end method

.method public static getEnableIS41Email()Z
    .locals 1

    .prologue
    .line 2588
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableIS41Email:Z

    return v0
.end method

.method public static getEnableInfiniteDispMMSProgressbar()Z
    .locals 1

    .prologue
    .line 1524
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableInfiniteDispMMSProgressbar:Z

    return v0
.end method

.method public static getEnableKTSMSReadConfirm()Z
    .locals 1

    .prologue
    .line 3667
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableKTSMSReadConfirm:Z

    return v0
.end method

.method public static getEnableKoreanSpecialCharacter()Z
    .locals 1

    .prologue
    .line 2761
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableKoreanSpecialCharacter:Z

    return v0
.end method

.method public static getEnableKsc5601()Z
    .locals 1

    .prologue
    .line 2745
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableKsc5601:Z

    return v0
.end method

.method public static getEnableLCDOn()Z
    .locals 1

    .prologue
    .line 3653
    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableLguHttpHeader()Z
    .locals 1

    .prologue
    .line 2773
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableLguHttpHeader:Z

    return v0
.end method

.method public static getEnableLimitMmsBodyByte()Z
    .locals 1

    .prologue
    .line 1244
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableLimitMmsBodyByte:Z

    return v0
.end method

.method public static getEnableLimitOnMmsSubjectByByte()Z
    .locals 1

    .prologue
    .line 1211
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableLimitOnMmsSubjectByByte:Z

    return v0
.end method

.method public static getEnableLocation()Z
    .locals 1

    .prologue
    .line 998
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableLocation:Z

    return v0
.end method

.method public static getEnableLockedMsgManager()Z
    .locals 1

    .prologue
    .line 1543
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableLockedMsgManager:Z

    return v0
.end method

.method public static getEnableLogs()Z
    .locals 1

    .prologue
    .line 3196
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableLogs:Z

    return v0
.end method

.method public static getEnableMMSStatusUIForCHN()Z
    .locals 1

    .prologue
    .line 2797
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMMSStatusUIForCHN:Z

    return v0
.end method

.method public static getEnableMMSThroughWifi()Z
    .locals 1

    .prologue
    .line 938
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableMMSThroughWimax()Z
    .locals 1

    .prologue
    .line 942
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableManageSimMessages()Z
    .locals 1

    .prologue
    .line 1248
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableManageSimMessages:Z

    return v0
.end method

.method public static getEnableMaxQuality()Z
    .locals 1

    .prologue
    .line 2102
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sMaxQuality:Z

    return v0
.end method

.method public static getEnableMediaDuration()Z
    .locals 1

    .prologue
    .line 1528
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMediaDuration:Z

    return v0
.end method

.method public static getEnableMenuInsertSenderInfoWhenFwdMsg()Z
    .locals 1

    .prologue
    .line 1563
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMenuInsertSenderInfoWhenFwdMsg:Z

    return v0
.end method

.method public static getEnableMenuMmsServerAddr()Z
    .locals 1

    .prologue
    .line 2829
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMenuMmsServerAddr:Z

    return v0
.end method

.method public static getEnableMenuSetAsRingtone()Z
    .locals 1

    .prologue
    .line 2834
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableMessageAutoView()Z
    .locals 1

    .prologue
    .line 1074
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMessageAutoView:Z

    return v0
.end method

.method public static getEnableMessageDbBackupKeystring()Z
    .locals 1

    .prologue
    .line 1559
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMessageDbBackupKeystring:Z

    return v0
.end method

.method public static getEnableMessageMaxTextLengthInAllSlides()Z
    .locals 1

    .prologue
    .line 780
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMessageMaxTextLengthInAllSlides:Z

    return v0
.end method

.method public static getEnableMessageReminderAlert()Z
    .locals 1

    .prologue
    .line 1125
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMessageReminderAlert:Z

    return v0
.end method

.method public static getEnableMessageShare()Z
    .locals 1

    .prologue
    .line 784
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableMessageSupportMultiImageAttach()Z
    .locals 1

    .prologue
    .line 3485
    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableMmsAllPageBubble()Z
    .locals 1

    .prologue
    .line 3385
    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableMmsAutoDownload4Spam()Z
    .locals 1

    .prologue
    .line 1571
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsAutoDownload4Spam:Z

    return v0
.end method

.method public static getEnableMmsCreationMode()Z
    .locals 1

    .prologue
    .line 946
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsCreationMode:Z

    return v0
.end method

.method public static getEnableMmsDeliveryTime()Z
    .locals 1

    .prologue
    .line 2821
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsDeliveryTime:Z

    return v0
.end method

.method public static getEnableMmsDetailVzw()Z
    .locals 1

    .prologue
    .line 2612
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsDetailVzw:Z

    return v0
.end method

.method public static getEnableMmsExpiryDate()Z
    .locals 1

    .prologue
    .line 2813
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsExpiryDate:Z

    return v0
.end method

.method public static getEnableMmsMobiledataOff()Z
    .locals 1

    .prologue
    .line 2789
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsMobiledataOff:Z

    return v0
.end method

.method public static getEnableMmsParamsForChn()Z
    .locals 2

    .prologue
    .line 2647
    const-string v0, "CHN"

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getEnableMmsPriority()Z
    .locals 1

    .prologue
    .line 2817
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsPriority:Z

    return v0
.end method

.method public static getEnableMmsReadReportPdu()Z
    .locals 1

    .prologue
    .line 2854
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSendMmsReadReportPdu:Z

    return v0
.end method

.method public static getEnableMmsSendingForChn()Z
    .locals 1

    .prologue
    .line 2643
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableMmsServerTime()Z
    .locals 1

    .prologue
    .line 1030
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsServerTime:Z

    return v0
.end method

.method public static getEnableMmsSubjectConcept4Korea()Z
    .locals 1

    .prologue
    .line 3574
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsSubjectConcept4Korea:Z

    return v0
.end method

.method public static getEnableMmsTransactionCustomize4Korea()Z
    .locals 1

    .prologue
    .line 3518
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsTransactionCustomize4Korea:Z

    return v0
.end method

.method public static getEnableMmsUserInputApn()Z
    .locals 1

    .prologue
    .line 3494
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsUserInputApn:Z

    return v0
.end method

.method public static getEnableMultiCopyToSIM()Z
    .locals 1

    .prologue
    .line 2793
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMultiCopyToSIM:Z

    return v0
.end method

.method public static getEnableMultiDraftMsgBox()Z
    .locals 1

    .prologue
    .line 3649
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMultiDraftMsgBox:Z

    return v0
.end method

.method public static getEnableMultiLockMenu()Z
    .locals 1

    .prologue
    .line 2729
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMultiLockMenu:Z

    return v0
.end method

.method public static getEnableMultiwindow()Z
    .locals 1

    .prologue
    .line 3732
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMultiwindow:Z

    return v0
.end method

.method public static getEnableNGMGroupMessage()Z
    .locals 1

    .prologue
    .line 925
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableNGMLocation()Z
    .locals 1

    .prologue
    .line 930
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableNetworkWarningDialog()Z
    .locals 1

    .prologue
    .line 3489
    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableNotificationBacklight()Z
    .locals 1

    .prologue
    .line 1256
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableNotificationBacklight:Z

    return v0
.end method

.method public static getEnableNotificationBoradcastReceivedMsg()Z
    .locals 1

    .prologue
    .line 1551
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableNotificationBoradcastReceivedMsg:Z

    return v0
.end method

.method public static getEnableNotificationVibrate()Z
    .locals 1

    .prologue
    .line 1252
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableNotificationVibrate:Z

    return v0
.end method

.method public static getEnablePhoneNumberFormattingInMsg()Z
    .locals 1

    .prologue
    .line 2777
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnablePhoneNumberFormattingInMsg:Z

    return v0
.end method

.method public static getEnablePickContactLimit()Z
    .locals 1

    .prologue
    .line 2801
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnablePickContactLimit:Z

    return v0
.end method

.method public static getEnablePinyinSearch()Z
    .locals 1

    .prologue
    .line 1580
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnablePinyinSearch:Z

    return v0
.end method

.method public static getEnablePlusButtonOnRecipient()Z
    .locals 1

    .prologue
    .line 2917
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnablePlusButtonOnRecipient:Z

    return v0
.end method

.method public static getEnablePriority()Z
    .locals 1

    .prologue
    .line 1070
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnablePriority:Z

    return v0
.end method

.method public static getEnableRCS()Z
    .locals 1

    .prologue
    .line 2749
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableRCS:Z

    return v0
.end method

.method public static getEnableRTSReject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2769
    sget-object v0, Lcom/android/mms/MmsConfig;->sEnableRTSReject:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnableReceivePortSMS()Z
    .locals 1

    .prologue
    .line 1555
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableReceivePortSMS:Z

    return v0
.end method

.method public static getEnableRecordAudio()Z
    .locals 1

    .prologue
    .line 1002
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableRecordAudio:Z

    return v0
.end method

.method public static getEnableRegisterCalendar()Z
    .locals 1

    .prologue
    .line 1137
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableRegisterCalendar:Z

    return v0
.end method

.method public static getEnableRemoveEmailDialog()Z
    .locals 1

    .prologue
    .line 788
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableRemovingContactThumbnail()Z
    .locals 1

    .prologue
    .line 1547
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableRemovingContactThumbnailInMsgList:Z

    return v0
.end method

.method public static getEnableReplaceLabelOnRequestedStatus()Z
    .locals 1

    .prologue
    .line 1584
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableReplaceLabelOnRequestedStatus:Z

    return v0
.end method

.method public static getEnableReplacingCarriageReturnIntoNewLine()Z
    .locals 1

    .prologue
    .line 3200
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableReplacingCarriageReturnIntoNewLine:Z

    return v0
.end method

.method public static getEnableReplyAll()Z
    .locals 1

    .prologue
    .line 916
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableReplyAll:Z

    return v0
.end method

.method public static getEnableReportAsSpam()Z
    .locals 1

    .prologue
    .line 3761
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableRequestSendNoSrv()Z
    .locals 1

    .prologue
    .line 3536
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableRequestSendNoSrv:Z

    return v0
.end method

.method public static getEnableRetrievalDuringRoaming()Z
    .locals 1

    .prologue
    .line 1219
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableRetrievalDuringRoaming:Z

    return v0
.end method

.method public static getEnableRilSmsAddressSeperator()Z
    .locals 1

    .prologue
    .line 2883
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableRilSmsSupportReplyAddress()Z
    .locals 1

    .prologue
    .line 2887
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableRilSmsTidMessage()Z
    .locals 1

    .prologue
    .line 2891
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableRoamGuard()Z
    .locals 1

    .prologue
    .line 2737
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableRoamGuard:Z

    return v0
.end method

.method public static getEnableSIMMessageCountUI()Z
    .locals 1

    .prologue
    .line 2805
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSIMMessageCountUI:Z

    return v0
.end method

.method public static getEnableSMSC()Z
    .locals 1

    .prologue
    .line 888
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSMSC:Z

    return v0
.end method

.method public static getEnableSMSCEditable()Z
    .locals 1

    .prologue
    .line 892
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSMSCEditable:Z

    return v0
.end method

.method public static getEnableSMSP()Z
    .locals 1

    .prologue
    .line 2717
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSMSP:Z

    return v0
.end method

.method public static getEnableSMemo()Z
    .locals 1

    .prologue
    .line 1010
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSMemo:Z

    return v0
.end method

.method public static getEnableSNote()Z
    .locals 1

    .prologue
    .line 1014
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSNote:Z

    return v0
.end method

.method public static getEnableSOSPrefix()Z
    .locals 1

    .prologue
    .line 2897
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSOSPrefix:Z

    return v0
.end method

.method public static getEnableSPannerLabelCaleder()Z
    .locals 1

    .prologue
    .line 3341
    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableSPlanner()Z
    .locals 1

    .prologue
    .line 1018
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSPlanner:Z

    return v0
.end method

.method public static getEnableSaveClassZeroMessage()Z
    .locals 1

    .prologue
    .line 2850
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSaveClassZeroMessage:Z

    return v0
.end method

.method public static getEnableSaveRestoreSDCardMessage()Z
    .locals 1

    .prologue
    .line 934
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableSaveVMessage()Z
    .locals 1

    .prologue
    .line 1062
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSaveVMessage:Z

    return v0
.end method

.method public static getEnableScheduledMessage()Z
    .locals 1

    .prologue
    .line 1058
    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableSegmentedSms()Z
    .locals 1

    .prologue
    .line 2592
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSegmentedSms:Z

    return v0
.end method

.method public static getEnableSentTimeInSimList()Z
    .locals 1

    .prologue
    .line 1423
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSentTimeInSimList:Z

    return v0
.end method

.method public static getEnableServerTimeLabel()Z
    .locals 1

    .prologue
    .line 1022
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableServerTimeLabel:Z

    return v0
.end method

.method public static getEnableServiceLoading()Z
    .locals 1

    .prologue
    .line 955
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableServiceLoading:Z

    return v0
.end method

.method public static getEnableSetDefaultFocusToMessageBody()Z
    .locals 1

    .prologue
    .line 1520
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDefaultFocusToMsgBody:Z

    return v0
.end method

.method public static getEnableSignature()Z
    .locals 1

    .prologue
    .line 1038
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSignature:Z

    return v0
.end method

.method public static getEnableSinglePageSlideView()Z
    .locals 1

    .prologue
    .line 2638
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsOnePageViewer:Z

    return v0
.end method

.method public static getEnableSlideshowAutoPlay()Z
    .locals 1

    .prologue
    .line 1054
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSlideshowAutoPlay:Z

    return v0
.end method

.method public static getEnableSmsExpiryDate()Z
    .locals 1

    .prologue
    .line 872
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSmsExpiryDate:Z

    return v0
.end method

.method public static getEnableSmsForwardPrefix()Z
    .locals 1

    .prologue
    .line 1272
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSmsForwardPrefix:Z

    return v0
.end method

.method public static getEnableSmsInputMode()Z
    .locals 1

    .prologue
    .line 959
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSmsInputMode:Z

    return v0
.end method

.method public static getEnableSmsMaxByte()Z
    .locals 1

    .prologue
    .line 2596
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSmsMaxByte:Z

    return v0
.end method

.method public static getEnableSmsServerTime()Z
    .locals 1

    .prologue
    .line 1026
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSmsServerTime:Z

    return v0
.end method

.method public static getEnableSmsSubject()Z
    .locals 1

    .prologue
    .line 1050
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSmsSubject:Z

    return v0
.end method

.method public static getEnableSmsViewer()Z
    .locals 1

    .prologue
    .line 982
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSmsViewer:Z

    return v0
.end method

.method public static getEnableSmsViewerPinchZoom()Z
    .locals 1

    .prologue
    .line 2697
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSmsViewerPinchZoom:Z

    return v0
.end method

.method public static getEnableSpeedDial()Z
    .locals 1

    .prologue
    .line 2785
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSpeedDial:Z

    return v0
.end method

.method public static getEnableSplitMode()Z
    .locals 1

    .prologue
    .line 1083
    invoke-static {}, Lcom/android/mms/MmsConfig;->hasLargerThan5inchScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    const/4 v0, 0x1

    .line 1086
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSplitMode:Z

    goto :goto_0
.end method

.method public static getEnableSstream()Z
    .locals 1

    .prologue
    .line 3741
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableStageFlightLib()Z
    .locals 1

    .prologue
    .line 1034
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableStageFlightLib:Z

    return v0
.end method

.method public static getEnableStrictImageResizing()Z
    .locals 1

    .prologue
    .line 2709
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableStrictImageResizing:Z

    return v0
.end method

.method public static getEnableSubject()Z
    .locals 1

    .prologue
    .line 1215
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSubject:Z

    return v0
.end method

.method public static getEnableSupport7StepFontSize()Z
    .locals 1

    .prologue
    .line 2693
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableSupportIpCall()Z
    .locals 1

    .prologue
    .line 1597
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableIpCall:Z

    return v0
.end method

.method public static getEnableTextTempateButton()Z
    .locals 1

    .prologue
    .line 1223
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableTextTemplateButton:Z

    return v0
.end method

.method public static getEnableTexttemplatTMOMenu()Z
    .locals 1

    .prologue
    .line 3154
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableTexttemplatTMOMenu:Z

    return v0
.end method

.method public static getEnableTranslatorMenu()Z
    .locals 1

    .prologue
    .line 3424
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->checkTranslatorEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getEnableUnknownAddressToNullInDB()Z
    .locals 1

    .prologue
    .line 2901
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableUnknownAddressToNullInDB:Z

    return v0
.end method

.method public static getEnableVCalendar()Z
    .locals 1

    .prologue
    .line 994
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableVCalendar:Z

    return v0
.end method

.method public static getEnableVCard()Z
    .locals 1

    .prologue
    .line 986
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableVCard:Z

    return v0
.end method

.method public static getEnableVIPList()Z
    .locals 1

    .prologue
    .line 2629
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableVIPModeApplication()Z
    .locals 1

    .prologue
    .line 2894
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableVIPModeApplication:Z

    return v0
.end method

.method public static getEnableVMemo()Z
    .locals 1

    .prologue
    .line 990
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableVMemo:Z

    return v0
.end method

.method public static getEnableVTask()Z
    .locals 1

    .prologue
    .line 1006
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableVTask:Z

    return v0
.end method

.method public static getEnableVcardView()Z
    .locals 1

    .prologue
    .line 3419
    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableVibration4NotiDuringCall()Z
    .locals 1

    .prologue
    .line 3216
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableVibration4NotiDuringCall:Z

    return v0
.end method

.method public static getEnableVideoCall()Z
    .locals 2

    .prologue
    .line 971
    const-string v0, "KOR"

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableVoLTE:Z

    .line 977
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableVoLTE()Z
    .locals 1

    .prologue
    .line 3561
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableVoLTE:Z

    return v0
.end method

.method public static getEnableWapPush()Z
    .locals 1

    .prologue
    .line 884
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableWapPush:Z

    return v0
.end method

.method public static getEnableWhiteList()Z
    .locals 1

    .prologue
    .line 2604
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableWhiteList:Z

    return v0
.end method

.method public static getEnableWritingBuddy()Z
    .locals 2

    .prologue
    .line 3745
    sget v0, Lcom/android/mms/MmsConfig;->uspLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getForwardPrefix()I
    .locals 1

    .prologue
    .line 2658
    sget v0, Lcom/android/mms/MmsConfig;->sForwardPrefix:I

    return v0
.end method

.method public static getGSMCMASEnable()Z
    .locals 1

    .prologue
    .line 1384
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getGSMCMASEnable()Z

    move-result v0

    return v0
.end method

.method public static getGUITunningForSysPerformance()Z
    .locals 1

    .prologue
    .line 3310
    const/4 v0, 0x0

    return v0
.end method

.method public static getGalleryView4SingleImageMMSType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1141
    sget-object v0, Lcom/android/mms/MmsConfig;->sGalleryView4SingleImageMMSType:Ljava/lang/String;

    sget-object v1, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_MMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    sget-object v0, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_MMS:Ljava/lang/String;

    .line 1146
    :goto_0
    return-object v0

    .line 1143
    :cond_0
    sget-object v0, Lcom/android/mms/MmsConfig;->sGalleryView4SingleImageMMSType:Ljava/lang/String;

    sget-object v1, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_TEXT_MMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1144
    sget-object v0, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_TEXT_MMS:Ljava/lang/String;

    goto :goto_0

    .line 1146
    :cond_1
    sget-object v0, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_DISABLE:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getHttpParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 737
    sget-object v0, Lcom/android/mms/MmsConfig;->sHttpParams:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpParamsLine1Key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 741
    sget-object v0, Lcom/android/mms/MmsConfig;->sHttpParamsLine1Key:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpSocketTimeout()I
    .locals 1

    .prologue
    .line 808
    sget v0, Lcom/android/mms/MmsConfig;->sHttpSocketTimeout:I

    return v0
.end method

.method public static getImageResizeQualityFactorWhenAttach()I
    .locals 1

    .prologue
    .line 2127
    sget v0, Lcom/android/mms/MmsConfig;->sImageResizeQualityFactorWhenAttach:I

    return v0
.end method

.method public static getMMSDeliveryReportsEnabled()Z
    .locals 1

    .prologue
    .line 832
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMMSDeliveryReports:Z

    return v0
.end method

.method public static getMMSReadReportsEnabled()Z
    .locals 1

    .prologue
    .line 824
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMMSReadReports:Z

    return v0
.end method

.method public static getMMSSendDeliveryReportsEnabled()Z
    .locals 1

    .prologue
    .line 836
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMMSSendDeliveryReports:Z

    return v0
.end method

.method public static getMaxContentsSize()I
    .locals 2

    .prologue
    .line 864
    sget v0, Lcom/android/mms/MmsConfig;->sMaxMessageSize:I

    sget v1, Lcom/android/mms/MmsConfig;->sMmsHeaderSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static getMaxImageHeight()I
    .locals 1

    .prologue
    .line 756
    sget v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    return v0
.end method

.method public static getMaxImageHeightRestrictedMode()I
    .locals 1

    .prologue
    .line 764
    sget v0, Lcom/android/mms/MmsConfig;->sMaxImageHeightRestrictedMode:I

    return v0
.end method

.method public static getMaxImageWidth()I
    .locals 1

    .prologue
    .line 760
    sget v0, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    return v0
.end method

.method public static getMaxImageWidthRestrictedMode()I
    .locals 1

    .prologue
    .line 768
    sget v0, Lcom/android/mms/MmsConfig;->sMaxImageWidthRestrictedMode:I

    return v0
.end method

.method public static getMaxMessageCountPerThread()I
    .locals 1

    .prologue
    .line 804
    sget v0, Lcom/android/mms/MmsConfig;->sMaxMessageCountPerThread:I

    return v0
.end method

.method public static getMaxMessageSize()I
    .locals 1

    .prologue
    .line 713
    sget v0, Lcom/android/mms/MmsConfig;->sMaxMessageSize:I

    return v0
.end method

.method public static getMaxMessageSizeForResizing()I
    .locals 1

    .prologue
    .line 876
    sget v0, Lcom/android/mms/MmsConfig;->sMaxMessageSizeForResizing:I

    return v0
.end method

.method public static getMaxRawAttachmentCount()I
    .locals 1

    .prologue
    .line 1264
    sget v0, Lcom/android/mms/MmsConfig;->sMaxRawAttachmentCount:I

    return v0
.end method

.method public static getMaxRecipientLength()I
    .locals 1

    .prologue
    .line 2620
    sget v0, Lcom/android/mms/MmsConfig;->sMaxRecipientLength:I

    return v0
.end method

.method public static getMaxSizeScaleForPendingMmsAllowed()I
    .locals 1

    .prologue
    .line 844
    sget v0, Lcom/android/mms/MmsConfig;->sMaxSizeScaleForPendingMmsAllowed:I

    return v0
.end method

.method public static getMaxSlideCount()I
    .locals 1

    .prologue
    .line 967
    sget v0, Lcom/android/mms/MmsConfig;->sMaxSlideCount:I

    return v0
.end method

.method public static getMaxSubjectLength()I
    .locals 1

    .prologue
    .line 1207
    sget v0, Lcom/android/mms/MmsConfig;->sMaxSubjectLength:I

    return v0
.end method

.method public static getMaxTextLimit()I
    .locals 2

    .prologue
    .line 776
    sget v0, Lcom/android/mms/MmsConfig;->sMaxTextLength:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    sget v0, Lcom/android/mms/MmsConfig;->sMaxTextLength:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x7d0

    goto :goto_0
.end method

.method public static getMaximumEmailAddressLength()I
    .locals 1

    .prologue
    .line 3253
    sget v0, Lcom/android/mms/MmsConfig;->sMaximumEmailAddressLength:I

    return v0
.end method

.method public static getMinMessageCountPerThread()I
    .locals 1

    .prologue
    .line 800
    sget v0, Lcom/android/mms/MmsConfig;->sMinMessageCountPerThread:I

    return v0
.end method

.method public static getMinRecipientLength()I
    .locals 1

    .prologue
    .line 2616
    sget v0, Lcom/android/mms/MmsConfig;->sMinRecipientLength:I

    return v0
.end method

.method public static getMinimumSlideElementDuration()I
    .locals 1

    .prologue
    .line 812
    sget v0, Lcom/android/mms/MmsConfig;->sMinimumSlideElementDuration:I

    return v0
.end method

.method public static getMmsEnabled()Z
    .locals 1

    .prologue
    .line 705
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sMmsEnabled:Z

    return v0
.end method

.method public static getMmsMaxRecipient()I
    .locals 1

    .prologue
    .line 2875
    sget v0, Lcom/android/mms/MmsConfig;->sMmsRecipientLimit:I

    return v0
.end method

.method public static getMmsModeCaptureVideoMaxSize()I
    .locals 2

    .prologue
    .line 2968
    sget v0, Lcom/android/mms/MmsConfig;->sMmsModeCaptureVideoMaxSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2969
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->sMmsModeCaptureVideoMaxSize:I

    .line 2970
    :cond_0
    sget v0, Lcom/android/mms/MmsConfig;->sMmsModeCaptureVideoMaxSize:I

    return v0
.end method

.method public static getMmsServerAddressEditable()Z
    .locals 1

    .prologue
    .line 2842
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sMmsServerAddressEditable:Z

    return v0
.end method

.method public static getMmsServerPortEditable()Z
    .locals 1

    .prologue
    .line 2846
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sMmsServerPortEditable:Z

    return v0
.end method

.method public static getMmsUaUapAutoCreate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2838
    sget-object v0, Lcom/android/mms/MmsConfig;->sMmsUaUapAutoCreate:Ljava/lang/String;

    return-object v0
.end method

.method public static getMmsVersion()F
    .locals 1

    .prologue
    .line 908
    sget v0, Lcom/android/mms/MmsConfig;->sMmsVersion:F

    return v0
.end method

.method public static getMmsWidgetEnabled()Z
    .locals 1

    .prologue
    .line 709
    const/4 v0, 0x1

    return v0
.end method

.method public static getMoveReadNDeliverySettingToComposer()Z
    .locals 1

    .prologue
    .line 3661
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sMoveReadNDeliverySettingToComposer:Z

    return v0
.end method

.method public static getMultipartSmsEnabled()Z
    .locals 1

    .prologue
    .line 816
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMultipartSMS:Z

    return v0
.end method

.method public static getNewPrefVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 3433
    const-string v0, "1.0.0"

    return-object v0
.end method

.method public static getNotifyWapMMSC()Z
    .locals 1

    .prologue
    .line 840
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sNotifyWapMMSC:Z

    return v0
.end method

.method public static getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3682
    sget-object v0, Lcom/android/mms/MmsConfig;->sOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public static getOptionalFieldAttendance()Z
    .locals 1

    .prologue
    .line 1317
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sOptionalFieldAttendance:Z

    return v0
.end method

.method public static getPreloadTemplateFromCSC()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 3102
    sget-object v2, Lcom/android/mms/MmsConfig;->templateArrayValue:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3103
    invoke-static {}, Lcom/android/mms/transaction/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    .line 3105
    .local v0, CSC_FILE:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/transaction/CscParser;->getInstance(Ljava/lang/String;)Lcom/android/mms/transaction/CscParser;

    move-result-object v1

    .line 3107
    .local v1, mParser:Lcom/android/mms/transaction/CscParser;
    const-string v2, "Settings.Messages.SMS"

    const-string v3, "TextTemplate"

    invoke-static {v1, v2, v3}, Lcom/android/mms/MmsConfig;->getTagListsToArray(Lcom/android/mms/transaction/CscParser;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/MmsConfig;->templateArrayValue:[Ljava/lang/String;

    .line 3109
    :cond_0
    sget-object v2, Lcom/android/mms/MmsConfig;->templateArrayValue:[Ljava/lang/String;

    return-object v2
.end method

.method public static getProxyAuth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 676
    const-string v0, "Proxy-Authorization"

    return-object v0
.end method

.method public static getQualityArrayValue()[I
    .locals 1

    .prologue
    .line 2106
    sget-object v0, Lcom/android/mms/MmsConfig;->sDefaultRetryQuality:[I

    return-object v0
.end method

.method public static getRecipientLimit()I
    .locals 1

    .prologue
    .line 772
    sget v0, Lcom/android/mms/MmsConfig;->sRecipientLimit:I

    return v0
.end method

.method public static getRemoveInternationalTelNumPrefix()Z
    .locals 1

    .prologue
    .line 3584
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sRemoveInternationalTelNumPrefix:Z

    return v0
.end method

.method public static getSMSDeliveryReportsEnabled()Z
    .locals 1

    .prologue
    .line 828
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSMSDeliveryReports:Z

    return v0
.end method

.method public static getSavePduFiles()Z
    .locals 1

    .prologue
    .line 1300
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sSavePdu:Z

    return v0
.end method

.method public static getSetFontSizeByVolumeKey()Z
    .locals 1

    .prologue
    .line 2684
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sSetFontSizeByVolumeKey:Z

    return v0
.end method

.method public static getSlideDurationEnabled()Z
    .locals 1

    .prologue
    .line 820
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSlideDuration:Z

    return v0
.end method

.method public static getSmsDiscardPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2675
    sget-object v0, Lcom/android/mms/MmsConfig;->sSmsDiscardPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public static getSmsMaxByte()I
    .locals 1

    .prologue
    .line 2600
    sget v0, Lcom/android/mms/MmsConfig;->sSmsMaxByte:I

    return v0
.end method

.method public static getSmsToMmsByThreshold()Z
    .locals 1

    .prologue
    .line 912
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sSmsToMmsByThreshold:Z

    return v0
.end method

.method public static getSmsToMmsTextThreshold()I
    .locals 1

    .prologue
    .line 701
    sget v0, Lcom/android/mms/MmsConfig;->sSmsToMmsTextThreshold:I

    return v0
.end method

.method public static getSweepOperationArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3395
    const-string v0, "ListAll"

    return-object v0
.end method

.method public static getTWVersion()F
    .locals 1

    .prologue
    .line 904
    sget v0, Lcom/android/mms/MmsConfig;->sTWVersion:F

    return v0
.end method

.method private static getTagListsToArray(Lcom/android/mms/transaction/CscParser;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "mParser"
    .parameter "path_Node"
    .parameter "tag_NodeList"

    .prologue
    const/4 v4, 0x0

    .line 3158
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 3160
    .local v0, BaseNode:Lorg/w3c/dom/Node;
    if-nez v0, :cond_1

    .line 3177
    :cond_0
    return-object v4

    .line 3163
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/android/mms/transaction/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 3165
    .local v1, ListItems:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_0

    .line 3168
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 3170
    .local v4, items:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 3171
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 3172
    .local v3, item:Lorg/w3c/dom/Node;
    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 3174
    .local v5, parameter:Ljava/lang/String;
    aput-object v5, v4, v2

    .line 3170
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getTetheringMode()Z
    .locals 1

    .prologue
    .line 1169
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sTetheringmode:Z

    return v0
.end method

.method public static getTextTemplate(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 3114
    const/4 v1, 0x0

    .line 3120
    .local v1, texts:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 3121
    :cond_0
    sget v2, Lcom/android/mms/MmsConfig;->sEmbeddedTextTemplateType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 3122
    invoke-static {}, Lcom/android/mms/MmsConfig;->getPreloadTemplateFromCSC()[Ljava/lang/String;

    move-result-object v1

    .line 3133
    :cond_1
    :goto_0
    return-object v1

    .line 3123
    :cond_2
    sget v2, Lcom/android/mms/MmsConfig;->sEmbeddedTextTemplateType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 3124
    const-string v2, "ro.csc.sales_code"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3125
    .local v0, salesCode:Ljava/lang/String;
    sget-boolean v2, Lcom/android/mms/MmsConfig;->sEnableChameleon:Z

    if-eqz v2, :cond_3

    .line 3126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3128
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTransIdEnabled()Z
    .locals 1

    .prologue
    .line 721
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sTransIdEnabled:Z

    return v0
.end method

.method public static getTransactionLoggable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1282
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsParamsForChn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1289
    :cond_0
    :goto_0
    return v0

    .line 1286
    :cond_1
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1287
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sTransactionLoggable:Z

    goto :goto_0
.end method

.method public static getTransactionTimeout()I
    .locals 1

    .prologue
    .line 880
    sget v0, Lcom/android/mms/MmsConfig;->sTransactionTimeout:I

    return v0
.end method

.method public static getUaProfTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 729
    sget-object v0, Lcom/android/mms/MmsConfig;->sUaProfTagName:Ljava/lang/String;

    return-object v0
.end method

.method public static getUaProfUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 733
    sget-object v0, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    sget-object v0, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserNai()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    sget-object v0, Lcom/android/mms/MmsConfig;->sUserNai:Ljava/lang/String;

    return-object v0
.end method

.method public static getmCmasMessageTMOMenuTextFeature()Z
    .locals 1

    .prologue
    .line 1442
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getmCmasMessageTMOMenuTextFeature()Z

    move-result v0

    return v0
.end method

.method public static getmEnableAddContactIn1stDepthComposerOption()Z
    .locals 1

    .prologue
    .line 1575
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableAddContactIn1stDepthComposerOption:Z

    return v0
.end method

.method public static getmEnableDoCoMoDeliveryReportFormat()Z
    .locals 1

    .prologue
    .line 900
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDoCoMoDeliveryReportFormat:Z

    return v0
.end method

.method public static hasLargerThan5inchScreen()Z
    .locals 1

    .prologue
    .line 1104
    const/4 v0, 0x0

    return v0
.end method

.method public static hasQwertykeypad()Z
    .locals 1

    .prologue
    .line 3281
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sHasQwertykeypad:Z

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 543
    const-string v0, "Mms/MmsConfig"

    const-string v1, "MmsConfig.init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v0, "Mms/MmsConfig"

    const-string v1, "init() Start"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MmsConfig;->pref_DebugContext:Landroid/content/SharedPreferences;

    .line 548
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadMmsSettings(Landroid/content/Context;)V

    .line 549
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadCscSettings(Landroid/content/Context;)V

    .line 551
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadChameleonFromPreference(Landroid/content/Context;)V

    .line 553
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadFromPreference(Landroid/content/Context;)V

    .line 554
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadProvisioning(Landroid/content/Context;)V

    .line 555
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadOtherSettings(Landroid/content/Context;)V

    .line 557
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 562
    const-string v0, "com.android.mms.ui.ComposeMessageMms"

    invoke-static {p0, v0}, Lcom/android/mms/MmsConfig;->disableComponent(Landroid/content/Context;Ljava/lang/String;)V

    .line 569
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsWidgetEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 570
    const-string v0, "com.android.mms.widget.MmsWidgetProvider"

    invoke-static {p0, v0}, Lcom/android/mms/MmsConfig;->disableComponent(Landroid/content/Context;Ljava/lang/String;)V

    .line 573
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/mms/MmsConfig;->sHasQwertykeypad:Z

    .line 576
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->setCountryDetector()V

    .line 580
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->checkContextProviderForAlways(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->sIsContextProviderForAlways:Z

    .line 581
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->uspLevel:I

    .line 587
    const-string v0, "Mms/MmsConfig"

    const-string v1, "init() end"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-void

    .line 564
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    const-string v0, "com.android.mms.ui.ComposeMessageMms"

    invoke-static {p0, v0}, Lcom/android/mms/MmsConfig;->disableComponent(Landroid/content/Context;Ljava/lang/String;)V

    .line 566
    const-string v0, "com.android.mms.ui.ComposeMessageMmsNoVItem"

    invoke-static {p0, v0}, Lcom/android/mms/MmsConfig;->enableComponent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isATTCMASFeatureEnabled()Z
    .locals 2

    .prologue
    .line 1463
    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAliasEnabled()Z
    .locals 1

    .prologue
    .line 848
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sAliasEnabled:Z

    return v0
.end method

.method public static isCDMANetworkRegistered()Z
    .locals 2

    .prologue
    .line 3260
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 3262
    .local v0, activePhone:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 3263
    const/4 v1, 0x1

    .line 3265
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCmasTFGChileSIM()Z
    .locals 3

    .prologue
    .line 1503
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1505
    .local v0, imsi:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "730"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1506
    const/4 v1, 0x1

    .line 1508
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isContextProviderForAlways(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 3381
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sIsContextProviderForAlways:Z

    return v0
.end method

.method public static isDisableEasyModeForComposer()Z
    .locals 1

    .prologue
    .line 3353
    const/4 v0, 0x0

    return v0
.end method

.method public static isDisableSaveRingtone()Z
    .locals 1

    .prologue
    .line 3300
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisableSaveRingtoneMenu:Z

    return v0
.end method

.method public static isDisabledLandscapeActionbarHide()Z
    .locals 1

    .prologue
    .line 3270
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisableLandscapeActionbarHide:Z

    return v0
.end method

.method public static isDisabledLeftAttachButtonUI()Z
    .locals 2

    .prologue
    .line 3320
    const/4 v0, 0x0

    .line 3321
    .local v0, easyModeOn:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v0

    .line 3323
    if-eqz v0, :cond_0

    .line 3324
    const/4 v1, 0x0

    .line 3326
    :goto_0
    return v1

    :cond_0
    sget-boolean v1, Lcom/android/mms/MmsConfig;->sDisableLeftAttachButtonUI:Z

    goto :goto_0
.end method

.method public static isDisplayCallIconInActionBar()Z
    .locals 1

    .prologue
    .line 3212
    const/4 v0, 0x0

    return v0
.end method

.method public static isDisplayRecipientVzwLayout()Z
    .locals 1

    .prologue
    .line 3208
    const/4 v0, 0x0

    return v0
.end method

.method public static isDisplaySendButtonToText()Z
    .locals 1

    .prologue
    .line 3204
    const/4 v0, 0x0

    return v0
.end method

.method public static isEnabledIndividualRingtone()Z
    .locals 1

    .prologue
    .line 3337
    const/4 v0, 0x1

    return v0
.end method

.method public static isFocusToComposerField()Z
    .locals 1

    .prologue
    .line 3231
    const/4 v0, 0x0

    return v0
.end method

.method public static isFolderModel(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 3728
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isKORCMASFeatureEnabled()Z
    .locals 2

    .prologue
    .line 3672
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKORRTSRejectEnabled()Z
    .locals 2

    .prologue
    .line 3677
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGU+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KOR_OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLandscapeBaseModel()Z
    .locals 2

    .prologue
    .line 3314
    const-string v0, "EK-GC100"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMms2gAutodownloadAfterCall()Z
    .locals 1

    .prologue
    .line 2576
    const/4 v0, 0x1

    return v0
.end method

.method private static isServerTime(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "displayTimeAs"
    .parameter "initValue"

    .prologue
    .line 3241
    if-nez p0, :cond_1

    .line 3249
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 3244
    .restart local p1
    :cond_1
    const-string v0, "phone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3245
    const/4 p1, 0x0

    goto :goto_0

    .line 3246
    :cond_2
    const-string v0, "server"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3247
    const/4 p1, 0x1

    goto :goto_0
.end method

.method public static isSupportBubbleViewPinchZoom()Z
    .locals 1

    .prologue
    .line 3736
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportContextAwareness()Z
    .locals 1

    .prologue
    .line 3285
    invoke-static {}, Lcom/android/mms/MmsConfig;->DEBUG_getBlockContextAwareness()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3286
    const/4 v0, 0x0

    .line 3289
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportDormantMode()Z
    .locals 1

    .prologue
    .line 3331
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportEasyMode()Z
    .locals 1

    .prologue
    .line 3349
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportFlashNotification()Z
    .locals 1

    .prologue
    .line 3345
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportHideMmsRoamingAutoDownloadOption()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2580
    sget v1, Lcom/android/mms/MmsConfig;->sSupportHideMmsRoamingAutoDownloadOption:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportHoveringUI()Z
    .locals 2

    .prologue
    .line 3274
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.feature.hovering_ui"

    invoke-static {v0, v1}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3275
    const/4 v0, 0x1

    .line 3277
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportOperatorMsgTone()Z
    .locals 1

    .prologue
    .line 3749
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportQwertKeypad()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2584
    sget v1, Lcom/android/mms/MmsConfig;->sSupportQwertKeypad:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTMOCMASFeatureEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1451
    sget-object v1, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v1}, Lcom/android/mms/cmas/CMASVender;->getCMASProvider()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTMOCMASPHASEIIIFeatureEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1458
    sget-object v1, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v1}, Lcom/android/mms/cmas/CMASVender;->getCMASProvider()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnknownURLlink()Z
    .locals 1

    .prologue
    .line 3604
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableUnknownURLlink:Z

    return v0
.end method

.method public static isWhiteEditBG()Z
    .locals 1

    .prologue
    .line 3226
    const/4 v0, 0x0

    return v0
.end method

.method public static isWhiteTheme()Z
    .locals 1

    .prologue
    .line 3220
    const/4 v0, 0x1

    return v0
.end method

.method public static loadChameleonFromPreference(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 2202
    sget-boolean v2, Lcom/android/mms/MmsConfig;->sEnableChameleon:Z

    if-nez v2, :cond_1

    .line 2231
    :cond_0
    :goto_0
    return-void

    .line 2205
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2206
    .local v0, locale:Ljava/lang/String;
    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/mms/MmsConfig;->sLocale:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2209
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/MmsConfig;->sLocale:Ljava/lang/String;

    .line 2211
    const-string v2, "Mms/MmsConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLocale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/mms/MmsConfig;->sLocale:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2215
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v2, "en"

    sget-object v3, Lcom/android/mms/MmsConfig;->sLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "pref_key_chameleon_text_template_en"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2216
    const-string v2, "Mms/MmsConfig"

    const-string v3, "loadFromChameleon en key"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    const-string v2, "pref_key_chameleon_text_template_en"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->SetChameleonTextTemplate(Ljava/lang/String;)V

    goto :goto_0

    .line 2218
    :cond_3
    const-string v2, "es"

    sget-object v3, Lcom/android/mms/MmsConfig;->sLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "pref_key_chameleon_text_template_es"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2219
    const-string v2, "Mms/MmsConfig"

    const-string v3, "loadFromChameleon es key"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    const-string v2, "pref_key_chameleon_text_template_es"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->SetChameleonTextTemplate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2221
    :cond_4
    const-string v2, "vi"

    sget-object v3, Lcom/android/mms/MmsConfig;->sLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "pref_key_chameleon_text_template_vi"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2222
    const-string v2, "Mms/MmsConfig"

    const-string v3, "loadFromChameleon vi key"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    const-string v2, "pref_key_chameleon_text_template_vi"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->SetChameleonTextTemplate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2224
    :cond_5
    const-string v2, "ko"

    sget-object v3, Lcom/android/mms/MmsConfig;->sLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "pref_key_chameleon_text_template_ko"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2225
    const-string v2, "Mms/MmsConfig"

    const-string v3, "loadFromChameleon ko key"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    const-string v2, "pref_key_chameleon_text_template_ko"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->SetChameleonTextTemplate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2227
    :cond_6
    const-string v2, "zh"

    sget-object v3, Lcom/android/mms/MmsConfig;->sLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "pref_key_chameleon_text_template_zh"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2228
    const-string v2, "Mms/MmsConfig"

    const-string v3, "loadFromChameleon zh key"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    const-string v2, "pref_key_chameleon_text_template_zh"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->SetChameleonTextTemplate(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static loadCscSettings(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    .line 1627
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    .line 1628
    .local v1, cscFeature:Lcom/sec/android/app/CscFeature;
    const-string v12, "CscFeature_Common_UseChameleon"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableChameleon:Z

    .line 1631
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 1632
    .local v11, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v12, "pref_key_init_csc"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1633
    .local v9, initCsc:Z
    if-nez v9, :cond_d

    .line 1636
    const-string v12, "Mms/MmsConfig"

    const-string v13, "before update"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    sget-boolean v12, Lcom/android/mms/MmsConfig;->sEnableChameleon:Z

    invoke-static {p0, v12}, Lcom/android/mms/csc/CscLoader;->update(Landroid/content/Context;Z)Z

    .line 1639
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1640
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    const-string v12, "pref_key_init_csc"

    const/4 v13, 0x1

    invoke-interface {v5, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1641
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1647
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    const-string v12, "CscFeature_Message_EnableLocalSymbolTable"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableEmoji:Z

    .line 1648
    const-string v12, "CscFeature_Message_CustomDeliveryReportFormat"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableDoCoMoDeliveryReportFormat:Z

    .line 1651
    const-string v12, "CscFeature_Message_EnableReplyAll"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableReplyAll:Z

    .line 1652
    const-string v12, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableEmptySms:Z

    .line 1653
    const-string v12, "CscFeature_Message_EnableMenuVideoCallInConvList"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableVideoCall:Z

    .line 1656
    const-string v12, "CscFeature_Message_EnableSmsSubject"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSmsSubject:Z

    .line 1658
    const-string v12, "CscFeature_Message_EnableSaveVMessage"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSaveVMessage:Z

    .line 1661
    const-string v12, "CscFeature_Message_EnableTextTemplateButton"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableTextTemplateButton:Z

    .line 1664
    const-string v12, "CscFeature_Message_EmbeddedTextTemplateType"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1665
    .local v6, embeddedTextTemplateType:Ljava/lang/String;
    if-nez v6, :cond_e

    .line 1666
    const-string v6, ""

    .line 1670
    :goto_1
    const-string v12, "generic"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 1671
    const/4 v12, 0x1

    sput v12, Lcom/android/mms/MmsConfig;->sEmbeddedTextTemplateType:I

    .line 1680
    :goto_2
    const-string v12, "CscFeature_Message_EnableMsgTypeIndicationDuringComposing"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableComposeTypeUI:Z

    .line 1681
    const-string v12, "CscFeature_Message_AddSendOptionInComposer"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sAddSendOptionInComposer:Z

    .line 1682
    const-string v12, "CscFeature_Message_EnableMultiLockMenu"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMultiLockMenu:Z

    .line 1683
    const-string v12, "CscFeature_Message_EnableExtendSlideTimeToMediaDuration"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMediaDuration:Z

    .line 1686
    const-string v12, "CscFeature_Message_DisableSmsToMmsConversionByTextInput"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_12

    const/4 v12, 0x1

    :goto_3
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sSmsToMmsByThreshold:Z

    .line 1687
    const-string v12, "CscFeature_Message_DisableMmsSlideshowAutoPlay"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_13

    const/4 v12, 0x1

    :goto_4
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSlideshowAutoPlay:Z

    .line 1688
    const-string v12, "CscFeature_Message_DisableOptionAttachVCard"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_14

    const/4 v12, 0x1

    :goto_5
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableVCard:Z

    .line 1689
    const-string v12, "CscFeature_Message_DisableOptionAttachVMemo"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_15

    const/4 v12, 0x1

    :goto_6
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableVMemo:Z

    .line 1690
    const-string v12, "CscFeature_Message_DisableOptionAttachVCalendar"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_16

    const/4 v12, 0x1

    :goto_7
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSPlanner:Z

    .line 1691
    const-string v12, "CscFeature_Message_DisableOptionAttachLocation"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_17

    const/4 v12, 0x1

    :goto_8
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableLocation:Z

    .line 1692
    const-string v12, "CscFeature_Message_DisableOptionRecordAudio"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_18

    const/4 v12, 0x1

    :goto_9
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableRecordAudio:Z

    .line 1693
    const-string v12, "CscFeature_Message_DisableMenuCBMessage"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_19

    const/4 v12, 0x1

    :goto_a
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableCBMessage:Z

    .line 1694
    const-string v12, "CscFeature_Message_DisableEnterKeyInput"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sDisableEnterKeyInput:Z

    .line 1695
    const-string v12, "CscFeature_Message_EnableUnifiedMmsRetrieveMenu"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1a

    const/4 v12, 0x1

    :goto_b
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableRetrievalDuringRoaming:Z

    .line 1696
    const-string v12, "CscFeature_Message_DisableMenuWapPush"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1b

    const/4 v12, 0x1

    :goto_c
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableWapPush:Z

    .line 1697
    const-string v12, "CscFeature_Message_DisableMenuWapPushServiceLoading"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1c

    const/4 v12, 0x1

    :goto_d
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableServiceLoading:Z

    .line 1698
    const-string v12, "CscFeature_Message_DisableMenuSmsInputMode"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1d

    const/4 v12, 0x1

    :goto_e
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSmsInputMode:Z

    .line 1699
    const-string v12, "CscFeature_Message_DisableMenuSMSC"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1e

    const/4 v12, 0x1

    :goto_f
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSMSC:Z

    .line 1700
    const-string v12, "CscFeature_Message_DisableSmscEditable"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1f

    const/4 v12, 0x1

    :goto_10
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSMSCEditable:Z

    .line 1701
    const-string v12, "CscFeature_Message_DisableMenuMmsCreationMode"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_20

    const/4 v12, 0x1

    :goto_11
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMmsCreationMode:Z

    .line 1702
    const-string v12, "CscFeature_Message_DisableMmsSubject"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_21

    const/4 v12, 0x1

    :goto_12
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSubject:Z

    .line 1703
    const-string v12, "CscFeature_Message_DisableMenuSIMMessages"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_22

    const/4 v12, 0x1

    :goto_13
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableManageSimMessages:Z

    .line 1704
    const-string v12, "CscFeature_Message_DisableCopyToSim"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_23

    const/4 v12, 0x1

    :goto_14
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableCopyToSim:Z

    .line 1705
    const-string v12, "CscFeature_Message_DisableMenuCBChannel"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_24

    const/4 v12, 0x1

    :goto_15
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableCBChannel:Z

    .line 1706
    const-string v12, "CscFeature_Message_DisableSaveClassZeroMessage"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_25

    const/4 v12, 0x1

    :goto_16
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSaveClassZeroMessage:Z

    .line 1707
    const-string v12, "CscFeature_Message_EnableMMSReadreportV10"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_26

    const/4 v12, 0x1

    :goto_17
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSendMmsReadReportPdu:Z

    .line 1708
    const-string v12, "CscFeature_Message_DisableCBNotifications"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_27

    const/4 v12, 0x1

    :goto_18
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableCBNotifications:Z

    .line 1709
    const-string v12, "CscFeature_Message_DisableSavingInbox4CbChannel"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/mms/MmsConfig;->sDisableSavingInbox4CBChannel:Ljava/lang/String;

    .line 1710
    sget-object v12, Lcom/android/mms/MmsConfig;->sDisableSavingInbox4CBChannel:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1711
    const/4 v12, 0x0

    sput-object v12, Lcom/android/mms/MmsConfig;->sDisableSavingInbox4CBChannel:Ljava/lang/String;

    .line 1714
    :cond_0
    const-string v12, "CscFeature_RIL_CallerIdMatchingDigit"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_28

    .line 1715
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v12

    sput v12, Lcom/android/mms/MmsConfig;->sContactMatchCliDigit:I

    .line 1721
    :cond_1
    :goto_19
    const-string v12, "CscFeature_Message_EnableMenuInsertSenderInfoWhenFwdMsg"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMenuInsertSenderInfoWhenFwdMsg:Z

    .line 1724
    const-string v12, "CscFeature_Message_DisableLogs"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_29

    const/4 v12, 0x1

    :goto_1a
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableLogs:Z

    .line 1733
    const-string v12, "CscFeature_Message_DisableMMS"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2a

    const/4 v12, 0x1

    :goto_1b
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sMmsEnabled:Z

    .line 1735
    const/4 v10, -0x1

    .line 1736
    .local v10, loadMinSlideDuration:I
    const-string v12, "CscFeature_Message_MinSlideDuration"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v10

    .line 1737
    const/4 v12, -0x1

    if-eq v10, v12, :cond_2

    .line 1738
    sput v10, Lcom/android/mms/MmsConfig;->sMinimumSlideElementDuration:I

    .line 1740
    :cond_2
    const-string v12, "CscFeature_Message_DisableMenuRequestMmsReadReport"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2b

    const/4 v12, 0x1

    :goto_1c
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMMSReadReports:Z

    .line 1741
    const-string v12, "CscFeature_Message_DisableMenuSmsDeliveryReports"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2c

    const/4 v12, 0x1

    :goto_1d
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSMSDeliveryReports:Z

    .line 1742
    const-string v12, "CscFeature_Message_DisableMenuRequestMmsDeliveryReport"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2d

    const/4 v12, 0x1

    :goto_1e
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMMSDeliveryReports:Z

    .line 1743
    const-string v12, "CscFeature_Message_EnableMenuSendMmsDeliveryReport"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMMSSendDeliveryReports:Z

    .line 1745
    const-string v12, "CscFeature_Message_ReplaceLabel4RetreivedMsg"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableServerTimeLabel:Z

    .line 1748
    const-string v12, "CscFeature_Message_DisplaySmsTimeAs"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1749
    .local v4, displaySmsTimeAs:Ljava/lang/String;
    const/4 v12, 0x0

    invoke-static {v4, v12}, Lcom/android/mms/MmsConfig;->isServerTime(Ljava/lang/String;Z)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSmsServerTime:Z

    .line 1750
    const-string v12, "Mms/MmsConfig"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sEnableSmsServerTime="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSmsServerTime:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    const-string v12, "CscFeature_Message_DisplayMmsTimeAs"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1754
    .local v3, displayMmsTimeAs:Ljava/lang/String;
    const/4 v12, 0x1

    invoke-static {v3, v12}, Lcom/android/mms/MmsConfig;->isServerTime(Ljava/lang/String;Z)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMmsServerTime:Z

    .line 1755
    const-string v12, "Mms/MmsConfig"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sEnableMmsServerTime="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMmsServerTime:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    const-string v12, "CscFeature_Message_SetDefaultFocusToMessageBody"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableDefaultFocusToMsgBody:Z

    .line 1758
    const-string v12, "CscFeature_Message_KeepSmilPlayerToolBar"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableInfiniteDispMMSProgressbar:Z

    .line 1759
    const-string v12, "CscFeature_Message_EnableSmsCallbackNumber"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableCallbackNumber:Z

    .line 1760
    const-string v12, "CscFeature_Message_EnableMessagePriorityDuringComposing"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnablePriority:Z

    .line 1762
    const-string v12, "CscFeature_Message_EnableRoamGuard"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableRoamGuard:Z

    .line 1764
    const-string v12, "CscFeature_Message_SmsMaxByte"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/mms/MmsConfig;->sSmsMaxByte:I

    .line 1765
    sget v12, Lcom/android/mms/MmsConfig;->sSmsMaxByte:I

    const/4 v13, 0x1

    if-ge v12, v13, :cond_3

    .line 1766
    const/16 v12, 0x8c

    sput v12, Lcom/android/mms/MmsConfig;->sSmsMaxByte:I

    .line 1768
    :cond_3
    const-string v12, "CscFeature_Message_EnableSmsKsc5601Encoding"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableKsc5601:Z

    .line 1769
    const-string v12, "CscFeature_Message_MMSMaxCharPerSlide"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/mms/MmsConfig;->sMaxTextLength:I

    .line 1770
    sget v12, Lcom/android/mms/MmsConfig;->sMaxTextLength:I

    const/4 v13, 0x1

    if-ge v12, v13, :cond_4

    .line 1771
    const/16 v12, 0x7d0

    sput v12, Lcom/android/mms/MmsConfig;->sMaxTextLength:I

    .line 1773
    :cond_4
    const-string v12, "CscFeature_Message_EnableSearchByInitialConsonant"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableChoseongSearch:Z

    .line 1774
    const-string v12, "CscFeature_Message_ReplaceChar4UnsupportedInKsc5601"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableKoreanSpecialCharacter:Z

    .line 1775
    const-string v12, "CscFeature_Message_EnableDetailErrorPopupWhenSending"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/mms/MmsConfig;->sEnableRTSReject:Ljava/lang/String;

    .line 1776
    const-string v12, "CscFeature_Message_EnableHttpHeader4LGU"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableLguHttpHeader:Z

    .line 1777
    const-string v12, "CscFeature_Message_EnablePhoneNumberFormattingInMsg"

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnablePhoneNumberFormattingInMsg:Z

    .line 1778
    const-string v12, "CscFeature_Message_EnableCbsVariation4"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/mms/MmsConfig;->sEnableCbsVariation4:Ljava/lang/String;

    .line 1779
    const-string v12, "CscFeature_Message_EnableSpeedDial"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSpeedDial:Z

    .line 1780
    const-string v12, "CscFeature_Message_EnableMmsUnicodeFilenameEncoding"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableAttachmentFilenameEncoding:Z

    .line 1781
    const-string v12, "CscFeature_RIL_ForceConnectMMS"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMmsMobiledataOff:Z

    .line 1782
    const-string v12, "CscFeature_Message_EnableMultiCopyToSim"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMultiCopyToSIM:Z

    .line 1783
    const-string v12, "CscFeature_Message_ReplaceLabelOnPendingStatusWhenNoSvc"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMMSStatusUIForCHN:Z

    .line 1785
    const-string v12, "CscFeature_Message_EnableDisplayTotalCount4SimMsg"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSIMMessageCountUI:Z

    .line 1786
    const-string v12, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableRCS:Z

    .line 1788
    const-string v12, "CscFeature_Message_EnableMenuMmsExpiryDate"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMmsExpiryDate:Z

    .line 1789
    const-string v12, "CscFeature_Message_EnableMenuMmsPriority"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMmsPriority:Z

    .line 1790
    const-string v12, "CscFeature_Message_EnableMenuMmsDeliveryTime"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMmsDeliveryTime:Z

    .line 1791
    const-string v12, "CscFeature_Message_EnableMenuMmsServerAddress"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMenuMmsServerAddr:Z

    .line 1793
    const-string v12, "CscFeature_Message_EnableMmsUaUapAutoCreate"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/mms/MmsConfig;->sMmsUaUapAutoCreate:Ljava/lang/String;

    .line 1794
    sget-object v12, Lcom/android/mms/MmsConfig;->sMmsUaUapAutoCreate:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1795
    const/4 v12, 0x0

    sput-object v12, Lcom/android/mms/MmsConfig;->sMmsUaUapAutoCreate:Ljava/lang/String;

    .line 1797
    :cond_5
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableBlackList:Z

    .line 1798
    const-string v12, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableBlackListForCHN:Z

    .line 1799
    const-string v12, "CscFeature_VoiceCall_EnableSeparateCallReject"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableBlackListSeperateCallReject:Z

    .line 1800
    const-string v12, "CscFeature_Message_DiscardWapPush4SameTimeStamp"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableDiscardSameCreateWapPush:Z

    .line 1802
    const-string v12, "CscFeature_Message_EnableSmsForwardPrefix"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSmsForwardPrefix:Z

    .line 1803
    const-string v12, "CscFeature_Message_EnableMenuSmsExpiryDate"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSmsExpiryDate:Z

    .line 1804
    const-string v12, "CscFeature_Message_EnableDSAC"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableDSAC:Z

    .line 1805
    const-string v12, "CscFeature_Message_EnableSMSPcheckWhenSendSMS"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSMSP:Z

    .line 1808
    const-string v12, "CscFeature_Message_DisableContactThumbnailInMsgList"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableRemovingContactThumbnailInMsgList:Z

    .line 1810
    const-string v12, "CscFeature_Message_EnableAllContextMenuInMsgViewer"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableAllContextMenuInMsgViewer:Z

    .line 1811
    const-string v12, "CscFeature_Message_EnableDbBackupKeystring"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMessageDbBackupKeystring:Z

    .line 1813
    const-string v12, "CscFeature_Message_EnableNotificationBroadcastReceivedMessage"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableNotificationBoradcastReceivedMsg:Z

    .line 1815
    const-string v12, "CscFeature_Message_EnableMessageSentTimeInSimList"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSentTimeInSimList:Z

    .line 1817
    const-string v12, "CscFeature_Message_DiscardSpecificPortSms"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2e

    const/4 v12, 0x1

    :goto_1f
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableReceivePortSMS:Z

    .line 1818
    const-string v12, "Mms/MmsConfig"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mEnableReceivePortSMS="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/android/mms/MmsConfig;->sEnableReceivePortSMS:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    const-string v12, "CscFeature_Message_SmsDiscardPrefix"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/mms/MmsConfig;->sSmsDiscardPrefix:Ljava/lang/String;

    .line 1821
    sget-object v12, Lcom/android/mms/MmsConfig;->sSmsDiscardPrefix:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1822
    const/4 v12, 0x0

    sput-object v12, Lcom/android/mms/MmsConfig;->sSmsDiscardPrefix:Ljava/lang/String;

    .line 1824
    :cond_6
    const-string v12, "CscFeature_Message_UseAddrWithinMMSWhenSendACK"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sNotifyWapMMSC:Z

    .line 1825
    const-string v12, "CscFeature_Message_CreateNullDB4EmptyOriginator"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableUnknownAddressToNullInDB:Z

    .line 1826
    const-string v12, "CscFeature_Message_EnableMmsErrorCodeInDetailView"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMmsDetailVzw:Z

    .line 1828
    const-string v12, "CscFeature_Message_MinRecipientLengthAs"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/mms/MmsConfig;->sMinRecipientLength:I

    .line 1829
    const-string v12, "CscFeature_Message_MaxRecipientLengthAs"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/mms/MmsConfig;->sMaxRecipientLength:I

    .line 1830
    sget v12, Lcom/android/mms/MmsConfig;->sMinRecipientLength:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_2f

    const/4 v12, 0x3

    :goto_20
    sput v12, Lcom/android/mms/MmsConfig;->sMinRecipientLength:I

    .line 1832
    const-string v12, "CscFeature_Message_EnableFolderView"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableFolderView:Z

    .line 1833
    const-string v12, "CscFeature_Message_EnableMmsOnePageViewer"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMmsOnePageViewer:Z

    .line 1834
    const-string v12, "CscFeature_Message_EnableCheckFDNContactWhenMMSSend"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableCheckFDNContactWhenMMSSend:Z

    .line 1835
    const-string v12, "CscFeature_Common_EnableVIPMode"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableVIPModeApplication:Z

    .line 1836
    sget-boolean v12, Lcom/android/mms/MmsConfig;->sEnableVIPModeApplication:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 1837
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableBlackList:Z

    .line 1839
    :cond_7
    const-string v12, "CscFeature_Message_HookMobileTrackerPrefix2SosMsg"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSOSPrefix:Z

    .line 1840
    const-string v12, "CscFeature_Message_EnableMessageMaxTextLengthInAllSlides"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMessageMaxTextLengthInAllSlides:Z

    .line 1841
    const-string v12, "CscFeature_Message_DisablePlusInputInAddressField"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sDisableAddressPlusEdit:Z

    .line 1842
    const-string v12, "CscFeature_Message_PositionTextTemplateMenu"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableTexttemplatTMOMenu:Z

    .line 1843
    const-string v12, "CscFeature_Message_EnableAlias"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sAliasEnabled:Z

    .line 1846
    const-string v12, "CscFeature_Message_EnableLimitOnMmsSubject"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1847
    .local v8, enableLimitOnMmsSubject:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/mms/MmsConfig;->setEnalbeLimitOnMmsSubject(Ljava/lang/String;)V

    .line 1849
    const-string v12, "CscFeature_Message_EnableSegmentedSMS"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableSegmentedSms:Z

    .line 1850
    const-string v12, "CscFeature_Message_ReplaceLabelOnRequestedStatus"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableReplaceLabelOnRequestedStatus:Z

    .line 1851
    const-string v12, "CscFeature_Message_EnableAnonymousThread"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableAnonymousThread:Z

    .line 1853
    const-string v12, "CscFeature_Message_EnableMmsAutoDownload4Spam"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMmsAutoDownload4Spam:Z

    .line 1854
    const-string v12, "CscFeature_Message_EnableAddContactIn1stDepthComposerOption"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableAddContactIn1stDepthComposerOption:Z

    .line 1855
    const-string v12, "CscFeature_Message_AddLogsToRecipientSearchList"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sAddLogsToRecipientSearchList:Z

    .line 1856
    const-string v12, "CscFeature_Common_Vibration4NotiDuringCall"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableVibration4NotiDuringCall:Z

    .line 1858
    const-string v12, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableDocomoAccountAsDefault:Z

    .line 1859
    const-string v12, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/mms/MmsConfig;->sContactReplacePackageAs:Ljava/lang/String;

    .line 1861
    const-string v12, "CscFeature_Message_CheckTelNumAreaCode"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableCheckNumAreaCode:Z

    .line 1864
    const-string v12, "CscFeature_Message_GalleryView4SingleImageMms"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/mms/MmsConfig;->sGalleryView4SingleImageMMSType:Ljava/lang/String;

    .line 1867
    const-string v12, "CscFeature_Message_DisableDeleteButtonOnActionBar"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_30

    const/4 v12, 0x1

    :goto_21
    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableDeleteButtonOnActionBar:Z

    .line 1869
    const-string v12, "CscFeature_Message_ImageResizeQualityFactorWhenAttach"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/MmsConfig;->parseImageResizeQuality(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/mms/MmsConfig;->sImageResizeQualityFactorWhenAttach:I

    .line 1871
    const-string v12, "CscFeature_Message_ConfigEmojiComposing"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1872
    .local v7, emojiCscString:Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 1873
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1874
    const-string v12, "onlymms"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    .line 1875
    const/4 v12, 0x1

    sput v12, Lcom/android/mms/MmsConfig;->sEmojiSupportType:I

    .line 1883
    :cond_8
    :goto_22
    const-string v12, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableIpCall:Z

    .line 1905
    const-string v12, "CscFeature_Message_CMASOperator"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1906
    .local v0, CMASprovider:Ljava/lang/String;
    const-string v12, "us-vzw"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_32

    .line 1908
    new-instance v12, Lcom/android/mms/cmas/CMASVenderVZW;

    invoke-direct {v12}, Lcom/android/mms/cmas/CMASVenderVZW;-><init>()V

    sput-object v12, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    .line 1968
    :goto_23
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasOrderSetting()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/MmsConfig;->setCmasConversationListQuery(Ljava/lang/String;)V

    .line 2012
    const-string v12, "CscFeature_Message_EnablePinyinSearch"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnablePinyinSearch:Z

    .line 2013
    const-string v12, "CscFeature_Message_EnableCombineAndForwardMessage"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableCombindAndForwardMessage:Z

    .line 2017
    const-string v12, "CscFeature_Message_DisableLandscapeActionbarHide"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sDisableLandscapeActionbarHide:Z

    .line 2018
    const-string v12, "CscFeature_Message_DisableLeftAttachButtonUI"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sDisableLeftAttachButtonUI:Z

    .line 2020
    const-string v12, "CscFeature_Message_MmsPageStyleInBubble"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/mms/MmsConfig;->sMmsPageStyleInBubble:Ljava/lang/String;

    .line 2021
    const-string v12, "1page"

    sget-object v13, Lcom/android/mms/MmsConfig;->sMmsPageStyleInBubble:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3f

    .line 2022
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sDisableMmsAllPageBubble:Z

    .line 2028
    :goto_24
    const-string v12, "CscFeature_Message_CbChannelNb4DisplayInStatusBar"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/mms/MmsConfig;->sEnableCBChDisplayinStatusBar:Ljava/lang/String;

    .line 2029
    sget-object v12, Lcom/android/mms/MmsConfig;->sEnableCBChDisplayinStatusBar:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2030
    const/4 v12, 0x0

    sput-object v12, Lcom/android/mms/MmsConfig;->sEnableCBChDisplayinStatusBar:Ljava/lang/String;

    .line 2033
    :cond_9
    const-string v12, "CscFeature_Message_DisableSaveRingtoneMenu"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sDisableSaveRingtoneMenu:Z

    .line 2037
    const-string v12, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableVoLTE:Z

    .line 2038
    const-string v12, "CscFeature_Message_AvailableSizeForRestrictAutoDownload"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/mms/MmsConfig;->sAvailableSizeForRestrictAutoDownload:I

    .line 2039
    const-string v12, "CscFeature_Common_EnableHDVoiceDuring3GConnection"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnable3GHDVoice:Z

    .line 2041
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v12

    const-string v13, "SKT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_40

    .line 2042
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableDelaySendSMS:Z

    .line 2051
    :cond_a
    :goto_25
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v12

    const-string v13, "SKT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_43

    .line 2052
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableDeletePermanentFailure:Z

    .line 2061
    :cond_b
    :goto_26
    const-string v12, "CscFeature_Message_EnableMmsTransactionCustomize4Korea"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMmsTransactionCustomize4Korea:Z

    .line 2064
    const-string v12, "CscFeature_Message_DisableSmscEditableOnlyFor"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2065
    .local v2, disableSmscEditableOnlyFor:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/MmsConfig;->setmDisableSmscEditableOnlyFor(Ljava/lang/String;)V

    .line 2067
    const-string v12, "CscFeature_Message_EnableMmsSubjectConcept4Korea"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMmsSubjectConcept4Korea:Z

    .line 2068
    const-string v12, "CscFeature_Message_DisableRecipientSearchByCharMatchingDigit"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sDisableRecipientSearchByCharMatchingDigit:Z

    .line 2070
    const-string v12, "CscFeature_Message_EnableMmsUserInputApn"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMmsUserInputApn:Z

    .line 2072
    const-string v12, "CscFeature_Message_EnableDualNumber4Korea"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableDualNumber4Korea:Z

    .line 2073
    const-string v12, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableAddPrefix4InternationalCall:Z

    .line 2074
    const-string v12, "CscFeature_Message_RemoveInternationalTelNumPrefix"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sRemoveInternationalTelNumPrefix:Z

    .line 2076
    const-string v12, "CscFeature_Message_EnableMultiDraftBox"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableMultiDraftMsgBox:Z

    .line 2077
    const-string v12, "CscFeature_Message_DisableParsingAudioFilenameFromPart"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sDisableParsingAudioFilenameFromPart:Z

    .line 2078
    const-string v12, "CscFeature_Message_EnableFlickThreadView"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableFlickThreadView:Z

    .line 2079
    const-string v12, "CscFeature_Message_BlockSendMmsWithOnlySubject"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sBlockSendMmsWithOnlySubject:Z

    .line 2080
    const-string v12, "CscFeature_Message_EnableDialogAlertWhenTextInput"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/mms/MmsConfig;->sEnableDialogAlertWhenTextInput:Ljava/lang/String;

    .line 2081
    const-string v12, "CscFeature_Message_MoveReadNDeliverySettingToComposer"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sMoveReadNDeliverySettingToComposer:Z

    .line 2082
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableKTSMSReadConfirm:Z

    .line 2083
    const-string v12, "CscFeature_Message_EnableUnknownURLLink"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableUnknownURLlink:Z

    .line 2088
    const-string v12, "CscFeature_Message_HttpSocketTimeout"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/mms/MmsConfig;->sHttpSocketTimeout:I

    .line 2089
    sget v12, Lcom/android/mms/MmsConfig;->sHttpSocketTimeout:I

    if-gez v12, :cond_c

    .line 2090
    const v12, 0xea60

    sput v12, Lcom/android/mms/MmsConfig;->sHttpSocketTimeout:I

    .line 2092
    :cond_c
    const-string v12, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/mms/MmsConfig;->sMmsModeCaptureVideoMaxSize:I

    .line 2093
    return-void

    .line 1643
    .end local v0           #CMASprovider:Ljava/lang/String;
    .end local v2           #disableSmscEditableOnlyFor:Ljava/lang/String;
    .end local v3           #displayMmsTimeAs:Ljava/lang/String;
    .end local v4           #displaySmsTimeAs:Ljava/lang/String;
    .end local v6           #embeddedTextTemplateType:Ljava/lang/String;
    .end local v7           #emojiCscString:Ljava/lang/String;
    .end local v8           #enableLimitOnMmsSubject:Ljava/lang/String;
    .end local v10           #loadMinSlideDuration:I
    :cond_d
    const-string v12, "Mms/MmsConfig"

    const-string v13, "before partial update"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    invoke-static {p0}, Lcom/android/mms/csc/CscLoader;->partialUpdate(Landroid/content/Context;)Z

    goto/16 :goto_0

    .line 1668
    .restart local v6       #embeddedTextTemplateType:Ljava/lang/String;
    :cond_e
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 1672
    :cond_f
    const-string v12, "csc"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1673
    const/4 v12, 0x2

    sput v12, Lcom/android/mms/MmsConfig;->sEmbeddedTextTemplateType:I

    goto/16 :goto_2

    .line 1674
    :cond_10
    const-string v12, "none"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1675
    const/4 v12, 0x0

    sput v12, Lcom/android/mms/MmsConfig;->sEmbeddedTextTemplateType:I

    goto/16 :goto_2

    .line 1677
    :cond_11
    const/4 v12, 0x1

    sput v12, Lcom/android/mms/MmsConfig;->sEmbeddedTextTemplateType:I

    goto/16 :goto_2

    .line 1686
    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 1687
    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 1688
    :cond_14
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 1689
    :cond_15
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 1690
    :cond_16
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 1691
    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 1692
    :cond_18
    const/4 v12, 0x0

    goto/16 :goto_9

    .line 1693
    :cond_19
    const/4 v12, 0x0

    goto/16 :goto_a

    .line 1695
    :cond_1a
    const/4 v12, 0x0

    goto/16 :goto_b

    .line 1696
    :cond_1b
    const/4 v12, 0x0

    goto/16 :goto_c

    .line 1697
    :cond_1c
    const/4 v12, 0x0

    goto/16 :goto_d

    .line 1698
    :cond_1d
    const/4 v12, 0x0

    goto/16 :goto_e

    .line 1699
    :cond_1e
    const/4 v12, 0x0

    goto/16 :goto_f

    .line 1700
    :cond_1f
    const/4 v12, 0x0

    goto/16 :goto_10

    .line 1701
    :cond_20
    const/4 v12, 0x0

    goto/16 :goto_11

    .line 1702
    :cond_21
    const/4 v12, 0x0

    goto/16 :goto_12

    .line 1703
    :cond_22
    const/4 v12, 0x0

    goto/16 :goto_13

    .line 1704
    :cond_23
    const/4 v12, 0x0

    goto/16 :goto_14

    .line 1705
    :cond_24
    const/4 v12, 0x0

    goto/16 :goto_15

    .line 1706
    :cond_25
    const/4 v12, 0x0

    goto/16 :goto_16

    .line 1707
    :cond_26
    const/4 v12, 0x0

    goto/16 :goto_17

    .line 1708
    :cond_27
    const/4 v12, 0x0

    goto/16 :goto_18

    .line 1717
    :cond_28
    const-string v12, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1718
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v12

    sput v12, Lcom/android/mms/MmsConfig;->sContactMatchCliDigit:I

    goto/16 :goto_19

    .line 1724
    :cond_29
    const/4 v12, 0x0

    goto/16 :goto_1a

    .line 1733
    :cond_2a
    const/4 v12, 0x0

    goto/16 :goto_1b

    .line 1740
    .restart local v10       #loadMinSlideDuration:I
    :cond_2b
    const/4 v12, 0x0

    goto/16 :goto_1c

    .line 1741
    :cond_2c
    const/4 v12, 0x0

    goto/16 :goto_1d

    .line 1742
    :cond_2d
    const/4 v12, 0x0

    goto/16 :goto_1e

    .line 1817
    .restart local v3       #displayMmsTimeAs:Ljava/lang/String;
    .restart local v4       #displaySmsTimeAs:Ljava/lang/String;
    :cond_2e
    const/4 v12, 0x0

    goto/16 :goto_1f

    .line 1830
    :cond_2f
    sget v12, Lcom/android/mms/MmsConfig;->sMinRecipientLength:I

    goto/16 :goto_20

    .line 1867
    .restart local v8       #enableLimitOnMmsSubject:Ljava/lang/String;
    :cond_30
    const/4 v12, 0x0

    goto/16 :goto_21

    .line 1876
    .restart local v7       #emojiCscString:Ljava/lang/String;
    :cond_31
    const-string v12, "smsmms"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1877
    const/4 v12, 0x2

    sput v12, Lcom/android/mms/MmsConfig;->sEmojiSupportType:I

    goto/16 :goto_22

    .line 1909
    .restart local v0       #CMASprovider:Ljava/lang/String;
    :cond_32
    const-string v12, "us-usc"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_33

    .line 1911
    new-instance v12, Lcom/android/mms/cmas/CMASVenderUSCC;

    invoke-direct {v12}, Lcom/android/mms/cmas/CMASVenderUSCC;-><init>()V

    sput-object v12, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_23

    .line 1912
    :cond_33
    const-string v12, "us-spr"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_34

    .line 1914
    new-instance v12, Lcom/android/mms/cmas/CMASVenderSPR;

    invoke-direct {v12}, Lcom/android/mms/cmas/CMASVenderSPR;-><init>()V

    sput-object v12, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_23

    .line 1915
    :cond_34
    const-string v12, "us-att-lte"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_35

    .line 1917
    new-instance v12, Lcom/android/mms/cmas/CMASVenderATTLTE;

    invoke-direct {v12}, Lcom/android/mms/cmas/CMASVenderATTLTE;-><init>()V

    sput-object v12, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_23

    .line 1918
    :cond_35
    const-string v12, "us-att-3g"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_36

    .line 1920
    new-instance v12, Lcom/android/mms/cmas/CMASVenderATT3G;

    invoke-direct {v12}, Lcom/android/mms/cmas/CMASVenderATT3G;-><init>()V

    sput-object v12, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_23

    .line 1921
    :cond_36
    const-string v12, "us-att"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37

    .line 1923
    new-instance v12, Lcom/android/mms/cmas/CMASVenderATT;

    invoke-direct {v12}, Lcom/android/mms/cmas/CMASVenderATT;-><init>()V

    sput-object v12, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_23

    .line 1924
    :cond_37
    const-string v12, "us-tmo"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_38

    .line 1926
    new-instance v12, Lcom/android/mms/cmas/CMASVenderTMO;

    invoke-direct {v12}, Lcom/android/mms/cmas/CMASVenderTMO;-><init>()V

    sput-object v12, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_23

    .line 1934
    :cond_38
    const-string v12, "la-cho"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_39

    .line 1936
    new-instance v12, Lcom/android/mms/cmas/CMASVenderCHO;

    invoke-direct {v12}, Lcom/android/mms/cmas/CMASVenderCHO;-><init>()V

    sput-object v12, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_23

    .line 1937
    :cond_39
    const-string v12, "la-tfg"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3a

    .line 1939
    new-instance v12, Lcom/android/mms/cmas/CMASVenderTFG;

    invoke-direct {v12}, Lcom/android/mms/cmas/CMASVenderTFG;-><init>()V

    sput-object v12, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_23

    .line 1942
    :cond_3a
    const-string v12, "skt"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3b

    .line 1943
    new-instance v12, Lcom/android/mms/cmas/CMASVenderSKT;

    invoke-direct {v12}, Lcom/android/mms/cmas/CMASVenderSKT;-><init>()V

    sput-object v12, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_23

    .line 1945
    :cond_3b
    const-string v12, "kt"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3c

    .line 1946
    new-instance v12, Lcom/android/mms/cmas/CMASVenderKT;

    invoke-direct {v12}, Lcom/android/mms/cmas/CMASVenderKT;-><init>()V

    sput-object v12, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_23

    .line 1948
    :cond_3c
    const-string v12, "lgu"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3d

    .line 1949
    new-instance v12, Lcom/android/mms/cmas/CMASVenderLGU;

    invoke-direct {v12}, Lcom/android/mms/cmas/CMASVenderLGU;-><init>()V

    sput-object v12, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_23

    .line 1950
    :cond_3d
    const-string v12, "kor_open"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3e

    .line 1958
    new-instance v12, Lcom/android/mms/cmas/CMASVenderSKT;

    invoke-direct {v12}, Lcom/android/mms/cmas/CMASVenderSKT;-><init>()V

    sput-object v12, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_23

    .line 1963
    :cond_3e
    new-instance v12, Lcom/android/mms/cmas/CMASVender;

    invoke-direct {v12}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    sput-object v12, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_23

    .line 2024
    :cond_3f
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sDisableMmsAllPageBubble:Z

    goto/16 :goto_24

    .line 2043
    :cond_40
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v12

    const-string v13, "KT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_41

    .line 2044
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableDelaySendSMS:Z

    goto/16 :goto_25

    .line 2045
    :cond_41
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v12

    const-string v13, "LGU+"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_42

    .line 2046
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableDelaySendSMS:Z

    goto/16 :goto_25

    .line 2047
    :cond_42
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v12

    const-string v13, "KOR_OPEN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 2048
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableDelaySendSMS:Z

    goto/16 :goto_25

    .line 2053
    :cond_43
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v12

    const-string v13, "KT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_44

    .line 2054
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableDeletePermanentFailure:Z

    goto/16 :goto_26

    .line 2055
    :cond_44
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v12

    const-string v13, "LGU+"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_45

    .line 2056
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableDeletePermanentFailure:Z

    goto/16 :goto_26

    .line 2057
    :cond_45
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v12

    const-string v13, "KOR_OPEN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 2058
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/mms/MmsConfig;->sEnableDeletePermanentFailure:Z

    goto/16 :goto_26
.end method

.method public static loadFromPreference(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/16 v4, 0xa

    .line 2131
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2133
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_threshold"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2134
    const-string v1, "pref_key_threshold"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mms/MmsConfig;->sSmsToMmsTextThreshold:I

    .line 2135
    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSmsToMmsTextThreshold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/MmsConfig;->sSmsToMmsTextThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    :cond_0
    const-string v1, "pref_key_max_recipient"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2139
    const-string v1, "pref_key_max_recipient"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mms/MmsConfig;->sRecipientLimit:I

    .line 2140
    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRecipientLimit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/MmsConfig;->sRecipientLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    :cond_1
    const-string v1, "pref_key_mms_max_recipient"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2144
    const-string v1, "pref_key_mms_max_recipient"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mms/MmsConfig;->sMmsRecipientLimit:I

    .line 2145
    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMmsRecipientLimit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/MmsConfig;->sMmsRecipientLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    :cond_2
    const-string v1, "pref_key_mms_max_size"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2149
    const-string v1, "pref_key_mms_creation_mode"

    const-string v2, "free"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/MmsConfig;->setMaxMessageSize(Landroid/content/Context;Ljava/lang/String;)V

    .line 2154
    :cond_3
    const-string v1, "pref_key_sms_email_gateway"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2155
    const-string v1, "pref_key_sms_email_gateway"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/MmsConfig;->sEmailGateway:Ljava/lang/String;

    .line 2156
    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEmailGateway="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsConfig;->sEmailGateway:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    :cond_4
    const-string v1, "pref_key_mms_image_resize_resolution"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2160
    const-string v1, "pref_key_mms_image_resize_resolution"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->setImageResolution(Ljava/lang/String;)V

    .line 2162
    :cond_5
    const-string v1, "pref_key_cb_settings_channel"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2163
    const-string v1, "pref_key_cb_settings_channel"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->setCBChannel(Ljava/lang/String;)V

    .line 2165
    :cond_6
    const-string v1, "pref_key_mms_expiry_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2166
    const-string v1, "pref_key_mms_expiry_time"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->setMmsExpiry(Ljava/lang/String;)V

    .line 2168
    :cond_7
    const-string v1, "pref_key_msgtone_repeat_interval"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2169
    const-string v1, "pref_key_msgtone_repeat_interval"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->setMsgtoneRepeatInterval(Ljava/lang/String;)V

    .line 2171
    :cond_8
    const-string v1, "pref_key_mms_slide_max_count"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2172
    const-string v1, "pref_key_mms_slide_max_count"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mms/MmsConfig;->sMaxSlideCount:I

    .line 2173
    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxSlideCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/MmsConfig;->sMaxSlideCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    :cond_9
    const-string v1, "pref_key_sms_text_template"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2177
    const-string v1, "pref_key_sms_text_template"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->SetPreloadTextTemplate(Ljava/lang/String;)V

    .line 2192
    :cond_a
    const-string v1, "pref_key_cmas_test_onoff"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2193
    const-string v1, "pref_key_cmas_test_onoff"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->setCmasTestOnOff(Z)V

    .line 2195
    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init CmasTestMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCMASTestOnOff()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    :cond_b
    return-void
.end method

.method private static loadMmsSettings(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 2497
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 2500
    .local v2, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v6, "mms_config"

    invoke-static {v2, v6}, Lcom/android/mms/MmsConfig;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2503
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/android/mms/MmsConfig;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2504
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 2505
    .local v3, tag:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 2565
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2567
    .end local v3           #tag:Ljava/lang/String;
    :goto_1
    return-void

    .line 2508
    .restart local v3       #tag:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 2509
    .local v1, name:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 2510
    .local v5, value:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2511
    .local v4, text:Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 2512
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 2515
    :cond_2
    const-string v6, "name"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2516
    const-string v6, "bool"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2518
    const-string v6, "enabledMMS"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2519
    const-string v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/mms/MmsConfig;->sMmsEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 2558
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2559
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string v6, "Mms/MmsConfig"

    const-string v7, "loadMmsSettings caught "

    invoke-static {v6, v7, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2565
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 2520
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v6, "enabledTransID"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2521
    const-string v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/mms/MmsConfig;->sTransIdEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 2560
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 2561
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v6, "Mms/MmsConfig"

    const-string v7, "loadMmsSettings caught "

    invoke-static {v6, v7, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2565
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 2522
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    :cond_4
    :try_start_5
    const-string v6, "enabledNotifyWapMMSC"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2523
    const-string v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/mms/MmsConfig;->sNotifyWapMMSC:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 2562
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 2563
    .local v0, e:Ljava/io/IOException;
    :try_start_6
    const-string v6, "Mms/MmsConfig"

    const-string v7, "loadMmsSettings caught "

    invoke-static {v6, v7, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2565
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 2524
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    :cond_5
    :try_start_7
    const-string v6, "aliasEnabled"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2525
    const-string v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/mms/MmsConfig;->sAliasEnabled:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 2565
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v6

    .line 2526
    .restart local v1       #name:Ljava/lang/String;
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    :cond_6
    :try_start_8
    const-string v6, "allowAttachAudio"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2527
    const-string v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/mms/MmsConfig;->sAllowAttachAudio:Z

    goto/16 :goto_0

    .line 2529
    :cond_7
    const-string v6, "int"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2531
    const-string v6, "mmsHeaderSize"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2532
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/mms/MmsConfig;->sMmsHeaderSize:I

    goto/16 :goto_0

    .line 2533
    :cond_8
    const-string v6, "minMessageCountPerThread"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2534
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/mms/MmsConfig;->sMinMessageCountPerThread:I

    goto/16 :goto_0

    .line 2535
    :cond_9
    const-string v6, "maxMessageCountPerThread"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2536
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/mms/MmsConfig;->sMaxMessageCountPerThread:I

    goto/16 :goto_0

    .line 2537
    :cond_a
    const-string v6, "httpSocketTimeout"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2538
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/mms/MmsConfig;->sHttpSocketTimeout:I

    goto/16 :goto_0

    .line 2539
    :cond_b
    const-string v6, "maxSizeScaleForPendingMmsAllowed"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2540
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/mms/MmsConfig;->sMaxSizeScaleForPendingMmsAllowed:I

    goto/16 :goto_0

    .line 2541
    :cond_c
    const-string v6, "aliasMinChars"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2542
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/mms/MmsConfig;->sAliasRuleMinChars:I

    goto/16 :goto_0

    .line 2543
    :cond_d
    const-string v6, "aliasMaxChars"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2544
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/mms/MmsConfig;->sAliasRuleMaxChars:I

    goto/16 :goto_0

    .line 2546
    :cond_e
    const-string v6, "string"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2548
    const-string v6, "uaProfTagName"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2549
    sput-object v4, Lcom/android/mms/MmsConfig;->sUaProfTagName:Ljava/lang/String;

    goto/16 :goto_0

    .line 2550
    :cond_f
    const-string v6, "httpParams"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2551
    sput-object v4, Lcom/android/mms/MmsConfig;->sHttpParams:Ljava/lang/String;

    goto/16 :goto_0

    .line 2552
    :cond_10
    const-string v6, "httpParamsLine1Key"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2553
    sput-object v4, Lcom/android/mms/MmsConfig;->sHttpParamsLine1Key:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0
.end method

.method private static loadOtherSettings(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 2378
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2379
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 2380
    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/MmsConfig;->sEnableMultiwindow:Z

    .line 2382
    :cond_0
    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " enable multiwindow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMultiwindow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    return-void
.end method

.method private static loadProvisioning(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x1

    .line 2235
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 2238
    .local v6, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v10, "prov_transaction_log_key"

    invoke-interface {v6, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2239
    const-string v10, "prov_transaction_log_key"

    invoke-interface {v6, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lcom/android/mms/MmsConfig;->sTransactionLoggable:Z

    .line 2240
    const-string v10, "Mms/MmsConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Enable Transaction Log: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/mms/MmsConfig;->sTransactionLoggable:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    :cond_0
    const-string v10, "prov_optional_field_attendance_key"

    invoke-interface {v6, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2245
    const-string v10, "prov_optional_field_attendance_key"

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lcom/android/mms/MmsConfig;->sOptionalFieldAttendance:Z

    .line 2246
    const-string v10, "Mms/MmsConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Add Optional Field: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/mms/MmsConfig;->sOptionalFieldAttendance:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    :cond_1
    const-string v10, "prov_transaction_timeout_key"

    invoke-interface {v6, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2251
    const-string v10, "prov_transaction_timeout_key"

    const-string v11, "30"

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2252
    .local v7, timeout:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    mul-int/lit16 v10, v10, 0x3e8

    sput v10, Lcom/android/mms/MmsConfig;->sTransactionTimeout:I

    .line 2253
    const-string v10, "Mms/MmsConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Transaction Timeout: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/mms/MmsConfig;->sTransactionTimeout:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    .end local v7           #timeout:Ljava/lang/String;
    :cond_2
    const-string v10, "Mozilla/5.0 (Linux; Android 4.3; en-us; SAMSUNG SGH-M919 Build Build/JWR66D) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Mobile Safari/537.36"

    sput-object v10, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    .line 2272
    const-string v10, "http://wap.samsungmobile.com/uaprof/SGH-M919.xml"

    sput-object v10, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    .line 2277
    const-string v10, "x-wap-profile"

    sput-object v10, Lcom/android/mms/MmsConfig;->sUaProfTagName:Ljava/lang/String;

    .line 2327
    sget-object v10, Lcom/android/mms/MmsConfig;->sMmsUaUapAutoCreate:Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 2328
    sget-object v10, Lcom/android/mms/MmsConfig;->sMmsUaUapAutoCreate:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/mms/MmsConfig;->generateUaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2329
    .local v0, autoUa:Ljava/lang/String;
    sget-object v10, Lcom/android/mms/MmsConfig;->sMmsUaUapAutoCreate:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/mms/MmsConfig;->generateUapUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2331
    .local v1, autoUapUrl:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 2332
    sput-object v0, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    .line 2335
    :cond_3
    if-eqz v1, :cond_4

    .line 2336
    sput-object v1, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    .line 2341
    .end local v0           #autoUa:Ljava/lang/String;
    .end local v1           #autoUapUrl:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    .line 2342
    .local v2, cscFeature:Lcom/sec/android/app/CscFeature;
    const-string v10, "CscFeature_Message_UserAgent"

    invoke-virtual {v2, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2343
    .local v3, cscUa:Ljava/lang/String;
    const-string v10, "CscFeature_Message_UaProfUrl"

    invoke-virtual {v2, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2345
    .local v4, cscUapUrl:Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 2346
    sput-object v3, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    .line 2349
    :cond_5
    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 2350
    sput-object v4, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    .line 2354
    :cond_6
    const-string v10, "prov_uap_current_key"

    invoke-interface {v6, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2355
    const-string v10, "prov_uap_current_key"

    invoke-interface {v6, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2356
    const-string v10, "prov_uastring_current_key"

    const-string v11, "Android-Mms/2.0"

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2357
    .local v8, ua:Ljava/lang/String;
    const-string v10, "prov_uapurl_current_key"

    const-string v11, ""

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2358
    .local v9, uap:Ljava/lang/String;
    sget-object v10, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    sget-object v10, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 2359
    :cond_7
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 2360
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "prov_uastring_current_key"

    sget-object v11, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2361
    const-string v10, "prov_uapurl_current_key"

    sget-object v11, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2362
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2369
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v8           #ua:Ljava/lang/String;
    .end local v9           #uap:Ljava/lang/String;
    :cond_8
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2370
    const-string v10, "Mms/MmsConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "User Agent: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    const-string v10, "Mms/MmsConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UAP url: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    :cond_9
    return-void

    .line 2365
    :cond_a
    const-string v10, "prov_uastring_key"

    const-string v11, "Android-Mms/2.0"

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    .line 2366
    const-string v10, "prov_uapurl_key"

    const-string v11, ""

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2491
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2494
    :cond_1
    return-void
.end method

.method private static parseImageResizeQuality(Ljava/lang/String;)I
    .locals 5
    .parameter "strQuality"

    .prologue
    .line 2111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x50

    .line 2122
    .local v1, quality:I
    :goto_0
    const-string v2, "Mms/MmsConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load Resize quality : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    return v1

    .line 2112
    .end local v1           #quality:I
    :cond_0
    const-string v2, "high"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2113
    const/16 v1, 0x64

    .line 2114
    .restart local v1       #quality:I
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sMaxQuality:Z

    goto :goto_0

    .line 2116
    .end local v1           #quality:I
    :cond_1
    const-string v2, "normal"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x50

    .restart local v1       #quality:I
    goto :goto_0

    .line 2118
    .end local v1           #quality:I
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .restart local v1       #quality:I
    goto :goto_0

    .line 2119
    .end local v1           #quality:I
    :catch_0
    move-exception v0

    .local v0, nfe:Ljava/lang/NumberFormatException;
    const/16 v1, 0x50

    .restart local v1       #quality:I
    goto :goto_0
.end method

.method public static setApnOnOff(Z)V
    .locals 0
    .parameter "mApnOnOff"

    .prologue
    .line 3506
    sput-boolean p0, Lcom/android/mms/MmsConfig;->sEnableApnOnOff:Z

    .line 3507
    return-void
.end method

.method public static setCBChannel(Ljava/lang/String;)V
    .locals 7
    .parameter "value"

    .prologue
    .line 2978
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2979
    const-string v4, "Mms/MmsConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCBChannel() has invalid parameter. value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2989
    :cond_0
    return-void

    .line 2983
    :cond_1
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/MmsConfig;->sCBChannel:[Ljava/lang/String;

    .line 2984
    sget-object v4, Lcom/android/mms/MmsConfig;->sCBChannel:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2985
    sget-object v0, Lcom/android/mms/MmsConfig;->sCBChannel:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 2986
    .local v1, channelID:Ljava/lang/String;
    const-string v4, "Mms/MmsConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channelID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2985
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static setCmasConversationListQuery(Ljava/lang/String;)V
    .locals 0
    .parameter "cmasConversationListQuery"

    .prologue
    .line 1347
    sput-object p0, Lcom/android/mms/MmsConfig;->sCmasConversationListQuery:Ljava/lang/String;

    .line 1348
    return-void
.end method

.method public static setCmasTestOnOff(Z)V
    .locals 0
    .parameter "mCMASTestOnOff"

    .prologue
    .line 3594
    sput-boolean p0, Lcom/android/mms/MmsConfig;->sEnableCMASTestOnOff:Z

    .line 3595
    return-void
.end method

.method public static setContactMatchCliDigit(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 2863
    sput p0, Lcom/android/mms/MmsConfig;->sContactMatchCliDigit:I

    .line 2864
    return-void
.end method

.method public static setCurrentPrefVersion(Landroid/content/Context;[B)V
    .locals 3
    .parameter "context"
    .parameter "currentVersion"

    .prologue
    .line 3464
    const/4 v0, 0x0

    .line 3466
    .local v0, fos:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v1, "pref_version"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3468
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 3469
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3474
    :goto_0
    if-eqz v0, :cond_0

    .line 3476
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3482
    :cond_0
    :goto_1
    return-void

    .line 3472
    :catch_0
    move-exception v1

    .line 3474
    if-eqz v0, :cond_0

    .line 3476
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 3477
    :catch_1
    move-exception v1

    goto :goto_1

    .line 3474
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 3476
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3479
    :cond_1
    :goto_2
    throw v1

    .line 3477
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_2

    .line 3470
    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method public static setEmailGateway(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 2974
    sput-object p0, Lcom/android/mms/MmsConfig;->sEmailGateway:Ljava/lang/String;

    .line 2975
    return-void
.end method

.method private static setEnalbeLimitOnMmsSubject(Ljava/lang/String;)V
    .locals 7
    .parameter "str"

    .prologue
    const/16 v6, 0x28

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1176
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 1177
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, arrayStr:[Ljava/lang/String;
    if-eqz v0, :cond_2

    :try_start_0
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1182
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/mms/MmsConfig;->sMaxSubjectLength:I

    .line 1183
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "byte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableLimitOnMmsSubjectByByte:Z

    .line 1184
    :cond_0
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ksc5601byte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1185
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableLimitOnMmsSubjectByByte:Z

    .line 1203
    .end local v0           #arrayStr:[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1187
    .restart local v0       #arrayStr:[Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    array-length v2, v0

    if-ne v2, v5, :cond_3

    .line 1189
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/mms/MmsConfig;->sMaxSubjectLength:I

    .line 1190
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableLimitOnMmsSubjectByByte:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1195
    :catch_0
    move-exception v1

    .line 1196
    .local v1, ex:Ljava/lang/NumberFormatException;
    sput v6, Lcom/android/mms/MmsConfig;->sMaxSubjectLength:I

    .line 1197
    sput-boolean v4, Lcom/android/mms/MmsConfig;->sEnableLimitOnMmsSubjectByByte:Z

    goto :goto_0

    .line 1192
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :cond_3
    const/16 v2, 0x28

    :try_start_1
    sput v2, Lcom/android/mms/MmsConfig;->sMaxSubjectLength:I

    .line 1193
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableLimitOnMmsSubjectByByte:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1200
    .end local v0           #arrayStr:[Ljava/lang/String;
    :cond_4
    sput v6, Lcom/android/mms/MmsConfig;->sMaxSubjectLength:I

    .line 1201
    sput-boolean v4, Lcom/android/mms/MmsConfig;->sEnableLimitOnMmsSubjectByByte:Z

    goto :goto_0
.end method

.method public static setImageResolution(Ljava/lang/String;)V
    .locals 7
    .parameter "value"

    .prologue
    const/16 v6, 0xa00

    const/16 v5, 0x800

    const/16 v4, 0x780

    const/16 v3, 0x500

    const/16 v2, 0x1e0

    .line 3039
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3040
    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImageResolution() has invalid parameter. value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3087
    :goto_0
    return-void

    .line 3044
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QCIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3045
    const/16 v0, 0xb0

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    .line 3046
    const/16 v0, 0x90

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    .line 3086
    :goto_1
    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sMaxImageWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sMaxImageHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3047
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QVGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3048
    const/16 v0, 0x140

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    .line 3049
    const/16 v0, 0xf0

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto :goto_1

    .line 3050
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3051
    const/16 v0, 0x280

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    .line 3052
    sput v2, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto :goto_1

    .line 3053
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3054
    const/16 v0, 0x320

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    .line 3055
    sput v2, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto :goto_1

    .line 3056
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HD720"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3057
    sput v3, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    .line 3058
    const/16 v0, 0x2d0

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto :goto_1

    .line 3059
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4VGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3060
    sput v3, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    .line 3061
    const/16 v0, 0x3c0

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto/16 :goto_1

    .line 3062
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UXGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3063
    const/16 v0, 0x640

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    .line 3064
    const/16 v0, 0x4b0

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto/16 :goto_1

    .line 3065
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HD1080"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3066
    sput v4, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    .line 3067
    const/16 v0, 0x438

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto/16 :goto_1

    .line 3068
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QXGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3069
    sput v5, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    .line 3070
    const/16 v0, 0x600

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto/16 :goto_1

    .line 3071
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WQXGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3072
    sput v6, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    .line 3073
    sput v4, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto/16 :goto_1

    .line 3074
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSXGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3075
    sput v6, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    .line 3076
    sput v5, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto/16 :goto_1

    .line 3077
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QUXGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3078
    const/16 v0, 0xcc0

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    .line 3079
    const/16 v0, 0x990

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto/16 :goto_1

    .line 3082
    :cond_c
    sget v0, Lcom/android/mms/MmsConfig;->MAX_IMAGE_WIDTH:I

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    .line 3083
    sget v0, Lcom/android/mms/MmsConfig;->MAX_IMAGE_HEIGHT:I

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto/16 :goto_1
.end method

.method public static setMaxMessageSize(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 2925
    sput p0, Lcom/android/mms/MmsConfig;->sMaxMessageSize:I

    .line 2926
    return-void
.end method

.method public static setMaxMessageSize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 2956
    const-string v2, "free"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2957
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2958
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_mms_max_size"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2959
    const-string v2, "pref_key_mms_max_size"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->setMaxMessageSize(Ljava/lang/String;)V

    .line 2965
    .end local v1           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 2962
    :cond_2
    const v0, 0x4b000

    .line 2963
    .local v0, defaultValue:I
    invoke-static {v0}, Lcom/android/mms/MmsConfig;->setMaxMessageSize(I)V

    goto :goto_0
.end method

.method public static setMaxMessageSize(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 2931
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2932
    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaxMessageSize() has invalid parameter. value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    :goto_0
    return-void

    .line 2936
    :cond_0
    const-string v1, "30"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x7800

    .line 2949
    .local v0, maxsize:I
    :goto_1
    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxsize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2951
    invoke-static {v0}, Lcom/android/mms/MmsConfig;->setMaxMessageSize(I)V

    goto :goto_0

    .line 2937
    .end local v0           #maxsize:I
    :cond_1
    const-string v1, "100"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x19000

    .restart local v0       #maxsize:I
    goto :goto_1

    .line 2938
    .end local v0           #maxsize:I
    :cond_2
    const-string v1, "300"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x4b000

    .restart local v0       #maxsize:I
    goto :goto_1

    .line 2939
    .end local v0           #maxsize:I
    :cond_3
    const-string v1, "350"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x57800

    .restart local v0       #maxsize:I
    goto :goto_1

    .line 2940
    .end local v0           #maxsize:I
    :cond_4
    const-string v1, "500"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x7d000

    .restart local v0       #maxsize:I
    goto :goto_1

    .line 2941
    .end local v0           #maxsize:I
    :cond_5
    const-string v1, "600"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v0, 0x96000

    .restart local v0       #maxsize:I
    goto :goto_1

    .line 2942
    .end local v0           #maxsize:I
    :cond_6
    const-string v1, "1m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0xfa000

    .restart local v0       #maxsize:I
    goto :goto_1

    .line 2943
    .end local v0           #maxsize:I
    :cond_7
    const-string v1, "1.2m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v0, 0x12c000

    .restart local v0       #maxsize:I
    goto :goto_1

    .line 2944
    .end local v0           #maxsize:I
    :cond_8
    const-string v1, "1.5m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v0, 0x177000

    .restart local v0       #maxsize:I
    goto :goto_1

    .line 2945
    .end local v0           #maxsize:I
    :cond_9
    const-string v1, "2m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v0, 0x1f4000

    .restart local v0       #maxsize:I
    goto/16 :goto_1

    .line 2946
    .end local v0           #maxsize:I
    :cond_a
    const-string v1, "3m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v0, 0x2ee000

    .restart local v0       #maxsize:I
    goto/16 :goto_1

    .line 2947
    .end local v0           #maxsize:I
    :cond_b
    const v0, 0x4b000

    .restart local v0       #maxsize:I
    goto/16 :goto_1
.end method

.method public static setMmsExpiry(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 3018
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3019
    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMmsExpiry() has invalid parameter. value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3035
    :goto_0
    return-void

    .line 3023
    :cond_0
    const-string v0, "max"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3024
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/MmsConfig;->sMmsExpiry:I

    .line 3034
    :cond_1
    :goto_1
    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMmsExpiry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/MmsConfig;->sMmsExpiry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3025
    :cond_2
    const-string v0, "1d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3026
    const v0, 0x15180

    sput v0, Lcom/android/mms/MmsConfig;->sMmsExpiry:I

    goto :goto_1

    .line 3027
    :cond_3
    const-string v0, "2d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3028
    const v0, 0x2a300

    sput v0, Lcom/android/mms/MmsConfig;->sMmsExpiry:I

    goto :goto_1

    .line 3029
    :cond_4
    const-string v0, "1w"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3030
    const v0, 0x93a80

    sput v0, Lcom/android/mms/MmsConfig;->sMmsExpiry:I

    goto :goto_1

    .line 3031
    :cond_5
    const-string v0, "2w"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3032
    const v0, 0x127500

    sput v0, Lcom/android/mms/MmsConfig;->sMmsExpiry:I

    goto :goto_1
.end method

.method public static setMmsMaxRecipient(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 2921
    sput p0, Lcom/android/mms/MmsConfig;->sMmsRecipientLimit:I

    .line 2922
    return-void
.end method

.method public static setMmsSlideMaxCount(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2992
    if-gtz p0, :cond_0

    .line 2993
    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMmsSlideMaxCount() has invalid parameter. value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2997
    :goto_0
    return-void

    .line 2996
    :cond_0
    sput p0, Lcom/android/mms/MmsConfig;->sMaxSlideCount:I

    goto :goto_0
.end method

.method public static setMsgtoneRepeatInterval(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 3000
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3001
    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMsgtoneRepeatInterval() has invalid parameter. value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3014
    :goto_0
    return-void

    .line 3004
    :cond_0
    const-string v0, "once"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3005
    const/4 v0, 0x1

    sput v0, Lcom/android/mms/MmsConfig;->sMsgtoneRepeatInterval:I

    .line 3013
    :cond_1
    :goto_1
    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMsgtoneRepeatInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/MmsConfig;->sMsgtoneRepeatInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3006
    :cond_2
    const-string v0, "2m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3007
    const/4 v0, 0x2

    sput v0, Lcom/android/mms/MmsConfig;->sMsgtoneRepeatInterval:I

    goto :goto_1

    .line 3008
    :cond_3
    const-string v0, "5m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3009
    const/4 v0, 0x5

    sput v0, Lcom/android/mms/MmsConfig;->sMsgtoneRepeatInterval:I

    goto :goto_1

    .line 3010
    :cond_4
    const-string v0, "10m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3011
    const/16 v0, 0xa

    sput v0, Lcom/android/mms/MmsConfig;->sMsgtoneRepeatInterval:I

    goto :goto_1
.end method

.method public static setOperatorNumeric(Ljava/lang/String;)V
    .locals 0
    .parameter "numeric"

    .prologue
    .line 3686
    sput-object p0, Lcom/android/mms/MmsConfig;->sOperatorNumeric:Ljava/lang/String;

    .line 3687
    return-void
.end method

.method public static setOptionalFieldAttendance(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1321
    sput-boolean p0, Lcom/android/mms/MmsConfig;->sOptionalFieldAttendance:Z

    .line 1322
    return-void
.end method

.method public static setRecipientLimit(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 2913
    sput p0, Lcom/android/mms/MmsConfig;->sRecipientLimit:I

    .line 2914
    return-void
.end method

.method public static setSavePduFiles(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1304
    sput-boolean p0, Lcom/android/mms/MmsConfig;->sSavePdu:Z

    .line 1305
    return-void
.end method

.method public static setSetFontSizeByVolumeKey(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 2688
    sput-boolean p0, Lcom/android/mms/MmsConfig;->sSetFontSizeByVolumeKey:Z

    .line 2689
    return-void
.end method

.method public static setSmsMmsThreshold(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 2909
    sput p0, Lcom/android/mms/MmsConfig;->sSmsToMmsTextThreshold:I

    .line 2910
    return-void
.end method

.method public static setTetheringMode(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1165
    sput-boolean p0, Lcom/android/mms/MmsConfig;->sTetheringmode:Z

    .line 1166
    return-void
.end method

.method public static setTransactionLoggable(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1294
    sput-boolean p0, Lcom/android/mms/MmsConfig;->sTransactionLoggable:Z

    .line 1295
    return-void
.end method

.method public static setTransactionTimeout(I)V
    .locals 1
    .parameter "set"

    .prologue
    .line 1325
    mul-int/lit16 v0, p0, 0x3e8

    sput v0, Lcom/android/mms/MmsConfig;->sTransactionTimeout:I

    .line 1326
    return-void
.end method

.method public static setUaProfUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1313
    sput-object p0, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    .line 1314
    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1309
    sput-object p0, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    .line 1310
    return-void
.end method

.method public static setUserNai()Ljava/lang/String;
    .locals 11

    .prologue
    .line 628
    const/4 v7, 0x0

    .line 629
    .local v7, userNai:Ljava/lang/String;
    const/4 v3, 0x0

    .line 630
    .local v3, fstream:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 631
    .local v5, in:Ljava/io/DataInputStream;
    const/4 v0, 0x0

    .line 633
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v8, "/data/data/com.sec.sprextension/files/mm.prop"

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 634
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .local v4, fstream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e

    .line 635
    .end local v5           #in:Ljava/io/DataInputStream;
    .local v6, in:Ljava/io/DataInputStream;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f

    .line 638
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 639
    sput-object v7, Lcom/android/mms/MmsConfig;->sUserNai:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10

    goto :goto_0

    .line 645
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 646
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :goto_1
    :try_start_4
    const-string v8, "Mms/MmsConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "filenotfoundexception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 650
    if-eqz v3, :cond_0

    .line 652
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 657
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    .line 659
    :try_start_6
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 664
    :cond_1
    :goto_3
    if-eqz v0, :cond_2

    .line 666
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 672
    :cond_2
    :goto_4
    sget-object v8, Lcom/android/mms/MmsConfig;->sUserNai:Ljava/lang/String;

    return-object v8

    .line 650
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :cond_3
    if-eqz v4, :cond_4

    .line 652
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 657
    :cond_4
    :goto_5
    if-eqz v6, :cond_5

    .line 659
    :try_start_9
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 664
    :cond_5
    :goto_6
    if-eqz v1, :cond_b

    .line 666
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 669
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 653
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_1
    move-exception v2

    .line 654
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 660
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 661
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 667
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 668
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 669
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 653
    .local v2, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 654
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 660
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 661
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 667
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 668
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 647
    .end local v2           #e:Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 648
    .restart local v2       #e:Ljava/io/IOException;
    :goto_7
    :try_start_b
    const-string v8, "Mms/MmsConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ioexception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 650
    if-eqz v3, :cond_6

    .line 652
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 657
    :cond_6
    :goto_8
    if-eqz v5, :cond_7

    .line 659
    :try_start_d
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 664
    :cond_7
    :goto_9
    if-eqz v0, :cond_2

    .line 666
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_4

    .line 667
    :catch_8
    move-exception v2

    .line 668
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 653
    :catch_9
    move-exception v2

    .line 654
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 660
    :catch_a
    move-exception v2

    .line 661
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 650
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_a
    if-eqz v3, :cond_8

    .line 652
    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 657
    :cond_8
    :goto_b
    if-eqz v5, :cond_9

    .line 659
    :try_start_10
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 664
    :cond_9
    :goto_c
    if-eqz v0, :cond_a

    .line 666
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 669
    :cond_a
    :goto_d
    throw v8

    .line 653
    :catch_b
    move-exception v2

    .line 654
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 660
    .end local v2           #e:Ljava/io/IOException;
    :catch_c
    move-exception v2

    .line 661
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 667
    .end local v2           #e:Ljava/io/IOException;
    :catch_d
    move-exception v2

    .line 668
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 650
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_a

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_a

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catchall_3
    move-exception v8

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_a

    .line 647
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    :catch_e
    move-exception v2

    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_f
    move-exception v2

    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_10
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 645
    :catch_11
    move-exception v2

    goto/16 :goto_1

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    :catch_12
    move-exception v2

    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_13
    move-exception v2

    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :cond_b
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_4
.end method

.method private static setmDisableSmscEditableOnlyFor(Ljava/lang/String;)V
    .locals 6
    .parameter "str"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3621
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 3622
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3625
    .local v0, arrayStr:[Ljava/lang/String;
    if-eqz v0, :cond_1

    :try_start_0
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 3626
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "450"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3627
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableSmscEditableOnlyFor:Z

    .line 3646
    .end local v0           #arrayStr:[Ljava/lang/String;
    :goto_0
    return-void

    .line 3629
    .restart local v0       #arrayStr:[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableSmscEditableOnlyFor:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3640
    :catch_0
    move-exception v1

    .line 3641
    .local v1, ex:Ljava/lang/NumberFormatException;
    sput-boolean v5, Lcom/android/mms/MmsConfig;->sDisableSmscEditableOnlyFor:Z

    goto :goto_0

    .line 3631
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :cond_1
    if-eqz v0, :cond_3

    :try_start_1
    array-length v2, v0

    if-ne v2, v4, :cond_3

    .line 3632
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "450"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3633
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableSmscEditableOnlyFor:Z

    goto :goto_0

    .line 3635
    :cond_2
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableSmscEditableOnlyFor:Z

    goto :goto_0

    .line 3638
    :cond_3
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableSmscEditableOnlyFor:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3644
    .end local v0           #arrayStr:[Ljava/lang/String;
    :cond_4
    sput-boolean v5, Lcom/android/mms/MmsConfig;->sDisableSmscEditableOnlyFor:Z

    goto :goto_0
.end method

.method public static useFontSizeCustomizeForKorFullDHModel()Z
    .locals 2

    .prologue
    .line 3692
    const-string v0, "KOR"

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/mms/MmsConfig;->MAX_IMAGE_WIDTH:I

    const/16 v1, 0x780

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/mms/MmsConfig;->MAX_IMAGE_HEIGHT:I

    const/16 v1, 0x438

    if-ne v0, v1, :cond_0

    .line 3694
    const/4 v0, 0x1

    .line 3696
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useFontSizeCustomizeForLargeScreenModel()Z
    .locals 1

    .prologue
    .line 1110
    invoke-static {}, Lcom/android/mms/MmsConfig;->hasLargerThan5inchScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    const/4 v0, 0x1

    .line 1113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useRecipientsFontSizeCustomizeForKor()Z
    .locals 2

    .prologue
    .line 3700
    const-string v0, "KOR"

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3701
    const/4 v0, 0x1

    .line 3703
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
