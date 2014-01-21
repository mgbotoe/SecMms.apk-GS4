.class public Lcom/android/mms/ui/FragmentTabGeneral;
.super Landroid/preference/PreferenceFragment;
.source "FragmentTabGeneral.java"


# static fields
.field private static final MENU_RESTORE_DEFAULTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/MessagingPreferenceTabActivity"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mMaxChannelCount:I

.field private mMmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

.field private mMmsLimitPref:Landroid/preference/Preference;

.field private mMmsRecycler:Lcom/android/mms/util/Recycler;

.field private mMyChannels:I

.field private mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

.field private mReplyAllPref:Landroid/preference/CheckBoxPreference;

.field private mRestoreSDPref:Landroid/preference/Preference;

.field private mSimStatus:Z

.field private mSmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

.field private mSmsLimitPref:Landroid/preference/Preference;

.field private mSmsRecycler:Lcom/android/mms/util/Recycler;

.field private mSmsc:Ljava/lang/String;

.field private misTalkbackOn:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 36
    iput-object v2, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mSmsc:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mSimStatus:Z

    .line 43
    iput v1, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mMaxChannelCount:I

    .line 44
    iput v1, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mMyChannels:I

    .line 46
    iput-object v2, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    .line 52
    iput-boolean v1, p0, Lcom/android/mms/ui/FragmentTabGeneral;->misTalkbackOn:Z

    .line 220
    new-instance v0, Lcom/android/mms/ui/FragmentTabGeneral$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FragmentTabGeneral$1;-><init>(Lcom/android/mms/ui/FragmentTabGeneral;)V

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mSmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    .line 227
    new-instance v0, Lcom/android/mms/ui/FragmentTabGeneral$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FragmentTabGeneral$2;-><init>(Lcom/android/mms/ui/FragmentTabGeneral;)V

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mMmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/FragmentTabGeneral;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/FragmentTabGeneral;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/FragmentTabGeneral;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/mms/ui/FragmentTabGeneral;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/FragmentTabGeneral;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/FragmentTabGeneral;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/mms/ui/FragmentTabGeneral;->setMmsDisplayLimit()V

    return-void
.end method

.method private clearPickerDialog()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagePickerDialog;->dismiss()V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    .line 257
    :cond_0
    return-void
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0
    .parameter "pref"
    .parameter "removePref"

    .prologue
    .line 141
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 142
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    :cond_0
    return-void
.end method

.method private setMmsDisplayLimit()V
    .locals 6

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mMmsLimitPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mMmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0c0062

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/FragmentTabGeneral;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    :cond_0
    return-void
.end method

.method private setSmsDisplayLimit()V
    .locals 6

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mSmsLimitPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mSmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0c0062

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/FragmentTabGeneral;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 264
    :cond_0
    return-void
.end method

.method private showMmsLimitMessagePickerDialog()V
    .locals 9

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/mms/ui/FragmentTabGeneral;->clearPickerDialog()V

    .line 236
    new-instance v0, Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mMmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    iget-object v3, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    iget-object v4, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v5}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0c0069

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    .line 240
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagePickerDialog;->show()V

    .line 241
    return-void
.end method

.method private showSmsLimitMessagePickerDialog()V
    .locals 9

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/android/mms/ui/FragmentTabGeneral;->clearPickerDialog()V

    .line 245
    new-instance v0, Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mSmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    iget-object v3, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    iget-object v4, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v5}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0c0068

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagePickerDialog;->show()V

    .line 250
    return-void
.end method


