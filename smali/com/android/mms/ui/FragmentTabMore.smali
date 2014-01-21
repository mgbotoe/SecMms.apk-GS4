.class public Lcom/android/mms/ui/FragmentTabMore;
.super Landroid/preference/PreferenceFragment;
.source "FragmentTabMore.java"


# static fields
.field static final CALLBACK_CATAGORY:Ljava/lang/String; = "pref_callback_settings"

.field private static final CALLBACK_NUMBER:Ljava/lang/String; = "pref_key_callback_text"

.field public static final DEFAULT_ALLOW_REPLY_ALL:Z = true

.field private static final MENU_RESTORE_DEFAULTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/MessagingPreferenceTabActivity"


# instance fields
.field public airplaneReceiver:Landroid/content/BroadcastReceiver;

.field private cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

.field private mActivity:Landroid/app/Activity;

.field private mCallbackNumberPref:Landroid/preference/EditTextPreference;

.field private mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

.field private mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceLoadingActionName:[Ljava/lang/String;

.field private mSpamOption:Landroid/preference/ListPreference;

.field private mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

.field private mmCallbackNumberListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field public simStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    .line 53
    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mServiceLoadingActionName:[Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/android/mms/ui/FragmentTabMore$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FragmentTabMore$1;-><init>(Lcom/android/mms/ui/FragmentTabMore;)V

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    new-instance v0, Lcom/android/mms/ui/FragmentTabMore$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FragmentTabMore$2;-><init>(Lcom/android/mms/ui/FragmentTabMore;)V

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 287
    new-instance v0, Lcom/android/mms/ui/FragmentTabMore$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FragmentTabMore$3;-><init>(Lcom/android/mms/ui/FragmentTabMore;)V

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mmCallbackNumberListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 667
    new-instance v0, Lcom/android/mms/ui/FragmentTabMore$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FragmentTabMore$5;-><init>(Lcom/android/mms/ui/FragmentTabMore;)V

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->simStateReceiver:Landroid/content/BroadcastReceiver;

    .line 678
    new-instance v0, Lcom/android/mms/ui/FragmentTabMore$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FragmentTabMore$6;-><init>(Lcom/android/mms/ui/FragmentTabMore;)V

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/FragmentTabMore;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/FragmentTabMore;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FragmentTabMore;->setServiceLoadingSummary(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/FragmentTabMore;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FragmentTabMore;->setCmasReminderSummary(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/FragmentTabMore;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FragmentTabMore;->setMessageRepetitionSummary(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/FragmentTabMore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FragmentTabMore;->setCallbackNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/FragmentTabMore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/mms/ui/FragmentTabMore;->refreshCBPreferences()V

    return-void
.end method

.method public static changeSpamOption(Landroid/content/Context;Z)Z
    .locals 5
    .parameter "context"
    .parameter "spamStatus"

    .prologue
    const/4 v3, 0x1

    .line 635
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 636
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 638
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_key_spam_option_enable"

    if-nez p1, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 639
    const-string v2, "pref_key_spam_option_enable"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 640
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 643
    :cond_0
    return v3

    .line 638
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getCallbackNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3
    .parameter "pref"

    .prologue
    .line 535
    const-string v1, "pref_key_callback_text"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, callbackNumber:Ljava/lang/String;
    return-object v0
.end method

.method public static getServiceLoading(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 490
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 491
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_service_loading_action"

    const-string v3, "Prompt"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, slAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/FragmentTabMore;->getServiceLoading(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getServiceLoading(Ljava/lang/String;)I
    .locals 3
    .parameter "slAction"

    .prologue
    .line 498
    const-string v0, "Mms/MessagingPreferenceTabActivity"

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

    .line 500
    const-string v0, "Always"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    const/4 v0, 0x0

    .line 505
    :goto_0
    return v0

    .line 502
    :cond_0
    const-string v0, "Prompt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    const/4 v0, 0x1

    goto :goto_0

    .line 505
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getServiceLoadingActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "slAction"

    .prologue
    const/4 v1, 0x0

    .line 523
    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabMore;->mServiceLoadingActionName:[Ljava/lang/String;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-object v1

    .line 526
    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoading(Ljava/lang/String;)I

    move-result v0

    .line 527
    .local v0, index:I
    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabMore;->mServiceLoadingActionName:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabMore;->mServiceLoadingActionName:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public static getSpamOption(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 630
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 631
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_spam_option_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private refreshCBPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 649
    const-string v1, "pref_key_cb_settings"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 650
    .local v0, cbOptions:Landroid/preference/PreferenceCategory;
    if-eqz v0, :cond_1

    .line 651
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 653
    :cond_0
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 658
    :cond_1
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 660
    const-string v1, "pref_key_cb_settings_activation"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 661
    const-string v1, "pref_key_channel_configuration"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 662
    const-string v1, "pref_key_channel_configuration"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 665
    :cond_2
    return-void

    .line 655
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 656
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0
    .parameter "pref"
    .parameter "removePref"

    .prologue
    .line 418
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 419
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 421
    :cond_0
    return-void
.end method

.method private setCallbackNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackNumber"

    .prologue
    .line 542
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, line1Number:Ljava/lang/String;
    if-nez v0, :cond_2

    const-string p1, ""

    .line 547
    .end local v0           #line1Number:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabMore;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 549
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FragmentTabMore;->setCallbackNumberSummary(Ljava/lang/String;)V

    .line 551
    :cond_1
    return-void

    .restart local v0       #line1Number:Ljava/lang/String;
    :cond_2
    move-object p1, v0

    .line 544
    goto :goto_0
.end method

.method private setCallbackNumberSummary(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackNumber"

    .prologue
    .line 554
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabMore;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    if-nez v1, :cond_0

    .line 566
    :goto_0
    return-void

    .line 559
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 565
    .local v0, callbackSummary:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabMore;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 562
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

    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, aInt:I
    const/4 v3, 0x0

    .line 442
    .local v3, msg_reminder_alert_summary:Ljava/lang/String;
    const-string v5, "pref_key_emergency_alert_reminder"

    const-string v6, "0"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, value:Ljava/lang/String;
    const/4 v2, 0x0

    .line 444
    .local v2, msg_reminder_alert_name:[Ljava/lang/String;
    const-string v5, "pref_key_emergency_alert_reminder"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 445
    .local v1, alertReminderPreference:Landroid/preference/Preference;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 446
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 448
    if-nez v1, :cond_0

    .line 462
    :goto_0
    return-void

    .line 451
    :cond_0
    if-nez v0, :cond_2

    .line 452
    const/4 v5, 0x3

    aget-object v3, v2, v5

    .line 461
    :cond_1
    :goto_1
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 453
    :cond_2
    if-ne v0, v7, :cond_3

    .line 454
    const/4 v5, 0x0

    aget-object v3, v2, v5

    goto :goto_1

    .line 455
    :cond_3
    if-ne v0, v8, :cond_4

    .line 456
    aget-object v3, v2, v7

    goto :goto_1

    .line 457
    :cond_4
    const/16 v5, 0xf

    if-ne v0, v5, :cond_1

    .line 458
    aget-object v3, v2, v8

    goto :goto_1
.end method

.method private setMessageRepetitionSummary(Landroid/content/SharedPreferences;)V
    .locals 9
    .parameter "sharedPrefs"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, aInt:I
    const/4 v2, 0x0

    .line 469
    .local v2, msg_reminder_alert_summary:Ljava/lang/String;
    const-string v5, "pref_key_msg_reminder_alert"

    const-string v6, "0"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 470
    .local v4, value:Ljava/lang/String;
    const/4 v3, 0x0

    .line 471
    .local v3, msg_repetition_alert_name:[Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 472
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 474
    if-ne v0, v7, :cond_2

    .line 475
    const/4 v5, 0x0

    aget-object v2, v3, v5

    .line 483
    :cond_0
    :goto_0
    const-string v5, "pref_key_msg_reminder_alert"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 484
    .local v1, alerRepetitionPreference:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 485
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 486
    :cond_1
    return-void

    .line 476
    .end local v1           #alerRepetitionPreference:Landroid/preference/Preference;
    :cond_2
    if-ne v0, v8, :cond_3

    .line 477
    aget-object v2, v3, v7

    goto :goto_0

    .line 478
    :cond_3
    const/16 v5, 0xa

    if-ne v0, v5, :cond_0

    .line 479
    aget-object v2, v3, v8

    goto :goto_0
.end method

.method private setServiceLoadingSummary(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "sharedPrefs"

    .prologue
    .line 510
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableServiceLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    const-string v2, "pref_key_service_loading_action"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 512
    .local v0, serviceLoadingPreference:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 513
    const-string v2, "pref_key_service_loading_action"

    const-string v3, "Prompt"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, slAction:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/mms/ui/FragmentTabMore;->getServiceLoadingActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 519
    .end local v0           #serviceLoadingPreference:Landroid/preference/Preference;
    .end local v1           #slAction:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showCMASExplainDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 610
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 611
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c03f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 612
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 613
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 614
    const v1, 0x7f0c004f

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 615
    const v1, 0x7f0c03f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 616
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 617
    return-void
.end method

.method private showCMASPreviewDialog()V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lcom/android/mms/ui/CMASPreviewDialog;

    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/mms/ui/CMASPreviewDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASPreviewDialog;->show()V

    .line 140
    return-void
.end method


# virtual methods
.method public deleteBubbleBackgroundStyle()V
    .locals 5

    .prologue
    .line 621
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.mms/"

    const-string v4, "message_background_image.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 623
    .local v1, mImageOutputUri:Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 624
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 625
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 627
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FragmentTabMore;->setHasOptionsMenu(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    .line 77
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FragmentTabMore;->addPreferencesFromResource(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mServiceLoadingActionName:[Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabMore;->mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabMore;->simStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabMore;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->setOthersPreferences()V

    .line 86
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->setPreferenceSummary()V

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabMore;->mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabMore;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabMore;->simStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 135
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 115
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->unRegisterListener()V

    .line 116
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 569
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "pref_key_cmas"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_1

    .line 570
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/ui/CMASPreferenceActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FragmentTabMore;->startActivity(Landroid/content/Intent;)V

    .line 605
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 571
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "pref_key_emergency_alert"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_2

    .line 573
    invoke-direct {p0}, Lcom/android/mms/ui/FragmentTabMore;->showCMASPreviewDialog()V

    goto :goto_0

    .line 576
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "pref_key_explain_emergency_alert"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_3

    .line 577
    const-string v2, "Mms/MessagingPreferenceTabActivity"

    const-string v3, "onPreferenceTreeClick key : pref_key_explain_emergency_alert"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    new-instance v2, Lcom/android/mms/ui/FragmentTabMore$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/FragmentTabMore$4;-><init>(Lcom/android/mms/ui/FragmentTabMore;)V

    invoke-direct {p0, v2}, Lcom/android/mms/ui/FragmentTabMore;->showCMASExplainDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 584
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "pref_cmas_receive_class1"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_4

    .line 585
    const-string v2, "Mms/MessagingPreferenceTabActivity"

    const-string v3, "onPreferenceTreeClick key : pref_cmas_receive_class1"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 589
    .local v1, sharedpref:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 590
    .end local v1           #sharedpref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 591
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Mms/MessagingPreferenceTabActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in setCMAS config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 597
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const-string v2, "pref_key_spam_num_add"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_5

    .line 598
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FragmentTabMore;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 599
    :cond_5
    const-string v2, "pref_key_spam_text_add"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_6

    .line 600
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FragmentTabMore;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 601
    :cond_6
    const-string v2, "pref_key_enable_notifications"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->updateNotificationAlert()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 91
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 93
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const-string v1, "GATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessagingPreferenceActivity.onResume : android.util.GateConfig.isGateEnabled() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-nez v1, :cond_1

    .line 97
    const v1, 0x7f060008

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabMore;->addPreferencesFromResource(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->setOthersPreferences()V

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    .local v0, pref:Landroid/content/SharedPreferences;
    if-nez v0, :cond_2

    .line 103
    const-string v1, "Mms/MessagingPreferenceTabActivity"

    const-string v2, "onResume - pref is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->setPreferenceSummary()V

    .line 109
    return-void

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabMore;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 123
    return-void
.end method

.method public setCMASPreferences()V
    .locals 5

    .prologue
    .line 425
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 426
    .local v0, Prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 427
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "#cmas#type##extreme#enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 428
    const-string v3, "#cmas#type##severe#enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 429
    const-string v3, "#cmas#type##amber#enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 430
    const-string v3, "#cmas#type##exercise#enabled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 431
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .end local v0           #Prefs:Landroid/content/SharedPreferences;
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v1

    .line 433
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected setOthersPreferences()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x1

    const/4 v7, 0x5

    .line 156
    const-string v5, "pref_key_vibrateWhen_checkbox"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/mms/ui/FragmentTabMore;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    .line 157
    const-string v5, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/mms/ui/FragmentTabMore;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    .line 158
    const-string v5, "pref_key_callback_text"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/mms/ui/FragmentTabMore;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    .line 159
    const-string v5, "pref_key_spam_option"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/mms/ui/FragmentTabMore;->mSpamOption:Landroid/preference/ListPreference;

    .line 161
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableWapPush()Z

    move-result v5

    if-nez v5, :cond_9

    .line 162
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "pref_key_push_message_settings"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/FragmentTabMore;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 174
    :cond_0
    :goto_0
    const-string v5, "pref_key_cb_settings"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 175
    .local v1, cbCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBMessage()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eq v5, v7, :cond_a

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/android/mms/ui/FragmentTabMore;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 185
    :cond_2
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v7, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-ne v5, v9, :cond_3

    .line 187
    const-string v5, "pref_key_cb_settings_activation"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 188
    const-string v5, "pref_key_channel_configuration"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 189
    const-string v5, "pref_key_channel_configuration"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 192
    :cond_3
    const-string v5, "pref_notification_settings"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 193
    .local v0, NotiCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationBacklight()Z

    move-result v5

    if-nez v5, :cond_4

    .line 194
    const-string v5, "pref_key_backlight"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/android/mms/ui/FragmentTabMore;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 196
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-eq v5, v9, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_b

    .line 197
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "pref_cmas_settings"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/FragmentTabMore;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 229
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationVibrate()Z

    move-result v5

    if-nez v5, :cond_6

    .line 230
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabMore;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v0, v5}, Lcom/android/mms/ui/FragmentTabMore;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 232
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageReminderAlert()Z

    move-result v5

    if-nez v5, :cond_7

    .line 233
    const-string v5, "pref_key_msg_reminder_alert"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/android/mms/ui/FragmentTabMore;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 236
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v5

    if-nez v5, :cond_10

    .line 237
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/mms/ui/FragmentTabMore;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    .line 238
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "pref_callback_settings"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/FragmentTabMore;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 243
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v5

    if-nez v5, :cond_11

    .line 244
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "pref_key_spam_settings"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/FragmentTabMore;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 256
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->setVibrateMenu()V

    .line 258
    invoke-direct {p0}, Lcom/android/mms/ui/FragmentTabMore;->refreshCBPreferences()V

    .line 259
    return-void

    .line 164
    .end local v0           #NotiCategory:Landroid/preference/PreferenceCategory;
    .end local v1           #cbCategory:Landroid/preference/PreferenceCategory;
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableServiceLoading()Z

    move-result v5

    if-nez v5, :cond_0

    .line 165
    const-string v5, "pref_key_push_message_settings"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 166
    .local v4, wapPushCategory:Landroid/preference/PreferenceCategory;
    const-string v5, "pref_key_service_loading_action"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/FragmentTabMore;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_0

    .line 181
    .end local v4           #wapPushCategory:Landroid/preference/PreferenceCategory;
    .restart local v1       #cbCategory:Landroid/preference/PreferenceCategory;
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBChannel()Z

    move-result v5

    if-nez v5, :cond_2

    .line 182
    const-string v5, "pref_key_channel_configuration"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/android/mms/ui/FragmentTabMore;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_1

    .line 199
    .restart local v0       #NotiCategory:Landroid/preference/PreferenceCategory;
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-ne v5, v8, :cond_d

    .line 201
    :cond_c
    const-string v5, "pref_cmas_settings"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 202
    .local v2, cmasCategory:Landroid/preference/PreferenceCategory;
    const-string v5, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/android/mms/ui/FragmentTabMore;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 204
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 205
    const-string v5, "pref_key_emergency_alert_reminder"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/android/mms/ui/FragmentTabMore;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 209
    .end local v2           #cmasCategory:Landroid/preference/PreferenceCategory;
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-eq v5, v7, :cond_e

    .line 210
    const-string v5, "pref_cmas_settings"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 211
    .restart local v2       #cmasCategory:Landroid/preference/PreferenceCategory;
    const-string v5, "pref_key_cmas_audioWhen_checkbox"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/android/mms/ui/FragmentTabMore;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 214
    .end local v2           #cmasCategory:Landroid/preference/PreferenceCategory;
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 215
    const-string v5, "pref_cmas_settings"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 216
    .restart local v2       #cmasCategory:Landroid/preference/PreferenceCategory;
    const-string v5, "pref_key_cmas"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/android/mms/ui/FragmentTabMore;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 217
    const-string v5, "pref_key_emergency_alert"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const-string v6, "pref_cmas_receive_class1"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 218
    const-string v5, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const-string v6, "pref_cmas_receive_class1"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 219
    const-string v5, "pref_key_emergency_alert_reminder"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const-string v6, "pref_cmas_receive_class1"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 221
    .end local v2           #cmasCategory:Landroid/preference/PreferenceCategory;
    :cond_f
    const-string v5, "pref_cmas_settings"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 222
    .restart local v2       #cmasCategory:Landroid/preference/PreferenceCategory;
    const-string v5, "pref_cmas_receive_class1"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/android/mms/ui/FragmentTabMore;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 223
    const-string v5, "pref_key_explain_emergency_alert"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/android/mms/ui/FragmentTabMore;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_2

    .line 240
    .end local v2           #cmasCategory:Landroid/preference/PreferenceCategory;
    :cond_10
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabMore;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/mms/ui/FragmentTabMore;->mmCallbackNumberListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_3

    .line 246
    :cond_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 247
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 248
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "pref_key_spam_settings"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/FragmentTabMore;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_4

    .line 250
    :cond_12
    const-string v5, "pref_key_spam_settings"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 251
    .local v3, spamCategory:Landroid/preference/PreferenceCategory;
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabMore;->mSpamOption:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v5}, Lcom/android/mms/ui/FragmentTabMore;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_4
.end method

.method public setPreferenceSummary()V
    .locals 14

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 302
    .local v11, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v0, "pref_key_ringtone"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 303
    .local v10, ringtonePreference:Landroid/preference/Preference;
    if-eqz v10, :cond_2

    .line 304
    const-string v0, "pref_key_ringtone"

    const/4 v2, 0x0

    invoke-interface {v11, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 305
    .local v9, ringtoneIndex:Ljava/lang/String;
    if-eqz v9, :cond_7

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 306
    .local v1, ringtoneUri:Landroid/net/Uri;
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x104064d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 309
    .local v13, summary:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x104064f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 343
    :cond_1
    :goto_1
    invoke-virtual {v10, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 346
    .end local v1           #ringtoneUri:Landroid/net/Uri;
    .end local v9           #ringtoneIndex:Ljava/lang/String;
    .end local v13           #summary:Ljava/lang/CharSequence;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    invoke-direct {p0, v11}, Lcom/android/mms/ui/FragmentTabMore;->setCmasReminderSummary(Landroid/content/SharedPreferences;)V

    .line 350
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageReminderAlert()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 351
    invoke-direct {p0, v11}, Lcom/android/mms/ui/FragmentTabMore;->setMessageRepetitionSummary(Landroid/content/SharedPreferences;)V

    .line 355
    :cond_4
    invoke-direct {p0, v11}, Lcom/android/mms/ui/FragmentTabMore;->setServiceLoadingSummary(Landroid/content/SharedPreferences;)V

    .line 357
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_5

    .line 358
    invoke-static {v11}, Lcom/android/mms/ui/FragmentTabMore;->getCallbackNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/FragmentTabMore;->setCallbackNumber(Ljava/lang/String;)V

    .line 362
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    .line 364
    const-string v0, "pref_key_cb_settings_activation"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 365
    const-string v0, "pref_key_channel_configuration"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 366
    const-string v0, "pref_key_channel_configuration"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 368
    :cond_6
    return-void

    .line 305
    .restart local v9       #ringtoneIndex:Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 315
    .restart local v1       #ringtoneUri:Landroid/net/Uri;
    .restart local v13       #summary:Ljava/lang/CharSequence;
    :cond_8
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 316
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 332
    .local v8, cursor:Landroid/database/Cursor;
    :goto_2
    if-eqz v8, :cond_1

    .line 333
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 334
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 336
    :cond_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 338
    .end local v8           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v12

    .line 340
    .local v12, sqle:Landroid/database/sqlite/SQLiteException;
    const-string v0, "Mms/MessagingPreferenceTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when query ringtone title"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 324
    .end local v12           #sqle:Landroid/database/sqlite/SQLiteException;
    :cond_a
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "title"

    aput-object v5, v4, v0

    const-string v5, "_data=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v6, v0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .restart local v8       #cursor:Landroid/database/Cursor;
    goto :goto_2
.end method

.method public setVibrateMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 371
    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 372
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v2, "pref_key_ringtone"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 374
    .local v1, ringtonePreference:Landroid/preference/Preference;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-nez v2, :cond_3

    .line 375
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationVibrate()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabMore;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 376
    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabMore;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 379
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 380
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabMore;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 381
    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabMore;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 384
    :cond_1
    if-eqz v1, :cond_2

    .line 385
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 397
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->updateNotificationAlert()V

    .line 398
    return-void

    .line 387
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationVibrate()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabMore;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 388
    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabMore;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 390
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabMore;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    .line 391
    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabMore;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 393
    :cond_5
    if-eqz v1, :cond_2

    .line 394
    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public unRegisterListener()V
    .locals 3

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    .local v0, pref:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    .line 148
    const-string v1, "Mms/MessagingPreferenceTabActivity"

    const-string v2, "onPause - pref is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 150
    .restart local v0       #pref:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabMore;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method updateNotificationAlert()V
    .locals 6

    .prologue
    .line 401
    iget-object v4, p0, Lcom/android/mms/ui/FragmentTabMore;->mActivity:Landroid/app/Activity;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 403
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabMore;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    const-string v5, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 407
    .local v2, cmasVib:Landroid/preference/Preference;
    const-string v4, "pref_key_emergency_alert_reminder"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 409
    .local v0, alertReminderPreference:Landroid/preference/Preference;
    const-string v4, "pref_key_enable_notifications"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/FragmentTabMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 411
    .local v3, notiEnable:Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eqz v4, :cond_0

    .line 412
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 413
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
