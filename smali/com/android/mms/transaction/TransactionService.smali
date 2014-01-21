.class public Lcom/android/mms/transaction/TransactionService;
.super Landroid/app/Service;
.source "TransactionService.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;,
        Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_ACKALARM:Ljava/lang/String; = "android.intent.action.ACTION_ACKALARM"

.field public static final ACTION_ENABLE_AUTO_RETRIEVE:Ljava/lang/String; = "android.intent.action.ACTION_ENABLE_AUTO_RETRIEVE"

.field private static final ACTION_NETFLAG_RESET:Ljava/lang/String; = "com.android.mms.intent.action.NETFLAG_RESET"

.field public static final ACTION_ONALARM:Ljava/lang/String; = "android.intent.action.ACTION_ONALARM"

.field private static final APN_EXTENSION_WAIT:I = 0x7530

.field private static final CONNECTIVITY_START_TIMEOUT:I = 0x7530

.field private static final EVENT_CONTINUE_MMS_CONNECTIVITY:I = 0x3

.field private static final EVENT_DATA_STATE_CHANGED:I = 0x2

.field private static final EVENT_HANDLE_NEXT_CHECKING_TRANSACTION:I = 0x5

.field private static final EVENT_HANDLE_NEXT_PENDING_TRANSACTION:I = 0x4

.field private static final EVENT_MMS_CONNECTIVITY_START_CHECK:I = 0x6

.field private static final EVENT_QUIT:I = 0x64

.field private static final EVENT_TRANSACTION_REQUEST:I = 0x1

.field private static final MMS_PROCESSING_MAX_COUNT:I = 0xa

.field private static final RETRY_WAIT:I = 0x2710

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final STATE_URI:Ljava/lang/String; = "uri"

.field private static final TAG:Ljava/lang/String; = "Mms:transaction"

.field private static final TOAST_DOWNLOAD_LATER:I = 0x2

.field private static final TOAST_MSG_QUEUED:I = 0x1

.field private static final TOAST_NONE:I = -0x1

.field public static final TRANSACTION_COMPLETED_ACTION:Ljava/lang/String; = "android.intent.action.TRANSACTION_COMPLETED_ACTION"

.field private static wakelockAcquireCnt:I


# instance fields
.field private mApnChanged:Z

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mOriginAPN:I

.field private final mPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

.field private mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mToast:Landroid/widget/Toast;

.field public mToastHandler:Landroid/os/Handler;

.field private mToastType:I

.field private mUsingNetworkFeatureRequested:Z

.field private mWaitingMobileMmsConnected:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private noServiceNeedtoSend:Z

.field private retry_count:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/transaction/TransactionService;->wakelockAcquireCnt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 172
    iput v1, p0, Lcom/android/mms/transaction/TransactionService;->mOriginAPN:I

    .line 173
    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->mApnChanged:Z

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    .line 192
    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->noServiceNeedtoSend:Z

    .line 193
    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    .line 194
    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    .line 197
    iput v2, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToast:Landroid/widget/Toast;

    .line 201
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    .line 215
    new-instance v0, Lcom/android/mms/transaction/TransactionService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$1;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/TransactionService;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->renewMmsConnectivity()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/mms/transaction/TransactionService;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->isDataEnabledInSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/mms/transaction/TransactionService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/TransactionService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/transaction/TransactionService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/mms/transaction/TransactionService;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 874
    return-void
.end method

.method private declared-synchronized createWakeLock()V
    .locals 3

    .prologue
    .line 863
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 864
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 865
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "MMS Connectivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 866
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 863
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getTransactionType(I)I
    .locals 3
    .parameter "msgType"

    .prologue
    .line 535
    sparse-switch p1, :sswitch_data_0

    .line 543
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService] Unrecognized MESSAGE_TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 537
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 539
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 541
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 535
    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_2
        0x82 -> :sswitch_0
        0x87 -> :sswitch_1
    .end sparse-switch
.end method

