.class public Lcom/android/mms/ui/FragmentTabSmsMms;
.super Landroid/preference/PreferenceFragment;
.source "FragmentTabSmsMms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/FragmentTabSmsMms$SMSCLengthFilter;
    }
.end annotation


# static fields
.field private static final MENU_RESTORE_DEFAULTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/MessagingPreferenceTabActivity"


# instance fields
.field public airplaneReceiver:Landroid/content/BroadcastReceiver;

.field private mActivity:Landroid/app/Activity;

.field private mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mManageSDPref:Landroid/preference/Preference;

.field private mManageSimPref:Landroid/preference/Preference;

.field private mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

.field private mMmsDeliveryReportPref:Landroid/preference/Preference;

.field private mMmsDeliveryTimePref:Landroid/preference/Preference;

.field private mMmsExpiryTimePref:Landroid/preference/Preference;

.field private mMmsMMSCPortPref:Landroid/preference/Preference;

.field private mMmsMMSCUrlPref:Landroid/preference/Preference;

.field private mMmsPriorityPref:Landroid/preference/Preference;

.field private mMmsReadReportPref:Landroid/preference/Preference;

.field private mMmsSendDeliveryReportPref:Landroid/preference/Preference;

.field private mReplyAllPref:Landroid/preference/CheckBoxPreference;

.field public mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

.field public mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mSmsDeliveryReportPref:Landroid/preference/Preference;

.field private mSmscAddrPref:Landroid/preference/EditTextPreference;

.field public simStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    .line 471
    new-instance v0, Lcom/android/mms/ui/FragmentTabSmsMms$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FragmentTabSmsMms$2;-><init>(Lcom/android/mms/ui/FragmentTabSmsMms;)V

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->simStateReceiver:Landroid/content/BroadcastReceiver;

    .line 482
    new-instance v0, Lcom/android/mms/ui/FragmentTabSmsMms$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FragmentTabSmsMms$3;-><init>(Lcom/android/mms/ui/FragmentTabSmsMms;)V

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    .line 549
    new-instance v0, Lcom/android/mms/ui/FragmentTabSmsMms$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FragmentTabSmsMms$4;-><init>(Lcom/android/mms/ui/FragmentTabSmsMms;)V

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 592
    new-instance v0, Lcom/android/mms/ui/FragmentTabSmsMms$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FragmentTabSmsMms$5;-><init>(Lcom/android/mms/ui/FragmentTabSmsMms;)V

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 628
    new-instance v0, Lcom/android/mms/ui/FragmentTabSmsMms$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FragmentTabSmsMms$6;-><init>(Lcom/android/mms/ui/FragmentTabSmsMms;)V

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/FragmentTabSmsMms;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/FragmentTabSmsMms;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/ui/FragmentTabSmsMms;->refreshSIMPreferences()V

    return-void
.end method

.method private confirmSDcardDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 330
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 331
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0129

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 333
    const v1, 0x7f0c012a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 334
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 336
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 337
    return-void
.end method

