.class public Lcom/android/mms/transaction/RetrieveAckTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "RetrieveAckTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "RetrieveAckTransaction"

.field private static final WAIT_COUNT_FOR_MMS_CONNECTIVITY:I = 0xf

.field private static final WAIT_MS_FOR_MMS_CONNECTIVITY:I = 0x226


# instance fields
.field private connectionManager:Landroid/net/ConnectivityManager;

.field private httpClient:Landroid/net/http/AndroidHttpClient;

.field private final mAckType:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mIsSpam:Z

.field private mMessageId:J

.field private mRetryAckCnt:I

.field private final mTransactionId:Ljava/lang/String;

.field private post:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;IJLjava/lang/String;Lcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;ZI)V
    .locals 1
    .parameter "context"
    .parameter "serviceId"
    .parameter "messageId"
    .parameter "transactionId"
    .parameter "connectionSettings"
    .parameter "type"
    .parameter "isSpam"
    .parameter "retryAckCnt"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p6}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 69
    iput-object p1, p0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mContext:Landroid/content/Context;

    .line 70
    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    .line 71
    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveAckTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 72
    iput-wide p3, p0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mMessageId:J

    .line 73
    iput-object p7, p0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mAckType:Ljava/lang/String;

    .line 74
    iput-object p5, p0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mTransactionId:Ljava/lang/String;

    .line 75
    iput-boolean p8, p0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mIsSpam:Z

    .line 76
    iput p9, p0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mRetryAckCnt:I

    .line 77
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveAckTransaction;->connectionManager:Landroid/net/ConnectivityManager;

    .line 78
    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 222
    iget-object v4, p0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 223
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 226
    .local v2, ni:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 228
    .local v3, ni2:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    const-string v4, "RetrieveAckTransaction"

    const-string v5, "[TransactionService] wifi network available!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 233
    .local v1, networkAvailable:Z
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 241
    :cond_3
    return v1

    .line 232
    .end local v1           #networkAvailable:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x4

    return v0
.end method

