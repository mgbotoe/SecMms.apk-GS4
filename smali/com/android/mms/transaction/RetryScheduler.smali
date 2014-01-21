.class public Lcom/android/mms/transaction/RetryScheduler;
.super Ljava/lang/Object;
.source "RetryScheduler.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms:transaction"

.field private static sInstance:Lcom/android/mms/transaction/RetryScheduler;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiCall:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mWifiCall:Z

    .line 93
    new-instance v0, Lcom/android/mms/transaction/RetryScheduler$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/RetryScheduler$1;-><init>(Lcom/android/mms/transaction/RetryScheduler;)V

    iput-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    iput-object p1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    .line 69
    iget-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "IMS_REGISTRATION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/RetryScheduler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mWifiCall:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/transaction/RetryScheduler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/mms/transaction/RetryScheduler;->mWifiCall:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/RetryScheduler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/android/mms/transaction/RetryScheduler;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/android/mms/transaction/RetryScheduler;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/RetryScheduler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    .line 89
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    return-object v0
.end method

.method private getResponseStatus(J)I
    .locals 9
    .parameter "msgID"

    .prologue
    .line 413
    const/4 v8, 0x0

    .line 414
    .local v8, respStatus:I
    const/4 v7, 0x0

    .line 416
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

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

    move-result-object v7

    .line 418
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const-string v0, "resp_st"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 422
    :cond_0
    if-eqz v7, :cond_1

    .line 423
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 425
    :cond_1
    if-eqz v8, :cond_2

    .line 426
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RetryScheduler] Response status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_2
    return v8

    .line 422
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 423
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getResponseText(J)Ljava/lang/String;
    .locals 9
    .parameter "msgID"

    .prologue
    .line 432
    const/4 v8, 0x0

    .line 433
    .local v8, respText:Ljava/lang/String;
    const/4 v7, 0x0

    .line 436
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

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

    move-result-object v7

    .line 438
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const-string v0, "resp_txt"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 442
    :cond_0
    if-eqz v7, :cond_1

    .line 443
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 447
    :cond_1
    if-eqz v8, :cond_2

    .line 448
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response text is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_2
    return-object v8

    .line 442
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 443
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getRetrieveStatus(J)I
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v3, 0x0

    .line 457
    const/4 v8, 0x0

    .line 458
    .local v8, respStatus:I
    iget-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 461
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const-string v0, "resp_st"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 465
    :cond_0
    if-eqz v7, :cond_1

    .line 466
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_1
    if-eqz v8, :cond_2

    .line 469
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RetryScheduler] Response status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_2
    return v8

    .line 465
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 466
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private isConnected()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v3, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 113
    .local v0, mConnMgr:Landroid/net/ConnectivityManager;
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[RetryScheduler] mWifiCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/mms/transaction/RetryScheduler;->mWifiCall:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-boolean v3, p0, Lcom/android/mms/transaction/RetryScheduler;->mWifiCall:Z

    if-eqz v3, :cond_3

    .line 115
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 116
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 117
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[RetryScheduler] isConnected() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    if-nez v1, :cond_2

    .line 146
    :cond_1
    :goto_0
    return v2

    .line 118
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0

    .line 143
    .end local v1           #ni:Landroid/net/NetworkInfo;
    :cond_3
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 144
    .restart local v1       #ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_4

    .line 145
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[RetryScheduler] isConnected() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_4
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0
.end method

