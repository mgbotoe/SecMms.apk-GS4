.class public Lcom/android/mms/ui/MessagingPreferenceTabActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingPreferenceTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;
    }
.end annotation


# static fields
.field public static final TAB_SETTING_TAG_GENERAL:Ljava/lang/String; = "FragmentTabGeneral"

.field public static final TAB_SETTING_TAG_MORE:Ljava/lang/String; = "FragmentTabMore"

.field public static final TAB_SETTING_TAG_SMSMMS:Ljava/lang/String; = "FragmentTabSmsMms"

.field private static final TAG:Ljava/lang/String; = "Mms/MessagingPreferenceTabActivity"


# instance fields
.field mGeneralTabView:Landroid/view/View;

.field private mMaxChannelCount:I

.field mMoreTabView:Landroid/view/View;

.field private mMyChannels:I

.field private mSimStatus:Z

.field mSmsMmsTabView:Landroid/view/View;

.field private mSmsc:Ljava/lang/String;

.field mTextSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 48
    iput v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mTextSize:I

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mSmsc:Ljava/lang/String;

    .line 50
    iput-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mSimStatus:Z

    .line 51
    iput v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mMaxChannelCount:I

    .line 52
    iput v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mMyChannels:I

    .line 139
    return-void
.end method

.method private backupNetworkStatus(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "sharedPref"

    .prologue
    const/4 v2, 0x0

    .line 226
    const-string v0, "pref_key_manage_smsc_address"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mSmsc:Ljava/lang/String;

    .line 227
    const-string v0, "pref_sim_ready_status"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mSimStatus:Z

    .line 231
    const-string v0, "pref_cb_my_channel_max_count"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mMaxChannelCount:I

    .line 232
    const-string v0, "pref_cb_my_channel_enabled_count"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mMyChannels:I

    .line 234
    return-void
.end method

.method private confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 213
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 214
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0055

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 216
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 217
    const v1, 0x7f0c004f

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    const v1, 0x7f0c0050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 219
    const v1, 0x7f0c0056

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 221
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 222
    return-void
.end method

.method private restoreNetworkStatus(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "sharedPref"

    .prologue
    .line 237
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 240
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_manage_smsc_address"

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mSmsc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    const-string v1, "pref_sim_ready_status"

    iget-boolean v2, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mSimStatus:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 245
    const-string v1, "pref_cb_my_channel_max_count"

    iget v2, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mMaxChannelCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 246
    const-string v1, "pref_cb_my_channel_enabled_count"

    iget v2, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mMyChannels:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 249
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 250
    return-void
.end method

.method private setActionbarTabWidth()V
    .locals 5

    .prologue
    .line 98
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 99
    .local v3, display:Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mTextSize:I

    .line 101
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mGeneralTabView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    .local v0, GeneralTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mTextSize:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mGeneralTabView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mSmsMmsTabView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    .local v2, SmsMmsTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mTextSize:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 107
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mSmsMmsTabView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 110
    .local v1, MoreTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mTextSize:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 111
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    return-void
.end method


# virtual methods
.method public deleteBubbleBackgroundStyle()V
    .locals 5

    .prologue
    .line 253
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.mms/"

    const-string v4, "message_background_image.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 255
    .local v1, mImageOutputUri:Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 259
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 136
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->setActionbarTabWidth()V

    .line 137
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const v7, 0x7f0b000e

    const v6, 0x7f0b000d

    const v5, 0x7f040001

    .line 61
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 65
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 66
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 67
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mGeneralTabView:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mGeneralTabView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020280

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mGeneralTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0012

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 72
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;

    const-string v3, "FragmentTabGeneral"

    const-class v4, Lcom/android/mms/ui/FragmentTabGeneral;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mGeneralTabView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mSmsMmsTabView:Landroid/view/View;

    .line 78
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mSmsMmsTabView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020283

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mSmsMmsTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0013

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 80
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;

    const-string v3, "FragmentTabSmsMms"

    const-class v4, Lcom/android/mms/ui/FragmentTabSmsMms;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mSmsMmsTabView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mMoreTabView:Landroid/view/View;

    .line 86
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020281

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0014

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 88
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;

    const-string v3, "FragmentTabMore"

    const-class v4, Lcom/android/mms/ui/FragmentTabMore;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 93
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->setActionbarTabWidth()V

    .line 94
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 187
    const/4 v0, 0x1

    const v1, 0x7f0c0055

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200c0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 189
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 321
    packed-switch p1, :pswitch_data_0

    .line 330
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 324
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "FragmentTabMore"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/FragmentTabMore;

    .line 326
    .local v0, fragmentMore:Lcom/android/mms/ui/FragmentTabMore;
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Lcom/android/mms/ui/FragmentTabMore;->setVibrateMenu()V

    .line 328
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 202
    :pswitch_0
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceTabActivity$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceTabActivity;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V

    .line 207
    const/4 v0, 0x1

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 116
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 118
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "GATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessagingPreferenceActivity.onResume : android.util.GateConfig.isGateEnabled() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 128
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 129
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 11
    .parameter "hasFocus"

    .prologue
    .line 336
    invoke-static {}, Lcom/android/mms/MmsConfig;->isUnknownURLlink()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 338
    .local v2, intent:Landroid/content/Intent;
    const-string v9, "URLinkCall"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 339
    .local v7, sURLink:Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v9, "URL_LINK_SETTING"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string v10, "FragmentTabGeneral"

    invoke-virtual {v9, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/FragmentTabGeneral;

    .line 341
    .local v0, fragmentGeneral:Lcom/android/mms/ui/FragmentTabGeneral;
    const-string v9, "pref_key_urllink_settings"

    invoke-virtual {v0, v9}, Lcom/android/mms/ui/FragmentTabGeneral;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 342
    .local v5, preference:Landroid/preference/Preference;
    invoke-virtual {v0}, Lcom/android/mms/ui/FragmentTabGeneral;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 343
    .local v6, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 344
    .local v4, listAdapter:Landroid/widget/ListAdapter;
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 345
    .local v3, itemsCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 346
    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 347
    invoke-virtual {v0}, Lcom/android/mms/ui/FragmentTabGeneral;->getListView()Landroid/widget/ListView;

    move-result-object v8

    .line 348
    .local v8, settingsView:Landroid/widget/ListView;
    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 349
    const-string v9, "URLinkCall"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 355
    .end local v0           #fragmentGeneral:Lcom/android/mms/ui/FragmentTabGeneral;
    .end local v1           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #itemsCount:I
    .end local v4           #listAdapter:Landroid/widget/ListAdapter;
    .end local v5           #preference:Landroid/preference/Preference;
    .end local v6           #preferenceScreen:Landroid/preference/PreferenceScreen;
    .end local v7           #sURLink:Ljava/lang/String;
    .end local v8           #settingsView:Landroid/widget/ListView;
    :cond_0
    return-void

    .line 345
    .restart local v0       #fragmentGeneral:Lcom/android/mms/ui/FragmentTabGeneral;
    .restart local v1       #i:I
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #itemsCount:I
    .restart local v4       #listAdapter:Landroid/widget/ListAdapter;
    .restart local v5       #preference:Landroid/preference/Preference;
    .restart local v6       #preferenceScreen:Landroid/preference/PreferenceScreen;
    .restart local v7       #sURLink:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public restoreDefaultPreferences()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 262
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 264
    .local v4, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "FragmentTabGeneral"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/FragmentTabGeneral;

    .line 265
    .local v1, fragmentGeneral:Lcom/android/mms/ui/FragmentTabGeneral;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "FragmentTabSmsMms"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/FragmentTabSmsMms;

    .line 266
    .local v3, fragmentSmsMms:Lcom/android/mms/ui/FragmentTabSmsMms;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "FragmentTabMore"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/FragmentTabMore;

    .line 269
    .local v2, fragmentMore:Lcom/android/mms/ui/FragmentTabMore;
    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->backupNetworkStatus(Landroid/content/SharedPreferences;)V

    .line 271
    if-eqz v2, :cond_0

    .line 272
    invoke-virtual {v2}, Lcom/android/mms/ui/FragmentTabMore;->unRegisterListener()V

    .line 275
    :cond_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 277
    if-eqz v1, :cond_1

    .line 278
    invoke-virtual {v1, v8}, Lcom/android/mms/ui/FragmentTabGeneral;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 280
    :cond_1
    if-eqz v3, :cond_2

    .line 281
    invoke-virtual {v3, v8}, Lcom/android/mms/ui/FragmentTabSmsMms;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 283
    :cond_2
    if-eqz v2, :cond_3

    .line 284
    invoke-virtual {v2, v8}, Lcom/android/mms/ui/FragmentTabMore;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 287
    :cond_3
    const-string v5, "com.android.mms_preferences"

    const v6, 0x7f060007

    invoke-static {p0, v5, v7, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 289
    const-string v5, "com.android.mms_preferences"

    const v6, 0x7f060009

    invoke-static {p0, v5, v7, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 291
    const-string v5, "com.android.mms_preferences"

    const v6, 0x7f060008

    invoke-static {p0, v5, v7, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 296
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChameleon()Z

    move-result v5

    invoke-static {p0, v5}, Lcom/android/mms/csc/CscLoader;->update(Landroid/content/Context;Z)Z

    .line 298
    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->restoreNetworkStatus(Landroid/content/SharedPreferences;)V

    .line 306
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 307
    invoke-static {p0}, Lcom/android/mms/spam/SpamFilter;->deleteAll(Landroid/content/Context;)I

    .line 310
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 311
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->deleteBubbleBackgroundStyle()V

    .line 313
    if-eqz v1, :cond_5

    .line 314
    invoke-virtual {v1}, Lcom/android/mms/ui/FragmentTabGeneral;->onResume()V

    .line 316
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "message.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 317
    return-void
.end method