.method private isDataEnabledInSettings()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1008
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 1009
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 1011
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_RIL_ForceConnectMMS"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    move v0, v1

    .line 1016
    :goto_0
    return v0

    .line 1015
    :cond_2
    const-string v0, "Mms:transaction"

    const-string v1, "[TransactionService] Mobile Data is disabled in Settings"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataNetworkAvailable()Z
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 529
    const/4 v0, 0x1

    .line 531
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 501
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 506
    .local v1, ni:Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 508
    .local v2, ni2:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 509
    const-string v3, "Mms:transaction"

    const-string v4, "[TransactionService] wifi network available!"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 513
    .local v0, networkAvailable:Z
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 521
    :cond_3
    return v0

    .line 512
    .end local v0           #networkAvailable:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTransientFailure(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 497
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V
    .locals 22
    .parameter "serviceId"
    .parameter "txnBundle"
    .parameter "noNetwork"

    .prologue
    .line 549
    if-eqz p3, :cond_8

    .line 551
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    const/4 v10, 0x1

    .line 552
    .local v10, dataSuspended:Z
    :goto_0
    const/4 v9, 0x0

    .line 553
    .local v9, callIn2g:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v19

    .line 554
    .local v19, radioTech:I
    const/4 v4, 0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_0

    const/4 v4, 0x2

    move/from16 v0, v19

    if-eq v0, v4, :cond_0

    if-nez v19, :cond_2

    .line 555
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 556
    :cond_1
    const/4 v9, 0x1

    .line 560
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v13

    .line 561
    .local v13, mTransactionType:I
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v11

    .line 562
    .local v11, downloadManager:Lcom/android/mms/util/DownloadManager;
    invoke-virtual {v11}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v12

    .line 564
    .local v12, isAutoDownload:Z
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TransactionService] launchTransaction: dataSuspended : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", callIn2g : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    if-nez v10, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 567
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LGU+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 568
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v4

    const-string v5, "inbox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 570
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 571
    .local v18, msgUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v20

    .line 572
    .local v20, threadId:J
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2, v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/TelephonyUtils;->getDataNetworkEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 575
    const-string v4, "Mms:transaction"

    const-string v5, "launchTransaction: !getDataNetworkEnabled"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const/16 v4, 0x82

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 614
    .end local v9           #callIn2g:Z
    .end local v10           #dataSuspended:Z
    .end local v11           #downloadManager:Lcom/android/mms/util/DownloadManager;
    .end local v12           #isAutoDownload:Z
    .end local v13           #mTransactionType:I
    .end local v18           #msgUri:Landroid/net/Uri;
    .end local v19           #radioTech:I
    .end local v20           #threadId:J
    :goto_1
    return-void

    .line 551
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 583
    .restart local v9       #callIn2g:Z
    .restart local v10       #dataSuspended:Z
    .restart local v11       #downloadManager:Lcom/android/mms/util/DownloadManager;
    .restart local v12       #isAutoDownload:Z
    .restart local v13       #mTransactionType:I
    .restart local v19       #radioTech:I
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-nez v4, :cond_6

    if-nez v10, :cond_6

    if-eqz v9, :cond_7

    :cond_6
    if-nez v13, :cond_7

    if-eqz v12, :cond_7

    .line 584
    const-string v4, "Mms:transaction"

    const-string v5, "[TransactionService] mark error type to ERROR_TYPE_GENERIC"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 586
    .local v3, mContext:Landroid/content/Context;
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 588
    .local v14, mUri:Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v6, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 589
    .local v6, values:Landroid/content/ContentValues;
    const-string v4, "err_type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    invoke-static {v14}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 591
    .local v16, msgId:J
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "msg_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 599
    .end local v3           #mContext:Landroid/content/Context;
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v14           #mUri:Landroid/net/Uri;
    .end local v16           #msgId:J
    :cond_7
    const-string v4, "Mms:transaction"

    const-string v5, "[TransactionService] launchTransaction: no network error!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(II)V

    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->registerForConnectionStateChanges(Landroid/content/Context;)V

    goto :goto_1

    .line 608
    .end local v9           #callIn2g:Z
    .end local v10           #dataSuspended:Z
    .end local v11           #downloadManager:Lcom/android/mms/util/DownloadManager;
    .end local v12           #isAutoDownload:Z
    .end local v13           #mTransactionType:I
    .end local v19           #radioTech:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 609
    .local v15, msg:Landroid/os/Message;
    move/from16 v0, p1

    iput v0, v15, Landroid/os/Message;->arg1:I

    .line 610
    move-object/from16 v0, p2

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 612
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TransactionService] launchTransaction: sending message "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v4, v15}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method

.method private onNetworkUnavailable(I)V
    .locals 2
    .parameter "serviceId"

    .prologue
    .line 644
    const/4 v0, 0x1

    .line 646
    .local v0, toastType:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 647
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 650
    :cond_0
    return-void
.end method

.method private onNetworkUnavailable(II)V
    .locals 7
    .parameter "serviceId"
    .parameter "transactionType"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 617
    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TransactionService] onNetworkUnavailable: sid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 619
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    monitor-enter v2

    .line 620
    :try_start_0
    const-string v1, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNetworkUnavailable : retry_count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 622
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    .line 623
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 626
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 628
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    monitor-exit v2

    .line 641
    :goto_0
    return-void

    .line 628
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 631
    :cond_1
    if-ne p2, v4, :cond_4

    .line 632
    iput v6, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    .line 636
    :cond_2
    :goto_1
    iget v1, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    if-eq v1, v5, :cond_3

    .line 637
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 639
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto :goto_0

    .line 633
    :cond_4
    if-ne p2, v6, :cond_2

    .line 634
    iput v4, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    goto :goto_1
.end method

