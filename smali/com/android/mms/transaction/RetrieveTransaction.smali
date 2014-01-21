.class public Lcom/android/mms/transaction/RetrieveTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "RetrieveTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final COLUMN_CONTENT_LOCATION:I = 0x0

.field static final COLUMN_LOCKED:I = 0x1

.field static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms:transaction"


# instance fields
.field private final mContentLocation:Ljava/lang/String;

.field private mLocked:Z

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "locked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/RetrieveTransaction;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "serviceId"
    .parameter "connectionSettings"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 90
    const-string v0, "content://"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    .line 92
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/android/mms/transaction/RetrieveTransaction;->getContentLocation(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 94
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RetrieveTransaction] X-Mms-Content-Location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/RetrieveTransaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 103
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initializing from X-Mms-Content-Location is abandoned!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getContentLocation(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/RetrieveTransaction;->PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 108
    .local v7, cursor:Landroid/database/Cursor;
    iput-boolean v9, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mLocked:Z

    .line 110
    if-eqz v7, :cond_4

    .line 112
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mLocked:Z

    .line 116
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 119
    if-eqz v7, :cond_0

    .line 120
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_0
    return-object v0

    :cond_1
    move v0, v9

    .line 115
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 120
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_2
    throw v0

    :cond_3
    if-eqz v7, :cond_4

    .line 120
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_4
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get X-Mms-Content-Location from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;)Z
    .locals 12
    .parameter "context"
    .parameter "rc"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 395
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageId()[B

    move-result-object v9

    .line 396
    .local v9, rawMessageId:[B
    if-eqz v9, :cond_3

    .line 397
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 398
    .local v8, messageId:Ljava/lang/String;
    const-string v4, "(m_id = ? AND m_type = ?)"

    .line 399
    .local v4, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    aput-object v8, v5, v11

    const/16 v0, 0x84

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    .line 402
    .local v5, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v11

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 406
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 408
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    .line 413
    if-eqz v7, :cond_0

    .line 414
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v10

    .line 418
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #messageId:Ljava/lang/String;
    :goto_0
    return v0

    .line 413
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v8       #messageId:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    .line 414
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_1
    throw v0

    :cond_2
    if-eqz v7, :cond_3

    .line 414
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #messageId:Ljava/lang/String;
    :cond_3
    move v0, v11

    .line 418
    goto :goto_0
.end method

.method private sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;)V
    .locals 6
    .parameter "rc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x12

    .line 425
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getTransactionId()[B

    move-result-object v3

    .line 426
    .local v3, tranId:[B
    if-eqz v3, :cond_0

    .line 429
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSSendDeliveryReportsEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 430
    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getMmsReportAllowed(Landroid/content/Context;)I

    move-result v0

    .line 431
    .local v0, ReportAlloed:I
    new-instance v1, Lcom/google/android/mms/pdu/AcknowledgeInd;

    invoke-direct {v1, v5, v3, v0}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(I[BI)V

    .line 439
    .end local v0           #ReportAlloed:I
    .local v1, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    :goto_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, lineNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 441
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 448
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 449
    new-instance v4, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/transaction/RetrieveTransaction;->sendPdu([BLjava/lang/String;)[B

    .line 454
    .end local v1           #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    .end local v2           #lineNumber:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 434
    :cond_1
    new-instance v1, Lcom/google/android/mms/pdu/AcknowledgeInd;

    invoke-direct {v1, v5, v3}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(I[B)V

    .restart local v1       #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    goto :goto_0

    .line 443
    .restart local v2       #lineNumber:Ljava/lang/String;
    :cond_2
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v5, "insert-address-token"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v1, v4}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto :goto_1

    .line 451
    :cond_3
    new-instance v4, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/transaction/RetrieveTransaction;->sendPdu([B)[B

    goto :goto_2
.end method

.method private sendMMSRetrievalStateCIQ(JII)V
    .locals 13
    .parameter "msgID"
    .parameter "state"
    .parameter "retryCnt"

    .prologue
    .line 478
    const/4 v10, 0x0

    .line 479
    .local v10, mmsTid:Ljava/lang/String;
    const/4 v9, 0x0

    .line 480
    .local v9, lUrl:Ljava/lang/String;
    const/4 v11, 0x0

    .line 482
    .local v11, resultCode:I
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

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

    .line 485
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 487
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    const-string v1, "ct_l"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 489
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

    .line 490
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

    .line 493
    .end local v11           #resultCode:I
    .local v4, resultCode:I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 496
    sget-object v1, Lcom/android/mms/transaction/RetrieveTransaction;->mMMSsb:Lcom/android/mms/transaction/MMSStateBroadcaster;

    move/from16 v0, p4

    int-to-byte v3, v0

    const/4 v5, 0x0

    move/from16 v2, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/mms/transaction/MMSStateBroadcaster;->sendMMSRetrievalState(IBIILjava/lang/String;Ljava/lang/String;)V

    .line 498
    :goto_1
    return-void

    .line 493
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
    :cond_0
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
    goto :goto_1
.end method

.method private static updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "contentLocation"
    .parameter "locked"

    .prologue
    const/4 v4, 0x0

    .line 458
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 459
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "ct_l"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v0, "locked"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 462
    return-void
.end method


# virtual methods
.method public getContentLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x1

    return v0
.end method

.method public process()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 134
    return-void
.end method

.method public run()V
    .locals 43

    .prologue
    .line 139
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/16 v7, 0x81

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 141
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v37

    .line 142
    .local v37, msgId:J
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCiqUsAtt()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    move-object/from16 v0, p0

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/RetrieveTransaction;->getRetryCount(J)B

    move-result v5

    if-nez v5, :cond_0

    .line 144
    const/4 v5, 0x4

    move-object/from16 v0, p0

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/RetrieveTransaction;->getRetryCount(J)B

    move-result v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v37

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/mms/transaction/RetrieveTransaction;->sendMMSRetrievalStateCIQ(JII)V

    .line 148
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 149
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v5, v6}, Lcom/android/mms/ui/MessageUtils;->isMessageExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 151
    const-string v5, "Mms:transaction"

    const-string v6, "RetrieveTransaction - Msg Not Exist"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_22

    .line 384
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 385
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 386
    const-string v5, "Mms:transaction"

    const-string v6, "[RetrieveTransaction] Retrieval failed."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .end local v37           #msgId:J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/RetrieveTransaction;->notifyObservers()V

    .line 392
    return-void

    .line 157
    .restart local v37       #msgId:J
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/mms/transaction/RetrieveTransaction;->getPdu(Ljava/lang/String;)[B

    move-result-object v39

    .line 160
    .local v39, resp:[B
    new-instance v5, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v39

    invoke-direct {v5, v0}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v4

    check-cast v4, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 161
    .local v4, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/mms/util/AddressUtils;->checkUnknownAddress(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 163
    if-nez v4, :cond_4

    .line 164
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string v6, "Invalid M-Retrieve.conf PDU."

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 355
    .end local v4           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    .end local v37           #msgId:J
    .end local v39           #resp:[B
    :catch_0
    move-exception v41

    .line 356
    .local v41, t:Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 357
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "404"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 358
    const-string v5, "Mms:transaction"

    const-string v6, "[RetrieveTransaction] 404 Not Found exception"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v12, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v12, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 361
    .local v12, values:Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 362
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setTypeTransState(I)V

    .line 365
    :cond_2
    const-string v5, "resp_st"

    const/16 v6, 0xe4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 381
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[RetrieveTransaction] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v41 .. v41}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_21

    .line 384
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 385
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 386
    const-string v5, "Mms:transaction"

    const-string v6, "[RetrieveTransaction] Retrieval failed."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    .end local v41           #t:Ljava/lang/Throwable;
    .restart local v4       #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    .restart local v37       #msgId:J
    .restart local v39       #resp:[B
    :cond_4
    :try_start_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSavePduFiles()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 166
    const-string v5, "RetrieveConf"

    move-object/from16 v0, v39

    invoke-static {v5, v0}, Lcom/android/mms/transaction/SavePduFiles;->save(Ljava/lang/String;[B)V

    .line 172
    :cond_5
    const/16 v42, -0x1

    .line 173
    .local v42, threadId:I
    const-wide/16 v32, -0x1

    .line 176
    .local v32, date:J
    const/4 v15, 0x0

    .line 177
    .local v15, msgUri:Landroid/net/Uri;
    const/16 v36, 0x0

    .line 179
    .local v36, isSpam:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    .line 198
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/mms/transaction/RetrieveTransaction;->isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 201
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 202
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 282
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 283
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lcom/android/mms/transaction/RetrieveTransaction;->updateMessageSize(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 290
    :cond_6
    sget-object v5, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    .line 291
    .local v35, inboxUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v35

    invoke-static {v5, v6, v0, v7, v9}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 293
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 296
    const-wide/16 v5, -0x1

    cmp-long v5, v32, v5

    if-eqz v5, :cond_7

    .line 298
    const-string v5, "WAP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[RetrieveTransaction]  update the date in thread"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 300
    .restart local v12       #values:Landroid/content/ContentValues;
    const-string v5, "date"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v5, Landroid/provider/Telephony$Threads;->LAST_MESSAGE_TIME_URI:Landroid/net/Uri;

    move/from16 v0, v42

    int-to-long v6, v0

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 305
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_9

    :cond_8
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_c

    .line 307
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v5, 0x0

    const-string v6, "thread_id"

    aput-object v6, v16, v5

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v30

    .line 308
    .local v30, c:Landroid/database/Cursor;
    const/16 v31, -0x1

    .line 310
    .local v31, currentThreadId:I
    if-eqz v30, :cond_a

    :try_start_4
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 311
    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v31

    .line 314
    :cond_a
    if-eqz v30, :cond_b

    .line 315
    :try_start_5
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_b
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move/from16 v0, v31

    int-to-long v9, v0

    invoke-virtual {v5, v6, v9, v10}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    .line 322
    .end local v30           #c:Landroid/database/Cursor;
    .end local v31           #currentThreadId:I
    :cond_c
    if-eqz v15, :cond_e

    .line 325
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v15}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V

    .line 327
    if-nez v36, :cond_d

    .line 329
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v5, v15, v6}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    .line 330
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v5, v15}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForMms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 333
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    .line 334
    if-eqz v15, :cond_e

    if-eqz v36, :cond_e

    .line 335
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v5, v15, v6}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v40

    .line 336
    .local v40, result:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v5, v15}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForMms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 343
    .end local v40           #result:Z
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCiqUsAtt()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 344
    new-instance v17, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 345
    .local v17, strContentType:Ljava/lang/String;
    new-instance v21, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getTransactionId()[B

    move-result-object v5

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 346
    .local v21, strMmsTid:Ljava/lang/String;
    new-instance v22, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getMmsId()[B

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 347
    .local v22, strMmsMid:Ljava/lang/String;
    sget-object v16, Lcom/android/mms/transaction/RetrieveTransaction;->mMMSsb:Lcom/android/mms/transaction/MMSStateBroadcaster;

    const/16 v18, 0x0

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getRetrieveStatus()I

    move-result v19

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getMmsVersion()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v16 .. v23}, Lcom/android/mms/transaction/MMSStateBroadcaster;->sendMMSRetrievalEnd(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    sget-object v23, Lcom/android/mms/transaction/RetrieveTransaction;->mMMSsb:Lcom/android/mms/transaction/MMSStateBroadcaster;

    const/16 v24, 0x7

    move-object/from16 v0, p0

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/RetrieveTransaction;->getRetryCount(J)B

    move-result v25

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getRetrieveStatus()I

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v28, v22

    invoke-virtual/range {v23 .. v29}, Lcom/android/mms/transaction/MMSStateBroadcaster;->sendMMSRetrievalState(IBIILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 383
    .end local v17           #strContentType:Ljava/lang/String;
    .end local v21           #strMmsTid:Ljava/lang/String;
    .end local v22           #strMmsMid:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_23

    .line 384
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 385
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 386
    const-string v5, "Mms:transaction"

    const-string v6, "[RetrieveTransaction] Retrieval failed."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    .end local v35           #inboxUri:Landroid/net/Uri;
    :cond_10
    :try_start_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsAutoDownload4Spam()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 187
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string v6, "spammms"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 188
    const/16 v36, 0x1

    goto/16 :goto_2

    .line 190
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)Z

    move-result v36

    goto/16 :goto_2

    .line 195
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)Z

    move-result v36

    goto/16 :goto_2

    .line 204
    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result v5

    if-nez v5, :cond_14

    .line 209
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/transaction/RetrieveTransaction;->sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 215
    :cond_14
    :goto_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    .line 216
    .local v3, persister:Lcom/google/android/mms/pdu/PduPersister;
    if-eqz v36, :cond_1b

    .line 217
    sget-object v5, Landroid/provider/Telephony$SpamMms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v36

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v15

    .line 224
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 225
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_16

    :cond_15
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    if-eqz v5, :cond_1a

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1a

    .line 227
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "thread_id"

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v30

    .line 229
    .restart local v30       #c:Landroid/database/Cursor;
    if-eqz v30, :cond_17

    :try_start_9
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 230
    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 231
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[RetrieveTransaction] Thread Id is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 234
    :cond_17
    if-eqz v30, :cond_18

    .line 235
    :try_start_a
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_18
    const/4 v5, -0x1

    move/from16 v0, v42

    if-eq v0, v5, :cond_1a

    .line 240
    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v8, v5

    const/4 v5, 0x1

    const-string v6, "\'sms\' as type"

    aput-object v6, v8, v5

    const/4 v5, 0x2

    const-string v6, "date"

    aput-object v6, v8, v5

    .line 247
    .local v8, SMS_MMS_MESSAGE_UNION_PROJECTION:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "thread_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v42

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") UNION  select DISTINCT _id,\'mms\' as type, date * 1000 AS date from pdu where (thread_id= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v42

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "date DESC LIMIT 2"

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    move-result-object v30

    .line 254
    if-eqz v30, :cond_19

    :try_start_b
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_19

    .line 255
    const/4 v5, 0x2

    move-object/from16 v0, v30

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 256
    const-string v5, "WAP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[RetrieveTransaction]  date last is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v32

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToNext()Z

    .line 258
    const/4 v5, 0x2

    move-object/from16 v0, v30

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 259
    const-string v5, "WAP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[RetrieveTransaction]  date last is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v32

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 262
    :cond_19
    if-eqz v30, :cond_1a

    .line 263
    :try_start_c
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 271
    .end local v8           #SMS_MMS_MESSAGE_UNION_PROJECTION:[Ljava/lang/String;
    .end local v30           #c:Landroid/database/Cursor;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move/from16 v0, v36

    invoke-virtual {v5, v0}, Lcom/android/mms/transaction/TransactionState;->setIsSpam(Z)V

    .line 272
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v15}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mLocked:Z

    invoke-static {v5, v15, v6, v7}, Lcom/android/mms/transaction/RetrieveTransaction;->updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_3

    .line 383
    .end local v3           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v4           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    .end local v15           #msgUri:Landroid/net/Uri;
    .end local v32           #date:J
    .end local v36           #isSpam:Z
    .end local v37           #msgId:J
    .end local v39           #resp:[B
    .end local v42           #threadId:I
    :catchall_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_20

    .line 384
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 385
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 386
    const-string v6, "Mms:transaction"

    const-string v7, "[RetrieveTransaction] Retrieval failed."

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/RetrieveTransaction;->notifyObservers()V

    .line 383
    throw v5

    .line 210
    .restart local v4       #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    .restart local v15       #msgUri:Landroid/net/Uri;
    .restart local v32       #date:J
    .restart local v36       #isSpam:Z
    .restart local v37       #msgId:J
    .restart local v39       #resp:[B
    .restart local v42       #threadId:I
    :catch_1
    move-exception v34

    .line 211
    .local v34, e:Ljava/io/IOException;
    :try_start_d
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[RetrieveTransaction] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v34 .. v34}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 219
    .end local v34           #e:Ljava/io/IOException;
    .restart local v3       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_1b
    sget-object v5, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v15

    goto/16 :goto_5

    .line 234
    .restart local v30       #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v5

    if-eqz v30, :cond_1c

    .line 235
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_1c
    throw v5

    .line 262
    .restart local v8       #SMS_MMS_MESSAGE_UNION_PROJECTION:[Ljava/lang/String;
    :catchall_2
    move-exception v5

    if-eqz v30, :cond_1d

    .line 263
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_1d
    throw v5

    .line 314
    .end local v3           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v8           #SMS_MMS_MESSAGE_UNION_PROJECTION:[Ljava/lang/String;
    .restart local v31       #currentThreadId:I
    .restart local v35       #inboxUri:Landroid/net/Uri;
    :catchall_3
    move-exception v5

    if-eqz v30, :cond_1e

    .line 315
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_1e
    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    .line 369
    .end local v4           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    .end local v15           #msgUri:Landroid/net/Uri;
    .end local v30           #c:Landroid/database/Cursor;
    .end local v31           #currentThreadId:I
    .end local v32           #date:J
    .end local v35           #inboxUri:Landroid/net/Uri;
    .end local v36           #isSpam:Z
    .end local v37           #msgId:J
    .end local v39           #resp:[B
    .end local v42           #threadId:I
    .restart local v41       #t:Ljava/lang/Throwable;
    :cond_1f
    :try_start_e
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "410"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 370
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeletePermanentFailure()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 371
    const-string v5, "Mms:transaction"

    const-string v6, "[RetrieveTransaction] 410 Gone exception"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setTypeTransState(I)V

    .line 373
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v5

    const v6, 0x7f0c01ae

    invoke-virtual {v5, v6}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    .line 374
    new-instance v12, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v12, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 375
    .restart local v12       #values:Landroid/content/ContentValues;
    const-string v5, "resp_st"

    const/16 v6, 0xe0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 388
    .end local v12           #values:Landroid/content/ContentValues;
    .end local v41           #t:Ljava/lang/Throwable;
    :cond_20
    const-string v6, "Mms:transaction"

    const-string v7, "[RetrieveTransaction] Retrieval succeeded."

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .restart local v41       #t:Ljava/lang/Throwable;
    :cond_21
    const-string v5, "Mms:transaction"

    const-string v6, "[RetrieveTransaction] Retrieval succeeded."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v41           #t:Ljava/lang/Throwable;
    .restart local v37       #msgId:J
    :cond_22
    const-string v5, "Mms:transaction"

    const-string v6, "[RetrieveTransaction] Retrieval succeeded."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v4       #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    .restart local v15       #msgUri:Landroid/net/Uri;
    .restart local v32       #date:J
    .restart local v35       #inboxUri:Landroid/net/Uri;
    .restart local v36       #isSpam:Z
    .restart local v39       #resp:[B
    .restart local v42       #threadId:I
    :cond_23
    const-string v5, "Mms:transaction"

    const-string v6, "[RetrieveTransaction] Retrieval succeeded."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
