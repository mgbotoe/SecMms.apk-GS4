.class public abstract Lcom/android/mms/transaction/Transaction;
.super Lcom/android/mms/transaction/Observable;
.source "Transaction.java"


# static fields
.field public static final ACK_TRANSACTION:I = 0x4

.field public static final NOTIFICATION_TRANSACTION:I = 0x0

.field public static final READREC_TRANSACTION:I = 0x3

.field public static final RETRIEVE_TRANSACTION:I = 0x1

.field public static final SEND_TRANSACTION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Mms:transaction"

.field public static final TRANSACTION_MSG_ID:Ljava/lang/String; = "MsgId"

.field public static final TRANSACTION_MSG_TYPE:Ljava/lang/String; = "MsgType"

.field public static final TRANSACTION_TRANS_ID:Ljava/lang/String; = "TansId"

.field protected static mMMSsb:Lcom/android/mms/transaction/MMSStateBroadcaster;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mId:Ljava/lang/String;

.field protected mRetryCnt:I

.field private final mServiceId:I

.field protected mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

.field protected mTransactionState:Lcom/android/mms/transaction/TransactionState;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V
    .locals 2
    .parameter "context"
    .parameter "serviceId"
    .parameter "settings"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/mms/transaction/Observable;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    .line 118
    new-instance v0, Lcom/android/mms/transaction/TransactionState;

    invoke-direct {v0}, Lcom/android/mms/transaction/TransactionState;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    .line 119
    iput p2, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    .line 120
    iput-object p3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    .line 121
    new-instance v0, Lcom/android/mms/transaction/MMSStateBroadcaster;

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/MMSStateBroadcaster;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/transaction/Transaction;->mMMSsb:Lcom/android/mms/transaction/MMSStateBroadcaster;

    .line 122
    return-void
.end method