.method private processSendRetriveAck(Landroid/net/Uri;ZI)V
    .locals 15
    .parameter "uri"
    .parameter "isSpam"
    .parameter "msgType"

    .prologue
    .line 1928
    const-string v2, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processSendRetriveAck(),uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",isSpam="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "msgType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    if-eqz p1, :cond_0

    .line 1930
    const-wide/16 v10, 0x0

    .line 1931
    .local v10, messageId:J
    const/4 v14, 0x0

    .line 1932
    .local v14, transId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "tr_id"

    aput-object v8, v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1933
    .local v12, mmsCursor:Landroid/database/Cursor;
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1934
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v3, v2

    .line 1935
    .end local v10           #messageId:J
    .local v3, messageId:J
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1936
    .end local v14           #transId:Ljava/lang/String;
    .local v5, transId:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1937
    .local v6, type:Ljava/lang/String;
    if-nez p3, :cond_1

    .line 1938
    const-string v6, "noticationtransaction"

    .line 1942
    :goto_0
    new-instance v1, Lcom/android/mms/transaction/RetrieveAckTimer;

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v8, 0x0

    const/16 v9, 0xa

    move/from16 v7, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/mms/transaction/RetrieveAckTimer;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)V

    .line 1943
    .local v1, AckTimer:Ljava/lang/Runnable;
    new-instance v13, Ljava/lang/Thread;

    invoke-direct {v13, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1944
    .local v13, t:Ljava/lang/Thread;
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 1946
    .end local v1           #AckTimer:Ljava/lang/Runnable;
    .end local v6           #type:Ljava/lang/String;
    .end local v13           #t:Ljava/lang/Thread;
    :goto_1
    if-eqz v12, :cond_0

    .line 1947
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1949
    .end local v3           #messageId:J
    .end local v5           #transId:Ljava/lang/String;
    .end local v12           #mmsCursor:Landroid/database/Cursor;
    :cond_0
    return-void

    .line 1940
    .restart local v3       #messageId:J
    .restart local v5       #transId:Ljava/lang/String;
    .restart local v6       #type:Ljava/lang/String;
    .restart local v12       #mmsCursor:Landroid/database/Cursor;
    :cond_1
    const-string v6, "retrievetransaction"

    goto :goto_0

    .end local v3           #messageId:J
    .end local v5           #transId:Ljava/lang/String;
    .end local v6           #type:Ljava/lang/String;
    .restart local v10       #messageId:J
    .restart local v14       #transId:Ljava/lang/String;
    :cond_2
    move-object v5, v14

    .end local v14           #transId:Ljava/lang/String;
    .restart local v5       #transId:Ljava/lang/String;
    move-wide v3, v10

    .end local v10           #messageId:J
    .restart local v3       #messageId:J
    goto :goto_1
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 881
    :cond_0
    return-void
.end method

.method private renewMmsConnectivity()V
    .locals 4

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1691
    return-void
.end method

.method private sendMMSRetrievalStateCIQ(JI)V
    .locals 12
    .parameter "msgID"
    .parameter "state"

    .prologue
    .line 1954
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1956
    .local v0, mContext:Landroid/content/Context;
    const/4 v9, 0x0

    .line 1957
    .local v9, mmsTid:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1958
    .local v7, lUrl:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1960
    .local v10, resultCode:I
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1963
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1964
    const-string v1, "ct_l"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1965
    const-string v1, "tr_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1966
    .end local v9           #mmsTid:Ljava/lang/String;
    .local v6, mmsTid:Ljava/lang/String;
    :try_start_1
    const-string v1, "retr_st"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .line 1969
    .end local v10           #resultCode:I
    .local v4, resultCode:I
    :goto_0
    if-eqz v8, :cond_0

    .line 1970
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1973
    :cond_0
    sget-object v1, Lcom/android/mms/transaction/Transaction;->mMMSsb:Lcom/android/mms/transaction/MMSStateBroadcaster;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/mms/transaction/MMSStateBroadcaster;->sendMMSRetrievalState(IBIILjava/lang/String;Ljava/lang/String;)V

    .line 1974
    return-void

    .line 1969
    .end local v4           #resultCode:I
    .end local v6           #mmsTid:Ljava/lang/String;
    .restart local v9       #mmsTid:Ljava/lang/String;
    .restart local v10       #resultCode:I
    :catchall_0
    move-exception v1

    move-object v6, v9

    .end local v9           #mmsTid:Ljava/lang/String;
    .restart local v6       #mmsTid:Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_1

    .line 1970
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1969
    :cond_1
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1

    .end local v6           #mmsTid:Ljava/lang/String;
    .restart local v9       #mmsTid:Ljava/lang/String;
    :cond_2
    move v4, v10

    .end local v10           #resultCode:I
    .restart local v4       #resultCode:I
    move-object v6, v9

    .end local v9           #mmsTid:Ljava/lang/String;
    .restart local v6       #mmsTid:Ljava/lang/String;
    goto :goto_0
.end method

.method private stopSelfIfIdle(I)V
    .locals 3
    .parameter "startId"

    .prologue
    .line 483
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    const-string v0, "Mms:transaction"

    const-string v2, "[TransactionService] stopSelfIfIdle: STOP!"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v0, "Mms:transaction"

    const-string v2, "[TransactionService] stopSelfIfIdle: unRegisterForConnectionStateChanges"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 491
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 493
    :cond_0
    monitor-exit v1

    .line 494
    return-void

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized updateThreadSnippet(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 18
    .parameter "context"
    .parameter "threadId"
    .parameter "messageUri"
    .parameter "snippet"

    .prologue
    .line 1886
    const-class v17, Lcom/android/mms/transaction/TransactionService;

    monitor-enter v17

    const-wide/16 v12, -0x1

    .line 1887
    .local v12, latestmsgId:J
    const-wide/16 v14, -0x1

    .line 1888
    .local v14, receivedmsgId:J
    const/4 v1, 0x3

    :try_start_0
    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "\'sms\' as type"

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v4, v1

    .line 1894
    .local v4, SMS_MMS_LAST_MESSAGE_UNION_PROJECTION:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") UNION  select DISTINCT _id,\'mms\' as type, date * 1000 AS date from pdu where (thread_id= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "date DESC "

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 1901
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1902
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1904
    .local v16, type:Ljava/lang/String;
    const-string v1, "mms"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1905
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1906
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 1907
    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TransactionService] latest msgId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Received msgId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1911
    .end local v16           #type:Ljava/lang/String;
    :cond_0
    if-eqz v11, :cond_1

    .line 1912
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1916
    :cond_1
    cmp-long v1, v12, v14

    if-nez v1, :cond_2

    .line 1917
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1918
    .local v8, values:Landroid/content/ContentValues;
    const-string v1, "group_snippet"

    move-object/from16 v0, p3

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v1, Landroid/provider/Telephony$Threads;->LAST_MESSAGE_TIME_URI:Landroid/net/Uri;

    move/from16 v0, p1

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1923
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_2
    monitor-exit v17

    return-void

    .line 1911
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_3

    .line 1912
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1911
    :cond_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1886
    .end local v4           #SMS_MMS_LAST_MESSAGE_UNION_PROJECTION:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    monitor-exit v17

    throw v1
.end method


# virtual methods
.method protected beginMmsConnectivity()I
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 885
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->createWakeLock()V

    .line 904
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    .line 959
    :goto_0
    return v5

    .line 916
    :cond_1
    const/4 v5, 0x2

    .line 917
    .local v5, result:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 920
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v8, "enableMMS"

    invoke-virtual {v7, v6, v8}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v5

    .line 943
    :cond_2
    :goto_1
    const-string v7, "Mms:transaction"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[TransactionService] beginMmsConnectivity: result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    packed-switch v5, :pswitch_data_0

    .line 957
    iput-boolean v6, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    .line 958
    const-string v6, "Mms:transaction"

    const-string v7, "[TransactionService] StartUsingNetworkFeature Error!"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 923
    :cond_3
    iget-boolean v7, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    if-nez v7, :cond_4

    .line 924
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v8, "enableMMS"

    invoke-virtual {v7, v6, v8}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v5

    .line 927
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 928
    .local v1, i:Landroid/content/Intent;
    const-string v7, "com.android.mms.intent.action.NETFLAG_RESET"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    const/high16 v7, 0x800

    invoke-static {p0, v6, v1, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 930
    .local v4, pi:Landroid/app/PendingIntent;
    const-string v7, "alarm"

    invoke-virtual {p0, v7}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 931
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/32 v9, 0xea60

    add-long v2, v7, v9

    .line 932
    .local v2, nextCheckTime:J
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 934
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #nextCheckTime:J
    .end local v4           #pi:Landroid/app/PendingIntent;
    :cond_4
    const-string v7, "Mms:transaction"

    const-string v8, "[TransactionService] beginMmsConnectivity: skip sTartUsingNetworkFeature() because it is already requested"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    iget-boolean v7, p0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    if-ne v7, v11, :cond_5

    .line 936
    const/4 v5, 0x1

    goto :goto_1

    .line 937
    :cond_5
    iget-boolean v7, p0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    if-nez v7, :cond_2

    .line 938
    const/4 v5, 0x0

    goto :goto_1

    .line 947
    :pswitch_0
    iput-boolean v11, p0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    .line 948
    iput-boolean v11, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    .line 949
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->acquireWakeLock()V

    goto/16 :goto_0

    .line 952
    :pswitch_1
    iput-boolean v6, p0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    .line 953
    iput-boolean v11, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    .line 954
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->acquireWakeLock()V

    goto/16 :goto_0

    .line 945
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected endMmsConnectivity()V
    .locals 3

    .prologue
    .line 965
    :try_start_0
    const-string v0, "Mms:transaction"

    const-string v1, "[TransactionService] endMmsConnectivity"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService]     mProcessing queue size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService]     mPending queue size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->removeMessages(I)V

    .line 972
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 975
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    .line 980
    return-void

    .line 978
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    throw v0
.end method

