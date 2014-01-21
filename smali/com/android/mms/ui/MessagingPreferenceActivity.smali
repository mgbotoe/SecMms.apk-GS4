.class public Lcom/android/mms/ui/MessagingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessagingPreferenceActivity$SMSCLengthFilter;
    }
.end annotation


# static fields
.field public static final ALLOW_REPLY:Ljava/lang/String; = "REPLY"

.field public static final ALLOW_REPLY_ALL:Ljava/lang/String; = "pref_key_mms_allow_reply_all"

.field public static final APN_ONOFF:Ljava/lang/String; = "pref_key_apn_onoff"

.field public static final APN_ONOFF_DEFAULT_VALUE:Ljava/lang/Boolean; = null

.field public static final AUTO_DELETE:Ljava/lang/String; = "pref_key_auto_delete"

.field public static final AUTO_RETRIEVAL:Ljava/lang/String; = "pref_key_mms_auto_retrieval"

.field public static final BACKGROUND_STYLE:Ljava/lang/String; = "pref_key_background_color"

.field public static final BACKGROUND_STYLE_DEFAULT_VALUE:I = 0x1

.field public static final BUBBLE_DATE_FONT_SIZE:[F = null

.field public static final BUBBLE_FONT_SIZE:[F = null

.field public static final BUBBLE_FONT_SIZE_WVGA:[F = null

.field public static final BUBBLE_STYLE:Ljava/lang/String; = "pref_key_bubble_style"

.field public static final BUBBLE_TYPE_DEFAULT_VALUE:I = 0x0

.field private static final CALLBACK_CATAGORY:Ljava/lang/String; = "pref_callback_settings"

.field private static final CALLBACK_ENABLED:Ljava/lang/String; = "pref_key_enable_callback"

.field private static final CALLBACK_NUMBER:Ljava/lang/String; = "pref_key_callback_text"

.field public static final CB_CHANNEL_SELECTION:Ljava/lang/String; = "pref_key_cb_channel_selection"

.field public static final CB_MY_CHANNEL_ENABLED_COUNT:Ljava/lang/String; = "pref_cb_my_channel_enabled_count"

.field public static final CB_MY_CHANNEL_MAX_COUNT:Ljava/lang/String; = "pref_cb_my_channel_max_count"

.field public static final CB_SETTINGS_CHANNEL:Ljava/lang/String; = "pref_key_cb_settings_channel"

.field public static final CELL_BROADCAST_ACTIVATION:Ljava/lang/String; = "pref_key_cb_settings_activation"

.field public static final CHAMELEON_TEXT_TEMPLATE_EN:Ljava/lang/String; = "pref_key_chameleon_text_template_en"

.field public static final CHAMELEON_TEXT_TEMPLATE_ES:Ljava/lang/String; = "pref_key_chameleon_text_template_es"

.field public static final CHAMELEON_TEXT_TEMPLATE_KO:Ljava/lang/String; = "pref_key_chameleon_text_template_ko"

.field public static final CHAMELEON_TEXT_TEMPLATE_VI:Ljava/lang/String; = "pref_key_chameleon_text_template_vi"

.field public static final CHAMELEON_TEXT_TEMPLATE_ZH:Ljava/lang/String; = "pref_key_chameleon_text_template_zh"

.field public static final CMAS_ALERT_REMINDER:Ljava/lang/String; = "pref_key_emergency_alert_reminder"

.field public static final CMAS_AUDIO_WHEN:Ljava/lang/String; = "pref_key_cmas_audioWhen_checkbox"

.field public static final CMAS_CATEGORY:Ljava/lang/String; = "pref_cmas_settings"

.field public static final CMAS_TEST_ONOFF:Ljava/lang/String; = "pref_key_cmas_test_onoff"

.field public static final CMAS_TEST_ONOFF_DEFAULT_VALUE:Ljava/lang/Boolean; = null

.field public static final CMAS_VIBRATE_WHEN:Ljava/lang/String; = "pref_key_cmas_vibrateWhen_checkbox"

.field private static final CONFIRM_CLEAR_SEARCH_HISTORY_DIALOG:I = 0x3

.field public static final DEFAULT_ALLOW_REPLY_ALL:Z = true

.field public static final DEFAULT_EXPIRY_TIME:Ljava/lang/String; = "3"

.field public static final DEFAULT_MMSC_PORT:Ljava/lang/String; = "80"

.field public static final DEFAULT_MMSC_URL:Ljava/lang/String; = "http://mmsc.vnet.mobi"

.field public static final DEFAULT_MMS_DELIVERY_TIME:Ljava/lang/String; = null

.field public static final DEFAULT_MMS_PRIORITY:Ljava/lang/String; = null

.field private static final DIALOG_FONT_SIZE:[F = null

.field public static final DISPLAY_CATEGORY:Ljava/lang/String; = "pref_key_display_settings"

.field public static final EXPIRY_TIME:Ljava/lang/String; = "pref_key_mms_expiry"

.field public static final FONT_SIZE_BUBBLE:I = 0x2

.field public static final FONT_SIZE_BY_SYSTEM_FONT_SIZE_DEFAULT_VALUE:I = 0x0

.field public static final FONT_SIZE_BY_VOLUME_KEY:Ljava/lang/String; = "pref_key_font_size_by_volume_key_enable"

.field public static final FONT_SIZE_BY_VOLUME_KEY_DEFAULT_VALUE:Z = true

.field public static final FONT_SIZE_BY_VOLUME_KEY_FONT_SIZE:Ljava/lang/String; = "pref_key_font_size_by_volume_key_font_size"

.field public static final FONT_SIZE_BY_VOLUME_KEY_FONT_SIZE_DEFAULT_VALUE:I = 0x0

.field public static final FONT_SIZE_DEFAULT_VALUE:Ljava/lang/String; = "Normal"

.field public static final FONT_SIZE_EDIT:I = 0x3

.field public static final FONT_SIZE_EXTRA_LARGE_7_STEP:I = 0x6

.field public static final FONT_SIZE_FOLLOW_SYSTEM_FONT_SIZE:I = 0x0

.field public static final FONT_SIZE_HUGE:I = 0x5

.field public static final FONT_SIZE_HUGE_7_STEP:I = 0x7

.field public static final FONT_SIZE_HUGE_VALUE:Ljava/lang/String; = "Huge"

.field public static final FONT_SIZE_LARGE:I = 0x4

.field public static final FONT_SIZE_LARGE_7_STEP:I = 0x5

.field public static final FONT_SIZE_LARGE_VALUE:Ljava/lang/String; = "Large"

.field public static final FONT_SIZE_MEDIUM_7_STEP:I = 0x4

.field public static final FONT_SIZE_NORMAL:I = 0x3

.field public static final FONT_SIZE_NORMAL_7_STEP:I = 0x3

.field public static final FONT_SIZE_NORMAL_VALUE:Ljava/lang/String; = "Normal"

.field public static final FONT_SIZE_RECIPIENTS:I = 0x1

.field public static final FONT_SIZE_RESTRICTED:I = 0x5

.field public static final FONT_SIZE_SMALL:I = 0x2

.field public static final FONT_SIZE_SMALL_7_STEP:I = 0x2

.field public static final FONT_SIZE_SMALL_VALUE:Ljava/lang/String; = "Small"

.field public static final FONT_SIZE_TINY:I = 0x1

.field public static final FONT_SIZE_TINY_7_STEP:I = 0x1

.field public static final FONT_SIZE_TINY_VALUE:Ljava/lang/String; = "Tiny"

.field public static final FONT_SIZE_VEIWER:I = 0x4

.field public static final GROUP_MMS_MODE:Ljava/lang/String; = "pref_key_mms_group_mms"

.field public static final HAS_DEFAULT_VALUE:Ljava/lang/String; = "pref_key_has_default_value"

.field public static final INIT_CSC:Ljava/lang/String; = "pref_key_init_csc"

.field public static final INSERT_SENDER_INFO_WHEN_FWD_MSG:Ljava/lang/String; = "pref_key_insert_sender_info_when_fwd_msg"

.field public static final INSERT_SENDER_INFO_WHEN_FWD_MSG_CATEGORY:Ljava/lang/String; = "pref_key_insert_sender_info_when_fwd_msg_category"

.field public static final MANAGE_SD_MESSAGES:Ljava/lang/String; = "pref_key_manage_SD_messages"

.field public static final MANAGE_SIM_MESSAGES:Ljava/lang/String; = "pref_key_manage_sim_messages"

.field public static final MAX_MMS_MESSAGES_PER_THREAD:Ljava/lang/String; = "MaxMmsMessagesPerThread"

.field public static final MAX_SMS_MESSAGES_PER_THREAD:Ljava/lang/String; = "MaxSmsMessagesPerThread"

.field public static final MENU_RESTORE_DEFAULTS:I = 0x1

.field public static final MESSAGE_BUBBLE_RECEIVE_TYPE_DEFAULT_VALUE:I = 0x0

.field public static final MESSAGE_BUBBLE_SENT_TYPE_DEFAULT_VALUE:I = 0x0

.field public static final MESSAGE_FONT_Q1_INDEX_DIFF:I = 0x3

.field public static final MESSAGE_FONT_SIZE:Ljava/lang/String; = "pref_key_font_size"

.field public static final MESSAGE_FONT_SIZE_DEFAULT_VALUE_SYSTEM:Ljava/lang/String; = "Follow system font size"

.field public static final MESSAGE_TEXT_FIELD_COLOR:Ljava/lang/String; = "pref_key_text_field_color"

.field public static final MESSAGE_TEXT_FIELD_COLOR_AMOLED_DEFAULT_VALUE:Ljava/lang/String; = "Black"

.field public static final MESSAGE_TEXT_FIELD_COLOR_BLACK:I = 0x0

.field public static final MESSAGE_TEXT_FIELD_COLOR_LCD_DEFAULT_VALUE:Ljava/lang/String; = "White"

.field public static final MESSAGE_TEXT_FIELD_COLOR_WHITE:I = 0x1

.field public static final MMSC_PORT:Ljava/lang/String; = "pref_mmsc_port"

.field public static final MMSC_URL:Ljava/lang/String; = "pref_mmsc_url"

.field public static final MMS_CHANGE_OVER_ALARM:Ljava/lang/String; = "pref_key_mms_change_over_alarm"

.field public static final MMS_CREATION_MODE:Ljava/lang/String; = "pref_key_mms_creation_mode"

.field public static final MMS_CREATION_MODE_DEFAULT_VALUE:Ljava/lang/String; = "free"

.field public static final MMS_DELETE_LIMIT:Ljava/lang/String; = "pref_key_mms_delete_limit"

.field public static final MMS_DELIVERY_REPORT_MODE:Ljava/lang/String; = "pref_key_mms_delivery_reports"

.field public static final MMS_DELIVERY_TIME:Ljava/lang/String; = "pref_key_mms_delivery_time"

.field public static final MMS_EXPIRY_TIME:Ljava/lang/String; = "pref_key_mms_expiry_time"

.field public static final MMS_IMAGE_RESIZE_RESOLUTION:Ljava/lang/String; = "pref_key_mms_image_resize_resolution"

.field public static final MMS_MAX_RECIPIENT:Ljava/lang/String; = "pref_key_mms_max_recipient"

.field public static final MMS_MAX_SIZE:Ljava/lang/String; = "pref_key_mms_max_size"

.field public static final MMS_PRIORITY:Ljava/lang/String; = "pref_key_mmspriority"

.field public static final MMS_SEND_DELIVERY_REPORT_MODE:Ljava/lang/String; = "pref_key_send_mms_delivery_reports"

.field public static final MMS_SLIDE_MAX_COUNT:Ljava/lang/String; = "pref_key_mms_slide_max_count"

.field public static final MMS_VIEW_MODE:Ljava/lang/String; = "pref_view_mode"

.field public static final MMS_VIEW_MODE_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field public static final MSGTONE_REPEAT_INTERVAL:Ljava/lang/String; = "pref_key_msgtone_repeat_interval"

.field public static final NOTIFICATION_BACKLIGHT:Ljava/lang/String; = "pref_key_backlight"

.field public static final NOTIFICATION_CATEGORY:Ljava/lang/String; = "pref_notification_settings"

.field public static final NOTIFICATION_ENABLED:Ljava/lang/String; = "pref_key_enable_notifications"

.field public static final NOTIFICATION_PREVIEW:Ljava/lang/String; = "pref_key_enable_preview_message"

.field public static final NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_ringtone"

.field public static final NOTIFICATION_VIBRATE:Ljava/lang/String; = "pref_key_vibrate"

.field public static final NOTIFICATION_VIBRATE_WHEN:Ljava/lang/String; = "pref_key_vibrateWhen_checkbox"

.field public static final PREF_RESET_PDP_PARAM:Ljava/lang/String; = "pref_reset_pdp_param"

.field public static final PRIORITY:Ljava/lang/String; = "pref_key_mms_priority"

.field public static final PUSH_MESSAGE:Ljava/lang/String; = "pref_key_enable_push_message"

.field public static final READ_REPORT_MODE:Ljava/lang/String; = "pref_key_mms_read_reports"

.field public static final REMINDER_ALERT:Ljava/lang/String; = "pref_key_msg_reminder_alert"

.field public static final RESTORE_MESSAGES:Ljava/lang/String; = "pref_key_sms_restore"

.field public static final RETRIEVAL_DURING_ROAMING:Ljava/lang/String; = "pref_key_mms_retrieval_during_roaming"

.field public static final SERVICE_LOADING_ACTION:Ljava/lang/String; = "pref_key_service_loading_action"

.field public static final SERVICE_LOADING_ACTION_ALWAYS:I = 0x0

.field public static final SERVICE_LOADING_ACTION_DEFAULT_VALUE:Ljava/lang/String; = "Prompt"

.field public static final SERVICE_LOADING_ACTION_NEVER:I = 0x2

.field public static final SERVICE_LOADING_ACTION_PROMPT:I = 0x1

.field public static final SIGNATURE:Ljava/lang/String; = "pref_signature_settings"

.field public static final SIGNATURE_ENABLE:Ljava/lang/String; = "pref_key_enable_signature"

.field public static final SIGNATURE_TEXT:Ljava/lang/String; = "pref_key_signature_text"

.field public static final SIM_READY_STATUS:Ljava/lang/String; = "pref_sim_ready_status"

.field public static final SMSC_ADDR_VALUE:Ljava/lang/String; = "pref_key_manage_smsc_address"

.field public static final SMSC_URI:Landroid/net/Uri; = null

.field public static final SMS_DELETE_LIMIT:Ljava/lang/String; = "pref_key_sms_delete_limit"

.field public static final SMS_DELIVERY_REPORT_MODE:Ljava/lang/String; = "pref_key_sms_delivery_reports"

.field public static final SMS_EMAIL_GATEWAY:Ljava/lang/String; = "pref_key_sms_email_gateway"

.field public static final SMS_EXPIRY_TIME:Ljava/lang/String; = "pref_key_sms_expiry"

.field public static final SMS_INPUT_MODE:Ljava/lang/String; = "pref_key_sms_input_mode"

.field public static final SMS_INPUT_MODE_DEFAULT_VALUE:Ljava/lang/String; = "Automatic"

.field public static final SMS_MAX_RECIPIENT:Ljava/lang/String; = "pref_key_max_recipient"

.field public static final SMS_RESTORE_MESSAGES:Ljava/lang/String; = "pref_key_sms_restore"

.field public static final SMS_TEXT_TEMPLATE:Ljava/lang/String; = "pref_key_sms_text_template"

.field public static final SMS_THRESHOLD:Ljava/lang/String; = "pref_key_threshold"

.field public static final SMS_THRESHOLD_TYPE:Ljava/lang/String; = "pref_key_threshold_type"

.field public static final SPAM_CATAGORY:Ljava/lang/String; = "pref_key_spam_settings"

.field public static final SPAM_FILTER_UNKNOWN_EABLE:Ljava/lang/String; = "pref_key_spam_filter_unknown_enable"

.field public static final SPAM_OPTION:Ljava/lang/String; = "pref_key_spam_option"

.field public static final SPAM_OPTION_EABLE:Ljava/lang/String; = "pref_key_spam_option_enable"

.field public static final SPAM_OPTION_OFF:I = 0x0

.field public static final SPAM_OPTION_OFF_VALUE:Ljava/lang/String; = "0"

.field public static final SPAM_OPTION_REJECT_ALL_MESSAGES:I = 0x1

.field public static final SPAM_OPTION_REJECT_ALL_MESSAGES_VALUE:Ljava/lang/String; = "1"

.field public static final SPAM_OPTION_REJECT_BLOCK_NUMBER_AND_STRING:I = 0x2

.field public static final SPAM_OPTION_REJECT_BLOCK_NUMBER_AND_STRING_VALUE:Ljava/lang/String; = "2"

.field public static final SPLIT_BAR_POSITION:Ljava/lang/String; = "pref_key_splitbar_position"

.field public static final SPLIT_VIEW:Ljava/lang/String; = "pref_key_split_view"

.field public static final SPLIT_VIEW_DEFAULT_VALUE:Z = true

.field private static final TAG:Ljava/lang/String; = "Mms/MessagingPreferenceActivity"

.field public static final TEXT_TEMPLATE:Ljava/lang/String; = "pref_key_text_templates"

.field public static final TRUNCATE_LONG_MESSAGES:Ljava/lang/String; = "pref_key_truncate_long_messages"

.field public static final TTS_READ_OUT_MESSAGE_CONTENTS:Ljava/lang/String; = "pref_key_read_out_message_contents"

.field public static final TTS_READ_OUT_NEW_MESSAGE_NOTIFICATION:Ljava/lang/String; = "pref_key_read_out_new_message_notification"

.field public static final URLLINK_OPTION_EABLE:Ljava/lang/String; = "pref_key_urllink_option_enable"

.field public static final VALUE_CREATION_MODE_FREE:I = 0x2

.field public static final VALUE_CREATION_MODE_RESTRICTED:I = 0x0

.field public static final VALUE_CREATION_MODE_WARNING:I = 0x1

.field public static final VALUE_EXPIRY_TIME_1HOUR:Ljava/lang/String; = "0"

.field public static final VALUE_EXPIRY_TIME_24HOURS:Ljava/lang/String; = "2"

.field public static final VALUE_EXPIRY_TIME_2DAYS:Ljava/lang/String; = "3"

.field public static final VALUE_EXPIRY_TIME_6HOURS:Ljava/lang/String; = "1"

.field public static final VALUE_EXPIRY_TIME_DEFAULT:Ljava/lang/String; = "4"

.field public static final VALUE_EXPIRY_TIME_MAXIMUM:Ljava/lang/String; = "5"

.field public static final VALUE_INT_DELIVERY_TIME_1HOUR:I = 0x1

.field public static final VALUE_INT_DELIVERY_TIME_1WEEK:I = 0x4

.field public static final VALUE_INT_DELIVERY_TIME_24HOUR:I = 0x3

.field public static final VALUE_INT_DELIVERY_TIME_6HOUR:I = 0x2

.field public static final VALUE_INT_DELIVERY_TIME_IMMEDIATELY:I = 0x0

.field public static final VALUE_INT_EXPIRY_TIME_1HOUR:I = 0x0

.field public static final VALUE_INT_EXPIRY_TIME_24HOURS:I = 0x2

.field public static final VALUE_INT_EXPIRY_TIME_2DAYS:I = 0x3

.field public static final VALUE_INT_EXPIRY_TIME_6HOURS:I = 0x1

.field public static final VALUE_INT_EXPIRY_TIME_DEFAULT:I = 0x4

.field public static final VALUE_INT_EXPIRY_TIME_MAXIMUM:I = 0x5

.field public static final VALUE_INT_MMS_PRIORITY_HIGH:I = 0x0

.field public static final VALUE_INT_MMS_PRIORITY_LOW:I = 0x2

.field public static final VALUE_INT_MMS_PRIORITY_MEDIUM:I = 0x1

.field public static final VALUE_VIEW_MODE_CONVERSATION:I = 0x0

.field public static final VALUE_VIEW_MODE_FOLDER:I = 0x1

.field public static mBubbleFontRateArray:[F = null

.field public static mFontRateArray:[F = null

.field public static mFontSizeExceptionHuge:F = 0.0f

.field public static mFontSizeNormal:F = 0.0f

.field private static mOldSettingFontSizeIndex:I = 0x0

.field protected static final targetDirPath:Ljava/lang/String; = "/data/data/com.android.mms/"

.field protected static final targetFileName:Ljava/lang/String; = "message_background_image.jpg"


# instance fields
.field private airplaneReceiver:Landroid/content/BroadcastReceiver;

.field private cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

.field private mCallbackNumberPref:Landroid/preference/EditTextPreference;

.field private mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

.field private mManageSDPref:Landroid/preference/Preference;

.field private mManageSimPref:Landroid/preference/Preference;

.field private mMaxChannelCount:I

.field private mMessageBubbleStyleName:[Ljava/lang/String;

.field private mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

.field private mMmsDeliveryReportPref:Landroid/preference/Preference;

.field private mMmsDeliveryTimePref:Landroid/preference/Preference;

.field private mMmsExpiryTimePref:Landroid/preference/Preference;

.field mMmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

.field private mMmsLimitPref:Landroid/preference/Preference;

.field private mMmsMMSCPortPref:Landroid/preference/Preference;

.field private mMmsMMSCUrlPref:Landroid/preference/Preference;

.field private mMmsPriorityPref:Landroid/preference/Preference;

.field private mMmsReadReportPref:Landroid/preference/Preference;

.field private mMmsRecycler:Lcom/android/mms/util/Recycler;

.field private mMmsSendDeliveryReportPref:Landroid/preference/Preference;

.field private mMyChannels:I

.field private mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

.field private mReplyAllPref:Landroid/preference/CheckBoxPreference;

.field private mRestoreSDPref:Landroid/preference/Preference;

.field private mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mServiceLoadingActionName:[Ljava/lang/String;

.field private mSimStatus:Z

.field private mSmsDeliveryReportPref:Landroid/preference/Preference;

.field mSmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

.field private mSmsLimitPref:Landroid/preference/Preference;

.field private mSmsRecycler:Lcom/android/mms/util/Recycler;

.field private mSmsc:Ljava/lang/String;

.field private mSmscAddrPref:Landroid/preference/EditTextPreference;

.field private mSpamOption:Landroid/preference/ListPreference;

.field private mURLlinkPref:Landroid/preference/CheckBoxPreference;

.field private mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

.field private misTalkbackOn:Z

.field private simStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 143
    const-string v0, "content://sms/smsc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMSC_URI:Landroid/net/Uri;

    .line 156
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->APN_ONOFF_DEFAULT_VALUE:Ljava/lang/Boolean;

    .line 195
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->CMAS_TEST_ONOFF_DEFAULT_VALUE:Ljava/lang/Boolean;

    .line 272
    new-array v0, v4, [F

    sget v1, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_NORMAL:F

    aput v1, v0, v3

    const/4 v1, 0x1

    sget v2, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_TINY:F

    aput v2, v0, v1

    sget v1, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_SMALL:F

    aput v1, v0, v6

    const/4 v1, 0x3

    sget v2, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_NORMAL:F

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_LARGE:F

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_HUGE:F

    aput v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->DIALOG_FONT_SIZE:[F

    .line 297
    sput-object v7, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    .line 298
    sput-object v7, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    .line 300
    sput v5, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    .line 301
    sput v5, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeExceptionHuge:F

    .line 304
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_FONT_SIZE:[F

    .line 313
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_FONT_SIZE_WVGA:[F

    .line 328
    new-array v0, v4, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_FONT_SIZE:[F

    .line 416
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->DEFAULT_MMS_PRIORITY:Ljava/lang/String;

    .line 426
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->DEFAULT_MMS_DELIVERY_TIME:Ljava/lang/String;

    .line 448
    sput v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mOldSettingFontSizeIndex:I

    return-void

    .line 304
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xb0t 0x41t
        0x0t 0x0t 0x98t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xb0t 0x41t
        0x0t 0x0t 0xe8t 0x41t
        0x0t 0x0t 0x64t 0x42t
    .end array-data

    .line 313
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x90t 0x41t
        0x0t 0x0t 0x60t 0x41t
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0x90t 0x41t
        0x0t 0x0t 0xc0t 0x41t
        0x0t 0x0t 0xf8t 0x41t
    .end array-data

    .line 328
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0xaet 0x47t 0x55t 0x41t
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0x80t 0x41t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 344
    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    .line 345
    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessageBubbleStyleName:[Ljava/lang/String;

    .line 436
    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    .line 441
    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    .line 449
    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    .line 451
    iput-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->misTalkbackOn:Z

    .line 453
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

    .line 464
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1241
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc:Ljava/lang/String;

    .line 1242
    iput-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimStatus:Z

    .line 1243
    iput v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMaxChannelCount:I

    .line 1244
    iput v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMyChannels:I

    .line 1407
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$6;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    .line 1414
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$7;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    .line 1500
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$9;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 2120
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$10;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->simStateReceiver:Landroid/content/BroadcastReceiver;

    .line 2268
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$11;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    .line 2425
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setVibrateMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceSummary()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSDPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/MessagingPreferenceActivity;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSDPref:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->restoreDefaultPreferences()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->refreshSIMPreferences()V

    return-void
.end method

.method private allowReplyAll()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 548
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 549
    const-string v3, "pref_key_mms_allow_reply_all"

    invoke-virtual {p0, v3, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 550
    .local v0, replyAll:Landroid/content/SharedPreferences;
    const-string v3, "REPLY"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 554
    .end local v0           #replyAll:Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private backupNetworkStatus(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "sharedPref"

    .prologue
    const/4 v2, 0x0

    .line 1248
    const-string v0, "pref_key_manage_smsc_address"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc:Ljava/lang/String;

    .line 1249
    const-string v0, "pref_sim_ready_status"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimStatus:Z

    .line 1253
    const-string v0, "pref_cb_my_channel_max_count"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMaxChannelCount:I

    .line 1254
    const-string v0, "pref_cb_my_channel_enabled_count"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMyChannels:I

    .line 1256
    return-void
.end method

.method public static changeSpamOption(Landroid/content/Context;Z)Z
    .locals 5
    .parameter "context"
    .parameter "spamStatus"

    .prologue
    const/4 v3, 0x1

    .line 2151
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2152
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2154
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_key_spam_option_enable"

    if-nez p1, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 2155
    const-string v2, "pref_key_spam_option_enable"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2159
    :cond_0
    return v3

    .line 2154
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private clearPickerDialog()V
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagePickerDialog;->dismiss()V

    .line 1461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    .line 1463
    :cond_0
    return-void
.end method

.method private confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 1447
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1448
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0055

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1450
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1451
    const v1, 0x7f0c004f

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1452
    const v1, 0x7f0c0050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1453
    const v1, 0x7f0c0056

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1455
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1456
    return-void
.end method

.method private confirmSDcardDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 1114
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1115
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0129

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1117
    const v1, 0x7f0c012a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1118
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1120
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1121
    return-void
.end method

.method public static convertCreationMode(Ljava/lang/String;)I
    .locals 2
    .parameter "modeName"

    .prologue
    .line 1635
    const-string v0, "restricted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    const/4 v0, 0x0

    .line 1640
    :goto_0
    return v0

    .line 1637
    :cond_0
    const-string v0, "warning"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1638
    const/4 v0, 0x1

    goto :goto_0

    .line 1639
    :cond_1
    const-string v0, "free"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1640
    const/4 v0, 0x2

    goto :goto_0

    .line 1642
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown MMS creation mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getApnOnOff(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 2029
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2030
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_apn_onoff"

    sget-object v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->APN_ONOFF_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2032
    .local v1, result:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public static getBubbleBackgroundStyle(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 2061
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2062
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_background_color"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getBubbleReceiveStyle(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 2056
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2057
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_bubble_style"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public static getBubbleSentStyle(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 2051
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2052
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_bubble_style"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public static getBubbleStyle(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 2046
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2047
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_bubble_style"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getCMASTestOnOff(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 2509
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2510
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_cmas_test_onoff"

    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->CMAS_TEST_ONOFF_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getCallbackEnabled(Landroid/content/SharedPreferences;)Z
    .locals 3
    .parameter "pref"

    .prologue
    .line 1392
    const-string v1, "pref_key_enable_callback"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1394
    .local v0, callbackEnabled:Z
    return v0
.end method

.method public static getCallbackNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3
    .parameter "pref"

    .prologue
    .line 1399
    const-string v1, "pref_key_callback_text"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1401
    .local v0, callbackNumber:Ljava/lang/String;
    return-object v0
.end method

.method public static getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 1696
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSizeByVolumeKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1697
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1698
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_font_size_by_volume_key_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1700
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getExpiryTime(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 1614
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1615
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_sms_expiry"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1616
    .local v1, tempStr:Ljava/lang/String;
    const-string v2, "0 day"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1617
    const/4 v2, 0x0

    .line 1623
    :goto_0
    return v2

    .line 1618
    :cond_0
    const-string v2, "1 day"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1619
    const/16 v2, 0xa7

    goto :goto_0

    .line 1620
    :cond_1
    const-string v2, "2 days"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1621
    const/16 v2, 0xa8

    goto :goto_0

    .line 1623
    :cond_2
    const/16 v2, 0xa9

    goto :goto_0
.end method

.method public static getFontSize(II)F
    .locals 6
    .parameter "nType"
    .parameter "nIndex"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    .line 1774
    const/4 v0, 0x0

    .line 1776
    .local v0, fontSize:F
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1777
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize7Step(II)F

    move-result v0

    move v1, v0

    .line 1838
    .end local v0           #fontSize:F
    .local v1, fontSize:F
    :goto_0
    return v1

    .line 1781
    .end local v1           #fontSize:F
    .restart local v0       #fontSize:F
    :cond_0
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    if-nez v2, :cond_2

    .line 1782
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->updateFontRateArray(I)[F

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    .line 1783
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/FontSizeController;->updateBubbleFontRateArray(Landroid/content/Context;)[F

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    .line 1787
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->updateFontSizeNormal(I)F

    move-result v2

    sput v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    .line 1788
    if-ne p1, v5, :cond_3

    .line 1789
    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->updateFontSizeExceptionHuge()F

    move-result v2

    sput v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeExceptionHuge:F

    .line 1792
    :cond_3
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    invoke-static {p1, v2}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[F)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1793
    const/4 p1, 0x3

    .line 1795
    :cond_4
    packed-switch p0, :pswitch_data_0

    .line 1824
    :goto_1
    if-ne p1, v5, :cond_5

    .line 1825
    packed-switch p0, :pswitch_data_1

    :cond_5
    :goto_2
    move v1, v0

    .line 1838
    .end local v0           #fontSize:F
    .restart local v1       #fontSize:F
    goto :goto_0

    .line 1797
    .end local v1           #fontSize:F
    .restart local v0       #fontSize:F
    :pswitch_0
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v2, v2, v4

    sget v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v2, v3

    .line 1798
    goto :goto_1

    .line 1800
    :pswitch_1
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v2, v2, p1

    sget v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v2, v3

    .line 1801
    goto :goto_1

    .line 1803
    :pswitch_2
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v2, v2, p1

    sget v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v2, v3

    .line 1804
    goto :goto_1

    .line 1806
    :pswitch_3
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v2, v2, p1

    sget v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v2, v3

    .line 1807
    goto :goto_1

    .line 1809
    :pswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->useRecipientsFontSizeCustomizeForKor()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1811
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v2, v2, p1

    sget v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v2, v3

    goto :goto_1

    .line 1813
    :cond_7
    const/4 v2, 0x1

    if-ge p1, v2, :cond_9

    .line 1814
    const/4 p1, 0x1

    .line 1817
    :cond_8
    :goto_3
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v2, v2, p1

    sget v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v2, v3

    .line 1819
    goto :goto_1

    .line 1815
    :cond_9
    if-le p1, v4, :cond_8

    .line 1816
    const/4 p1, 0x3

    goto :goto_3

    .line 1827
    :pswitch_5
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v2, v2, v4

    sget v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v2, v3

    .line 1828
    goto :goto_2

    .line 1832
    :pswitch_6
    sget v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeExceptionHuge:F

    .line 1833
    goto :goto_2

    .line 1795
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1825
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public static getFontSize7Step(II)F
    .locals 5
    .parameter "nType"
    .parameter "nIndex"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x3

    .line 1842
    const/4 v0, 0x0

    .line 1844
    .local v0, fontSize:F
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    if-nez v1, :cond_1

    .line 1845
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->updateFontRateArray(I)[F

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    .line 1846
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/FontSizeController;->updateBubbleFontRateArray(Landroid/content/Context;)[F

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    .line 1850
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->updateFontSizeNormal(I)F

    move-result v1

    sput v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    .line 1851
    if-ne p1, v4, :cond_2

    .line 1852
    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->updateFontSizeExceptionHuge()F

    move-result v1

    sput v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeExceptionHuge:F

    .line 1855
    :cond_2
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    invoke-static {p1, v1}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[F)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1856
    const/4 p1, 0x3

    .line 1858
    :cond_3
    packed-switch p0, :pswitch_data_0

    .line 1882
    :goto_0
    if-ne p1, v4, :cond_4

    .line 1883
    packed-switch p0, :pswitch_data_1

    .line 1895
    :cond_4
    :goto_1
    return v0

    .line 1860
    :pswitch_0
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v1, v1, v3

    sget v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v1, v2

    .line 1861
    goto :goto_0

    .line 1863
    :pswitch_1
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v1, v1, p1

    sget v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v1, v2

    .line 1864
    goto :goto_0

    .line 1866
    :pswitch_2
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v1, v1, p1

    sget v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v1, v2

    .line 1867
    goto :goto_0

    .line 1869
    :pswitch_3
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v1, v1, p1

    sget v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v1, v2

    .line 1870
    goto :goto_0

    .line 1872
    :pswitch_4
    const/4 v1, 0x1

    if-ge p1, v1, :cond_6

    .line 1873
    const/4 p1, 0x1

    .line 1876
    :cond_5
    :goto_2
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v1, v1, p1

    sget v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v1, v2

    .line 1877
    goto :goto_0

    .line 1874
    :cond_6
    if-le p1, v3, :cond_5

    .line 1875
    const/4 p1, 0x3

    goto :goto_2

    .line 1885
    :pswitch_5
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v1, v1, v3

    sget v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v1, v2

    .line 1886
    goto :goto_1

    .line 1889
    :pswitch_6
    sget v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeExceptionHuge:F

    .line 1890
    goto :goto_1

    .line 1858
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1883
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public static getFontSizeIndex(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1704
    const/4 v2, 0x3

    .line 1705
    .local v2, idxFontSize:I
    const/4 v4, 0x0

    .line 1706
    .local v4, settingFontSizeIndex:I
    const/4 v3, 0x0

    .line 1708
    .local v3, preferFontSizeIndex:I
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v4

    .line 1710
    sget v6, Lcom/android/mms/ui/MessagingPreferenceActivity;->mOldSettingFontSizeIndex:I

    if-nez v6, :cond_0

    .line 1711
    sput v4, Lcom/android/mms/ui/MessagingPreferenceActivity;->mOldSettingFontSizeIndex:I

    .line 1714
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1715
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1717
    .local v5, sharedPrefs:Landroid/content/SharedPreferences;
    sget v6, Lcom/android/mms/ui/MessagingPreferenceActivity;->mOldSettingFontSizeIndex:I

    if-eq v4, v6, :cond_2

    .line 1719
    :try_start_0
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1720
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1721
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1724
    .end local v0           #editPrefs:Landroid/content/SharedPreferences$Editor;
    :goto_0
    sput v4, Lcom/android/mms/ui/MessagingPreferenceActivity;->mOldSettingFontSizeIndex:I

    .line 1725
    const/4 v3, 0x0

    .line 1734
    :goto_1
    add-int v2, v4, v3

    .line 1735
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1736
    const/4 v6, 0x7

    if-le v2, v6, :cond_3

    .line 1737
    const/4 v2, 0x7

    .line 1739
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1740
    .local v1, editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    rsub-int/lit8 v7, v4, 0x7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1742
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1770
    .end local v1           #editprefs:Landroid/content/SharedPreferences$Editor;
    .end local v5           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_1
    :goto_2
    return v2

    .line 1727
    .restart local v5       #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_2
    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    .line 1743
    :cond_3
    if-ge v2, v8, :cond_1

    .line 1744
    const/4 v2, 0x1

    .line 1746
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1747
    .restart local v1       #editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    rsub-int/lit8 v7, v4, 0x1

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1749
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 1752
    .end local v1           #editprefs:Landroid/content/SharedPreferences$Editor;
    :cond_4
    const/4 v6, 0x5

    if-le v2, v6, :cond_5

    .line 1753
    const/4 v2, 0x5

    .line 1755
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1756
    .restart local v1       #editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    rsub-int/lit8 v7, v4, 0x5

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1757
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 1758
    .end local v1           #editprefs:Landroid/content/SharedPreferences$Editor;
    :cond_5
    if-ge v2, v8, :cond_1

    .line 1759
    const/4 v2, 0x1

    .line 1761
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1762
    .restart local v1       #editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    rsub-int/lit8 v7, v4, 0x1

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1763
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 1767
    .end local v1           #editprefs:Landroid/content/SharedPreferences$Editor;
    .end local v5           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_6
    move v2, v4

    goto :goto_2

    .line 1722
    .restart local v5       #sharedPrefs:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static getFontSizePreferenceDialogFontSize(I)F
    .locals 4
    .parameter "index"

    .prologue
    .line 1899
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->DIALOG_FONT_SIZE:[F

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1900
    const/4 p0, 0x0

    .line 1901
    :cond_0
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->DIALOG_FONT_SIZE:[F

    aget v0, v1, p0

    .line 1902
    .local v0, fontSize:F
    const-string v1, "Mms/MessagingPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFontSizePreferenceDialogFontSize() returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    return v0
.end method

.method public static getInputmode(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 1598
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1599
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_sms_input_mode"

    const-string v3, "Automatic"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1602
    .local v1, tempStr:Ljava/lang/String;
    const-string v2, "GSM alphabet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1603
    const/4 v2, 0x0

    .line 1607
    :goto_0
    return v2

    .line 1604
    :cond_0
    const-string v2, "Unicode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1605
    const/4 v2, 0x1

    goto :goto_0

    .line 1607
    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public static getIsGroupMmsEnabled(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 2415
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2416
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_mms_group_mms"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2418
    .local v0, groupMmsPrefOn:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v1

    .line 2419
    .local v1, isGroupMmsEnable:Z
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 2420
    .local v2, isLocalNumberEmpty:Z
    const-string v5, "Mms/MessagingPreferenceActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "groupMmsPrefOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isGroupMmsEnable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isLocalNumberEmpty = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getMessageFontSizeIndex(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    .line 1668
    const/4 v0, 0x0

    .line 1670
    .local v0, settingFontSizeIndex:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSize()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1672
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSelectedFontSizeIndexByPref(Landroid/content/Context;)I

    move-result v0

    .line 1673
    if-nez v0, :cond_0

    .line 1674
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1675
    add-int/lit8 v0, v0, 0x1

    .line 1683
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->updateBubbleFontRateArray(Landroid/content/Context;)[F

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    .line 1684
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1685
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1686
    const/4 v0, 0x3

    .line 1692
    :cond_1
    :goto_1
    return v0

    .line 1679
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1680
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1688
    :cond_3
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1689
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public static getMmsViewMode(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 2004
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2005
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_view_mode"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2006
    .local v1, tempStr:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2007
    const/4 v2, 0x0

    .line 2009
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getNotificationEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 2378
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2379
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_enable_notifications"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2381
    .local v0, notificationsEnabled:Z
    return v0
.end method

.method public static getPDP_PARAM(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 2404
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2405
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_reset_pdp_param"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2406
    .local v1, result:Ljava/lang/Boolean;
    const-string v2, "Mms/MessagingPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get PDP_PARAM : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public static getSelectedFontSizeIndexByPref(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    .line 1908
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1909
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_font_size"

    const-string v4, "Follow system font size"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1910
    .local v0, fontSize:Ljava/lang/String;
    const/4 v2, 0x3

    .line 1911
    .local v2, selectedIndex:I
    const-string v3, "Follow system font size"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1912
    const/4 v2, 0x0

    .line 1926
    :goto_0
    const-string v3, "Mms/MessagingPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSelectedFontSizeIndex() returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    return v2

    .line 1913
    :cond_0
    const-string v3, "Tiny"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1914
    const/4 v2, 0x1

    goto :goto_0

    .line 1915
    :cond_1
    const-string v3, "Small"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1916
    const/4 v2, 0x2

    goto :goto_0

    .line 1917
    :cond_2
    const-string v3, "Normal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1918
    const/4 v2, 0x3

    goto :goto_0

    .line 1919
    :cond_3
    const-string v3, "Large"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1920
    const/4 v2, 0x4

    goto :goto_0

    .line 1921
    :cond_4
    const-string v3, "Huge"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1922
    const/4 v2, 0x5

    goto :goto_0

    .line 1924
    :cond_5
    const/4 v2, 0x3

    goto :goto_0
.end method

.method public static getServiceLoading(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 1947
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1948
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_service_loading_action"

    const-string v3, "Prompt"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1951
    .local v1, slAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoading(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getServiceLoading(Ljava/lang/String;)I
    .locals 3
    .parameter "slAction"

    .prologue
    .line 1955
    const-string v0, "Mms/MessagingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushMsg getServiceLoading slAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    const-string v0, "Always"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1958
    const/4 v0, 0x0

    .line 1962
    :goto_0
    return v0

    .line 1959
    :cond_0
    const-string v0, "Prompt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1960
    const/4 v0, 0x1

    goto :goto_0

    .line 1962
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getServiceLoadingActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "slAction"

    .prologue
    const/4 v1, 0x0

    .line 1966
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1973
    :cond_0
    :goto_0
    return-object v1

    .line 1969
    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoading(Ljava/lang/String;)I

    move-result v0

    .line 1970
    .local v0, index:I
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1973
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public static getSignatureEnabledValue(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "prefs"

    .prologue
    .line 1405
    const-string v0, "pref_key_enable_signature"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSpamFilterUnknown(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 2190
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2191
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_spam_filter_unknown_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getSpamOption(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 2146
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2147
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_spam_option_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getSystemFontSizeIndex(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 1664
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getTextFieldColor(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 1931
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1932
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_text_field_color"

    const-string v3, "Black"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1934
    .local v1, textFieldColor:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static getTextFieldColor(Ljava/lang/String;)I
    .locals 1
    .parameter "textFieldColor"

    .prologue
    .line 1938
    const-string v0, "white"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1939
    const/4 v0, 0x1

    .line 1941
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getURLlinkOption(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 2164
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2165
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_urllink_option_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private refreshSIMPreferences()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2067
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2069
    .local v0, airplane:I
    const-string v3, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2070
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v7, :cond_0

    if-ne v0, v5, :cond_6

    .line 2073
    :cond_0
    const-string v3, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2078
    :cond_1
    :goto_0
    const-string v3, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 2079
    .local v2, smsc:Landroid/preference/Preference;
    if-eqz v2, :cond_3

    .line 2080
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSC()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v7, :cond_2

    if-ne v0, v5, :cond_7

    .line 2083
    :cond_2
    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2109
    :cond_3
    :goto_1
    const-string v3, "pref_key_cb_settings"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 2110
    .local v1, cbOptions:Landroid/preference/PreferenceCategory;
    if-eqz v1, :cond_5

    .line 2111
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v7, :cond_b

    .line 2113
    :cond_4
    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 2118
    :cond_5
    :goto_2
    return-void

    .line 2074
    .end local v1           #cbOptions:Landroid/preference/PreferenceCategory;
    .end local v2           #smsc:Landroid/preference/Preference;
    :cond_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 2075
    const-string v3, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 2084
    .restart local v2       #smsc:Landroid/preference/Preference;
    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 2085
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSCEditable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2086
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2087
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 2088
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableSmscEditableOnlyFor()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2090
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->isNotKorUsim(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2091
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2092
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 2094
    :cond_9
    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2095
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2096
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isKTSIM()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2097
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2098
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 2104
    :cond_a
    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 2115
    .restart local v1       #cbOptions:Landroid/preference/PreferenceCategory;
    :cond_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v7, :cond_5

    .line 2116
    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_2
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0
    .parameter "pref"
    .parameter "removePref"

    .prologue
    .line 1066
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1067
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1069
    :cond_0
    return-void
.end method

.method private restoreDefaultPreferences()V
    .locals 3

    .prologue
    .line 1275
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1278
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->backupNetworkStatus(Landroid/content/SharedPreferences;)V

    .line 1280
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1281
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1285
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChameleon()Z

    move-result v1

    invoke-static {p0, v1}, Lcom/android/mms/csc/CscLoader;->update(Landroid/content/Context;Z)Z

    .line 1287
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->restoreNetworkStatus(Landroid/content/SharedPreferences;)V

    .line 1295
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1296
    invoke-static {p0}, Lcom/android/mms/spam/SpamFilter;->deleteAll(Landroid/content/Context;)I

    .line 1298
    :cond_0
    const v1, 0x7f060003

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1302
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1303
    const-string v1, "pref_key_storage_settings"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    const-string v2, "pref_key_truncate_long_messages"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 1306
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->deleteBubbleBackgroundStyle()V

    .line 1308
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsPreferences()V

    .line 1309
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsPreferences()V

    .line 1310
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setOthersPreferences()V

    .line 1311
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCMASPreferences()V

    .line 1313
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceSummary()V

    .line 1314
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "message.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1315
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->refreshSIMPreferences()V

    .line 1316
    return-void
.end method

.method private restoreNetworkStatus(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "sharedPref"

    .prologue
    .line 1259
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1262
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_manage_smsc_address"

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1263
    const-string v1, "pref_sim_ready_status"

    iget-boolean v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimStatus:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1267
    const-string v1, "pref_cb_my_channel_max_count"

    iget v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMaxChannelCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1268
    const-string v1, "pref_cb_my_channel_enabled_count"

    iget v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMyChannels:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1271
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1272
    return-void
.end method

.method public static setApnOnOff(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "value"

    .prologue
    .line 2036
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2038
    .local v1, mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2039
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_key_apn_onoff"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2040
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2041
    return-void
.end method

.method private setCMASPreferences()V
    .locals 5

    .prologue
    .line 1320
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1321
    .local v0, Prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1322
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "#cmas#type##extreme#enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1323
    const-string v3, "#cmas#type##severe#enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1324
    const-string v3, "#cmas#type##amber#enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1325
    const-string v3, "#cmas#type##exercise#enabled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1326
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    .end local v0           #Prefs:Landroid/content/SharedPreferences;
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 1327
    :catch_0
    move-exception v1

    .line 1328
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setCMASTestOnOff(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 2498
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2499
    .local v1, mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2500
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 2501
    const-string v2, "pref_key_cmas_test_onoff"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2505
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2506
    return-void

    .line 2503
    :cond_0
    const-string v2, "pref_key_cmas_test_onoff"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private setCallbackNumber(Ljava/lang/String;)V
    .locals 2
    .parameter "callbackNumber"

    .prologue
    .line 1364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1365
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1366
    .local v0, line1Number:Ljava/lang/String;
    if-nez v0, :cond_2

    const-string p1, ""

    .line 1369
    .end local v0           #line1Number:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1370
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1371
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCallbackNumberSummary(Ljava/lang/String;)V

    .line 1373
    :cond_1
    return-void

    .restart local v0       #line1Number:Ljava/lang/String;
    :cond_2
    move-object p1, v0

    .line 1366
    goto :goto_0
.end method

.method private setCallbackNumberSummary(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackNumber"

    .prologue
    .line 1376
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    if-nez v1, :cond_0

    .line 1388
    :goto_0
    return-void

    .line 1381
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1382
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1387
    .local v0, callbackSummary:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1384
    .end local v0           #callbackSummary:Ljava/lang/String;
    :cond_1
    move-object v0, p1

    .restart local v0       #callbackSummary:Ljava/lang/String;
    goto :goto_1
.end method

.method private setCmasReminderSummary(Landroid/content/SharedPreferences;)V
    .locals 9
    .parameter "sharedPrefs"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 2221
    const/4 v0, 0x0

    .line 2222
    .local v0, aInt:I
    const/4 v3, 0x0

    .line 2223
    .local v3, msg_reminder_alert_summary:Ljava/lang/String;
    const-string v5, "pref_key_emergency_alert_reminder"

    const-string v6, "0"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2224
    .local v4, value:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2225
    .local v2, msg_reminder_alert_name:[Ljava/lang/String;
    const-string v5, "pref_key_emergency_alert_reminder"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2226
    .local v1, alertReminderPreference:Landroid/preference/Preference;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2227
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2229
    if-nez v1, :cond_0

    .line 2243
    :goto_0
    return-void

    .line 2232
    :cond_0
    if-nez v0, :cond_2

    .line 2233
    const/4 v5, 0x3

    aget-object v3, v2, v5

    .line 2242
    :cond_1
    :goto_1
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2234
    :cond_2
    if-ne v0, v7, :cond_3

    .line 2235
    const/4 v5, 0x0

    aget-object v3, v2, v5

    goto :goto_1

    .line 2236
    :cond_3
    if-ne v0, v8, :cond_4

    .line 2237
    aget-object v3, v2, v7

    goto :goto_1

    .line 2238
    :cond_4
    const/16 v5, 0xf

    if-ne v0, v5, :cond_1

    .line 2239
    aget-object v3, v2, v8

    goto :goto_1
.end method

.method private setMessageRepetitionSummary(Landroid/content/SharedPreferences;)V
    .locals 9
    .parameter "sharedPrefs"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 2247
    const/4 v0, 0x0

    .line 2248
    .local v0, aInt:I
    const/4 v2, 0x0

    .line 2250
    .local v2, msg_reminder_alert_summary:Ljava/lang/String;
    const-string v5, "pref_key_msg_reminder_alert"

    const-string v6, "0"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2251
    .local v4, value:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2252
    .local v3, msg_repetition_alert_name:[Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2253
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2255
    if-ne v0, v7, :cond_2

    .line 2256
    const/4 v5, 0x0

    aget-object v2, v3, v5

    .line 2263
    :cond_0
    :goto_0
    const-string v5, "pref_key_msg_reminder_alert"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2264
    .local v1, alerRepetitionPreference:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 2265
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2266
    :cond_1
    return-void

    .line 2257
    .end local v1           #alerRepetitionPreference:Landroid/preference/Preference;
    :cond_2
    if-ne v0, v8, :cond_3

    .line 2258
    aget-object v2, v3, v7

    goto :goto_0

    .line 2259
    :cond_3
    const/16 v5, 0xa

    if-ne v0, v5, :cond_0

    .line 2260
    aget-object v2, v3, v8

    goto :goto_0
.end method

.method private setMmsDisplayLimit()V
    .locals 5

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0c0062

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1081
    :cond_0
    return-void
.end method

.method public static setMmsViewMode(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 2015
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2016
    .local v1, mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2017
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_0

    .line 2018
    const-string v2, "pref_view_mode"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2023
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2024
    return-void

    .line 2020
    :cond_0
    const-string v2, "pref_view_mode"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static setPDP_PARAM(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "value"

    .prologue
    .line 2395
    const-string v2, "Mms/MessagingPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set PDP_PARAM : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2398
    .local v1, mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2399
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_reset_pdp_param"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2400
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2401
    return-void
.end method

.method private setPreferenceSummary()V
    .locals 25

    .prologue
    .line 941
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 954
    .local v20, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_bubble_style"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 955
    .local v15, bubbleStylePreference:Landroid/preference/Preference;
    if-eqz v15, :cond_0

    .line 956
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleSentStyle(Landroid/content/Context;)I

    move-result v2

    add-int/lit8 v14, v2, 0x1

    .line 957
    .local v14, bubbleSentStyleIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v2

    add-int/lit8 v13, v2, 0x1

    .line 959
    .local v13, bubbleReceiveStyleIndex:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c0346

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f0c0346

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 961
    .local v16, bubbleTitle:Ljava/lang/String;
    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 965
    .end local v13           #bubbleReceiveStyleIndex:I
    .end local v14           #bubbleSentStyleIndex:I
    .end local v16           #bubbleTitle:Ljava/lang/String;
    :cond_0
    const-string v2, "pref_key_background_color"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 966
    .local v11, backgroundStylePreference:Landroid/preference/Preference;
    if-eqz v11, :cond_1

    .line 967
    const-string v2, "pref_key_background_color"

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 968
    .local v10, backgroundStyleId:I
    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 969
    const/4 v2, 0x1

    if-ne v10, v2, :cond_c

    .line 970
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c022a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 982
    .end local v10           #backgroundStyleId:I
    :cond_1
    :goto_0
    const-string v2, "pref_key_ringtone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 983
    .local v19, ringtonePreference:Landroid/preference/Preference;
    if-eqz v19, :cond_4

    .line 984
    const-string v2, "pref_key_ringtone"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 985
    .local v18, ringtoneIndex:Ljava/lang/String;
    if-eqz v18, :cond_e

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 986
    .local v3, ringtoneUri:Landroid/net/Uri;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x104064d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 989
    .local v24, summary:Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 990
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x104064f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1023
    :cond_3
    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1027
    .end local v3           #ringtoneUri:Landroid/net/Uri;
    .end local v18           #ringtoneIndex:Ljava/lang/String;
    .end local v24           #summary:Ljava/lang/CharSequence;
    :cond_4
    const-string v2, "pref_key_signature_text"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    .line 1028
    .local v22, signatureTextPreference:Landroid/preference/Preference;
    if-eqz v22, :cond_5

    .line 1029
    const-string v2, "pref_key_signature_text"

    const-string v4, ""

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1030
    .local v21, signatureSummary:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1033
    .end local v21           #signatureSummary:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1034
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCmasReminderSummary(Landroid/content/SharedPreferences;)V

    .line 1037
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageReminderAlert()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1038
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMessageRepetitionSummary(Landroid/content/SharedPreferences;)V

    .line 1041
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    .line 1042
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1043
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    .line 1045
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmscSummary(Landroid/content/SharedPreferences;)V

    .line 1047
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setServiceLoadingSummary(Landroid/content/SharedPreferences;)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_9

    .line 1050
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCallbackNumber(Ljava/lang/String;)V

    .line 1053
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->allowReplyAll()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1054
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1057
    :cond_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_b

    .line 1059
    const-string v2, "pref_key_cb_settings_activation"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1060
    const-string v2, "pref_key_channel_configuration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 1061
    const-string v2, "pref_key_channel_configuration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1063
    :cond_b
    return-void

    .line 972
    .end local v19           #ringtonePreference:Landroid/preference/Preference;
    .end local v22           #signatureTextPreference:Landroid/preference/Preference;
    .restart local v10       #backgroundStyleId:I
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c0229

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 973
    .local v12, backgroundTitle:Ljava/lang/String;
    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 976
    .end local v12           #backgroundTitle:Ljava/lang/String;
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c0229

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 977
    .restart local v12       #backgroundTitle:Ljava/lang/String;
    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 985
    .end local v10           #backgroundStyleId:I
    .end local v12           #backgroundTitle:Ljava/lang/String;
    .restart local v18       #ringtoneIndex:Ljava/lang/String;
    .restart local v19       #ringtonePreference:Landroid/preference/Preference;
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 995
    .restart local v3       #ringtoneUri:Landroid/net/Uri;
    .restart local v24       #summary:Ljava/lang/CharSequence;
    :cond_f
    :try_start_0
    invoke-virtual {v3}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "content://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 996
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1012
    .local v17, cursor:Landroid/database/Cursor;
    :goto_3
    if-eqz v17, :cond_3

    .line 1013
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1014
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1016
    :cond_10
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1018
    .end local v17           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v23

    .line 1020
    .local v23, sqle:Landroid/database/sqlite/SQLiteException;
    const-string v2, "Mms/MessagingPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when query ringtone title"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1004
    .end local v23           #sqle:Landroid/database/sqlite/SQLiteException;
    :cond_11
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "title"

    aput-object v7, v6, v2

    const-string v7, "_data=?"

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v18, v8, v2

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    .restart local v17       #cursor:Landroid/database/Cursor;
    goto :goto_3
.end method

.method private setServiceLoadingSummary(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "sharedPrefs"

    .prologue
    .line 1351
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableServiceLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1352
    const-string v2, "pref_key_service_loading_action"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1353
    .local v0, serviceLoadingPreference:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1354
    const-string v2, "pref_key_service_loading_action"

    const-string v3, "Prompt"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1357
    .local v1, slAction:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoadingActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1360
    .end local v0           #serviceLoadingPreference:Landroid/preference/Preference;
    .end local v1           #slAction:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setSmsDisplayLimit()V
    .locals 5

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0c0062

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1075
    :cond_0
    return-void
.end method

.method private setSmscSummary(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "sharedPrefs"

    .prologue
    .line 1333
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1334
    const-string v2, "pref_key_manage_smsc_address"

    const-string v3, ""

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1335
    .local v1, summary_smsc:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1336
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #summary_smsc:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1338
    .restart local v1       #summary_smsc:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_1

    .line 1339
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1341
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const-string v3, "pref_key_manage_smsc_address"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 1343
    .local v0, smscPrefs:Landroid/preference/EditTextPreference;
    if-eqz v0, :cond_2

    .line 1344
    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1347
    .end local v0           #smscPrefs:Landroid/preference/EditTextPreference;
    .end local v1           #summary_smsc:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private setVibrateMenu()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2291
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2292
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v2, "pref_key_ringtone"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2294
    .local v1, ringtonePreference:Landroid/preference/Preference;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-nez v2, :cond_3

    .line 2295
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationVibrate()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 2296
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2299
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 2300
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 2301
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2304
    :cond_1
    if-eqz v1, :cond_2

    .line 2305
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2316
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateNotificationAlert()V

    .line 2317
    return-void

    .line 2307
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationVibrate()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 2308
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2310
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    .line 2311
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2313
    :cond_5
    if-eqz v1, :cond_2

    .line 2314
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showCMASExplainDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2210
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2211
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c03f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2212
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2213
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2214
    const v1, 0x7f0c004f

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2215
    const v1, 0x7f0c03f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2216
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2217
    return-void
.end method

.method private showCMASPreviewDialog()V
    .locals 1

    .prologue
    .line 2204
    new-instance v0, Lcom/android/mms/ui/CMASPreviewDialog;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CMASPreviewDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    .line 2205
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASPreviewDialog;->show()V

    .line 2206
    return-void
.end method

.method private showMmsLimitMessagePickerDialog()V
    .locals 9

    .prologue
    .line 1466
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->clearPickerDialog()V

    .line 1467
    new-instance v0, Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const/4 v6, -0x1

    const v1, 0x7f0c0069

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    .line 1471
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagePickerDialog;->show()V

    .line 1472
    return-void
.end method

.method private showSmsLimitMessagePickerDialog()V
    .locals 9

    .prologue
    .line 1475
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->clearPickerDialog()V

    .line 1476
    new-instance v0, Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const/4 v6, -0x1

    const v1, 0x7f0c0068

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    .line 1480
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagePickerDialog;->show()V

    .line 1481
    return-void
.end method

.method private startMmsDownload()V
    .locals 4

    .prologue
    .line 1226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ENABLE_AUTO_RETRIEVE"

    const/4 v2, 0x0

    const-class v3, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1228
    return-void
.end method

.method private updateDeletePreference()V
    .locals 5

    .prologue
    .line 1231
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const-string v4, "pref_key_auto_delete"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 1232
    .local v0, autoDelete:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const-string v4, "pref_key_sms_delete_limit"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1233
    .local v2, smsDelete:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const-string v4, "pref_key_mms_delete_limit"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1235
    .local v1, mmsDelete:Landroid/preference/Preference;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1236
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 1237
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 1239
    :cond_0
    return-void
.end method

.method public static useSplitView(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 1649
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1650
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1651
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_split_view"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1653
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 0
    .parameter "preferencesResId"

    .prologue
    .line 2368
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 2369
    return-void
.end method

.method public changeURLlinkOption(Landroid/content/Context;Z)Z
    .locals 5
    .parameter "context"
    .parameter "spamStatus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2170
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2171
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2173
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_key_urllink_option_enable"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2174
    const-string v2, "pref_key_urllink_option_enable"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2175
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2176
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mURLlinkPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 2177
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mURLlinkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2186
    :cond_0
    :goto_0
    return v4

    .line 2180
    :cond_1
    const-string v2, "pref_key_urllink_option_enable"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2182
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mURLlinkPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 2183
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mURLlinkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public deleteBubbleBackgroundStyle()V
    .locals 5

    .prologue
    .line 2385
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.mms/"

    const-string v4, "message_background_image.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 2387
    .local v1, mImageOutputUri:Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2388
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2389
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2391
    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 1
    .parameter "key"

    .prologue
    .line 2353
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 2358
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 2363
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 481
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 482
    const v2, 0x7f060003

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 486
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v2

    if-nez v2, :cond_0

    .line 487
    const-string v2, "pref_key_storage_settings"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    const-string v3, "pref_key_truncate_long_messages"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 492
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 493
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    .line 496
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessageBubbleStyleName:[Ljava/lang/String;

    .line 498
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsPreferences()V

    .line 499
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsPreferences()V

    .line 500
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setOthersPreferences()V

    .line 502
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->simStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 503
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 504
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 507
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 508
    .local v1, sdCardIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 510
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 514
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 1423
    packed-switch p1, :pswitch_data_0

    .line 1440
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1425
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00db

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00dc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceActivity$8;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$8;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1423
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1084
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1085
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1086
    const v0, 0x7f0c0055

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200c0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1088
    return v2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 585
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->simStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 586
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 587
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 588
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 590
    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    .line 593
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagePickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagePickerDialog;->dismiss()V

    .line 595
    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    .line 598
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 599
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2321
    packed-switch p1, :pswitch_data_0

    .line 2327
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2324
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setVibrateMenu()V

    .line 2325
    const/4 v0, 0x0

    goto :goto_0

    .line 2321
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1093
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1108
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1095
    :sswitch_0
    new-instance v1, Lcom/android/mms/ui/MessagingPreferenceActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$3;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1105
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->finish()V

    goto :goto_0

    .line 1093
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 560
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 562
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASPreviewDialog;->dismiss()V

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 566
    .local v0, pref:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    .line 567
    const-string v1, "Mms/MessagingPreferenceActivity"

    const-string v2, "onPause - pref is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :goto_0
    return-void

    .line 569
    :cond_1
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 1584
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    if-ne v1, p1, :cond_1

    move-object v0, p2

    .line 1585
    check-cast v0, Ljava/lang/String;

    .line 1587
    .local v0, callbackNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1588
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCallbackNumber(Ljava/lang/String;)V

    .line 1590
    :cond_0
    const/4 v1, 0x0

    .line 1593
    .end local v0           #callbackNumber:Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 1128
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v8, :cond_1

    .line 1129
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showSmsLimitMessagePickerDialog()V

    .line 1219
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v8

    return v8

    .line 1130
    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v8, :cond_2

    .line 1131
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showMmsLimitMessagePickerDialog()V

    goto :goto_0

    .line 1132
    :cond_2
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    if-ne p2, v8, :cond_3

    .line 1133
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1135
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "pref_key_cmas"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_4

    .line 1136
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/ui/CMASPreferenceActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1137
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "pref_key_emergency_alert"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_5

    .line 1139
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showCMASPreviewDialog()V

    goto :goto_0

    .line 1142
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "pref_key_explain_emergency_alert"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_6

    .line 1143
    const-string v8, "Mms/MessagingPreferenceActivity"

    const-string v9, "onPreferenceTreeClick key : pref_key_explain_emergency_alert"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    new-instance v8, Lcom/android/mms/ui/MessagingPreferenceActivity$4;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$4;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-direct {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showCMASExplainDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1150
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "pref_cmas_receive_class1"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_7

    .line 1151
    const-string v8, "Mms/MessagingPreferenceActivity"

    const-string v9, "onPreferenceTreeClick key : pref_cmas_receive_class1"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1155
    .local v6, sharedpref:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1156
    .end local v6           #sharedpref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 1157
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "Mms/MessagingPreferenceActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in setCMAS config "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1161
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    const-string v8, "pref_key_font_size_by_volume_key_enable"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_8

    .line 1162
    invoke-virtual {p2}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1163
    .local v1, editPrefs:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_0

    .line 1164
    const-string v8, "pref_key_font_size_by_volume_key_font_size"

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1165
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1169
    .end local v1           #editPrefs:Landroid/content/SharedPreferences$Editor;
    :cond_8
    const-string v8, "pref_key_manage_SD_messages"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_a

    .line 1170
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1171
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/ui/ManageSDMessages;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1173
    :cond_9
    new-instance v8, Lcom/android/mms/ui/MessagingPreferenceActivity$5;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$5;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-direct {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->confirmSDcardDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 1181
    :cond_a
    const-string v8, "pref_key_spam_num_add"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_b

    .line 1182
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1183
    :cond_b
    const-string v8, "pref_key_spam_text_add"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_c

    .line 1184
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1188
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "pref_key_mms_allow_reply_all"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_f

    .line 1189
    const-string v8, "pref_key_mms_allow_reply_all"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1190
    .local v3, replyAll:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1191
    .local v2, prefEditor:Landroid/content/SharedPreferences$Editor;
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1192
    const-string v8, "REPLY"

    const/4 v9, 0x1

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1196
    :cond_d
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1193
    :cond_e
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-nez v8, :cond_d

    .line 1194
    const-string v8, "REPLY"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 1199
    .end local v2           #prefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #replyAll:Landroid/content/SharedPreferences;
    :cond_f
    const-string v8, "pref_key_sms_reassembly"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_10

    .line 1200
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v7

    .line 1201
    .local v7, smsManager:Landroid/telephony/SmsManager;
    const-class v8, Landroid/telephony/SmsManager;

    const-string v9, "setCDMASmsReassembly"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1202
    .local v5, setCDMASmsReassembly:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_0

    .line 1203
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1204
    .restart local v6       #sharedpref:Landroid/content/SharedPreferences;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "pref_key_sms_reassembly"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v5, v8}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1207
    .end local v5           #setCDMASmsReassembly:Ljava/lang/reflect/Method;
    .end local v6           #sharedpref:Landroid/content/SharedPreferences;
    .end local v7           #smsManager:Landroid/telephony/SmsManager;
    :cond_10
    const-string v8, "pref_key_enable_notifications"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_11

    .line 1208
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateNotificationAlert()V

    goto/16 :goto_0

    .line 1209
    :cond_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "pref_key_sms_restore"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_12

    .line 1210
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1211
    .local v4, restoreIntent:Landroid/content/Intent;
    const-string v8, "mode"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1212
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1213
    .end local v4           #restoreIntent:Landroid/content/Intent;
    :cond_12
    const-string v8, "pref_key_mms_auto_retrieval"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_0

    .line 1214
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 519
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 521
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessagingPreferenceActivity.onResume : android.util.GateConfig.isGateEnabled() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 525
    .local v1, pref:Landroid/content/SharedPreferences;
    if-nez v1, :cond_2

    .line 526
    const-string v2, "Mms/MessagingPreferenceActivity"

    const-string v3, "onResume - pref is null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSizeByVolumeKey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 533
    const-string v2, "pref_key_font_size_by_volume_key_enable"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 534
    .local v0, fontSizeVolumn:Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/mms/util/PackageInfo;->isTalkBackAvailable(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->misTalkbackOn:Z

    .line 536
    iget-boolean v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->misTalkbackOn:Z

    if-eqz v2, :cond_3

    .line 537
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 541
    .end local v0           #fontSizeVolumn:Landroid/preference/Preference;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setVibrateMenu()V

    .line 542
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceSummary()V

    .line 543
    return-void

    .line 528
    :cond_2
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0

    .line 539
    .restart local v0       #fontSizeVolumn:Landroid/preference/Preference;
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "sharedPrefs"
    .parameter "key"

    .prologue
    .line 1544
    const-string v1, "Mms/MessagingPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSharedPreferenceChanged key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    const-string v1, "pref_key_cb_settings_activation"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1548
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCDMACMASEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1551
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 1580
    :cond_1
    :goto_0
    return-void

    .line 1554
    :cond_2
    const-string v1, "pref_key_mms_delivery_reports"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1556
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1557
    const-string v1, "pref_key_mms_delivery_reports"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1558
    .local v0, dr:Z
    if-eqz v0, :cond_3

    .line 1559
    const-string v1, "GATE"

    const-string v2, "<GATE-M>DELIVERY_REPORT_OFF</GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1561
    :cond_3
    const-string v1, "GATE"

    const-string v2, "<GATE-M>DELIVERY_REPORT_ON</GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1565
    .end local v0           #dr:Z
    :cond_4
    const-string v1, "pref_key_service_loading_action"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1566
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setServiceLoadingSummary(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1567
    :cond_5
    const-string v1, "pref_key_emergency_alert_reminder"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1568
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1569
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCmasReminderSummary(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1571
    :cond_6
    const-string v1, "pref_key_msg_reminder_alert"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1572
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageReminderAlert()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1573
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMessageRepetitionSummary(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1575
    :cond_7
    const-string v1, "pref_key_mms_creation_mode"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1577
    const-string v1, "pref_key_mms_creation_mode"

    const-string v2, "free"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/MmsConfig;->setMaxMessageSize(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 576
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 578
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 579
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 9
    .parameter "hasFocus"

    .prologue
    .line 603
    invoke-static {}, Lcom/android/mms/MmsConfig;->isUnknownURLlink()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 605
    .local v1, intent:Landroid/content/Intent;
    const-string v8, "URLinkCall"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 606
    .local v6, sURLink:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v8, "URL_LINK_SETTING"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 607
    const-string v8, "pref_key_urllink_settings"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 608
    .local v4, preference:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 609
    .local v5, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 610
    .local v3, listAdapter:Landroid/widget/ListAdapter;
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 611
    .local v2, itemsCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 612
    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 613
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    .line 614
    .local v7, settingsView:Landroid/widget/ListView;
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 615
    const-string v8, "URLinkCall"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 621
    .end local v0           #i:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #itemsCount:I
    .end local v3           #listAdapter:Landroid/widget/ListAdapter;
    .end local v4           #preference:Landroid/preference/Preference;
    .end local v5           #preferenceScreen:Landroid/preference/PreferenceScreen;
    .end local v6           #sURLink:Ljava/lang/String;
    .end local v7           #settingsView:Landroid/widget/ListView;
    :cond_0
    return-void

    .line 611
    .restart local v0       #i:I
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #itemsCount:I
    .restart local v3       #listAdapter:Landroid/widget/ListAdapter;
    .restart local v4       #preference:Landroid/preference/Preference;
    .restart local v5       #preferenceScreen:Landroid/preference/PreferenceScreen;
    .restart local v6       #sURLink:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected setMmsPreferences()V
    .locals 3

    .prologue
    .line 702
    const-string v1, "pref_key_mms_auto_retrieval"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

    .line 703
    const-string v1, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    .line 704
    const-string v1, "pref_key_send_mms_delivery_reports"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsSendDeliveryReportPref:Landroid/preference/Preference;

    .line 705
    const-string v1, "pref_key_mms_read_reports"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    .line 706
    const-string v1, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    .line 707
    const-string v1, "pref_key_mms_expiry_time"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryTimePref:Landroid/preference/Preference;

    .line 708
    const-string v1, "pref_key_mmspriority"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPriorityPref:Landroid/preference/Preference;

    .line 709
    const-string v1, "pref_key_mms_delivery_time"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryTimePref:Landroid/preference/Preference;

    .line 710
    const-string v1, "pref_mmsc_url"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsMMSCUrlPref:Landroid/preference/Preference;

    .line 711
    const-string v1, "pref_mmsc_port"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsMMSCPortPref:Landroid/preference/Preference;

    .line 713
    const-string v1, "pref_key_mms_settings"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 715
    .local v0, MmsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "pref_key_mms_settings"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 718
    const-string v1, "pref_key_storage_settings"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 784
    :goto_0
    return-void

    .line 721
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    :cond_1
    const-string v1, "pref_key_mms_group_mms"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 725
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 726
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 729
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 730
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 734
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSSendDeliveryReportsEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    .line 735
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsSendDeliveryReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 741
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 742
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 745
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 746
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 749
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRetrievalDuringRoaming()Z

    move-result v1

    if-nez v1, :cond_7

    .line 750
    const-string v1, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 753
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsCreationMode()Z

    move-result v1

    if-nez v1, :cond_8

    .line 754
    const-string v1, "pref_key_mms_creation_mode"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 757
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsExpiryDate()Z

    move-result v1

    if-nez v1, :cond_9

    .line 758
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryTimePref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 761
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsPriority()Z

    move-result v1

    if-nez v1, :cond_a

    .line 762
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPriorityPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 765
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDeliveryTime()Z

    move-result v1

    if-nez v1, :cond_b

    .line 766
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryTimePref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 769
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuMmsServerAddr()Z

    move-result v1

    if-nez v1, :cond_c

    .line 770
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsMMSCUrlPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 771
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsMMSCPortPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 775
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v1

    if-nez v1, :cond_d

    .line 776
    const-string v1, "pref_key_mms_allow_reply_all"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 779
    :cond_d
    const-string v1, "pref_key_mms_allow_reply_all"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    .line 782
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    goto/16 :goto_0

    .line 737
    :cond_e
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    const v2, 0x7f0c0267

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method protected setOthersPreferences()V
    .locals 15

    .prologue
    const/4 v14, 0x6

    const/4 v13, 0x1

    const/4 v12, 0x5

    .line 787
    const-string v10, "pref_key_vibrateWhen_checkbox"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    .line 788
    const-string v10, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    .line 789
    const-string v10, "pref_key_urllink_option_enable"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mURLlinkPref:Landroid/preference/CheckBoxPreference;

    .line 790
    const-string v10, "pref_key_callback_text"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    .line 791
    const-string v10, "pref_key_spam_option"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSpamOption:Landroid/preference/ListPreference;

    .line 792
    const-string v10, "pref_key_sms_restore"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRestoreSDPref:Landroid/preference/Preference;

    .line 794
    const-string v10, "pref_key_display_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 795
    .local v5, displayCategory:Landroid/preference/PreferenceCategory;
    const-string v10, "pref_key_insert_sender_info_when_fwd_msg_category"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 797
    .local v0, InsertSenderInfoWhenFwdMsgCategory:Landroid/preference/PreferenceCategory;
    const-string v10, "pref_key_font_size"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/FontSizePreference;

    .line 800
    .local v6, fontSizePreference:Lcom/android/mms/ui/FontSizePreference;
    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 802
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSizeByVolumeKey()Z

    move-result v10

    if-nez v10, :cond_12

    .line 803
    const-string v10, "pref_key_font_size_by_volume_key_enable"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v5, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 817
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v10

    if-nez v10, :cond_1

    .line 818
    const-string v10, "pref_key_split_view"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v5, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 820
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableWapPush()Z

    move-result v10

    if-nez v10, :cond_13

    .line 821
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_key_push_message_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 829
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuInsertSenderInfoWhenFwdMsg()Z

    move-result v10

    if-nez v10, :cond_3

    .line 830
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-direct {p0, v10, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 833
    :cond_3
    const-string v10, "pref_key_cb_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 834
    .local v3, cbCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBMessage()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    if-eq v10, v12, :cond_14

    .line 838
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-direct {p0, v10, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 843
    :cond_5
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    if-ne v10, v12, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    if-ne v10, v14, :cond_6

    .line 845
    const-string v10, "pref_key_cb_settings_activation"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 846
    const-string v10, "pref_key_channel_configuration"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 847
    const-string v10, "pref_key_channel_configuration"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 850
    :cond_6
    const-string v10, "pref_notification_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 851
    .local v2, NotiCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationBacklight()Z

    move-result v10

    if-nez v10, :cond_7

    .line 852
    const-string v10, "pref_key_backlight"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v2, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 854
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    if-eq v10, v14, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_15

    .line 855
    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_cmas_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 887
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isUnknownURLlink()Z

    move-result v10

    if-nez v10, :cond_9

    .line 888
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_key_urllink_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 891
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationVibrate()Z

    move-result v10

    if-nez v10, :cond_a

    .line 892
    iget-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v2, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 894
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageReminderAlert()Z

    move-result v10

    if-nez v10, :cond_b

    .line 895
    const-string v10, "pref_key_msg_reminder_alert"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v2, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 898
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v10

    if-nez v10, :cond_c

    .line 899
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_signature_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 902
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v10

    if-nez v10, :cond_1a

    .line 903
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    .line 904
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_callback_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 909
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTexttemplatTMOMenu()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 910
    const-string v10, "pref_key_storage_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    const-string v11, "pref_key_text_templates"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 912
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v10

    if-nez v10, :cond_e

    .line 913
    const-string v10, "pref_key_storage_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    const-string v11, "pref_key_sms_restore"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 915
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v10

    if-nez v10, :cond_1b

    .line 916
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_key_spam_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 927
    :cond_f
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableConvertingEffectBetweenSMSMMS()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 928
    const-string v10, "pref_key_mms_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 929
    .local v1, MmsCategory:Landroid/preference/PreferenceCategory;
    const-string v10, "pref_key_mms_change_over_alarm"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v1, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 932
    .end local v1           #MmsCategory:Landroid/preference/PreferenceCategory;
    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v10

    if-nez v10, :cond_11

    .line 933
    const-string v10, "pref_key_storage_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRestoreSDPref:Landroid/preference/Preference;

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 936
    :cond_11
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setVibrateMenu()V

    .line 938
    return-void

    .line 805
    .end local v2           #NotiCategory:Landroid/preference/PreferenceCategory;
    .end local v3           #cbCategory:Landroid/preference/PreferenceCategory;
    :cond_12
    const-string v10, "EK-GC100"

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 806
    const-string v10, "pref_key_font_size_by_volume_key_enable"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 807
    .local v7, fontSizeVolumn:Landroid/preference/Preference;
    if-eqz v7, :cond_0

    .line 808
    const v10, 0x7f0c0277

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 809
    const v10, 0x7f0c0276

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 823
    .end local v7           #fontSizeVolumn:Landroid/preference/Preference;
    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableServiceLoading()Z

    move-result v10

    if-nez v10, :cond_2

    .line 824
    const-string v10, "pref_key_push_message_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    .line 825
    .local v9, wapPushCategory:Landroid/preference/PreferenceCategory;
    const-string v10, "pref_key_service_loading_action"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_1

    .line 840
    .end local v9           #wapPushCategory:Landroid/preference/PreferenceCategory;
    .restart local v3       #cbCategory:Landroid/preference/PreferenceCategory;
    :cond_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBChannel()Z

    move-result v10

    if-nez v10, :cond_5

    .line 841
    const-string v10, "pref_key_channel_configuration"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v3, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_2

    .line 857
    .restart local v2       #NotiCategory:Landroid/preference/PreferenceCategory;
    :cond_15
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_16

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    if-ne v10, v13, :cond_17

    .line 859
    :cond_16
    const-string v10, "pref_cmas_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 860
    .local v4, cmasCategory:Landroid/preference/PreferenceCategory;
    const-string v10, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v4, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 862
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 863
    const-string v10, "pref_key_emergency_alert_reminder"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v4, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 867
    .end local v4           #cmasCategory:Landroid/preference/PreferenceCategory;
    :cond_17
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    if-eq v10, v12, :cond_18

    .line 868
    const-string v10, "pref_cmas_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 869
    .restart local v4       #cmasCategory:Landroid/preference/PreferenceCategory;
    const-string v10, "pref_key_cmas_audioWhen_checkbox"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v4, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 872
    .end local v4           #cmasCategory:Landroid/preference/PreferenceCategory;
    :cond_18
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 873
    const-string v10, "pref_cmas_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 874
    .restart local v4       #cmasCategory:Landroid/preference/PreferenceCategory;
    const-string v10, "pref_key_cmas"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v4, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 875
    const-string v10, "pref_key_emergency_alert"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const-string v11, "pref_cmas_receive_class1"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 876
    const-string v10, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const-string v11, "pref_cmas_receive_class1"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 877
    const-string v10, "pref_key_emergency_alert_reminder"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const-string v11, "pref_cmas_receive_class1"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 879
    .end local v4           #cmasCategory:Landroid/preference/PreferenceCategory;
    :cond_19
    const-string v10, "pref_cmas_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 880
    .restart local v4       #cmasCategory:Landroid/preference/PreferenceCategory;
    const-string v10, "pref_cmas_receive_class1"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v4, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 881
    const-string v10, "pref_key_explain_emergency_alert"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v4, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_3

    .line 906
    .end local v4           #cmasCategory:Landroid/preference/PreferenceCategory;
    :cond_1a
    iget-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_4

    .line 918
    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 919
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 920
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_key_spam_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_5

    .line 922
    :cond_1c
    const-string v10, "pref_key_spam_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    .line 923
    .local v8, spamCategory:Landroid/preference/PreferenceCategory;
    iget-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSpamOption:Landroid/preference/ListPreference;

    invoke-direct {p0, v8, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_5
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "preferenceScreen"

    .prologue
    .line 2373
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 2374
    return-void
.end method

.method protected setSmsPreferences()V
    .locals 9

    .prologue
    const/16 v8, 0x14

    const/4 v5, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 624
    const-string v4, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    .line 625
    const-string v4, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    .line 626
    const-string v4, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    .line 627
    const-string v4, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    .line 629
    const-string v4, "pref_key_manage_SD_messages"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSDPref:Landroid/preference/Preference;

    .line 632
    const-string v4, "pref_key_sms_settings"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 634
    .local v2, smsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSMSDeliveryReportsEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 635
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 637
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableManageSimMessages()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-eq v4, v5, :cond_2

    .line 639
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 642
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveVMessage()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isExternalSdCardMounted()Z

    move-result v4

    if-nez v4, :cond_4

    .line 643
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSDPref:Landroid/preference/Preference;

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 646
    :cond_4
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    .line 648
    .local v3, smsManager:Landroid/telephony/SmsManager;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSC()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-eq v4, v5, :cond_b

    .line 650
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 680
    :cond_6
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsInputMode()Z

    move-result v4

    if-nez v4, :cond_7

    .line 682
    const-string v4, "pref_key_sms_input_mode"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 684
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsExpiryDate()Z

    move-result v4

    if-nez v4, :cond_e

    .line 685
    const-string v4, "pref_key_sms_expiry"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 691
    :cond_8
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSegmentedSms()Z

    move-result v4

    if-nez v4, :cond_9

    .line 692
    const-string v4, "pref_key_sms_reassembly"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 694
    :cond_9
    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-nez v4, :cond_a

    .line 695
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 696
    const-string v4, "Mms/MessagingPreferenceActivity"

    const-string v5, "Removed sms categroy because it has 0 items."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :cond_a
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    .line 699
    return-void

    .line 651
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSP()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Landroid/telephony/SmsManager;->getSMSPAvailable()Z

    move-result v4

    if-nez v4, :cond_c

    .line 652
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto :goto_0

    .line 655
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableSmscEditableOnlyFor()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 656
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/TelephonyUtils;->isNotKorUsim(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 658
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v6}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 659
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 660
    .local v0, edittextSmsc:Landroid/widget/EditText;
    new-array v1, v6, [Landroid/text/InputFilter;

    new-instance v4, Lcom/android/mms/ui/MessagingPreferenceActivity$SMSCLengthFilter;

    invoke-direct {v4, p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity$SMSCLengthFilter;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;I)V

    aput-object v4, v1, v7

    .line 663
    .local v1, recipientFilter:[Landroid/text/InputFilter;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_0

    .line 666
    .end local v0           #edittextSmsc:Landroid/widget/EditText;
    .end local v1           #recipientFilter:[Landroid/text/InputFilter;
    :cond_d
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 667
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 668
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isKTSIM()Z

    move-result v4

    if-nez v4, :cond_6

    .line 669
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v6}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 670
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 671
    .restart local v0       #edittextSmsc:Landroid/widget/EditText;
    new-array v1, v6, [Landroid/text/InputFilter;

    new-instance v4, Lcom/android/mms/ui/MessagingPreferenceActivity$SMSCLengthFilter;

    invoke-direct {v4, p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity$SMSCLengthFilter;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;I)V

    aput-object v4, v1, v7

    .line 674
    .restart local v1       #recipientFilter:[Landroid/text/InputFilter;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_0

    .line 686
    .end local v0           #edittextSmsc:Landroid/widget/EditText;
    .end local v1           #recipientFilter:[Landroid/text/InputFilter;
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSP()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "gsm.sim.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "44010"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 687
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 688
    const-string v4, "pref_key_sms_expiry"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_1
.end method

.method updateNotificationAlert()V
    .locals 6

    .prologue
    .line 2331
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2333
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    .line 2345
    :cond_0
    :goto_0
    return-void

    .line 2336
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    const-string v5, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 2337
    .local v2, cmasVib:Landroid/preference/Preference;
    const-string v4, "pref_key_emergency_alert_reminder"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2339
    .local v0, alertReminderPreference:Landroid/preference/Preference;
    const-string v4, "pref_key_enable_notifications"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 2341
    .local v3, notiEnable:Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eqz v4, :cond_0

    .line 2342
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2343
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
