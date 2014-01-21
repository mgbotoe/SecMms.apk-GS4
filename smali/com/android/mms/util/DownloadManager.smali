.class public Lcom/android/mms/util/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field private static final DEFERRED_MASK:I = 0x4

.field public static final STATE_DOWNLOADING:I = 0x81

.field public static final STATE_PERMANENT_FAILURE:I = 0x87

.field public static final STATE_TRANSIENT_FAILURE:I = 0x82

.field public static final STATE_UNSTARTED:I = 0x80

.field private static final TAG:Ljava/lang/String; = "Mms/DownloadManager"

.field private static sInstance:Lcom/android/mms/util/DownloadManager;


# instance fields
.field private mAutoDownload:Z

.field private final mContext:Landroid/content/Context;

.field private mDataRoamingContentObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mMobileDataContentObserver:Landroid/database/ContentObserver;

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private final mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mRoamingStateListener:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v2, Lcom/android/mms/util/DownloadManager$1;

    invoke-direct {v2, p0}, Lcom/android/mms/util/DownloadManager$1;-><init>(Lcom/android/mms/util/DownloadManager;)V

    iput-object v2, p0, Lcom/android/mms/util/DownloadManager;->mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 93
    new-instance v2, Lcom/android/mms/util/DownloadManager$2;

    invoke-direct {v2, p0}, Lcom/android/mms/util/DownloadManager$2;-><init>(Lcom/android/mms/util/DownloadManager;)V

    iput-object v2, p0, Lcom/android/mms/util/DownloadManager;->mRoamingStateListener:Landroid/content/BroadcastReceiver;

    .line 140
    new-instance v2, Lcom/android/mms/util/DownloadManager$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/mms/util/DownloadManager$3;-><init>(Lcom/android/mms/util/DownloadManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/mms/util/DownloadManager;->mDataRoamingContentObserver:Landroid/database/ContentObserver;

    .line 152
    new-instance v2, Lcom/android/mms/util/DownloadManager$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/mms/util/DownloadManager$4;-><init>(Lcom/android/mms/util/DownloadManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/mms/util/DownloadManager;->mMobileDataContentObserver:Landroid/database/ContentObserver;

    .line 119
    iput-object p1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    .line 120
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/mms/util/DownloadManager;->mHandler:Landroid/os/Handler;

    .line 121
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 122
    iget-object v2, p0, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/android/mms/util/DownloadManager;->mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 124
    iget-object v2, p0, Lcom/android/mms/util/DownloadManager;->mRoamingStateListener:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    iget-object v2, p0, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    .line 129
    const-string v2, "Mms/DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAutoDownload ------> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    const-string v2, "data_roaming"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 133
    .local v0, dataRoamingtUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/util/DownloadManager;->mDataRoamingContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 136
    .local v1, mobileDataUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/util/DownloadManager;->mMobileDataContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 138
    .end local v0           #dataRoamingtUri:Landroid/net/Uri;
    .end local v1           #mobileDataUri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method static synthetic access$000()Lcom/android/mms/util/DownloadManager;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/util/DownloadManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/util/DownloadManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/util/DownloadManager;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/util/DownloadManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/util/DownloadManager;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/mms/util/DownloadManager;->getMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getAutoDownloadState(Landroid/content/SharedPreferences;)Z
    .locals 1
    .parameter "prefs"

    .prologue
    .line 187
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->isRoaming()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;Z)Z

    move-result v0

    return v0
.end method

.method static getAutoDownloadState(Landroid/content/SharedPreferences;Z)Z
    .locals 7
    .parameter "prefs"
    .parameter "roaming"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 191
    const-string v4, "pref_key_mms_auto_retrieval"

    invoke-interface {p0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 193
    .local v1, autoDownload:Z
    const-string v4, "Mms/DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auto download without roaming -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRetrievalDuringRoaming()Z

    move-result v4

    if-nez v4, :cond_0

    .line 212
    .end local v1           #autoDownload:Z
    :goto_0
    return v1

    .line 198
    .restart local v1       #autoDownload:Z
    :cond_0
    if-eqz v1, :cond_3

    .line 199
    const-string v4, "pref_key_mms_retrieval_during_roaming"

    invoke-interface {p0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 202
    .local v0, alwaysAuto:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/TelephonyUtils;->getDataRoamingEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 203
    const/4 v0, 0x0

    .line 206
    :cond_1
    const-string v4, "Mms/DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auto download during roaming -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    if-eqz p1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    .line 209
    goto :goto_0

    .end local v0           #alwaysAuto:Z
    :cond_3
    move v1, v3

    .line 212
    goto :goto_0
.end method

.method public static getInstance()Lcom/android/mms/util/DownloadManager;
    .locals 2

    .prologue
    .line 180
    sget-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    sget-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    return-object v0
.end method

.method private getMessage(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 342
    iget-object v4, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/NotificationInd;

    .line 344
    .local v1, ind:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 345
    .local v3, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, subject:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 348
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, from:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00c6

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 345
    .end local v0           #from:Ljava/lang/String;
    .end local v2           #subject:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00c4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 348
    .restart local v2       #subject:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00c5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 170
    const-string v0, "Mms/DownloadManager"

    const-string v1, "DownloadManager.init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "Mms/DownloadManager"

    const-string v1, "Already initialized."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    new-instance v0, Lcom/android/mms/util/DownloadManager;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    .line 177
    return-void
.end method

.method static isRoaming()Z
    .locals 4

    .prologue
    .line 217
    const-string v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, roaming:Ljava/lang/String;
    const-string v1, "Mms/DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roaming ------> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public Isexpired(Landroid/net/Uri;)Z
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 228
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/NotificationInd;

    .line 229
    .local v1, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 230
    const/4 v2, 0x1

    .line 239
    .end local v1           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_0
    :goto_0
    return v2

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/DownloadManager"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 235
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "Mms/DownloadManager"

    const-string v4, "TypeCastException in Isexpired method !!!!"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getState(Landroid/net/Uri;)I
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 355
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "st"

    aput-object v2, v3, v5

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 360
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 362
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 364
    .local v8, state:I
    and-int/lit8 v0, v8, -0x5

    .line 367
    if-eqz v7, :cond_0

    .line 368
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 371
    .end local v8           #state:I
    :cond_0
    :goto_0
    return v0

    .line 367
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    .line 368
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_1
    throw v0

    :cond_2
    if-eqz v7, :cond_3

    .line 368
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_3
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public isAuto()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    return v0
.end method

.method public markExpriedState(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 244
    const-string v0, "Mms/DownloadManager"

    const-string v1, "markExpriedState"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/util/DownloadManager$5;

    invoke-direct {v1, p0}, Lcom/android/mms/util/DownloadManager$5;-><init>(Lcom/android/mms/util/DownloadManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1, p1, v2, v2}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method public markState(Landroid/net/Uri;I)V
    .locals 12
    .parameter "uri"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v7

    check-cast v7, Lcom/google/android/mms/pdu/NotificationInd;

    .line 264
    .local v7, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    const/16 v0, 0x81

    if-ne p2, v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/util/DownloadManager$6;

    invoke-direct {v1, p0}, Lcom/android/mms/util/DownloadManager$6;-><init>(Lcom/android/mms/util/DownloadManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, p1, v2, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 309
    .end local v7           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v6

    .line 282
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v0, "Mms/DownloadManager"

    invoke-virtual {v6}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 284
    .end local v6           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v6

    .line 285
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v0, "Mms/DownloadManager"

    const-string v1, "TypeCastException in markState method !!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    .end local v6           #e:Ljava/lang/ClassCastException;
    .restart local v7       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_0
    const/16 v0, 0x87

    if-ne p2, v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/util/DownloadManager$7;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/util/DownloadManager$7;-><init>(Lcom/android/mms/util/DownloadManager;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    :cond_1
    :goto_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 307
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "st"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 300
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    if-nez v0, :cond_1

    .line 301
    or-int/lit8 p2, p2, 0x4

    goto :goto_1
.end method

.method public showErrorCodeToast(I)V
    .locals 3
    .parameter "errorStr"

    .prologue
    .line 312
    move v0, p1

    .line 313
    .local v0, errStr:I
    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/util/DownloadManager$8;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/util/DownloadManager$8;-><init>(Lcom/android/mms/util/DownloadManager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    return-void
.end method

.method public showErrorCodeToast(Ljava/lang/String;)V
    .locals 3
    .parameter "errorStr"

    .prologue
    .line 326
    move-object v0, p1

    .line 327
    .local v0, errStr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/util/DownloadManager$9;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/util/DownloadManager$9;-><init>(Lcom/android/mms/util/DownloadManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 338
    :cond_0
    return-void
.end method