.method private ensureRouteToHost(Ljava/lang/String;Lcom/android/mms/transaction/TransactionSettings;)V
    .locals 10
    .parameter "url"
    .parameter "settings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x2

    .line 343
    if-nez p1, :cond_0

    .line 344
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Cannot establish route: url is null"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 348
    :cond_0
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 366
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v7

    if-nez v7, :cond_1

    .line 368
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 369
    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, proxyAddr:Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 382
    .local v2, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v0, v9, v2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 383
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot establish route to proxy "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 372
    .end local v2           #inetAddress:Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 374
    .local v1, e:Ljava/net/UnknownHostException;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SKT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/mms/util/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/mms/util/TelephonyUtils;->getPhoneServiceState(Landroid/content/Context;)I

    move-result v7

    if-eq v7, v6, :cond_2

    .line 376
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->showPDPResetDialog(Landroid/content/Context;)V

    .line 379
    :cond_2
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot establish route for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": Unknown host"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 386
    .end local v1           #e:Ljava/net/UnknownHostException;
    .end local v4           #proxyAddr:Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 388
    .local v5, uri:Landroid/net/Uri;
    :try_start_1
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 398
    .restart local v2       #inetAddress:Ljava/net/InetAddress;
    const/4 v3, 0x1

    .line 400
    .local v3, moreCondition:Z
    if-eqz v0, :cond_4

    .line 401
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    move v3, v6

    .line 406
    :cond_4
    :goto_0
    invoke-virtual {v0, v9, v2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v3, :cond_7

    .line 408
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot establish route to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 389
    .end local v2           #inetAddress:Ljava/net/InetAddress;
    .end local v3           #moreCondition:Z
    :catch_1
    move-exception v1

    .line 391
    .restart local v1       #e:Ljava/net/UnknownHostException;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SKT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/util/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 392
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->showPDPResetDialog(Landroid/content/Context;)V

    .line 395
    :cond_5
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot establish route for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": Unknown host"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 401
    .end local v1           #e:Ljava/net/UnknownHostException;
    .restart local v2       #inetAddress:Ljava/net/InetAddress;
    .restart local v3       #moreCondition:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    .line 447
    .end local v3           #moreCondition:Z
    .end local v5           #uri:Landroid/net/Uri;
    :cond_7
    return-void
.end method

.method public static lookupHost(Ljava/lang/String;)I
    .locals 6
    .parameter "hostname"

    .prologue
    .line 461
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 467
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 468
    .local v1, addrBytes:[B
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .line 470
    .end local v1           #addrBytes:[B
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    :goto_0
    return v0

    .line 462
    :catch_0
    move-exception v2

    .line 463
    .local v2, e:Ljava/net/UnknownHostException;
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getConnectionSettings()Lcom/android/mms/transaction/TransactionSettings;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    return-object v0
.end method

.method public getContentLocation(J)Ljava/lang/String;
    .locals 9
    .parameter "msgID"

    .prologue
    .line 549
    const/4 v7, 0x0

    .line 551
    .local v7, contentLocation:Ljava/lang/String;
    const/4 v8, 0x0

    .line 553
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 555
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    const-string v0, "ct_l"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 559
    :cond_0
    if-eqz v8, :cond_1

    .line 560
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 564
    :cond_1
    return-object v7

    .line 559
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 560
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 559
    :cond_2
    throw v0
.end method

.method protected getPdu(Ljava/lang/String;)[B
    .locals 11
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 298
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-direct {p0, p1, v0}, Lcom/android/mms/transaction/Transaction;->ensureRouteToHost(Ljava/lang/String;Lcom/android/mms/transaction/TransactionSettings;)V

    .line 299
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Transaction] MmsConfig.getTetheringMode() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTetheringMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const-wide/16 v1, -0x1

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v6

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionSettings;->getProxyPort()I

    move-result v8

    move-object v3, p1

    move-object v9, v4

    move-object v10, v4

    invoke-static/range {v0 .. v10}, Lcom/android/mms/transaction/HttpUtils;->httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;ILandroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B

    move-result-object v0

    return-object v0
.end method

.method public getRetryCount(J)B
    .locals 10
    .parameter "msgID"

    .prologue
    const/4 v3, 0x0

    .line 525
    const/4 v8, 0x0

    .line 527
    .local v8, retryCount:I
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 528
    .local v9, uriBuilder:Landroid/net/Uri$Builder;
    const-string v0, "protocol"

    const-string v1, "mms"

    invoke-virtual {v9, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 529
    const-string v0, "message"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 531
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 533
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 535
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    const-string v0, "retry_index"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 539
    :cond_0
    if-eqz v7, :cond_1

    .line 540
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 545
    :cond_1
    int-to-byte v0, v8

    return v0

    .line 539
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 540
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 539
    :cond_2
    throw v0
.end method

.method public getServiceId()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    return v0
.end method

.method public getState()Lcom/android/mms/transaction/TransactionState;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public isEquivalent(Lcom/android/mms/transaction/Transaction;)Z
    .locals 7
    .parameter "transaction"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/android/mms/transaction/NotificationTransaction;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/android/mms/transaction/RetrieveTransaction;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    .line 153
    .local v2, downloadManager:Lcom/android/mms/util/DownloadManager;
    invoke-virtual {v2}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v0

    .line 154
    .local v0, autoDownload:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 155
    .local v1, dataSuspended:Z
    :goto_0
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Transaction] autoDownload : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Transaction] dataSuspended : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Transaction] DataState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    if-eqz v0, :cond_0

    if-eqz v1, :cond_2

    .line 166
    .end local v0           #autoDownload:Z
    .end local v1           #dataSuspended:Z
    .end local v2           #downloadManager:Lcom/android/mms/util/DownloadManager;
    .end local p0
    .end local p1
    :cond_0
    :goto_1
    return v3

    .restart local v0       #autoDownload:Z
    .restart local v2       #downloadManager:Lcom/android/mms/util/DownloadManager;
    .restart local p0
    .restart local p1
    :cond_1
    move v1, v3

    .line 154
    goto :goto_0

    .line 163
    .restart local v1       #dataSuspended:Z
    :cond_2
    check-cast p0, Lcom/android/mms/transaction/NotificationTransaction;

    .end local p0
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->getContentLocation()Ljava/lang/String;

    move-result-object v3

    check-cast p1, Lcom/android/mms/transaction/RetrieveTransaction;

    .end local p1
    invoke-virtual {p1}, Lcom/android/mms/transaction/RetrieveTransaction;->getContentLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 166
    .end local v0           #autoDownload:Z
    .end local v1           #dataSuspended:Z
    .end local v2           #downloadManager:Lcom/android/mms/util/DownloadManager;
    .restart local p0
    .restart local p1
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    move v3, v1

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method public abstract process()V
.end method

