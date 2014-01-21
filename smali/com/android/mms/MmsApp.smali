.class public Lcom/android/mms/MmsApp;
.super Landroid/app/Application;
.source "MmsApp.java"


# static fields
.field public static final APN_CTNET:I = 0x2

.field public static final APN_CTWAP:I = 0x1

.field public static final APN_ID:Ljava/lang/String; = "apn_id"

.field public static final DB_ID:Ljava/lang/String; = "_id"

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field public static final TAG:Ljava/lang/String; = "Mms/MmsApp"

.field private static mContext:Landroid/content/Context;

.field private static mPrefExist:Z

.field private static sCreated:Z

.field private static sMmsApp:Lcom/android/mms/MmsApp;

.field private static sOldLocale:Ljava/util/Locale;


# instance fields
.field private mCountryDetector:Landroid/location/CountryDetector;

.field private mCountryIso:Ljava/lang/String;

.field private mCountryListener:Landroid/location/CountryListener;

.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    sput-object v0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    .line 69
    sput-object v0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    .line 80
    sput-boolean v1, Lcom/android/mms/MmsApp;->mPrefExist:Z

    .line 81
    sput-boolean v1, Lcom/android/mms/MmsApp;->sCreated:Z

    .line 266
    sput-object v0, Lcom/android/mms/MmsApp;->sOldLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/MmsApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/mms/MmsApp;->initViewCache()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/mms/MmsApp;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/MmsApp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    return-object p1
.end method

.method public static declared-synchronized getApplication()Lcom/android/mms/MmsApp;
    .locals 2

    .prologue
    .line 255
    const-class v0, Lcom/android/mms/MmsApp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initCountryIso()V
    .locals 3

    .prologue
    .line 231
    const-string v0, "Mms/MmsApp"

    const-string v1, "initCountryIso start"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    .line 233
    const-string v0, "Mms/MmsApp"

    const-string v1, "got country"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "country_detector"

    invoke-virtual {p0, v0}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    .line 236
    new-instance v0, Lcom/android/mms/MmsApp$2;

    invoke-direct {v0, p0}, Lcom/android/mms/MmsApp$2;-><init>(Lcom/android/mms/MmsApp;)V

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    .line 243
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .line 244
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    .line 245
    const-string v0, "Mms/MmsApp"

    const-string v1, "initCountryIso end"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private initViewCache()V
    .locals 2

    .prologue
    .line 249
    const-string v0, "Mms/MmsApp"

    const-string v1, "initViewCache start"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->init()V

    .line 251
    const-string v0, "Mms/MmsApp"

    const-string v1, "initViewCache end"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method private onLocaleChanged()V
    .locals 2

    .prologue
    .line 289
    const-string v0, "Mms/MmsApp"

    const-string v1, "on locale changed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->clearCache()V

    .line 291
    return-void
.end method


# virtual methods
.method public IsCreated()Z
    .locals 3

    .prologue
    .line 334
    const-string v0, "Mms/MmsApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/MmsApp;->sCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget-boolean v0, Lcom/android/mms/MmsApp;->sCreated:Z

    return v0
.end method

.method public getCurrentCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 327
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 271
    const-string v0, "Mms/MmsApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged(),newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v1, Lcom/android/mms/MmsApp;->sOldLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/android/mms/MmsApp;->onLocaleChanged()V

    .line 275
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/android/mms/MmsApp;->sOldLocale:Ljava/util/Locale;

    .line 276
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->initOldDateOrder()V

    .line 279
    :cond_0
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/layout/LayoutManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 280
    const-string v0, "Mms/MmsApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged(),newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadChameleonFromPreference(Landroid/content/Context;)V

    .line 285
    return-void
.end method