.method private scheduleRetry(Landroid/net/Uri;Lcom/android/mms/transaction/Transaction;)V
    .locals 40
    .parameter "uri"
    .parameter "t"

    .prologue
    .line 178
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v25

    .line 180
    .local v25, msgId:J
    sget-object v3, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v38

    .line 181
    .local v38, uriBuilder:Landroid/net/Uri$Builder;
    const-string v3, "protocol"

    const-string v4, "mms"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 182
    const-string v3, "message"

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v38 .. v38}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 187
    .local v19, cursor:Landroid/database/Cursor;
    if-eqz v19, :cond_4

    .line 189
    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 190
    const-string v3, "msg_type"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 192
    .local v27, msgType:I
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v3, "retry_index"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 v33, v3, 0x1

    .line 198
    .local v33, retryIndex:I
    const/16 v21, 0x1

    .line 200
    .local v21, errorType:I
    new-instance v34, Lcom/android/mms/transaction/DefaultRetryScheme;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-direct {v0, v3, v1}, Lcom/android/mms/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;I)V

    .line 202
    .local v34, scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    new-instance v39, Landroid/content/ContentValues;

    const/4 v3, 0x4

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 203
    .local v39, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 204
    .local v17, current:J
    const/16 v3, 0x82

    move/from16 v0, v27

    if-ne v0, v3, :cond_5

    const/16 v24, 0x1

    .line 206
    .local v24, isRetryDownloading:Z
    :goto_0
    const/16 v30, 0x1

    .line 207
    .local v30, retry:Z
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/RetryScheduler;->getResponseStatus(J)I

    move-result v29

    .line 208
    .local v29, respStatus:I
    const/16 v20, 0x0

    .line 209
    .local v20, errorString:I
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[RetryScheduler] respStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    if-nez v24, :cond_b

    .line 212
    sparse-switch v29, :sswitch_data_0

    .line 265
    :cond_0
    :goto_1
    if-eqz v20, :cond_1

    .line 266
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    .line 267
    const/16 v30, 0x0

    .line 294
    :cond_1
    const/16 v3, 0xe0

    move/from16 v0, v29

    if-lt v0, v3, :cond_2

    const/16 v3, 0xff

    move/from16 v0, v29

    if-gt v0, v3, :cond_2

    .line 296
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChameleon()Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v3, 0xe1

    move/from16 v0, v29

    if-ne v0, v3, :cond_10

    .line 297
    const-string v3, "ro.cdma.home.operator.alpha"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 298
    .local v35, sellerID:Ljava/lang/String;
    const-string v3, "Sprint"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 299
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const v4, 0x7f0c013c

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    .line 306
    .end local v35           #sellerID:Ljava/lang/String;
    :goto_2
    const/16 v30, 0x0

    .line 310
    :cond_2
    invoke-virtual/range {v34 .. v34}, Lcom/android/mms/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v3

    move/from16 v0, v33

    if-ge v0, v3, :cond_11

    if-eqz v30, :cond_11

    .line 311
    invoke-virtual/range {v34 .. v34}, Lcom/android/mms/transaction/DefaultRetryScheme;->getWaitingInterval()J

    move-result-wide v3

    add-long v31, v17, v3

    .line 313
    .local v31, retryAt:J
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[RetryScheduler] scheduleRetry: retry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is scheduled at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v31, v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms from now"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v3, "due_time"

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 318
    if-eqz v24, :cond_3

    .line 320
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const/16 v4, 0x82

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 322
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCiqUsAtt()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 323
    const/4 v3, 0x5

    add-int/lit8 v4, v33, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/RetryScheduler;->sendMMSRetrievalStateCIQ(JII)V

    .line 392
    .end local v31           #retryAt:J
    :cond_3
    :goto_3
    const-string v3, "err_type"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 393
    const-string v3, "retry_index"

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    const-string v3, "last_try"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 396
    const-string v3, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 398
    .local v16, columnIndex:I
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 399
    .local v22, id:J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v10, v39

    invoke-static/range {v7 .. v12}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    .end local v16           #columnIndex:I
    .end local v17           #current:J
    .end local v20           #errorString:I
    .end local v21           #errorType:I
    .end local v22           #id:J
    .end local v24           #isRetryDownloading:Z
    .end local v27           #msgType:I
    .end local v29           #respStatus:I
    .end local v30           #retry:Z
    .end local v33           #retryIndex:I
    .end local v34           #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    .end local v39           #values:Landroid/content/ContentValues;
    :goto_4
    if-eqz v19, :cond_4

    .line 407
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_4
    :goto_5
    return-void

    .line 204
    .restart local v17       #current:J
    .restart local v21       #errorType:I
    .restart local v27       #msgType:I
    .restart local v33       #retryIndex:I
    .restart local v34       #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    .restart local v39       #values:Landroid/content/ContentValues;
    :cond_5
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 214
    .restart local v20       #errorString:I
    .restart local v24       #isRetryDownloading:Z
    .restart local v29       #respStatus:I
    .restart local v30       #retry:Z
    :sswitch_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 215
    const v20, 0x7f0c033a

    goto/16 :goto_1

    .line 217
    :cond_6
    const v20, 0x7f0c003a

    .line 219
    goto/16 :goto_1

    .line 222
    :sswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 223
    const v20, 0x7f0c01ad

    goto/16 :goto_1

    .line 225
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChameleon()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 226
    const-string v3, "ro.cdma.home.operator.alpha"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 227
    .restart local v35       #sellerID:Ljava/lang/String;
    const-string v3, "Sprint"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 228
    const v20, 0x7f0c01ac

    goto/16 :goto_1

    .line 230
    :cond_8
    const v20, 0x7f0c013d

    goto/16 :goto_1

    .line 233
    .end local v35           #sellerID:Ljava/lang/String;
    :cond_9
    const v20, 0x7f0c01ac

    .line 235
    goto/16 :goto_1

    .line 237
    :sswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 238
    const v20, 0x7f0c01ad

    goto/16 :goto_1

    .line 240
    :cond_a
    const v20, 0x7f0c01ac

    .line 241
    goto/16 :goto_1

    .line 244
    :sswitch_3
    const v20, 0x7f0c01af

    .line 245
    goto/16 :goto_1

    .line 249
    :sswitch_4
    const v20, 0x7f0c01ae

    .line 250
    goto/16 :goto_1

    .line 253
    :sswitch_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/RetryScheduler;->getResponseText(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(Ljava/lang/String;)V

    .line 255
    const/16 v30, 0x0

    goto/16 :goto_1

    .line 261
    :sswitch_6
    const v20, 0x7f0c013c

    goto/16 :goto_1

    .line 272
    :cond_b
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/RetryScheduler;->getRetrieveStatus(J)I

    move-result v29

    .line 273
    const/16 v3, 0xe4

    move/from16 v0, v29

    if-ne v0, v3, :cond_d

    .line 274
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const v4, 0x7f0c01ae

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    .line 275
    const/16 v30, 0x0

    .line 276
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeletePermanentFailure()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v3, v4, v0, v5, v7}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    if-eqz v19, :cond_4

    .line 407
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 282
    :cond_d
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeletePermanentFailure()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xe0

    move/from16 v0, v29

    if-ne v0, v3, :cond_1

    .line 284
    const/16 v30, 0x0

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v3, v4, v0, v5, v7}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    if-eqz v19, :cond_4

    .line 407
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 301
    .restart local v35       #sellerID:Ljava/lang/String;
    :cond_e
    :try_start_3
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const v4, 0x7f0c013d

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 406
    .end local v17           #current:J
    .end local v20           #errorString:I
    .end local v21           #errorType:I
    .end local v24           #isRetryDownloading:Z
    .end local v27           #msgType:I
    .end local v29           #respStatus:I
    .end local v30           #retry:Z
    .end local v33           #retryIndex:I
    .end local v34           #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    .end local v35           #sellerID:Ljava/lang/String;
    .end local v39           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    if-eqz v19, :cond_f

    .line 407
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v3

    .line 304
    .restart local v17       #current:J
    .restart local v20       #errorString:I
    .restart local v21       #errorType:I
    .restart local v24       #isRetryDownloading:Z
    .restart local v27       #msgType:I
    .restart local v29       #respStatus:I
    .restart local v30       #retry:Z
    .restart local v33       #retryIndex:I
    .restart local v34       #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    .restart local v39       #values:Landroid/content/ContentValues;
    :cond_10
    :try_start_4
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const v4, 0x7f0c013c

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    goto/16 :goto_2

    .line 327
    :cond_11
    const/16 v21, 0xa

    .line 328
    if-eqz v24, :cond_19

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "thread_id"

    aput-object v7, v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v15

    .line 332
    .local v15, c:Landroid/database/Cursor;
    const-wide/16 v36, -0x1

    .line 333
    .local v36, threadId:J
    if-eqz v15, :cond_13

    .line 335
    :try_start_5
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 336
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-wide v36

    .line 339
    :cond_12
    if-eqz v15, :cond_13

    .line 340
    :try_start_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 344
    :cond_13
    const-wide/16 v3, -0x1

    cmp-long v3, v36, v3

    if-eqz v3, :cond_14

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v36

    invoke-static {v3, v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifyDownloadFailed(Landroid/content/Context;J)V

    .line 349
    :cond_14
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const/16 v4, 0x87

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 351
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCiqUsAtt()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 352
    const/16 v3, 0x8

    add-int/lit8 v4, v33, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/RetryScheduler;->sendMMSRetrievalStateCIQ(JII)V

    .line 353
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/RetryScheduler;->sendMMSRetrievalEndCIQ(J)V

    .line 363
    .end local v15           #c:Landroid/database/Cursor;
    .end local v36           #threadId:J
    :cond_15
    :goto_6
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/mms/transaction/SendTransaction;

    if-eqz v3, :cond_3

    .line 364
    const/4 v13, 0x0

    .line 365
    .local v13, app_id:I
    const/16 v28, -0x1

    .line 367
    .local v28, msg_id:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v3, 0x2

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "app_id"

    aput-object v4, v9, v3

    const/4 v3, 0x1

    const-string v4, "msg_id"

    aput-object v4, v9, v3

    const-string v10, "app_id>0"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v15

    .line 370
    .restart local v15       #c:Landroid/database/Cursor;
    if-eqz v15, :cond_17

    .line 372
    :try_start_7
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 373
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 374
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v28

    .line 377
    :cond_16
    :try_start_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 381
    :cond_17
    if-lez v13, :cond_3

    .line 382
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v14, broadintent:Landroid/content/Intent;
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x2

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    const-string v3, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    const-string v3, "com.android.mms.transaction.MESSAGE_APP_ID"

    invoke-virtual {v14, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    const-string v3, "com.android.mms.transaction.MESSAGE_MSG_ID"

    move/from16 v0, v28

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 339
    .end local v13           #app_id:I
    .end local v14           #broadintent:Landroid/content/Intent;
    .end local v28           #msg_id:I
    .restart local v36       #threadId:J
    :catchall_1
    move-exception v3

    if-eqz v15, :cond_18

    .line 340
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_18
    throw v3

    .line 357
    .end local v15           #c:Landroid/database/Cursor;
    .end local v36           #threadId:J
    :cond_19
    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 358
    .local v6, readValues:Landroid/content/ContentValues;
    const-string v3, "read"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    goto/16 :goto_6

    .line 377
    .end local v6           #readValues:Landroid/content/ContentValues;
    .restart local v13       #app_id:I
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v28       #msg_id:I
    :catchall_2
    move-exception v3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3

    .line 403
    .end local v13           #app_id:I
    .end local v15           #c:Landroid/database/Cursor;
    .end local v17           #current:J
    .end local v20           #errorString:I
    .end local v21           #errorType:I
    .end local v24           #isRetryDownloading:Z
    .end local v27           #msgType:I
    .end local v28           #msg_id:I
    .end local v29           #respStatus:I
    .end local v30           #retry:Z
    .end local v33           #retryIndex:I
    .end local v34           #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    .end local v39           #values:Landroid/content/ContentValues;
    :cond_1a
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[RetryScheduler] Cannot found correct pending status for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v25

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4

    .line 212
    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_2
        0x84 -> :sswitch_0
        0x86 -> :sswitch_3
        0xc2 -> :sswitch_4
        0xe0 -> :sswitch_6
        0xe1 -> :sswitch_1
        0xe2 -> :sswitch_5
        0xe4 -> :sswitch_4
    .end sparse-switch
.end method

.method private sendMMSRetrievalEndCIQ(J)V
    .locals 19
    .parameter "msgID"

    .prologue
    .line 531
    const/4 v14, 0x0

    .line 532
    .local v14, mmsTid:Ljava/lang/String;
    const/4 v10, 0x0

    .line 533
    .local v10, lUrl:Ljava/lang/String;
    const/16 v16, 0x0

    .line 534
    .local v16, resultCode:I
    const/4 v13, 0x0

    .line 535
    .local v13, mmsMid:Ljava/lang/String;
    const/4 v11, 0x0

    .line 536
    .local v11, contentType:Ljava/lang/String;
    const/4 v15, 0x0

    .line 538
    .local v15, mmsVersion:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "_id="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 540
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_2

    .line 542
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 543
    const-string v3, "ct_l"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 544
    const-string v3, "tr_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 545
    .end local v14           #mmsTid:Ljava/lang/String;
    .local v8, mmsTid:Ljava/lang/String;
    :try_start_1
    const-string v3, "retr_st"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 546
    .end local v16           #resultCode:I
    .local v6, resultCode:I
    :try_start_2
    const-string v3, "ct_t"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v4

    .line 547
    .end local v11           #contentType:Ljava/lang/String;
    .local v4, contentType:Ljava/lang/String;
    :try_start_3
    const-string v3, "m_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v9

    .line 548
    .end local v13           #mmsMid:Ljava/lang/String;
    .local v9, mmsMid:Ljava/lang/String;
    :try_start_4
    const-string v3, "v"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result v7

    .line 551
    .end local v15           #mmsVersion:I
    .local v7, mmsVersion:I
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 554
    if-nez v6, :cond_0

    .line 555
    const/16 v6, 0xc0

    .line 557
    :cond_0
    sget-object v3, Lcom/android/mms/transaction/Transaction;->mMMSsb:Lcom/android/mms/transaction/MMSStateBroadcaster;

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/mms/transaction/MMSStateBroadcaster;->sendMMSRetrievalEnd(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :goto_1
    return-void

    .line 551
    .end local v4           #contentType:Ljava/lang/String;
    .end local v6           #resultCode:I
    .end local v7           #mmsVersion:I
    .end local v8           #mmsTid:Ljava/lang/String;
    .end local v9           #mmsMid:Ljava/lang/String;
    .restart local v11       #contentType:Ljava/lang/String;
    .restart local v13       #mmsMid:Ljava/lang/String;
    .restart local v14       #mmsTid:Ljava/lang/String;
    .restart local v15       #mmsVersion:I
    .restart local v16       #resultCode:I
    :catchall_0
    move-exception v3

    move-object v4, v11

    .end local v11           #contentType:Ljava/lang/String;
    .restart local v4       #contentType:Ljava/lang/String;
    move-object v9, v13

    .end local v13           #mmsMid:Ljava/lang/String;
    .restart local v9       #mmsMid:Ljava/lang/String;
    move/from16 v6, v16

    .end local v16           #resultCode:I
    .restart local v6       #resultCode:I
    move-object v8, v14

    .end local v14           #mmsTid:Ljava/lang/String;
    .restart local v8       #mmsTid:Ljava/lang/String;
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3

    .end local v4           #contentType:Ljava/lang/String;
    .end local v6           #resultCode:I
    .end local v9           #mmsMid:Ljava/lang/String;
    .restart local v11       #contentType:Ljava/lang/String;
    .restart local v13       #mmsMid:Ljava/lang/String;
    .restart local v16       #resultCode:I
    :catchall_1
    move-exception v3

    move-object v4, v11

    .end local v11           #contentType:Ljava/lang/String;
    .restart local v4       #contentType:Ljava/lang/String;
    move-object v9, v13

    .end local v13           #mmsMid:Ljava/lang/String;
    .restart local v9       #mmsMid:Ljava/lang/String;
    move/from16 v6, v16

    .end local v16           #resultCode:I
    .restart local v6       #resultCode:I
    goto :goto_2

    .end local v4           #contentType:Ljava/lang/String;
    .end local v9           #mmsMid:Ljava/lang/String;
    .restart local v11       #contentType:Ljava/lang/String;
    .restart local v13       #mmsMid:Ljava/lang/String;
    :catchall_2
    move-exception v3

    move-object v4, v11

    .end local v11           #contentType:Ljava/lang/String;
    .restart local v4       #contentType:Ljava/lang/String;
    move-object v9, v13

    .end local v13           #mmsMid:Ljava/lang/String;
    .restart local v9       #mmsMid:Ljava/lang/String;
    goto :goto_2

    .end local v9           #mmsMid:Ljava/lang/String;
    .restart local v13       #mmsMid:Ljava/lang/String;
    :catchall_3
    move-exception v3

    move-object v9, v13

    .end local v13           #mmsMid:Ljava/lang/String;
    .restart local v9       #mmsMid:Ljava/lang/String;
    goto :goto_2

    :catchall_4
    move-exception v3

    goto :goto_2

    .end local v4           #contentType:Ljava/lang/String;
    .end local v6           #resultCode:I
    .end local v8           #mmsTid:Ljava/lang/String;
    .end local v9           #mmsMid:Ljava/lang/String;
    .restart local v11       #contentType:Ljava/lang/String;
    .restart local v13       #mmsMid:Ljava/lang/String;
    .restart local v14       #mmsTid:Ljava/lang/String;
    .restart local v16       #resultCode:I
    :cond_1
    move v7, v15

    .end local v15           #mmsVersion:I
    .restart local v7       #mmsVersion:I
    move-object v4, v11

    .end local v11           #contentType:Ljava/lang/String;
    .restart local v4       #contentType:Ljava/lang/String;
    move-object v9, v13

    .end local v13           #mmsMid:Ljava/lang/String;
    .restart local v9       #mmsMid:Ljava/lang/String;
    move/from16 v6, v16

    .end local v16           #resultCode:I
    .restart local v6       #resultCode:I
    move-object v8, v14

    .end local v14           #mmsTid:Ljava/lang/String;
    .restart local v8       #mmsTid:Ljava/lang/String;
    goto :goto_0

    .end local v4           #contentType:Ljava/lang/String;
    .end local v6           #resultCode:I
    .end local v7           #mmsVersion:I
    .end local v8           #mmsTid:Ljava/lang/String;
    .end local v9           #mmsMid:Ljava/lang/String;
    .restart local v11       #contentType:Ljava/lang/String;
    .restart local v13       #mmsMid:Ljava/lang/String;
    .restart local v14       #mmsTid:Ljava/lang/String;
    .restart local v15       #mmsVersion:I
    .restart local v16       #resultCode:I
    :cond_2
    move v7, v15

    .end local v15           #mmsVersion:I
    .restart local v7       #mmsVersion:I
    move-object v4, v11

    .end local v11           #contentType:Ljava/lang/String;
    .restart local v4       #contentType:Ljava/lang/String;
    move-object v9, v13

    .end local v13           #mmsMid:Ljava/lang/String;
    .restart local v9       #mmsMid:Ljava/lang/String;
    move/from16 v6, v16

    .end local v16           #resultCode:I
    .restart local v6       #resultCode:I
    move-object v8, v14

    .end local v14           #mmsTid:Ljava/lang/String;
    .restart local v8       #mmsTid:Ljava/lang/String;
    goto :goto_1
.end method

.method private sendMMSRetrievalStateCIQ(JII)V
    .locals 13
    .parameter "msgID"
    .parameter "state"
    .parameter "retryCnt"

    .prologue
    .line 505
    const/4 v10, 0x0

    .line 506
    .local v10, mmsTid:Ljava/lang/String;
    const/4 v9, 0x0

    .line 507
    .local v9, lUrl:Ljava/lang/String;
    const/4 v11, 0x0

    .line 509
    .local v11, resultCode:I
    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_id="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 512
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 514
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    const-string v1, "ct_l"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 516
    .end local v9           #lUrl:Ljava/lang/String;
    .local v7, lUrl:Ljava/lang/String;
    :try_start_1
    const-string v1, "tr_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 517
    .end local v10           #mmsTid:Ljava/lang/String;
    .local v6, mmsTid:Ljava/lang/String;
    :try_start_2
    const-string v1, "retr_st"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v4

    .line 520
    .end local v11           #resultCode:I
    .local v4, resultCode:I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 523
    if-nez v4, :cond_0

    .line 524
    const/16 v4, 0xc0

    .line 526
    :cond_0
    sget-object v1, Lcom/android/mms/transaction/Transaction;->mMMSsb:Lcom/android/mms/transaction/MMSStateBroadcaster;

    move/from16 v0, p4

    int-to-byte v3, v0

    const/4 v5, 0x0

    move/from16 v2, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/mms/transaction/MMSStateBroadcaster;->sendMMSRetrievalState(IBIILjava/lang/String;Ljava/lang/String;)V

    .line 528
    :goto_1
    return-void

    .line 520
    .end local v4           #resultCode:I
    .end local v6           #mmsTid:Ljava/lang/String;
    .end local v7           #lUrl:Ljava/lang/String;
    .restart local v9       #lUrl:Ljava/lang/String;
    .restart local v10       #mmsTid:Ljava/lang/String;
    .restart local v11       #resultCode:I
    :catchall_0
    move-exception v1

    move-object v7, v9

    .end local v9           #lUrl:Ljava/lang/String;
    .restart local v7       #lUrl:Ljava/lang/String;
    move-object v6, v10

    .end local v10           #mmsTid:Ljava/lang/String;
    .restart local v6       #mmsTid:Ljava/lang/String;
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .end local v6           #mmsTid:Ljava/lang/String;
    .restart local v10       #mmsTid:Ljava/lang/String;
    :catchall_1
    move-exception v1

    move-object v6, v10

    .end local v10           #mmsTid:Ljava/lang/String;
    .restart local v6       #mmsTid:Ljava/lang/String;
    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_2

    .end local v6           #mmsTid:Ljava/lang/String;
    .end local v7           #lUrl:Ljava/lang/String;
    .restart local v9       #lUrl:Ljava/lang/String;
    .restart local v10       #mmsTid:Ljava/lang/String;
    :cond_1
    move v4, v11

    .end local v11           #resultCode:I
    .restart local v4       #resultCode:I
    move-object v7, v9

    .end local v9           #lUrl:Ljava/lang/String;
    .restart local v7       #lUrl:Ljava/lang/String;
    move-object v6, v10

    .end local v10           #mmsTid:Ljava/lang/String;
    .restart local v6       #mmsTid:Ljava/lang/String;
    goto :goto_0

    .end local v4           #resultCode:I
    .end local v6           #mmsTid:Ljava/lang/String;
    .end local v7           #lUrl:Ljava/lang/String;
    .restart local v9       #lUrl:Ljava/lang/String;
    .restart local v10       #mmsTid:Ljava/lang/String;
    .restart local v11       #resultCode:I
    :cond_2
    move v4, v11

    .end local v11           #resultCode:I
    .restart local v4       #resultCode:I
    move-object v7, v9

    .end local v9           #lUrl:Ljava/lang/String;
    .restart local v7       #lUrl:Ljava/lang/String;
    move-object v6, v10

    .end local v10           #mmsTid:Ljava/lang/String;
    .restart local v6       #mmsTid:Ljava/lang/String;
    goto :goto_1
.end method

.method public static setRetryAlarm(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 475
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    const-wide v7, 0x7fffffffffffffffL

    invoke-virtual {v6, v7, v8}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v1

    .line 477
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 479
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 480
    const-string v6, "due_time"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 483
    .local v3, retryAt:J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_0

    .line 484
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_ONALARM"

    const/4 v7, 0x0

    const-class v8, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v5, v6, v7, p0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 486
    .local v5, service:Landroid/content/Intent;
    const/4 v6, 0x0

    const/high16 v7, 0x4000

    invoke-static {p0, v6, v5, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 488
    .local v2, operation:Landroid/app/PendingIntent;
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 489
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 491
    const-string v6, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[RetryScheduler] Next retry is scheduled at"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v3, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms from now"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v2           #operation:Landroid/app/PendingIntent;
    .end local v3           #retryAt:J
    .end local v5           #service:Landroid/content/Intent;
    :cond_1
    if-eqz v1, :cond_2

    .line 498
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_2
    return-void

    .line 497
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_3

    .line 498
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v6
.end method


# virtual methods
.method public unregisterReceiver()V
    .locals 3

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/transaction/RetryScheduler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms:transaction"

    const-string v2, "Reciever is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 7
    .parameter "observable"

    .prologue
    .line 151
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object v2, v0

    .line 152
    .local v2, t:Lcom/android/mms/transaction/Transaction;
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RetryScheduler] update "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    instance-of v4, v2, Lcom/android/mms/transaction/NotificationTransaction;

    if-nez v4, :cond_0

    instance-of v4, v2, Lcom/android/mms/transaction/RetrieveTransaction;

    if-nez v4, :cond_0

    instance-of v4, v2, Lcom/android/mms/transaction/ReadRecTransaction;

    if-nez v4, :cond_0

    instance-of v4, v2, Lcom/android/mms/transaction/SendTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_2

    .line 161
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v1

    .line 162
    .local v1, state:Lcom/android/mms/transaction/TransactionState;
    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 163
    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 164
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 165
    invoke-direct {p0, v3, v2}, Lcom/android/mms/transaction/RetryScheduler;->scheduleRetry(Landroid/net/Uri;Lcom/android/mms/transaction/Transaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    :try_start_2
    invoke-virtual {v2, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    .end local v1           #state:Lcom/android/mms/transaction/TransactionState;
    :cond_2
    iget-object v4, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 175
    return-void

    .line 169
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v2, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    .end local v2           #t:Lcom/android/mms/transaction/Transaction;
    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    throw v4
.end method