.method protected sendPdu(J[B)[B
    .locals 7
    .parameter "token"
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 228
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/transaction/Transaction;->sendPdu(J[BLjava/lang/String;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B

    move-result-object v0

    return-object v0
.end method

.method protected sendPdu(J[BLandroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B
    .locals 7
    .parameter "token"
    .parameter "pdu"
    .parameter "client"
    .parameter "post"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/transaction/Transaction;->sendPdu(J[BLjava/lang/String;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B

    move-result-object v0

    return-object v0
.end method

.method protected sendPdu(J[BLjava/lang/String;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B
    .locals 11
    .parameter "token"
    .parameter "pdu"
    .parameter "mmscUrl"
    .parameter "client"
    .parameter "post"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 251
    if-nez p3, :cond_0

    .line 252
    new-instance v0, Lcom/google/android/mms/MmsException;

    invoke-direct {v0}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-direct {p0, p4, v0}, Lcom/android/mms/transaction/Transaction;->ensureRouteToHost(Ljava/lang/String;Lcom/android/mms/transaction/TransactionSettings;)V

    .line 255
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Transaction] MmsConfig.getTetheringMode() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTetheringMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v6

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionSettings;->getProxyPort()I

    move-result v8

    move-wide v1, p1

    move-object v3, p4

    move-object v4, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v0 .. v10}, Lcom/android/mms/transaction/HttpUtils;->httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;ILandroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B

    move-result-object v0

    return-object v0
.end method

.method protected sendPdu([B)[B
    .locals 7
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 198
    const-wide/16 v1, -0x1

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v3, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/transaction/Transaction;->sendPdu(J[BLjava/lang/String;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B

    move-result-object v0

    return-object v0
.end method

.method protected sendPdu([BLjava/lang/String;)[B
    .locals 7
    .parameter "pdu"
    .parameter "mmscUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 213
    const-wide/16 v1, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/transaction/Transaction;->sendPdu(J[BLjava/lang/String;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B

    move-result-object v0

    return-object v0
.end method

.method public setConnectionSettings(Lcom/android/mms/transaction/TransactionSettings;)V
    .locals 0
    .parameter "settings"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    .line 185
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateMessageSize(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 14
    .parameter "mUri"
    .parameter "msgUri"

    .prologue
    .line 489
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 490
    :cond_0
    const-string v0, "MmsTransaction/HttpUtils"

    const-string v1, "updateMessageSize return due to uri null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_1
    :goto_0
    return-void

    .line 494
    :cond_2
    const-wide/16 v12, 0x0

    .line 495
    .local v12, message_size:J
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "m_size"

    aput-object v1, v3, v0

    .line 496
    .local v3, MMS_PROJECTION1:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 497
    .local v10, cursor1:Landroid/database/Cursor;
    if-eqz v10, :cond_4

    .line 499
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    .line 502
    :cond_3
    if-eqz v10, :cond_4

    .line 503
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 506
    :cond_4
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 508
    .local v11, cursor2:Landroid/database/Cursor;
    new-instance v7, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 509
    .local v7, values:Landroid/content/ContentValues;
    const-string v0, "m_size"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 510
    if-eqz v11, :cond_1

    .line 512
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 513
    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 516
    :cond_5
    if-eqz v11, :cond_1

    .line 517
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 502
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v11           #cursor2:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_6

    .line 503
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 502
    :cond_6
    throw v0

    .line 516
    .restart local v7       #values:Landroid/content/ContentValues;
    .restart local v11       #cursor2:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    if-eqz v11, :cond_7

    .line 517
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 516
    :cond_7
    throw v0
.end method