.method protected endMmsConnectivity(I)V
    .locals 3
    .parameter "transactionType"

    .prologue
    .line 985
    :try_start_0
    const-string v0, "Mms:transaction"

    const-string v1, "[TransactionService] endMmsConnectivity"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService]     mProcessing queue size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService]     mPending queue size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 991
    :cond_0
    const-string v0, "Mms:transaction"

    const-string v1, "##### Don\'t StopUsingNetworkFeature endMmsConnectivity"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    .line 1004
    return-void

    .line 993
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 995
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->removeMessages(I)V

    .line 996
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1002
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 683
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 248
    const-string v2, "Mms:transaction"

    const-string v3, "[TransactionService] Creating TransactionService"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "TransactionService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 263
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 265
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    .line 266
    new-instance v2, Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;-><init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    .line 268
    new-instance v2, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;-><init>(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionService$1;)V

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    .line 269
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 270
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/transaction/TransactionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 654
    const-string v1, "Mms:transaction"

    const-string v2, "[TransactionService] Destroying TransactionService"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    const-string v1, "Mms:transaction"

    const-string v2, "[TransactionService] TransactionService exiting with transaction still pending"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    .line 672
    :try_start_0
    invoke-static {}, Lcom/android/mms/transaction/RetryScheduler;->getInstance()Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/transaction/RetryScheduler;->unregisterReceiver()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/TransactionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 678
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 679
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "Mms:transaction"

    const-string v2, "RetryScheduler.getInstance() = null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 45
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    const/4 v4, 0x2

    .line 479
    :goto_0
    return v4

    .line 289
    :cond_0
    const-string v4, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->isNetworkAvailable()Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v37, 0x1

    .line 291
    .local v37, noNetwork:Z
    :goto_1
    const/16 v36, 0x0

    .line 292
    .local v36, noDataNetwork:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-nez v4, :cond_1

    .line 293
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->isDataNetworkAvailable()Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v36, 0x1

    .line 296
    :cond_1
    :goto_2
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] onStart: #"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService]     : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " intent="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v5, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService]     networkAvailable="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v37, :cond_6

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v5, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService]     DatanetworkAvailable="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v36, :cond_7

    const/4 v4, 0x1

    :goto_4
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    .line 304
    .local v26, action:Ljava/lang/String;
    if-eqz v26, :cond_8

    const-string v4, "com.android.mms.intent.action.NETFLAG_RESET"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 305
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-nez v4, :cond_3

    .line 306
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    .line 307
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v5

    .line 308
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 309
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 311
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_3
    const-string v4, "Mms:transaction"

    const-string v5, "[TransactionService] reset mUsingNetworkFeatureRequested flag"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 290
    .end local v26           #action:Ljava/lang/String;
    .end local v36           #noDataNetwork:Z
    .end local v37           #noNetwork:Z
    :cond_4
    const/16 v37, 0x0

    goto/16 :goto_1

    .line 293
    .restart local v36       #noDataNetwork:Z
    .restart local v37       #noNetwork:Z
    :cond_5
    const/16 v36, 0x0

    goto/16 :goto_2

    .line 298
    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .line 299
    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    .line 311
    .restart local v26       #action:Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 317
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 318
    const-string v4, "android.intent.action.ACTION_ACKALARM"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 319
    const-string v4, "MsgType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 320
    .local v14, szType:Ljava/lang/String;
    const-string v4, "MsgId"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    .line 321
    .local v19, messageId:J
    const-string v4, "TansId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 322
    .local v12, transactionId:Ljava/lang/String;
    const-string v4, "retryAckCnt"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 323
    .local v16, retryAckCnt:I
    const-string v4, "isSpam"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 324
    .local v15, isSpam:Z
    add-int/lit8 v16, v16, 0x1

    .line 325
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ retryAckCnt : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "  isSpam : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/16 v41, 0x0

    .line 327
    .local v41, transaction:Lcom/android/mms/transaction/Transaction;
    const/4 v4, 0x5

    move/from16 v0, v16

    if-ge v0, v4, :cond_10

    .line 328
    const/4 v6, 0x0

    .line 329
    .local v6, parturi:Landroid/net/Uri;
    if-eqz v15, :cond_b

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://spammms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/spampart"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 334
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v38

    .line 335
    .local v38, partCursor:Landroid/database/Cursor;
    if-eqz v38, :cond_d

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_d

    .line 336
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "test : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    if-eqz v38, :cond_9

    .line 338
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    .line 340
    :cond_9
    const-string v4, "noticationtransaction"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "retrievetransaction"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 342
    :cond_a
    new-instance v13, Lcom/android/mms/transaction/TransactionSettings;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 343
    .local v13, transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v30

    .line 344
    .local v30, connectivityResult:I
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "**start transaction process~ : messageId : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " Thread : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "connectivity Result :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v4, 0x3

    move/from16 v0, v30

    if-ne v0, v4, :cond_c

    .line 346
    const-string v4, "Mms:transaction"

    const-string v5, "**start transaction process~ : APN_REQUEST_FAILED "

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    move-object/from16 v7, v41

    .line 369
    .end local v6           #parturi:Landroid/net/Uri;
    .end local v13           #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    .end local v30           #connectivityResult:I
    .end local v38           #partCursor:Landroid/database/Cursor;
    .end local v41           #transaction:Lcom/android/mms/transaction/Transaction;
    .local v7, transaction:Lcom/android/mms/transaction/Transaction;
    :goto_6
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 332
    .end local v7           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v6       #parturi:Landroid/net/Uri;
    .restart local v41       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto/16 :goto_5

    .line 350
    .restart local v13       #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    .restart local v30       #connectivityResult:I
    .restart local v38       #partCursor:Landroid/database/Cursor;
    :cond_c
    new-instance v7, Lcom/android/mms/transaction/RetrieveAckTransaction;

    move-object/from16 v8, p0

    move/from16 v9, p3

    move-wide/from16 v10, v19

    invoke-direct/range {v7 .. v16}, Lcom/android/mms/transaction/RetrieveAckTransaction;-><init>(Landroid/content/Context;IJLjava/lang/String;Lcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;ZI)V

    .line 353
    .end local v41           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v7       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/mms/transaction/Transaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 354
    invoke-virtual {v7}, Lcom/android/mms/transaction/RetrieveAckTransaction;->process()V

    goto :goto_6

    .line 359
    .end local v7           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v13           #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    .end local v30           #connectivityResult:I
    .restart local v41       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_d
    if-eqz v38, :cond_e

    .line 360
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_e
    new-instance v17, Lcom/android/mms/transaction/RetrieveAckTimer;

    const/16 v25, 0x5

    move-object/from16 v18, p0

    move-object/from16 v21, v12

    move-object/from16 v22, v14

    move/from16 v23, v15

    move/from16 v24, v16

    invoke-direct/range {v17 .. v25}, Lcom/android/mms/transaction/RetrieveAckTimer;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)V

    .line 362
    .local v17, AckTimer:Ljava/lang/Runnable;
    new-instance v40, Ljava/lang/Thread;

    move-object/from16 v0, v40

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 363
    .local v40, t:Ljava/lang/Thread;
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Thread;->start()V

    .line 364
    const-string v4, "Mms:transaction"

    const-string v5, "@@ Cursor null or Part null @@"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6           #parturi:Landroid/net/Uri;
    .end local v17           #AckTimer:Ljava/lang/Runnable;
    .end local v38           #partCursor:Landroid/database/Cursor;
    .end local v40           #t:Ljava/lang/Thread;
    :cond_f
    :goto_7
    move-object/from16 v7, v41

    .end local v41           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v7       #transaction:Lcom/android/mms/transaction/Transaction;
    goto :goto_6

    .line 367
    .end local v7           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v41       #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_10
    const-string v4, "Mms:transaction"

    const-string v5, "@@ ack retry perment fail @@"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 373
    .end local v12           #transactionId:Ljava/lang/String;
    .end local v14           #szType:Ljava/lang/String;
    .end local v15           #isSpam:Z
    .end local v16           #retryAckCnt:I
    .end local v19           #messageId:J
    .end local v41           #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_11
    const-string v4, "android.intent.action.ACTION_ONALARM"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "android.intent.action.ACTION_ENABLE_AUTO_RETRIEVE"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_1e

    .line 375
    :cond_12
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v32

    .line 377
    .local v32, cursor:Landroid/database/Cursor;
    if-eqz v32, :cond_1d

    .line 379
    :try_start_2
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->getCount()I

    move-result v31

    .line 381
    .local v31, count:I
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] onStart: cursor.count="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    if-nez v31, :cond_13

    .line 384
    const-string v4, "Mms:transaction"

    const-string v5, "[TransactionService] onStart: no pending messages. Stopping service."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 387
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 388
    const/4 v4, 0x2

    .line 465
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 391
    :cond_13
    :try_start_3
    const-string v4, "msg_id"

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 392
    .local v28, columnIndexOfMsgId:I
    const-string v4, "msg_type"

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 394
    .local v29, columnIndexOfMsgType:I
    if-eqz v37, :cond_15

    .line 396
    const-string v4, "Mms:transaction"

    const-string v5, "[TransactionService] onStart: registerForConnectionStateChanges"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToLast()Z

    .line 399
    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 400
    .local v35, msgType:I
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v42

    .line 401
    .local v42, transactionType:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->registerForConnectionStateChanges(Landroid/content/Context;)V

    .line 403
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 404
    const/4 v4, 0x2

    .line 465
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 423
    :pswitch_0
    :try_start_4
    const-string v4, "err_type"

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 426
    .local v33, failureType:I
    if-nez v33, :cond_14

    const-string v4, "android.intent.action.ACTION_ENABLE_AUTO_RETRIEVE"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    :cond_14
    invoke-static/range {v33 .. v33}, Lcom/android/mms/transaction/TransactionService;->isTransientFailure(I)Z

    move-result v4

    if-nez v4, :cond_17

    .line 407
    .end local v33           #failureType:I
    .end local v35           #msgType:I
    .end local v42           #transactionType:I
    :cond_15
    :goto_8
    :pswitch_1
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 408
    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 409
    .restart local v35       #msgType:I
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v42

    .line 410
    .restart local v42       #transactionType:I
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] transactionType : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    if-eqz v37, :cond_16

    .line 413
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 414
    const/4 v4, 0x2

    .line 465
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 416
    :cond_16
    packed-switch v42, :pswitch_data_0

    .line 433
    :cond_17
    :pswitch_2
    :try_start_5
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v44

    .line 435
    .local v44, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 436
    const/4 v4, 0x2

    move/from16 v0, v42

    if-ne v0, v4, :cond_1b

    .line 437
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 438
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, i$:Ljava/util/Iterator;
    :cond_18
    :goto_9
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/mms/transaction/Transaction;

    .line 439
    .local v40, t:Lcom/android/mms/transaction/Transaction;
    invoke-virtual/range {v40 .. v40}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v39

    .line 440
    .local v39, state:Lcom/android/mms/transaction/TransactionState;
    invoke-virtual/range {v39 .. v39}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v43

    .line 441
    .local v43, transactionUri:Landroid/net/Uri;
    if-eqz v43, :cond_19

    .line 442
    invoke-virtual/range {v44 .. v44}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v43 .. v43}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 443
    const-string v4, "Mms:transaction"

    const-string v8, "current pocessing retry cancle : duplicated process"

    invoke-static {v4, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 454
    .end local v34           #i$:Ljava/util/Iterator;
    .end local v39           #state:Lcom/android/mms/transaction/TransactionState;
    .end local v40           #t:Lcom/android/mms/transaction/Transaction;
    .end local v43           #transactionUri:Landroid/net/Uri;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 465
    .end local v28           #columnIndexOfMsgId:I
    .end local v29           #columnIndexOfMsgType:I
    .end local v31           #count:I
    .end local v35           #msgType:I
    .end local v42           #transactionType:I
    .end local v44           #uri:Landroid/net/Uri;
    :catchall_2
    move-exception v4

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    throw v4

    .line 447
    .restart local v28       #columnIndexOfMsgId:I
    .restart local v29       #columnIndexOfMsgType:I
    .restart local v31       #count:I
    .restart local v34       #i$:Ljava/util/Iterator;
    .restart local v35       #msgType:I
    .restart local v39       #state:Lcom/android/mms/transaction/TransactionState;
    .restart local v40       #t:Lcom/android/mms/transaction/Transaction;
    .restart local v42       #transactionType:I
    .restart local v43       #transactionUri:Landroid/net/Uri;
    .restart local v44       #uri:Landroid/net/Uri;
    :cond_19
    :try_start_8
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    if-eqz v4, :cond_18

    .line 448
    invoke-virtual/range {v44 .. v44}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 449
    const-string v4, "Mms:transaction"

    const-string v8, "current pocessing retry cancle : duplicated process"

    invoke-static {v4, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 454
    .end local v39           #state:Lcom/android/mms/transaction/TransactionState;
    .end local v40           #t:Lcom/android/mms/transaction/Transaction;
    .end local v43           #transactionUri:Landroid/net/Uri;
    :cond_1a
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 457
    .end local v34           #i$:Ljava/util/Iterator;
    :cond_1b
    :try_start_9
    new-instance v27, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual/range {v44 .. v44}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    move/from16 v1, v42

    invoke-direct {v0, v1, v4}, Lcom/android/mms/transaction/TransactionBundle;-><init>(ILjava/lang/String;)V

    .line 460
    .local v27, args:Lcom/android/mms/transaction/TransactionBundle;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v4}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_8

    .line 465
    .end local v27           #args:Lcom/android/mms/transaction/TransactionBundle;
    .end local v35           #msgType:I
    .end local v42           #transactionType:I
    .end local v44           #uri:Landroid/net/Uri;
    :cond_1c
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 479
    .end local v28           #columnIndexOfMsgId:I
    .end local v29           #columnIndexOfMsgType:I
    .end local v31           #count:I
    .end local v32           #cursor:Landroid/database/Cursor;
    :goto_a
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 468
    .restart local v32       #cursor:Landroid/database/Cursor;
    :cond_1d
    const-string v4, "Mms:transaction"

    const-string v5, "[TransactionService] onStart: no pending messages. Stopping service."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 470
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    goto :goto_a

    .line 473
    .end local v32           #cursor:Landroid/database/Cursor;
    :cond_1e
    const-string v4, "Mms:transaction"

    const-string v5, "[TransactionService] onStart: launch transaction..."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v27, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Lcom/android/mms/transaction/TransactionBundle;-><init>(Landroid/os/Bundle;)V

    .line 477
    .restart local v27       #args:Lcom/android/mms/transaction/TransactionBundle;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v27

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V

    goto :goto_a

    .line 416
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 21
    .parameter "observable"

    .prologue
    .line 690
    move-object/from16 v15, p1

    check-cast v15, Lcom/android/mms/transaction/Transaction;

    .line 691
    .local v15, transaction:Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v15}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v11

    .line 692
    .local v11, serviceId:I
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->isNetworkAvailable()Z

    move-result v17

    if-nez v17, :cond_2

    const/4 v9, 0x1

    .line 693
    .local v9, noNetwork:Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->isDataNetworkAvailable()Z

    move-result v17

    if-nez v17, :cond_3

    const/4 v8, 0x1

    .line 695
    .local v8, noDataNetwork:Z
    :goto_1
    const-string v17, "Mms:transaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[TransactionService] update transaction "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v17, "Mms:transaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[TransactionService] noNetwork "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v17, "Mms:transaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[TransactionService] noDataNetwork "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 701
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_4

    .line 703
    const-string v17, "Mms:transaction"

    const-string v19, "[TransactionService] update: handle next pending transaction..."

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-object/from16 v17, v0

    const/16 v19, 0x4

    invoke-virtual {v15}, Lcom/android/mms/transaction/Transaction;->getConnectionSettings()Lcom/android/mms/transaction/TransactionSettings;

    move-result-object v20

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 707
    .local v7, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 722
    .end local v7           #msg:Landroid/os/Message;
    :goto_2
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 723
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual {v15}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 724
    const-string v17, "Mms:transaction"

    const-string v18, "update: ACK_TRANSACTION END"

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 840
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v17

    if-eqz v17, :cond_18

    .line 841
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 842
    invoke-virtual {v15}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    .line 843
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    .line 859
    :cond_1
    :goto_3
    return-void

    .line 692
    .end local v8           #noDataNetwork:Z
    .end local v9           #noNetwork:Z
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 693
    .restart local v9       #noNetwork:Z
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 709
    .restart local v8       #noDataNetwork:Z
    :cond_4
    :try_start_3
    const-string v17, "Mms:transaction"

    const-string v19, "[TransactionService] update: endMmsConnectivity"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageUtils;->getAppRestrictBackground(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_6

    invoke-virtual {v15}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/transaction/TransactionState;->getTypeTransState()I

    move-result v17

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    invoke-virtual {v15}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/transaction/TransactionState;->getTypeTransState()I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 716
    invoke-virtual {v15}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity(I)V

    goto/16 :goto_2

    .line 722
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 840
    :catchall_1
    move-exception v17

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v18

    if-eqz v18, :cond_16

    .line 841
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 842
    invoke-virtual {v15}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    .line 843
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    .line 840
    :cond_5
    :goto_4
    throw v17

    .line 719
    :cond_6
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 727
    :cond_7
    :try_start_6
    new-instance v6, Landroid/content/Intent;

    const-string v17, "android.intent.action.TRANSACTION_COMPLETED_ACTION"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 728
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v15}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v12

    .line 729
    .local v12, state:Lcom/android/mms/transaction/TransactionState;
    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v10

    .line 730
    .local v10, result:I
    const-string v17, "state"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 732
    packed-switch v10, :pswitch_data_0

    .line 831
    const-string v17, "Mms:transaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[TransactionService] Transaction state unknown: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :cond_8
    :goto_5
    const-string v17, "Mms:transaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[TransactionService] update: broadcast transaction result "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/mms/transaction/TransactionService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 840
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 841
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 842
    invoke-virtual {v15}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 845
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 846
    .end local v6           #intent:Landroid/content/Intent;
    .end local v10           #result:I
    .end local v12           #state:Lcom/android/mms/transaction/TransactionState;
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_3

    .line 734
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v10       #result:I
    .restart local v12       #state:Lcom/android/mms/transaction/TransactionState;
    :pswitch_0
    :try_start_7
    const-string v17, "Mms:transaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[TransactionService] Transaction complete: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v17, "uri"

    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 739
    invoke-virtual {v15}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v17

    packed-switch v17, :pswitch_data_1

    goto :goto_5

    .line 741
    :pswitch_1
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v5

    .line 742
    .local v5, downloadManager:Lcom/android/mms/util/DownloadManager;
    invoke-virtual {v5}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v4

    .line 743
    .local v4, autoDownload:Z
    const-string v17, "Mms:transaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[TransactionService] autoDownload : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 747
    const-string v17, "GATE"

    const-string v18, "[TransactionService] <GATE-M>MMS_MSG_RCVD</GATE-M>"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_9
    if-eqz v4, :cond_b

    .line 753
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 754
    const-string v17, "GATE"

    const-string v18, "[TransactionService] <GATE-M>MMS_MSG_RETRIEVED</GATE-M>"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getIsSpam()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 757
    const-wide/16 v17, -0x2

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 770
    :cond_b
    :goto_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 771
    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getIsSpam()Z

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService;->processSendRetriveAck(Landroid/net/Uri;ZI)V

    .line 774
    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    goto/16 :goto_5

    .line 761
    :cond_d
    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v16

    .line 762
    .local v16, uri:Landroid/net/Uri;
    if-eqz v16, :cond_b

    .line 763
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v13

    .line 764
    .local v13, threadId:J
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v13, v14, v1}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    const-string v20, "mms"

    invoke-static/range {v17 .. v20}, Lcom/android/mms/ui/MessageUtils;->sendNotiToOtherApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 778
    .end local v4           #autoDownload:Z
    .end local v5           #downloadManager:Lcom/android/mms/util/DownloadManager;
    .end local v13           #threadId:J
    .end local v16           #uri:Landroid/net/Uri;
    :pswitch_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 779
    const-string v17, "GATE"

    const-string v18, "[TransactionService] <GATE-M>MMS_MSG_RETRIEVED</GATE-M>"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getIsSpam()Z

    move-result v17

    if-nez v17, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeletePermanentFailure()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getIsPermanetError()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 790
    :cond_f
    const-wide/16 v17, -0x2

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 800
    :cond_10
    :goto_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 801
    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getIsSpam()Z

    move-result v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService;->processSendRetriveAck(Landroid/net/Uri;ZI)V

    .line 803
    :cond_11
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    goto/16 :goto_5

    .line 794
    :cond_12
    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v16

    .line 795
    .restart local v16       #uri:Landroid/net/Uri;
    if-eqz v16, :cond_10

    .line 796
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v13

    .line 797
    .restart local v13       #threadId:J
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v13, v14, v1}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    goto :goto_8

    .line 807
    .end local v13           #threadId:J
    .end local v16           #uri:Landroid/net/Uri;
    :pswitch_3
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 808
    const-string v17, "GATE"

    const-string v18, "[TransactionService] <GATE-M>MMS_MSG_SENT</GATE-M>"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_13
    invoke-static/range {p0 .. p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 811
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/util/RateController;->update()V

    goto/16 :goto_5

    .line 816
    :pswitch_4
    const-string v17, "Mms:transaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[TransactionService] Transaction failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeletePermanentFailure()Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getIsPermanetError()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 819
    const-wide/16 v17, -0x2

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 822
    :cond_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v17

    if-nez v17, :cond_8

    .line 823
    if-nez v9, :cond_15

    if-eqz v8, :cond_8

    .line 824
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(I)V

    .line 825
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/transaction/TransactionService;->noServiceNeedtoSend:Z

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->registerForConnectionStateChanges(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_5

    .line 850
    .end local v6           #intent:Landroid/content/Intent;
    .end local v10           #result:I
    .end local v12           #state:Lcom/android/mms/transaction/TransactionState;
    :cond_16
    if-nez v9, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/transaction/TransactionService;->noServiceNeedtoSend:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    if-nez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_5

    .line 852
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 854
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_4

    .line 845
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 846
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_4

    .line 850
    :cond_18
    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/transaction/TransactionService;->noServiceNeedtoSend:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    if-nez v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_1

    .line 852
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 854
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_3

    .line 845
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 850
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v10       #result:I
    .restart local v12       #state:Lcom/android/mms/transaction/TransactionState;
    :cond_1a
    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/transaction/TransactionService;->noServiceNeedtoSend:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    if-nez v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_1

    .line 852
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    goto :goto_9

    .line 732
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 739
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
