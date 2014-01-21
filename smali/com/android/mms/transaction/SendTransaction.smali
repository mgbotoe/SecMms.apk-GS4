.class public Lcom/android/mms/transaction/SendTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "SendTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final EVENT_TRANSACTION_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms:transaction"


# instance fields
.field private httpClient:Landroid/net/http/AndroidHttpClient;

.field private mIsSending:Z

.field private final mSendReqURI:Landroid/net/Uri;

.field private mThread:Ljava/lang/Thread;

.field private mTimeoutHandler:Landroid/os/Handler;

.field private post:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "transId"
    .parameter "connectionSettings"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 96
    new-instance v0, Lcom/android/mms/transaction/SendTransaction$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/SendTransaction$1;-><init>(Lcom/android/mms/transaction/SendTransaction;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    .line 136
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    .line 137
    iput-object p4, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    .line 139
    iput-object v1, p0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/SendTransaction;->mIsSending:Z

    .line 142
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SendTransaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/SendTransaction;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/SendTransaction;)Landroid/net/http/AndroidHttpClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/transaction/SendTransaction;Landroid/net/http/AndroidHttpClient;)Landroid/net/http/AndroidHttpClient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/SendTransaction;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method


# virtual methods
.method public getSendReqURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x2

    return v0
.end method

.method public isSending()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/mms/transaction/SendTransaction;->mIsSending:Z

    return v0
.end method

.method public process()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mThread:Ljava/lang/Thread;

    .line 152
    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/transaction/SendTransaction;->mIsSending:Z

    .line 154
    return-void
.end method

