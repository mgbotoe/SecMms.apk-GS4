.class public Lcom/android/mms/ui/CbConfigPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "CbConfigPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/CbConfigPreferenceActivity$QueryHandler;
    }
.end annotation


# static fields
.field public static final MENU_DELETE_CHANNEL:I = 0x0

.field public static final MENU_EDIT_CHANNEL:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/CbConfigPreferenceActivity"


# instance fields
.field private mChannelContainer:Landroid/preference/PreferenceGroup;

.field private mChannelSelectionListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

.field private mMyChannelCheckListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final mMyChannelOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field mMyChannelSetListener:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "channel_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "channel_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "is_checked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    .line 70
    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 260
    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelSelectionListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 279
    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$2;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelSetListener:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    .line 304
    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelCheckListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 335
    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$4;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->addPreferencesForMyChannel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->refreshMyChannel()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->addPreferencesAddMyChannel()V

    return-void
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/database/Cursor;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->createChannelPreference(Landroid/database/Cursor;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method private addPreferencesAddMyChannel()V
    .locals 2

    .prologue
    .line 160
    const-string v1, "add_my_channel"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 161
    .local v0, pref:Landroid/preference/Preference;
    if-nez v0, :cond_0

    .line 162
    new-instance v0, Landroid/preference/Preference;

    .end local v0           #pref:Landroid/preference/Preference;
    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 163
    .restart local v0       #pref:Landroid/preference/Preference;
    const-string v1, "add_my_channel"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 164
    const v1, 0x7f0c0102

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 165
    const v1, 0x7f04006c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 167
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 170
    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->invalidateOptionsMenu()V

    .line 172
    :cond_0
    return-void
.end method

.method private addPreferencesForMyChannel()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    .line 176
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 178
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 179
    invoke-direct {p0, v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->createChannelPreference(Landroid/database/Cursor;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    .line 180
    .local v1, pref:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 178
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 183
    .end local v1           #pref:Landroid/preference/Preference;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 185
    const/4 v0, 0x0

    .line 183
    :cond_0
    throw v2

    :cond_1
    if-eqz v0, :cond_2

    .line 184
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 185
    const/4 v0, 0x0

    .line 189
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->invalidateOptionsMenu()V

    .line 191
    :cond_3
    return-void
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 3
    .parameter "listener"
    .parameter "messageId"

    .prologue
    .line 433
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 434
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c007b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 436
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 437
    const v1, 0x7f0c00e9

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    const v1, 0x7f0c0101

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 439
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 441
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 442
    return-void
.end method

.method private createChannelPreference(Landroid/database/Cursor;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "c"

    .prologue
    .line 194
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 195
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0, v0, p1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->setPreferenceAttr(Landroid/preference/CheckBoxPreference;Landroid/database/Cursor;)V

    .line 196
    return-object v0
.end method

.method private createNLChannelPreference([Ljava/lang/String;)Landroid/preference/CheckBoxPreference;
    .locals 8
    .parameter "mCBChannelList"

    .prologue
    const/4 v7, 0x0

    .line 446
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 448
    .local v4, pref:Landroid/preference/CheckBoxPreference;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 450
    .local v1, channelID:Ljava/lang/String;
    const-string v5, "[+-]?\\d+"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 452
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 454
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 455
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 456
    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 457
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    .line 458
    const-string v5, "919"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "4370"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 459
    :cond_0
    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 461
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelCheckListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 448
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    .end local v1           #channelID:Ljava/lang/String;
    :cond_3
    return-object v4
.end method

.method private refreshMyChannel()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 234
    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->addPreferencesAddMyChannel()V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 238
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->startQuery()V

    .line 241
    return-void
.end method

.method private startQuery()V
    .locals 9

    .prologue
    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/CbConfigPreferenceActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v8

    .line 227
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    .line 354
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v7

    check-cast v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 356
    .local v7, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 357
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 389
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 359
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    iget v1, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    .line 361
    .local v9, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, channelId:Ljava/lang/String;
    new-instance v0, Lcom/android/mms/ui/EditChannelDialog;

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelSetListener:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    invoke-static {p0, v4}, Lcom/android/mms/ui/ChannelUtils;->getIdbyChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/EditChannelDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    .line 367
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/EditChannelDialog;->show()V

    goto :goto_0

    .line 372
    .end local v4           #channelId:Ljava/lang/String;
    .end local v9           #pref:Landroid/preference/CheckBoxPreference;
    :pswitch_1
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v8, v0, -0x2

    .line 373
    .local v8, position:I
    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;

    invoke-direct {v0, p0, v8}, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;I)V

    const v1, 0x7f0c007a

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const/high16 v3, 0x7f06

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->addPreferencesFromResource(I)V

    .line 86
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCBChannel()[Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, mCBChannelList:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 89
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 90
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 92
    :cond_0
    const-string v3, "pref_key_cb_my_channels"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    .line 94
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    .line 96
    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 97
    new-instance v3, Lcom/android/mms/ui/CbConfigPreferenceActivity$QueryHandler;

    iget-object v4, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v3, p0, v4, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$QueryHandler;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/content/ContentResolver;Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 98
    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 99
    .local v1, listView:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 101
    if-eqz v2, :cond_1

    .line 103
    iget-object v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->createNLChannelPreference([Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 105
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/EditChannelDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/EditChannelDialog;->dismiss()V

    .line 148
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 406
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 429
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 408
    :sswitch_0
    new-instance v1, Lcom/android/mms/ui/CbConfigPreferenceActivity$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$6;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    const v2, 0x7f0c0079

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    .line 416
    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    goto :goto_0

    .line 423
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->finish()V

    goto :goto_0

    .line 406
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 133
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 134
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_cb_my_channel_enabled_count"

    invoke-static {p0}, Lcom/android/mms/ui/ChannelUtils;->getCheckedCount(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-static {v1, v2}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 139
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 152
    const-string v0, "add_my_channel"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 153
    new-instance v0, Lcom/android/mms/ui/EditChannelDialog;

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelSetListener:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/EditChannelDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mEditChannelDialog:Lcom/android/mms/ui/EditChannelDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/EditChannelDialog;->show()V

    .line 156
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 394
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 395
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "add_my_channel"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 399
    const v0, 0x7f0c0104

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020095

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 401
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 109
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 111
    const-string v2, "pref_key_cb_channel_selection"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 112
    .local v1, chSelectionPref:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelSelectionListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "pref_key_cb_channel_selection"

    const-string v4, "All channels"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, chSelection:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCBChannel()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "pref_key_cb_channel_selection"

    const-string v4, "My channel"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_0
    const-string v2, "My channel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    const v2, 0x7f0c00fd

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 124
    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->refreshMyChannel()V

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_1
    const v2, 0x7f0c0108

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setPreferenceAttr(Landroid/preference/CheckBoxPreference;Landroid/database/Cursor;)V
    .locals 9
    .parameter "pref"
    .parameter "c"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 200
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-gtz v8, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    const-string v8, "channel_name"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 203
    .local v3, idxChName:I
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, title:Ljava/lang/String;
    const-string v8, "channel_id"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 205
    .local v2, idxChId:I
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 206
    .local v0, channelID:I
    const-string v8, "is_checked"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 207
    .local v4, idxChecked:I
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 209
    .local v1, check:I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    if-ne v1, v6, :cond_3

    :goto_1
    invoke-virtual {p1, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 213
    invoke-virtual {p1, v7}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 214
    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelCheckListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v6}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 215
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v6

    const/4 v8, 0x6

    if-ne v6, v8, :cond_0

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "919"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "4370"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 217
    :cond_2
    invoke-virtual {p1, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v6, v7

    .line 212
    goto :goto_1
.end method