.method private refreshSIMPreferences()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 495
    iget-object v3, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 497
    .local v0, airplane:I
    const-string v3, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 498
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

    .line 501
    :cond_0
    const-string v3, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 506
    :cond_1
    :goto_0
    const-string v3, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 507
    .local v2, smsc:Landroid/preference/Preference;
    if-eqz v2, :cond_3

    .line 508
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

    .line 511
    :cond_2
    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 537
    :cond_3
    :goto_1
    const-string v3, "pref_key_cb_settings"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 538
    .local v1, cbOptions:Landroid/preference/PreferenceCategory;
    if-eqz v1, :cond_5

    .line 539
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

    .line 541
    :cond_4
    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 546
    :cond_5
    :goto_2
    return-void

    .line 502
    .end local v1           #cbOptions:Landroid/preference/PreferenceCategory;
    .end local v2           #smsc:Landroid/preference/Preference;
    :cond_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 503
    const-string v3, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 512
    .restart local v2       #smsc:Landroid/preference/Preference;
    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 513
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSCEditable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 514
    iget-object v3, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 515
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 516
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableSmscEditableOnlyFor()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 518
    iget-object v3, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->isNotKorUsim(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 519
    iget-object v3, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 520
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 522
    :cond_9
    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 523
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 524
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isKTSIM()Z

    move-result v3

    if-nez v3, :cond_3

    .line 525
    iget-object v3, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 526
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 532
    :cond_a
    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 543
    .restart local v1       #cbOptions:Landroid/preference/PreferenceCategory;
    :cond_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v7, :cond_5

    .line 544
    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_2
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0
    .parameter "pref"
    .parameter "removePref"

    .prologue
    .line 459
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 460
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 462
    :cond_0
    return-void
.end method

.method private setSmscSummary(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "sharedPrefs"

    .prologue
    .line 311
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    const-string v2, "pref_key_manage_smsc_address"

    const-string v3, ""

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, summary_smsc:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #summary_smsc:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 316
    .restart local v1       #summary_smsc:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_1

    .line 317
    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabSmsMms;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const-string v3, "pref_key_manage_smsc_address"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 321
    .local v0, smscPrefs:Landroid/preference/EditTextPreference;
    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 325
    .end local v0           #smscPrefs:Landroid/preference/EditTextPreference;
    .end local v1           #summary_smsc:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->setHasOptionsMenu(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabSmsMms;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    .line 80
    const v1, 0x7f060009

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->addPreferencesFromResource(I)V

    .line 82
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->simStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v0, sdCardIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabSmsMms;->setSmsPreferences()V

    .line 93
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabSmsMms;->setMmsPreferences()V

    .line 95
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->simStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 135
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabSmsMms;->unRegisterListener()V

    .line 136
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 343
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mManageSimPref:Landroid/preference/Preference;

    if-ne p2, v5, :cond_1

    .line 344
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    const-class v7, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->startActivity(Landroid/content/Intent;)V

    .line 383
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5

    .line 346
    :cond_1
    const-string v5, "pref_key_manage_SD_messages"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne p2, v5, :cond_3

    .line 347
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 348
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    const-class v7, Lcom/android/mms/ui/ManageSDMessages;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 350
    :cond_2
    new-instance v5, Lcom/android/mms/ui/FragmentTabSmsMms$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/FragmentTabSmsMms$1;-><init>(Lcom/android/mms/ui/FragmentTabSmsMms;)V

    invoke-direct {p0, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->confirmSDcardDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 358
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "pref_key_mms_allow_reply_all"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne p2, v5, :cond_6

    .line 359
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    const-string v6, "pref_key_mms_allow_reply_all"

    invoke-virtual {v5, v6, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 360
    .local v1, replyAll:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 361
    .local v0, prefEditor:Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 362
    const-string v5, "REPLY"

    invoke-interface {v0, v5, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 366
    :cond_4
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 363
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_4

    .line 364
    const-string v5, "REPLY"

    invoke-interface {v0, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 369
    .end local v0           #prefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #replyAll:Landroid/content/SharedPreferences;
    :cond_6
    const-string v5, "pref_key_sms_reassembly"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne p2, v5, :cond_7

    .line 370
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    .line 371
    .local v4, smsManager:Landroid/telephony/SmsManager;
    const-class v5, Landroid/telephony/SmsManager;

    const-string v6, "setCDMASmsReassembly"

    new-array v7, v10, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 372
    .local v2, setCDMASmsReassembly:Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 373
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 374
    .local v3, sharedpref:Landroid/content/SharedPreferences;
    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "pref_key_sms_reassembly"

    invoke-interface {v3, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v2, v5}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 377
    .end local v2           #setCDMASmsReassembly:Ljava/lang/reflect/Method;
    .end local v3           #sharedpref:Landroid/content/SharedPreferences;
    .end local v4           #smsManager:Landroid/telephony/SmsManager;
    :cond_7
    const-string v5, "pref_key_mms_auto_retrieval"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne p2, v5, :cond_0

    .line 378
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 109
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 111
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
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

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabSmsMms;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-nez v1, :cond_1

    .line 115
    const v1, 0x7f060009

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->addPreferencesFromResource(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabSmsMms;->setSmsPreferences()V

    .line 118
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabSmsMms;->setMmsPreferences()V

    .line 119
    invoke-direct {p0}, Lcom/android/mms/ui/FragmentTabSmsMms;->refreshSIMPreferences()V

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabSmsMms;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    .local v0, pref:Landroid/content/SharedPreferences;
    if-nez v0, :cond_2

    .line 125
    const-string v1, "Mms/MessagingPreferenceTabActivity"

    const-string v2, "onResume - pref is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 143
    return-void
.end method

.method protected setMmsPreferences()V
    .locals 3

    .prologue
    .line 229
    const-string v1, "pref_key_mms_auto_retrieval"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

    .line 230
    const-string v1, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    .line 231
    const-string v1, "pref_key_send_mms_delivery_reports"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsSendDeliveryReportPref:Landroid/preference/Preference;

    .line 232
    const-string v1, "pref_key_mms_read_reports"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsReadReportPref:Landroid/preference/Preference;

    .line 234
    const-string v1, "pref_key_mms_expiry_time"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsExpiryTimePref:Landroid/preference/Preference;

    .line 235
    const-string v1, "pref_key_mmspriority"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsPriorityPref:Landroid/preference/Preference;

    .line 236
    const-string v1, "pref_key_mms_delivery_time"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsDeliveryTimePref:Landroid/preference/Preference;

    .line 237
    const-string v1, "pref_mmsc_url"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsMMSCUrlPref:Landroid/preference/Preference;

    .line 238
    const-string v1, "pref_mmsc_port"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsMMSCPortPref:Landroid/preference/Preference;

    .line 240
    const-string v1, "pref_key_mms_settings"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 242
    .local v0, MmsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabSmsMms;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "pref_key_mms_settings"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 308
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    :cond_1
    const-string v1, "pref_key_mms_group_mms"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 251
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 252
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 255
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 256
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 260
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSSendDeliveryReportsEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    .line 261
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsSendDeliveryReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 267
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 268
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsReadReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 271
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 272
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsReadReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 275
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRetrievalDuringRoaming()Z

    move-result v1

    if-nez v1, :cond_7

    .line 276
    const-string v1, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 279
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsCreationMode()Z

    move-result v1

    if-nez v1, :cond_8

    .line 280
    const-string v1, "pref_key_mms_creation_mode"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 283
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsExpiryDate()Z

    move-result v1

    if-nez v1, :cond_9

    .line 284
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsExpiryTimePref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 287
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsPriority()Z

    move-result v1

    if-nez v1, :cond_a

    .line 288
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsPriorityPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 291
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDeliveryTime()Z

    move-result v1

    if-nez v1, :cond_b

    .line 292
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsDeliveryTimePref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 295
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuMmsServerAddr()Z

    move-result v1

    if-nez v1, :cond_c

    .line 296
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsMMSCUrlPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 297
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsMMSCPortPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 301
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v1

    if-nez v1, :cond_d

    .line 302
    const-string v1, "pref_key_mms_allow_reply_all"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 305
    :cond_d
    const-string v1, "pref_key_mms_allow_reply_all"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_0

    .line 263
    :cond_e
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    const v2, 0x7f0c0267

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FragmentTabSmsMms;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public setPreferenceSummary()V
    .locals 2

    .prologue
    .line 465
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 467
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/FragmentTabSmsMms;->setSmscSummary(Landroid/content/SharedPreferences;)V

    .line 469
    return-void
.end method

.method protected setSmsPreferences()V
    .locals 10

    .prologue
    const/16 v9, 0x14

    const/4 v6, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 147
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 149
    .local v2, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mManageSimPref:Landroid/preference/Preference;

    .line 150
    const-string v5, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    .line 151
    const-string v5, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    .line 153
    const-string v5, "pref_key_manage_SD_messages"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mManageSDPref:Landroid/preference/Preference;

    .line 156
    const-string v5, "pref_key_sms_settings"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 157
    .local v3, smsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getmEnableDoCoMoDeliveryReportFormat()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eq v5, v6, :cond_7

    .line 160
    :cond_0
    invoke-virtual {v3, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 210
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveVMessage()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isExternalSdCardMounted()Z

    move-result v5

    if-nez v5, :cond_3

    .line 211
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mManageSDPref:Landroid/preference/Preference;

    invoke-direct {p0, v3, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 214
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsInputMode()Z

    move-result v5

    if-nez v5, :cond_4

    .line 216
    const-string v5, "pref_key_sms_input_mode"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 218
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSegmentedSms()Z

    move-result v5

    if-nez v5, :cond_5

    .line 219
    const-string v5, "pref_key_sms_reassembly"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 220
    :cond_5
    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v5

    if-nez v5, :cond_6

    .line 221
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabSmsMms;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 222
    const-string v5, "Mms/MessagingPreferenceTabActivity"

    const-string v6, "Removed sms categroy because it has 0 items."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/mms/ui/FragmentTabSmsMms;->setSmscSummary(Landroid/content/SharedPreferences;)V

    .line 226
    return-void

    .line 163
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSMSDeliveryReportsEnabled()Z

    move-result v5

    if-nez v5, :cond_8

    .line 164
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v3, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 166
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableManageSimMessages()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eq v5, v6, :cond_a

    .line 168
    :cond_9
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mManageSimPref:Landroid/preference/Preference;

    invoke-direct {p0, v3, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 169
    :cond_a
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    .line 170
    .local v4, smsManager:Landroid/telephony/SmsManager;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSC()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eq v5, v6, :cond_d

    .line 172
    :cond_b
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v3, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 202
    :cond_c
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsExpiryDate()Z

    move-result v5

    if-nez v5, :cond_10

    .line 203
    const-string v5, "pref_key_sms_expiry"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_0

    .line 173
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSP()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getSMSPAvailable()Z

    move-result v5

    if-nez v5, :cond_e

    .line 174
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v3, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto :goto_1

    .line 177
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableSmscEditableOnlyFor()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 178
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/util/TelephonyUtils;->isNotKorUsim(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 180
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, v8}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 181
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 182
    .local v0, edittextSmsc:Landroid/widget/EditText;
    new-array v1, v8, [Landroid/text/InputFilter;

    new-instance v5, Lcom/android/mms/ui/FragmentTabSmsMms$SMSCLengthFilter;

    invoke-direct {v5, p0, v9}, Lcom/android/mms/ui/FragmentTabSmsMms$SMSCLengthFilter;-><init>(Lcom/android/mms/ui/FragmentTabSmsMms;I)V

    aput-object v5, v1, v7

    .line 185
    .local v1, recipientFilter:[Landroid/text/InputFilter;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1

    .line 188
    .end local v0           #edittextSmsc:Landroid/widget/EditText;
    .end local v1           #recipientFilter:[Landroid/text/InputFilter;
    :cond_f
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 189
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 190
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isKTSIM()Z

    move-result v5

    if-nez v5, :cond_c

    .line 191
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, v8}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 192
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 193
    .restart local v0       #edittextSmsc:Landroid/widget/EditText;
    new-array v1, v8, [Landroid/text/InputFilter;

    new-instance v5, Lcom/android/mms/ui/FragmentTabSmsMms$SMSCLengthFilter;

    invoke-direct {v5, p0, v9}, Lcom/android/mms/ui/FragmentTabSmsMms$SMSCLengthFilter;-><init>(Lcom/android/mms/ui/FragmentTabSmsMms;I)V

    aput-object v5, v1, v7

    .line 196
    .restart local v1       #recipientFilter:[Landroid/text/InputFilter;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1

    .line 204
    .end local v0           #edittextSmsc:Landroid/widget/EditText;
    .end local v1           #recipientFilter:[Landroid/text/InputFilter;
    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSP()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "gsm.sim.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "44010"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 205
    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v3, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 206
    const-string v5, "pref_key_sms_expiry"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/android/mms/ui/FragmentTabSmsMms;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_0
.end method

.method public unRegisterListener()V
    .locals 3

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabSmsMms;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabSmsMms;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 619
    .local v0, pref:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    .line 620
    const-string v1, "Mms/MessagingPreferenceTabActivity"

    const-string v2, "onPause - pref is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 622
    .restart local v0       #pref:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms;->mListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method