.method public run()V
    .locals 54

    .prologue
    .line 164
    const/16 v31, 0x0

    .line 165
    .local v31, app_id:I
    const/16 v43, -0x1

    .line 166
    .local v43, msg_id:I
    const-wide/32 v26, 0x93a80

    .line 167
    .local v26, DEFAULT_EXPIRY_TIME:J
    const/16 v29, 0x81

    .line 168
    .local v29, DEFAULT_PRIORITY:I
    const-string v28, "personal"

    .line 171
    .local v28, DEFAULT_MESSAGE_CLASS:Ljava/lang/String;
    :try_start_0
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Start sending"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v45

    .line 173
    .local v45, rateCtlr:Lcom/android/mms/util/RateController;
    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/util/RateController;->isLimitSurpassed()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {v45 .. v45}, Lcom/android/mms/util/RateController;->isAllowedByUser()Z

    move-result v3

    if-nez v3, :cond_3

    .line 174
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Sending rate limit surpassed."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2e

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 419
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Delivery failed."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :goto_0
    if-lez v31, :cond_0

    .line 426
    new-instance v33, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v33, broadintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2f

    .line 428
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    :goto_1
    const-string v3, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const-string v3, "com.android.mms.transaction.MESSAGE_APP_ID"

    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    const-string v3, "com.android.mms.transaction.MESSAGE_MSG_ID"

    move-object/from16 v0, v33

    move/from16 v1, v43

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    .end local v33           #broadintent:Landroid/content/Intent;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v3, :cond_1

    .line 443
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] abort post"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 447
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v3, :cond_2

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 449
    .end local v45           #rateCtlr:Lcom/android/mms/util/RateController;
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    .line 452
    :cond_2
    return-void

    .line 179
    .restart local v45       #rateCtlr:Lcom/android/mms/util/RateController;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v44

    .line 180
    .local v44, persister:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v49

    check-cast v49, Lcom/google/android/mms/pdu/SendReq;

    .line 183
    .local v49, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x3e8

    div-long v37, v3, v7

    .line 184
    .local v37, date:J
    invoke-static {}, Lcom/android/mms/MmsConfig;->getOptionalFieldAttendance()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 185
    move-object/from16 v0, v49

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 189
    :cond_4
    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 190
    .local v6, values:Landroid/content/ContentValues;
    const-string v3, "date"

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 207
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v4, "insert-address-token"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 209
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] setFrom by proxy: insert-address-token"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 214
    const/16 v32, 0x0

    .line 215
    .local v32, array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v49 .. v49}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v32

    .line 216
    if-nez v32, :cond_5

    .line 217
    const-string v3, "Mms:transaction"

    const-string v4, "SendTranaction::run() - sendReq.getTo() is reloaded array is null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    if-eqz v3, :cond_b

    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/mms/util/AddressUtils;->getToMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v30

    .line 223
    .local v30, address:[Ljava/lang/String;
    if-eqz v30, :cond_17

    move-object/from16 v0, v30

    array-length v3, v0

    if-lez v3, :cond_17

    .line 224
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LGU+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 225
    const/16 v40, 0x0

    .local v40, i:I
    :goto_4
    move-object/from16 v0, v30

    array-length v3, v0

    move/from16 v0, v40

    if-ge v0, v3, :cond_a

    .line 226
    aget-object v3, v30, v40

    invoke-static {v3}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v30, v40

    .line 225
    add-int/lit8 v40, v40, 0x1

    goto :goto_4

    .line 219
    .end local v30           #address:[Ljava/lang/String;
    .end local v40           #i:I
    :cond_5
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SendTranaction::run() - sendReq.getTo() is reloaded array.length is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 400
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v32           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v37           #date:J
    .end local v44           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v45           #rateCtlr:Lcom/android/mms/util/RateController;
    .end local v49           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :catch_0
    move-exception v50

    .line 401
    .local v50, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SendTransaction] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v50 .. v50}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 403
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 404
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "410"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "500"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 406
    :cond_6
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SendTransaction] Response : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 408
    .restart local v6       #values:Landroid/content/ContentValues;
    const-string v3, "resp_st"

    const/16 v4, 0xe0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 416
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2c

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 419
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Delivery failed."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :goto_5
    if-lez v31, :cond_8

    .line 426
    new-instance v33, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .restart local v33       #broadintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2d

    .line 428
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    :goto_6
    const-string v3, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const-string v3, "com.android.mms.transaction.MESSAGE_APP_ID"

    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    const-string v3, "com.android.mms.transaction.MESSAGE_MSG_ID"

    move-object/from16 v0, v33

    move/from16 v1, v43

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    .end local v33           #broadintent:Landroid/content/Intent;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v3, :cond_9

    .line 443
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] abort post"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 447
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v3, :cond_2

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_2

    .line 229
    .end local v50           #t:Ljava/lang/Throwable;
    .restart local v6       #values:Landroid/content/ContentValues;
    .restart local v30       #address:[Ljava/lang/String;
    .restart local v32       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v37       #date:J
    .restart local v44       #persister:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v45       #rateCtlr:Lcom/android/mms/util/RateController;
    .restart local v49       #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :cond_a
    :try_start_3
    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v39

    .line 230
    .local v39, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v39, :cond_b

    .line 231
    move-object/from16 v0, v49

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 241
    .end local v30           #address:[Ljava/lang/String;
    .end local v39           #encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_b
    :goto_7
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v41

    .line 242
    .local v41, lineNumber:Ljava/lang/String;
    const-string v3, "Mms:transaction"

    const-string v4, "Load MDN from SIM"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v3, "Mms:transaction"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 244
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLine1Number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_c
    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 248
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LGU+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 249
    invoke-static/range {v41 .. v41}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 251
    :cond_d
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v41

    invoke-direct {v3, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 258
    :goto_8
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/SendReq;->setMessageClass([B)V

    .line 262
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsExpiryDate()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getExpiryTimeLong(Landroid/content/Context;)J

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-eqz v3, :cond_e

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getExpiryTimeLong(Landroid/content/Context;)J

    move-result-wide v3

    move-object/from16 v0, v49

    invoke-virtual {v0, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    .line 272
    :cond_e
    :goto_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsPriority()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getMmsPiority(Landroid/content/Context;)I

    move-result v3

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V

    .line 281
    :goto_a
    invoke-virtual/range {v49 .. v49}, Lcom/google/android/mms/pdu/SendReq;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 282
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual/range {v49 .. v49}, Lcom/google/android/mms/pdu/SendReq;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 288
    .end local v32           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v41           #lineNumber:Ljava/lang/String;
    :cond_f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    .line 289
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v51

    .line 302
    .local v51, tokenKey:J
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCiqUsAtt()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 303
    new-instance v10, Ljava/lang/String;

    invoke-virtual/range {v49 .. v49}, Lcom/google/android/mms/pdu/SendReq;->getContentType()[B

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/lang/String;-><init>([B)V

    .line 304
    .local v10, strContentType:Ljava/lang/String;
    new-instance v12, Ljava/lang/String;

    invoke-virtual/range {v49 .. v49}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/lang/String;-><init>([B)V

    .line 305
    .local v12, strMmsTid:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v13

    .line 306
    .local v13, strSender:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 307
    invoke-virtual/range {v49 .. v49}, Lcom/google/android/mms/pdu/SendReq;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v13

    .line 309
    :cond_10
    sget-object v7, Lcom/android/mms/transaction/SendTransaction;->mMMSsb:Lcom/android/mms/transaction/MMSStateBroadcaster;

    invoke-virtual/range {v49 .. v49}, Lcom/google/android/mms/pdu/SendReq;->getMessageSize()J

    move-result-wide v8

    invoke-virtual/range {v49 .. v49}, Lcom/google/android/mms/pdu/SendReq;->getMmsVersion()I

    move-result v11

    invoke-virtual/range {v49 .. v49}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v7 .. v15}, Lcom/android/mms/transaction/MMSStateBroadcaster;->sendMMSSendingStart(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .end local v10           #strContentType:Ljava/lang/String;
    .end local v12           #strMmsTid:Ljava/lang/String;
    .end local v13           #strSender:Ljava/lang/String;
    :cond_11
    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/SendingProgressTokenManager;->get(Ljava/lang/Object;)J

    move-result-wide v15

    new-instance v3, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v49

    invoke-direct {v3, v4, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v19, v0

    move-object/from16 v14, p0

    invoke-virtual/range {v14 .. v19}, Lcom/android/mms/transaction/SendTransaction;->sendPdu(J[BLandroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B

    move-result-object v48

    .line 314
    .local v48, response:[B
    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/SendingProgressTokenManager;->remove(Ljava/lang/Object;)V

    .line 316
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSavePduFiles()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 317
    const-string v3, "SendReq"

    new-instance v4, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v49

    invoke-direct {v4, v5, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/transaction/SavePduFiles;->save(Ljava/lang/String;[B)V

    .line 318
    const-string v3, "SendConf"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Lcom/android/mms/transaction/SavePduFiles;->save(Ljava/lang/String;[B)V

    .line 321
    :cond_12
    new-instance v47, Ljava/lang/String;

    invoke-direct/range {v47 .. v48}, Ljava/lang/String;-><init>([B)V

    .line 322
    .local v47, respStr:Ljava/lang/String;
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SendTransaction] run: send mms msg ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), resp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v3, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v48

    invoke-direct {v3, v0}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v34

    check-cast v34, Lcom/google/android/mms/pdu/SendConf;

    .line 325
    .local v34, conf:Lcom/google/android/mms/pdu/SendConf;
    if-nez v34, :cond_1e

    .line 326
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] No M-Send.conf received. Return here!"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 328
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v3

    if-nez v3, :cond_13

    .line 329
    const-string v14, "[Transaction : Send Req]"

    new-instance v3, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v49

    invoke-direct {v3, v4, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v15

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x140

    const/16 v20, 0x0

    invoke-static/range {v14 .. v20}, Lcom/android/mms/transaction/HexDump;->dump(Ljava/lang/String;[BJIILjava/lang/Object;)V

    .line 331
    :cond_13
    new-instance v6, Landroid/content/ContentValues;

    .end local v6           #values:Landroid/content/ContentValues;
    const/4 v3, 0x2

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 332
    .restart local v6       #values:Landroid/content/ContentValues;
    const-string v3, "resp_st"

    const/16 v4, 0xe2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 416
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_30

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 419
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Delivery failed."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :goto_b
    if-lez v31, :cond_15

    .line 426
    new-instance v33, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .restart local v33       #broadintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_31

    .line 428
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    :goto_c
    const-string v3, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const-string v3, "com.android.mms.transaction.MESSAGE_APP_ID"

    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    const-string v3, "com.android.mms.transaction.MESSAGE_MSG_ID"

    move-object/from16 v0, v33

    move/from16 v1, v43

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    .end local v33           #broadintent:Landroid/content/Intent;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v3, :cond_16

    .line 443
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] abort post"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 447
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v3, :cond_2

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_2

    .line 234
    .end local v34           #conf:Lcom/google/android/mms/pdu/SendConf;
    .end local v47           #respStr:Ljava/lang/String;
    .end local v48           #response:[B
    .end local v51           #tokenKey:J
    .restart local v30       #address:[Ljava/lang/String;
    .restart local v32       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_17
    :try_start_4
    const-string v3, "Mms:transaction"

    const-string v4, "SendTranaction::run() - address is null "

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_7

    .line 416
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v30           #address:[Ljava/lang/String;
    .end local v32           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v37           #date:J
    .end local v44           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v45           #rateCtlr:Lcom/android/mms/util/RateController;
    .end local v49           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2a

    .line 417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 419
    const-string v4, "Mms:transaction"

    const-string v5, "[SendTransaction] Delivery failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :goto_d
    if-lez v31, :cond_18

    .line 426
    new-instance v33, Landroid/content/Intent;

    const-string v4, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .restart local v33       #broadintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2b

    .line 428
    const-string v4, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v5, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    :goto_e
    const-string v4, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v5, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const-string v4, "com.android.mms.transaction.MESSAGE_APP_ID"

    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    const-string v4, "com.android.mms.transaction.MESSAGE_MSG_ID"

    move-object/from16 v0, v33

    move/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    .end local v33           #broadintent:Landroid/content/Intent;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    .line 440
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v4, :cond_19

    .line 443
    const-string v4, "Mms:transaction"

    const-string v5, "[SendTransaction] abort post"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 447
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v4, :cond_1a

    .line 448
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 449
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    .line 416
    :cond_1a
    throw v3

    .line 253
    .restart local v6       #values:Landroid/content/ContentValues;
    .restart local v32       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v37       #date:J
    .restart local v41       #lineNumber:Ljava/lang/String;
    .restart local v44       #persister:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v45       #rateCtlr:Lcom/android/mms/util/RateController;
    .restart local v49       #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :cond_1b
    :try_start_5
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v4, "insert-address-token"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto/16 :goto_8

    .line 267
    :cond_1c
    move-object/from16 v0, v49

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    goto/16 :goto_9

    .line 276
    :cond_1d
    move-object/from16 v0, v49

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V

    goto/16 :goto_a

    .line 341
    .end local v32           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v41           #lineNumber:Ljava/lang/String;
    .restart local v34       #conf:Lcom/google/android/mms/pdu/SendConf;
    .restart local v47       #respStr:Ljava/lang/String;
    .restart local v48       #response:[B
    .restart local v51       #tokenKey:J
    :cond_1e
    invoke-virtual/range {v49 .. v49}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v46

    .line 342
    .local v46, reqId:[B
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/mms/pdu/SendConf;->getTransactionId()[B

    move-result-object v35

    .line 343
    .local v35, confId:[B
    move-object/from16 v0, v46

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_21

    .line 344
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SendTransaction] Inconsistent Transaction-ID: req="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", conf="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_32

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 419
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Delivery failed."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :goto_f
    if-lez v31, :cond_1f

    .line 426
    new-instance v33, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .restart local v33       #broadintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_33

    .line 428
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    :goto_10
    const-string v3, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const-string v3, "com.android.mms.transaction.MESSAGE_APP_ID"

    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    const-string v3, "com.android.mms.transaction.MESSAGE_MSG_ID"

    move-object/from16 v0, v33

    move/from16 v1, v43

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    .end local v33           #broadintent:Landroid/content/Intent;
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v3, :cond_20

    .line 443
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] abort post"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 447
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v3, :cond_2

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_2

    .line 352
    :cond_21
    :try_start_6
    new-instance v6, Landroid/content/ContentValues;

    .end local v6           #values:Landroid/content/ContentValues;
    const/4 v3, 0x2

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 353
    .restart local v6       #values:Landroid/content/ContentValues;
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/mms/pdu/SendConf;->getResponseStatus()I

    move-result v16

    .line 354
    .local v16, respStatus:I
    const-string v3, "resp_st"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCiqUsAtt()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 357
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 358
    .local v18, strMmsTidConf:Ljava/lang/String;
    new-instance v19, Ljava/lang/String;

    invoke-virtual/range {v34 .. v34}, Lcom/google/android/mms/pdu/SendConf;->getMessageId()[B

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 359
    .local v19, strMmsMid:Ljava/lang/String;
    sget-object v14, Lcom/android/mms/transaction/SendTransaction;->mMMSsb:Lcom/android/mms/transaction/MMSStateBroadcaster;

    const/4 v15, 0x0

    invoke-virtual/range {v34 .. v34}, Lcom/google/android/mms/pdu/SendConf;->getMmsVersion()I

    move-result v17

    invoke-virtual/range {v14 .. v19}, Lcom/android/mms/transaction/MMSStateBroadcaster;->sendMMSSendingEnd(IIILjava/lang/String;Ljava/lang/String;)V

    .line 362
    .end local v18           #strMmsTidConf:Ljava/lang/String;
    .end local v19           #strMmsMid:Ljava/lang/String;
    :cond_22
    const/16 v3, 0x80

    move/from16 v0, v16

    if-eq v0, v3, :cond_25

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 365
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SendTransaction] Server returned an error code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_34

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 419
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Delivery failed."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :goto_11
    if-lez v31, :cond_23

    .line 426
    new-instance v33, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .restart local v33       #broadintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_35

    .line 428
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    :goto_12
    const-string v3, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const-string v3, "com.android.mms.transaction.MESSAGE_APP_ID"

    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    const-string v3, "com.android.mms.transaction.MESSAGE_MSG_ID"

    move-object/from16 v0, v33

    move/from16 v1, v43

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    .end local v33           #broadintent:Landroid/content/Intent;
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v3, :cond_24

    .line 443
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] abort post"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 447
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v3, :cond_2

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_2

    .line 369
    :cond_25
    :try_start_7
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/mms/pdu/SendConf;->getMessageId()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v42

    .line 370
    .local v42, messageId:Ljava/lang/String;
    const-string v3, "m_id"

    move-object/from16 v0, v42

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v53

    .line 377
    .local v53, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v21, v0

    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v3, 0x0

    const-string v4, "app_id"

    aput-object v4, v22, v3

    const/4 v3, 0x1

    const-string v4, "msg_id"

    aput-object v4, v22, v3

    const-string v23, "app_id>0"

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v20 .. v25}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v36

    .line 381
    .local v36, cursor:Landroid/database/Cursor;
    if-eqz v36, :cond_27

    .line 383
    :try_start_8
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 384
    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 385
    const/4 v3, 0x1

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v43

    .line 388
    :cond_26
    :try_start_9
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, v53

    invoke-static {v3, v0, v4}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v53

    invoke-static {v3, v0}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForMms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_36

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 419
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Delivery failed."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :goto_13
    if-lez v31, :cond_28

    .line 426
    new-instance v33, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .restart local v33       #broadintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_37

    .line 428
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    :goto_14
    const-string v3, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const-string v3, "com.android.mms.transaction.MESSAGE_APP_ID"

    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    const-string v3, "com.android.mms.transaction.MESSAGE_MSG_ID"

    move-object/from16 v0, v33

    move/from16 v1, v43

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    .end local v33           #broadintent:Landroid/content/Intent;
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v3, :cond_29

    .line 443
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] abort post"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 447
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v3, :cond_2

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_2

    .line 388
    :catchall_1
    move-exception v3

    :try_start_a
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    .line 421
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v16           #respStatus:I
    .end local v34           #conf:Lcom/google/android/mms/pdu/SendConf;
    .end local v35           #confId:[B
    .end local v36           #cursor:Landroid/database/Cursor;
    .end local v37           #date:J
    .end local v42           #messageId:Ljava/lang/String;
    .end local v44           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v45           #rateCtlr:Lcom/android/mms/util/RateController;
    .end local v46           #reqId:[B
    .end local v47           #respStr:Ljava/lang/String;
    .end local v48           #response:[B
    .end local v49           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v51           #tokenKey:J
    .end local v53           #uri:Landroid/net/Uri;
    :cond_2a
    const-string v4, "Mms:transaction"

    const-string v5, "[SendTransaction] Delivery succeeded."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 430
    .restart local v33       #broadintent:Landroid/content/Intent;
    :cond_2b
    const-string v4, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v5, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_e

    .line 421
    .end local v33           #broadintent:Landroid/content/Intent;
    .restart local v50       #t:Ljava/lang/Throwable;
    :cond_2c
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Delivery succeeded."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 430
    .restart local v33       #broadintent:Landroid/content/Intent;
    :cond_2d
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_6

    .line 421
    .end local v33           #broadintent:Landroid/content/Intent;
    .end local v50           #t:Ljava/lang/Throwable;
    .restart local v45       #rateCtlr:Lcom/android/mms/util/RateController;
    :cond_2e
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Delivery succeeded."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 430
    .restart local v33       #broadintent:Landroid/content/Intent;
    :cond_2f
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 421
    .end local v33           #broadintent:Landroid/content/Intent;
    .restart local v6       #values:Landroid/content/ContentValues;
    .restart local v34       #conf:Lcom/google/android/mms/pdu/SendConf;
    .restart local v37       #date:J
    .restart local v44       #persister:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v47       #respStr:Ljava/lang/String;
    .restart local v48       #response:[B
    .restart local v49       #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .restart local v51       #tokenKey:J
    :cond_30
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Delivery succeeded."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 430
    .restart local v33       #broadintent:Landroid/content/Intent;
    :cond_31
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_c

    .line 421
    .end local v33           #broadintent:Landroid/content/Intent;
    .restart local v35       #confId:[B
    .restart local v46       #reqId:[B
    :cond_32
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Delivery succeeded."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 430
    .restart local v33       #broadintent:Landroid/content/Intent;
    :cond_33
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_10

    .line 421
    .end local v33           #broadintent:Landroid/content/Intent;
    .restart local v16       #respStatus:I
    :cond_34
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Delivery succeeded."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 430
    .restart local v33       #broadintent:Landroid/content/Intent;
    :cond_35
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_12

    .line 421
    .end local v33           #broadintent:Landroid/content/Intent;
    .restart local v36       #cursor:Landroid/database/Cursor;
    .restart local v42       #messageId:Ljava/lang/String;
    .restart local v53       #uri:Landroid/net/Uri;
    :cond_36
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Delivery succeeded."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 430
    .restart local v33       #broadintent:Landroid/content/Intent;
    :cond_37
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_14
.end method