# virtual methods
.method public deleteBubbleBackgroundStyle()V
    .locals 5

    .prologue
    .line 298
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.mms/"

    const-string v4, "message_background_image.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 299
    .local v1, mImageOutputUri:Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 303
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FragmentTabGeneral;->setHasOptionsMenu(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabGeneral;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mActivity:Landroid/app/Activity;

    .line 61
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FragmentTabGeneral;->addPreferencesFromResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabGeneral;->setOthersPreferences()V

    .line 64
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabGeneral;->setPreferenceSummary()V

    .line 66
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const-string v0, "pref_key_storage_settings"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v1, "pref_key_truncate_long_messages"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/FragmentTabGeneral;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 69
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    .line 274
    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mSmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_2

    .line 275
    invoke-direct {p0}, Lcom/android/mms/ui/FragmentTabGeneral;->showSmsLimitMessagePickerDialog()V

    .line 288
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "pref_key_sms_restore"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_1

    .line 289
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    .local v1, restoreIntent:Landroid/content/Intent;
    const-string v2, "mode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabGeneral;->startActivity(Landroid/content/Intent;)V

    .line 294
    .end local v1           #restoreIntent:Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 276
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mMmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_3

    .line 277
    invoke-direct {p0}, Lcom/android/mms/ui/FragmentTabGeneral;->showMmsLimitMessagePickerDialog()V

    goto :goto_0

    .line 280
    :cond_3
    const-string v2, "pref_key_font_size_by_volume_key_enable"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_0

    .line 281
    invoke-virtual {p2}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 282
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 283
    const-string v2, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 284
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 148
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 150
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
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

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabGeneral;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-nez v1, :cond_1

    .line 154
    const v1, 0x7f060007

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabGeneral;->addPreferencesFromResource(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabGeneral;->setOthersPreferences()V

    .line 158
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSizeByVolumeKey()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    const-string v1, "pref_key_font_size_by_volume_key_enable"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 161
    .local v0, fontSizeVolumn:Landroid/preference/Preference;
    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/util/PackageInfo;->isTalkBackAvailable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/FragmentTabGeneral;->misTalkbackOn:Z

    .line 163
    iget-boolean v1, p0, Lcom/android/mms/ui/FragmentTabGeneral;->misTalkbackOn:Z

    if-eqz v1, :cond_3

    .line 164
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 168
    .end local v0           #fontSizeVolumn:Landroid/preference/Preference;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabGeneral;->setPreferenceSummary()V

    .line 169
    return-void

    .line 166
    .restart local v0       #fontSizeVolumn:Landroid/preference/Preference;
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 176
    return-void
.end method

.method protected setOthersPreferences()V
    .locals 6

    .prologue
    .line 73
    const-string v4, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mSmsLimitPref:Landroid/preference/Preference;

    .line 74
    const-string v4, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mMmsLimitPref:Landroid/preference/Preference;

    .line 75
    const-string v4, "pref_key_sms_restore"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mRestoreSDPref:Landroid/preference/Preference;

    .line 77
    const-string v4, "pref_key_display_settings"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 78
    .local v1, displayCategory:Landroid/preference/PreferenceCategory;
    const-string v4, "pref_key_insert_sender_info_when_fwd_msg_category"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 80
    .local v0, InsertSenderInfoWhenFwdMsgCategory:Landroid/preference/PreferenceCategory;
    const-string v4, "pref_key_font_size"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/FontSizePreference;

    .line 83
    .local v2, fontSizePreference:Lcom/android/mms/ui/FontSizePreference;
    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/FragmentTabGeneral;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 85
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSizeByVolumeKey()Z

    move-result v4

    if-nez v4, :cond_9

    .line 86
    const-string v4, "pref_key_font_size_by_volume_key_enable"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/mms/ui/FragmentTabGeneral;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 100
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 101
    const-string v4, "pref_key_split_view"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/mms/ui/FragmentTabGeneral;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 104
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isUnknownURLlink()Z

    move-result v4

    if-nez v4, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabGeneral;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "pref_key_urllink_settings"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 108
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuInsertSenderInfoWhenFwdMsg()Z

    move-result v4

    if-nez v4, :cond_3

    .line 109
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabGeneral;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/android/mms/ui/FragmentTabGeneral;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 113
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v4

    if-nez v4, :cond_4

    .line 114
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabGeneral;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "pref_signature_settings"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/FragmentTabGeneral;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 117
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTexttemplatTMOMenu()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 118
    const-string v4, "pref_key_storage_settings"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    const-string v5, "pref_key_text_templates"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/FragmentTabGeneral;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 120
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v4

    if-nez v4, :cond_6

    .line 121
    const-string v4, "pref_key_storage_settings"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    const-string v5, "pref_key_sms_restore"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/FragmentTabGeneral;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 123
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v4

    if-nez v4, :cond_7

    .line 124
    const-string v4, "pref_key_storage_settings"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mRestoreSDPref:Landroid/preference/Preference;

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/FragmentTabGeneral;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 126
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v4

    if-nez v4, :cond_8

    .line 127
    const-string v4, "pref_key_storage_settings"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    const-string v5, "pref_key_truncate_long_messages"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/FragmentTabGeneral;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 131
    :cond_8
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    .line 132
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 133
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    .line 138
    :goto_1
    return-void

    .line 88
    :cond_9
    const-string v4, "EK-GC100"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    const-string v4, "pref_key_font_size_by_volume_key_enable"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 90
    .local v3, fontSizeVolumn:Landroid/preference/Preference;
    if-eqz v3, :cond_0

    .line 91
    const v4, 0x7f0c0277

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/FragmentTabGeneral;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 92
    const v4, 0x7f0c0276

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/FragmentTabGeneral;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 136
    .end local v3           #fontSizeVolumn:Landroid/preference/Preference;
    :cond_a
    const-string v4, "pref_key_storage_settings"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    const-string v5, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/FragmentTabGeneral;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto :goto_1
.end method

.method public setPreferenceSummary()V
    .locals 15

    .prologue
    const v14, 0x7f0c0346

    const v13, 0x7f0c0229

    const/4 v12, 0x1

    .line 179
    iget-object v10, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mActivity:Landroid/app/Activity;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 181
    .local v7, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v10, "pref_key_bubble_style"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 182
    .local v5, bubbleStylePreference:Landroid/preference/Preference;
    if-eqz v5, :cond_0

    .line 183
    iget-object v10, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleSentStyle(Landroid/content/Context;)I

    move-result v10

    add-int/lit8 v4, v10, 0x1

    .line 184
    .local v4, bubbleSentStyleIndex:I
    iget-object v10, p0, Lcom/android/mms/ui/FragmentTabGeneral;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v10

    add-int/lit8 v3, v10, 0x1

    .line 186
    .local v3, bubbleReceiveStyleIndex:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v14}, Lcom/android/mms/ui/FragmentTabGeneral;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v14}, Lcom/android/mms/ui/FragmentTabGeneral;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, bubbleTitle:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    .end local v3           #bubbleReceiveStyleIndex:I
    .end local v4           #bubbleSentStyleIndex:I
    .end local v6           #bubbleTitle:Ljava/lang/String;
    :cond_0
    const-string v10, "pref_key_background_color"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 193
    .local v1, backgroundStylePreference:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 194
    const-string v10, "pref_key_background_color"

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 195
    .local v0, backgroundStyleId:I
    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 196
    if-ne v0, v12, :cond_4

    .line 197
    invoke-virtual {p0}, Lcom/android/mms/ui/FragmentTabGeneral;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c022a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 209
    .end local v0           #backgroundStyleId:I
    :cond_1
    :goto_0
    const-string v10, "pref_key_signature_text"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 210
    .local v9, signatureTextPreference:Landroid/preference/Preference;
    if-eqz v9, :cond_2

    .line 211
    const-string v10, "pref_key_signature_text"

    const-string v11, ""

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, signatureSummary:Ljava/lang/String;
    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    .end local v8           #signatureSummary:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/FragmentTabGeneral;->setSmsDisplayLimit()V

    .line 216
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 217
    invoke-direct {p0}, Lcom/android/mms/ui/FragmentTabGeneral;->setMmsDisplayLimit()V

    .line 218
    :cond_3
    return-void

    .line 199
    .end local v9           #signatureTextPreference:Landroid/preference/Preference;
    .restart local v0       #backgroundStyleId:I
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v13}, Lcom/android/mms/ui/FragmentTabGeneral;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v0, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, backgroundTitle:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 203
    .end local v2           #backgroundTitle:Ljava/lang/String;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v13}, Lcom/android/mms/ui/FragmentTabGeneral;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .restart local v2       #backgroundTitle:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