.method public process()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method public run()V
    .locals 23

    .prologue
    .line 94
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/RetrieveAckTransaction;->waitForActivatedMmsConnection()Z

    move-result v2

    if-nez v2, :cond_2

    .line 95
    const-string v2, "RetrieveAckTransaction"

    const-string v3, "Data not ready"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :catch_0
    move-exception v19

    .line 174
    .local v19, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "RetrieveAckTransaction"

    invoke-static/range {v19 .. v19}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v5, Lcom/android/mms/transaction/RetrieveAckTimer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mMessageId:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mTransactionId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mAckType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mIsSpam:Z

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mRetryAckCnt:I

    const/4 v13, 0x5

    invoke-direct/range {v5 .. v13}, Lcom/android/mms/transaction/RetrieveAckTimer;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)V

    .line 177
    .local v5, AckTimer:Ljava/lang/Runnable;
    new-instance v20, Ljava/lang/Thread;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 178
    .local v20, thread:Ljava/lang/Thread;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V

    .line 179
    const-string v2, "RetrieveAckTransaction"

    const-string v3, "Ack Send Fail Retry"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    const-string v2, "RetrieveAckTransaction"

    const-string v3, "Ack Send Complete"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v2, :cond_0

    .line 183
    const-string v2, "RetrieveAckTransaction"

    const-string v3, "abort post"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 187
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v2, :cond_1

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 189
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    .line 191
    .end local v5           #AckTimer:Ljava/lang/Runnable;
    .end local v19           #t:Ljava/lang/Throwable;
    .end local v20           #thread:Ljava/lang/Thread;
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/RetrieveAckTransaction;->notifyObservers()V

    .line 193
    return-void

    .line 99
    :cond_2
    :try_start_2
    const-string v2, "noticationtransaction"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mAckType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 101
    const/4 v4, 0x0

    .line 102
    .local v4, mUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mIsSpam:Z

    if-eqz v2, :cond_7

    .line 103
    sget-object v2, Lcom/android/mms/spam/SpamFilter;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mMessageId:J

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 108
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "tr_id"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 110
    .local v17, mmsCursor:Landroid/database/Cursor;
    const/16 v22, 0x0

    .line 111
    .local v22, transactionIDByte:[B
    const/16 v21, 0x0

    .line 112
    .local v21, transactionID:Ljava/lang/String;
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 114
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    .line 116
    :cond_3
    if-eqz v17, :cond_4

    .line 117
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSSendDeliveryReportsEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getMmsReportAllowed(Landroid/content/Context;)I

    move-result v14

    .line 122
    .local v14, ReportAlloed:I
    new-instance v18, Lcom/google/android/mms/pdu/NotifyRespInd;

    const/16 v2, 0x12

    const/16 v3, 0x81

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v2, v1, v3, v14}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BII)V

    .line 130
    .end local v14           #ReportAlloed:I
    .local v18, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 135
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 136
    const-string v5, "[Transaction : Notification Resp Ind]"

    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v2, v3, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x140

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/mms/transaction/HexDump;->dump(Ljava/lang/String;[BJIILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 181
    .end local v4           #mUri:Landroid/net/Uri;
    .end local v17           #mmsCursor:Landroid/database/Cursor;
    .end local v18           #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    .end local v21           #transactionID:Ljava/lang/String;
    .end local v22           #transactionIDByte:[B
    :cond_5
    :goto_4
    const-string v2, "RetrieveAckTransaction"

    const-string v3, "Ack Send Complete"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v2, :cond_6

    .line 183
    const-string v2, "RetrieveAckTransaction"

    const-string v3, "abort post"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 187
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v2, :cond_1

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 189
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    goto/16 :goto_0

    .line 105
    .restart local v4       #mUri:Landroid/net/Uri;
    :cond_7
    :try_start_3
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mMessageId:J

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_1

    .line 125
    .restart local v17       #mmsCursor:Landroid/database/Cursor;
    .restart local v21       #transactionID:Ljava/lang/String;
    .restart local v22       #transactionIDByte:[B
    :cond_8
    new-instance v18, Lcom/google/android/mms/pdu/NotifyRespInd;

    const/16 v2, 0x12

    const/16 v3, 0x81

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BI)V

    .restart local v18       #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    goto :goto_2

    .line 133
    :cond_9
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v2, v3, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/RetrieveAckTransaction;->sendPdu([B)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 181
    .end local v4           #mUri:Landroid/net/Uri;
    .end local v17           #mmsCursor:Landroid/database/Cursor;
    .end local v18           #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    .end local v21           #transactionID:Ljava/lang/String;
    .end local v22           #transactionIDByte:[B
    :catchall_0
    move-exception v2

    const-string v3, "RetrieveAckTransaction"

    const-string v6, "Ack Send Complete"

    invoke-static {v3, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v3, :cond_a

    .line 183
    const-string v3, "RetrieveAckTransaction"

    const-string v6, "abort post"

    invoke-static {v3, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 187
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v3, :cond_b

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 189
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    .line 191
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/RetrieveAckTransaction;->notifyObservers()V

    .line 181
    throw v2

    .line 139
    :cond_c
    :try_start_4
    const-string v2, "retrievetransaction"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mAckType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mTransactionId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    .line 144
    .restart local v22       #transactionIDByte:[B
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSSendDeliveryReportsEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getMmsReportAllowed(Landroid/content/Context;)I

    move-result v14

    .line 147
    .restart local v14       #ReportAlloed:I
    new-instance v15, Lcom/google/android/mms/pdu/AcknowledgeInd;

    const/16 v2, 0x12

    move-object/from16 v0, v22

    invoke-direct {v15, v2, v0, v14}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(I[BI)V

    .line 154
    .end local v14           #ReportAlloed:I
    .local v15, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    :goto_5
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v16

    .line 155
    .local v16, lineNumber:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 156
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 163
    :goto_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 168
    :goto_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 169
    const-string v5, "[Transaction : Retrive Ack Ind]"

    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v15}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x140

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/mms/transaction/HexDump;->dump(Ljava/lang/String;[BJIILjava/lang/Object;)V

    goto/16 :goto_4

    .line 150
    .end local v15           #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    .end local v16           #lineNumber:Ljava/lang/String;
    :cond_d
    new-instance v15, Lcom/google/android/mms/pdu/AcknowledgeInd;

    const/16 v2, 0x12

    move-object/from16 v0, v22

    invoke-direct {v15, v2, v0}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(I[B)V

    .restart local v15       #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    goto :goto_5

    .line 158
    .restart local v16       #lineNumber:Ljava/lang/String;
    :cond_e
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v3, "insert-address-token"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v15, v2}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto :goto_6

    .line 166
    :cond_f
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetrieveAckTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v15}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/RetrieveAckTransaction;->sendPdu([B)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7
.end method

.method protected waitForActivatedMmsConnection()Z
    .locals 7

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 200
    .local v0, connectionReady:Z
    const-string v4, "main"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    const-string v4, "RetrieveAckTransaction"

    const-string v5, "waitForActivatedMmsConnection() does not work on main thread!!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v4, 0x1

    .line 218
    :goto_0
    return v4

    .line 204
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v4, 0xf

    if-ge v2, v4, :cond_1

    .line 205
    iget-object v4, p0, Lcom/android/mms/transaction/RetrieveAckTransaction;->connectionManager:Landroid/net/ConnectivityManager;

    const/4 v5, 0x0

    const-string v6, "enableMMS"

    invoke-virtual {v4, v5, v6}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v3

    .line 206
    .local v3, netStatus:I
    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/mms/transaction/RetrieveAckTransaction;->isNetworkAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    const-string v4, "RetrieveAckTransaction"

    const-string v5, "connectionReady is ready"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x1

    .end local v3           #netStatus:I
    :cond_1
    move v4, v0

    .line 218
    goto :goto_0

    .line 211
    .restart local v3       #netStatus:I
    :cond_2
    const-string v4, "RetrieveAckTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "waitForActivatedMmsConnection...status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", NetworkAvailable() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/mms/transaction/RetrieveAckTransaction;->isNetworkAvailable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-wide/16 v4, 0x226

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