.method public onCreate()V
    .locals 12

    .prologue
    const v11, 0x7f060004

    const v10, 0x7f060003

    const/high16 v9, 0x7f06

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 85
    const-string v4, "Mms/MmsApp"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v4, "Mms/MmsApp"

    const-string v5, "onCreate Start"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 96
    const-string v4, "Mms/MmsApp"

    const-string v5, "super.onCreate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const v4, 0x7f0e000d

    invoke-virtual {p0, v4}, Lcom/android/mms/MmsApp;->setTheme(I)V

    .line 100
    sput-object p0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    .line 101
    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v4, Lcom/android/mms/MmsApp;->sOldLocale:Ljava/util/Locale;

    .line 103
    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    .line 105
    const-string v4, "com.android.mms_preferences"

    invoke-virtual {p0, v4}, Lcom/android/mms/MmsApp;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 106
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    sput-boolean v7, Lcom/android/mms/MmsApp;->mPrefExist:Z

    .line 110
    :cond_0
    sget-object v4, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, callingApp:Ljava/lang/String;
    const-string v4, "Mms/MmsApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-boolean v4, Lcom/android/mms/MmsApp;->mPrefExist:Z

    if-eqz v4, :cond_4

    .line 127
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    invoke-static {v4, v5, v7, v9, v8}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 129
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableTabSetting()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    invoke-static {v4, v5, v7, v10, v8}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 140
    :goto_0
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    invoke-static {v4, v5, v7, v11, v8}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 161
    :goto_1
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->init(Landroid/content/Context;)V

    .line 165
    invoke-direct {p0}, Lcom/android/mms/MmsApp;->initCountryIso()V

    .line 167
    invoke-static {p0, v7}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    .line 168
    invoke-static {p0}, Lcom/android/mms/util/DraftCache;->init(Landroid/content/Context;)V

    .line 171
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    .line 172
    sput-boolean v7, Lcom/android/mms/MmsApp;->sCreated:Z

    .line 173
    invoke-static {p0}, Lcom/android/mms/util/DownloadManager;->init(Landroid/content/Context;)V

    .line 174
    invoke-static {p0}, Lcom/android/mms/util/RateController;->init(Landroid/content/Context;)V

    .line 176
    invoke-static {p0}, Lcom/android/mms/layout/LayoutManager;->init(Landroid/content/Context;)V

    .line 177
    invoke-static {p0}, Lcom/android/mms/util/SmileyParser;->init(Landroid/content/Context;)V

    .line 178
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->init(Landroid/content/Context;)V

    .line 180
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    invoke-static {p0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->init(Landroid/content/Context;)V

    .line 183
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 184
    invoke-static {p0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->init(Landroid/content/Context;)V

    .line 187
    :cond_2
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 188
    .local v2, handler:Landroid/os/Handler;
    new-instance v4, Lcom/android/mms/MmsApp$1;

    invoke-direct {v4, p0}, Lcom/android/mms/MmsApp$1;-><init>(Lcom/android/mms/MmsApp;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 219
    sget-object v4, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v3

    .line 224
    .local v3, reservationManager:Lcom/android/mms/transaction/ReservationManager;
    invoke-virtual {v3}, Lcom/android/mms/transaction/ReservationManager;->resetAfterConnected()V

    .line 226
    const-string v4, "Mms/MmsApp"

    const-string v5, "onCreate End"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v4, "Mms/MmsApp"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void

    .line 133
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #reservationManager:Lcom/android/mms/transaction/ReservationManager;
    :cond_3
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    const v6, 0x7f060007

    invoke-static {v4, v5, v7, v6, v8}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 135
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    const v6, 0x7f060009

    invoke-static {v4, v5, v7, v6, v8}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 137
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    const v6, 0x7f060008

    invoke-static {v4, v5, v7, v6, v8}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    goto :goto_0

    .line 143
    :cond_4
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    invoke-static {v4, v5, v7, v9, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 145
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableTabSetting()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 146
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    invoke-static {v4, v5, v7, v10, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 156
    :goto_2
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    invoke-static {v4, v5, v7, v11, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    goto/16 :goto_1

    .line 149
    :cond_5
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    const v6, 0x7f060007

    invoke-static {v4, v5, v7, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 151
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    const v6, 0x7f060009

    invoke-static {v4, v5, v7, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 153
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    const v6, 0x7f060008

    invoke-static {v4, v5, v7, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    goto :goto_2
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 260
    const-string v0, "Mms/MmsApp"

    const-string v1, "onTerminate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    invoke-virtual {v0, v1}, Landroid/location/CountryDetector;->removeCountryListener(Landroid/location/CountryListener;)V

    .line 262
    invoke-static {p0}, Lcom/android/mms/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V

    .line 263
    const-string v0, "Mms/MmsApp"

    const-string v1, "onTerminate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method
