.class public Lcom/android/mms/transaction/NotificationTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "NotificationTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final MANUAL_DOWNLOAD_TYPE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Mms:transaction"


# instance fields
.field private mContentLocation:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIsnotiProcessing:Z

.field private mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

.field private mUri:Landroid/net/Uri;

.field private uriRetrieve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V
    .locals 7
    .parameter "context"
    .parameter "serviceId"
    .parameter "connectionSettings"
    .parameter "ind"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mIsnotiProcessing:Z

    .line 135
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    iput-object p4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    .line 144
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 145
    return-void

    .line 138
    :catch_0
    move-exception v6

    .line 139
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v0, "Mms:transaction"

    const-string v1, "[NotificationTransaction] Failed to save NotificationInd in constructor."

    invoke-static {v0, v1, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "serviceId"
    .parameter "connectionSettings"
    .parameter "uriString"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 102
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mIsnotiProcessing:Z

    .line 108
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 110
    invoke-static {}, Lcom/android/mms/MmsConfig;->isMms2gAutodownloadAfterCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iput-object p4, p0, Lcom/android/mms/transaction/NotificationTransaction;->uriRetrieve:Ljava/lang/String;

    .line 114
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/NotificationInd;

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 121
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    .line 124
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 125
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NotificationTransaction] Failed to load NotificationInd from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static allowAutoDownload()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 148
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    .line 149
    .local v2, downloadManager:Lcom/android/mms/util/DownloadManager;
    invoke-virtual {v2}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v0

    .line 150
    .local v0, autoDownload:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    move v1, v3

    .line 153
    .local v1, dataSuspended:Z
    :goto_0
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NotificationTransaction] allowAutoDownload autoDownload="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dataSuspended="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    :goto_1
    return v3

    .end local v1           #dataSuspended:Z
    :cond_0
    move v1, v4

    .line 150
    goto :goto_0

    .restart local v1       #dataSuspended:Z
    :cond_1
    move v3, v4

    .line 154
    goto :goto_1
.end method

.method private getResponseStatus(J)I
    .locals 10
    .parameter "msgID"

    .prologue
    .line 595
    const/4 v9, 0x0

    .line 596
    .local v9, respStatus:I
    const/4 v7, 0x0

    .line 598
    .local v7, cursor:Landroid/database/Cursor;
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

    move-result-object v7

    .line 600
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    const-string v0, "resp_st"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 607
    :cond_0
    if-eqz v7, :cond_1

    .line 608
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 611
    :cond_1
    if-eqz v9, :cond_2

    .line 612
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_2
    return v9

    .line 603
    :catch_0
    move-exception v8

    .line 604
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Mms:transaction"

    const-string v1, "Exception in query."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    if-eqz v7, :cond_1

    goto :goto_0

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 608
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 607
    :cond_3
    throw v0
.end method

.method private getRetrieveStatus(J)I
    .locals 9
    .parameter "msgID"

    .prologue
    .line 620
    const/4 v8, 0x0

    .line 621
    .local v8, respStatus:I
    const/4 v7, 0x0

    .line 623
    .local v7, cursor:Landroid/database/Cursor;
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

    move-result-object v7

    .line 625
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    const-string v0, "retr_st"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 629
    :cond_0
    if-eqz v7, :cond_1

    .line 630
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 633
    :cond_1
    if-eqz v8, :cond_2

    .line 634
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieve status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_2
    return v8

    .line 629
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 630
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 629
    :cond_3
    throw v0
.end method

.method private sendNotifyRespInd(I)V
    .locals 4
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x12

    .line 553
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSSendDeliveryReportsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getMmsReportAllowed(Landroid/content/Context;)I

    move-result v0

    .line 555
    .local v0, ReportAlloed:I
    new-instance v1, Lcom/google/android/mms/pdu/NotifyRespInd;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v1, v3, v2, p1, v0}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BII)V

    .line 563
    .end local v0           #ReportAlloed:I
    .local v1, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 564
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/transaction/NotificationTransaction;->sendPdu([BLjava/lang/String;)[B

    .line 568
    :goto_1
    return-void

    .line 558
    .end local v1           #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    :cond_0
    new-instance v1, Lcom/google/android/mms/pdu/NotifyRespInd;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v1, v3, v2, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BI)V

    .restart local v1       #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    goto :goto_0

    .line 566
    :cond_1
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/NotificationTransaction;->sendPdu([B)[B

    goto :goto_1
.end method


# virtual methods
.method public getContentLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public get_Uri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->uriRetrieve:Ljava/lang/String;

    return-object v0
.end method

.method public isNotiProcessing()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mIsnotiProcessing:Z

    return v0
.end method

.method public process()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 170
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mIsnotiProcessing:Z

    .line 173
    :cond_0
    return-void
.end method

.method public run()V
    .locals 57

    .prologue
    .line 176
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v37

    .line 177
    .local v37, downloadManager:Lcom/android/mms/util/DownloadManager;
    invoke-static {}, Lcom/android/mms/transaction/NotificationTransaction;->allowAutoDownload()Z

    move-result v31

    .line 178
    .local v31, autoDownload:Z
    const/16 v41, 0x0

    .line 179
    .local v41, isPermanetError:Z
    const/16 v42, 0x0

    .line 180
    .local v42, isSpam:Z
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[NotificationTransaction] DataState : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[NotificationTransaction] autoDownload : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/16 v44, -0x1

    .line 184
    .local v44, mCurrentThreadId:I
    :try_start_0
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[NotificationTransaction] Notification transaction launched: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v33

    .line 188
    .local v33, currentStrorage:J
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAvailableSizeForRestrictAutoDownload()I

    move-result v5

    mul-int/lit16 v5, v5, 0x400

    mul-int/lit16 v5, v5, 0x400

    int-to-long v0, v5

    move-wide/from16 v45, v0

    .line 189
    .local v45, minStorage:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v47

    .line 191
    .local v47, msgId:J
    if-eqz v31, :cond_0

    cmp-long v5, v33, v45

    if-gez v5, :cond_0

    .line 192
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Available Storage Size "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v33

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v45

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v33, v45

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/16 v31, 0x0

    .line 195
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v5

    const v6, 0x7f0c014a

    invoke-virtual {v5, v6}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    .line 201
    :cond_0
    const/16 v53, 0x83

    .line 203
    .local v53, status:I
    if-nez v31, :cond_4

    .line 204
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/16 v6, 0x80

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 205
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 206
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setTypeTransState(I)V

    .line 208
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 535
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 536
    if-nez v31, :cond_2

    .line 539
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 541
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 542
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 543
    const-string v5, "Mms:transaction"

    const-string v6, "[NotificationTransaction] NotificationTransaction failed."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .end local v33           #currentStrorage:J
    .end local v45           #minStorage:J
    .end local v47           #msgId:J
    .end local v53           #status:I
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    .line 547
    return-void

    .line 211
    .restart local v33       #currentStrorage:J
    .restart local v45       #minStorage:J
    .restart local v47       #msgId:J
    .restart local v53       #status:I
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCiqUsAtt()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 212
    sget-object v3, Lcom/android/mms/transaction/NotificationTransaction;->mMMSsb:Lcom/android/mms/transaction/MMSStateBroadcaster;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v47

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;->getRetrieveStatus(J)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/android/mms/transaction/MMSStateBroadcaster;->sendMMSRetrievalState(IBIILjava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/16 v6, 0x81

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 216
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 217
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[NotificationTransaction] Content-Location: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 220
    :cond_6
    const/16 v50, 0x0

    .line 224
    .local v50, retrieveConfData:[B
    :try_start_2
    const-string v5, "Mms:transaction"

    const-string v6, "[NotificationTransaction] start immediate retrieve"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/mms/transaction/NotificationTransaction;->getPdu(Ljava/lang/String;)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v50

    .line 246
    :cond_7
    if-eqz v50, :cond_9

    .line 247
    :try_start_3
    new-instance v5, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v50

    invoke-direct {v5, v0}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v4

    .line 248
    .local v4, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v5

    const/16 v6, 0x84

    if-eq v5, v6, :cond_11

    .line 249
    :cond_8
    const-string v5, "Mms:transaction"

    const-string v6, "[NotificationTransaction] Invalid M-RETRIEVE.CONF PDU."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 251
    const/16 v53, 0x84

    .line 469
    .end local v4           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_9
    :goto_1
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[NotificationTransaction] status=0x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Lcom/android/mms/transaction/TransactionState;->setIsSpam(Z)V

    .line 473
    packed-switch v53, :pswitch_data_0

    .line 493
    :cond_a
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    if-eqz v5, :cond_b

    .line 494
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v8}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 535
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 536
    if-nez v31, :cond_c

    .line 539
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 541
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 542
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 543
    const-string v5, "Mms:transaction"

    const-string v6, "[NotificationTransaction] NotificationTransaction failed."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    :catch_0
    move-exception v38

    .line 228
    .local v38, e:Ljava/io/IOException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 230
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeletePermanentFailure()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 232
    const/16 v30, 0x0

    .line 233
    .local v30, IOe:Ljava/io/IOException;
    const/16 v40, 0x0

    .line 234
    .local v40, errorString:Ljava/lang/String;
    invoke-virtual/range {v38 .. v38}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 235
    invoke-virtual/range {v38 .. v38}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v40

    .line 236
    new-instance v30, Ljava/io/IOException;

    .end local v30           #IOe:Ljava/io/IOException;
    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 240
    .restart local v30       #IOe:Ljava/io/IOException;
    :goto_3
    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 241
    throw v30
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_2

    .line 495
    .end local v30           #IOe:Ljava/io/IOException;
    .end local v33           #currentStrorage:J
    .end local v38           #e:Ljava/io/IOException;
    .end local v40           #errorString:Ljava/lang/String;
    .end local v45           #minStorage:J
    .end local v47           #msgId:J
    .end local v50           #retrieveConfData:[B
    .end local v53           #status:I
    :catch_1
    move-exception v38

    .line 496
    .restart local v38       #e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual/range {v38 .. v38}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 497
    invoke-virtual/range {v38 .. v38}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "404"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 498
    const-string v5, "Mms:transaction"

    const-string v6, "[NotificationTransaction] 404 Not Found exception"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 501
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setTypeTransState(I)V

    .line 504
    :cond_d
    new-instance v15, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v15, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 505
    .local v15, values:Landroid/content/ContentValues;
    const-string v5, "resp_st"

    const/16 v6, 0xe4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v25, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v26, v15

    invoke-static/range {v23 .. v28}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 531
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_e
    :goto_4
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[NotificationTransaction] "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v38 .. v38}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 535
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 536
    if-nez v31, :cond_f

    .line 539
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 541
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 542
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 543
    const-string v5, "Mms:transaction"

    const-string v6, "[NotificationTransaction] NotificationTransaction failed."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    .restart local v30       #IOe:Ljava/io/IOException;
    .restart local v33       #currentStrorage:J
    .restart local v40       #errorString:Ljava/lang/String;
    .restart local v45       #minStorage:J
    .restart local v47       #msgId:J
    .restart local v50       #retrieveConfData:[B
    .restart local v53       #status:I
    :cond_10
    :try_start_6
    new-instance v30, Ljava/io/IOException;

    .end local v30           #IOe:Ljava/io/IOException;
    invoke-direct/range {v30 .. v30}, Ljava/io/IOException;-><init>()V

    .restart local v30       #IOe:Ljava/io/IOException;
    goto/16 :goto_3

    .line 253
    .end local v30           #IOe:Ljava/io/IOException;
    .end local v38           #e:Ljava/io/IOException;
    .end local v40           #errorString:Ljava/lang/String;
    .restart local v4       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/mms/util/AddressUtils;->checkUnknownAddress(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 256
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSavePduFiles()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 257
    const-string v5, "RetrieveConf"

    move-object/from16 v0, v50

    invoke-static {v5, v0}, Lcom/android/mms/transaction/SavePduFiles;->save(Ljava/lang/String;[B)V

    .line 261
    :cond_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_28

    .line 262
    const/16 v54, 0x0

    .line 263
    .local v54, subject:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/GenericPdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 264
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/GenericPdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v54

    .line 266
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-static {v5, v6, v0}, Lcom/android/mms/ui/MessageUtils;->SpamMessageFilterForVIPMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v42

    .line 279
    .end local v54           #subject:Ljava/lang/String;
    :cond_14
    :goto_5
    const/16 v53, 0x81

    .line 281
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_6 .. :try_end_6} :catch_2

    move-result v5

    if-nez v5, :cond_15

    .line 283
    :try_start_7
    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_7 .. :try_end_7} :catch_2

    .line 290
    :cond_15
    :goto_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    .line 291
    .local v3, p:Lcom/google/android/mms/pdu/PduPersister;
    const/4 v7, 0x0

    .line 292
    .local v7, uri:Landroid/net/Uri;
    if-eqz v42, :cond_2c

    .line 293
    sget-object v5, Landroid/provider/Telephony$SpamMms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v42

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v7

    .line 300
    :goto_7
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NotificatoinTransaction isSpam = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/16 v55, -0x1

    .line 304
    .local v55, threadId:I
    const-wide/16 v35, -0x1

    .line 305
    .local v35, date:J
    const/16 v52, 0x0

    .line 308
    .local v52, snippet:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 309
    instance-of v5, v4, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v5, :cond_1f

    .line 310
    move-object v0, v4

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    if-eqz v5, :cond_16

    move-object v0, v4

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_17

    :cond_16
    move-object v0, v4

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    if-eqz v5, :cond_1f

    move-object v0, v4

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    array-length v5, v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_8 .. :try_end_8} :catch_2

    const/4 v6, 0x1

    if-le v5, v6, :cond_1f

    .line 314
    :cond_17
    :try_start_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v7, v6}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v43

    .line 315
    .local v43, m:Lcom/android/mms/model/SlideshowModel;
    if-eqz v43, :cond_18

    .line 316
    const/4 v5, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v51

    .line 317
    .local v51, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v51, :cond_18

    invoke-virtual/range {v51 .. v51}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 318
    invoke-virtual/range {v51 .. v51}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v56

    .line 319
    .local v56, tm:Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v56 .. v56}, Lcom/android/mms/model/TextModel;->isDrmProtected()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 320
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const v6, 0x7f0c001a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_9 .. :try_end_9} :catch_2

    move-result-object v52

    .line 329
    .end local v43           #m:Lcom/android/mms/model/SlideshowModel;
    .end local v51           #slide:Lcom/android/mms/model/SlideModel;
    .end local v56           #tm:Lcom/android/mms/model/TextModel;
    :cond_18
    :goto_8
    if-eqz v52, :cond_1b

    .line 331
    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "thread_id"

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v32

    .line 333
    .local v32, c:Landroid/database/Cursor;
    if-eqz v32, :cond_19

    :try_start_b
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 334
    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result v55

    .line 335
    move/from16 v44, v55

    .line 338
    :cond_19
    if-eqz v32, :cond_1a

    .line 339
    :try_start_c
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_1a
    const/4 v5, -0x1

    move/from16 v0, v55

    if-eq v0, v5, :cond_1b

    .line 343
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move/from16 v0, v55

    move-object/from16 v1, v52

    invoke-static {v5, v0, v7, v1}, Lcom/android/mms/transaction/TransactionService;->updateThreadSnippet(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 347
    .end local v32           #c:Landroid/database/Cursor;
    :cond_1b
    const/16 v55, -0x1

    .line 348
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v11, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "thread_id"

    aput-object v6, v11, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_c .. :try_end_c} :catch_2

    move-result-object v32

    .line 350
    .restart local v32       #c:Landroid/database/Cursor;
    if-eqz v32, :cond_1c

    :try_start_d
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 351
    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result v55

    .line 354
    :cond_1c
    if-eqz v32, :cond_1d

    .line 355
    :try_start_e
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_1d
    const/4 v5, -0x1

    move/from16 v0, v55

    if-eq v0, v5, :cond_1f

    .line 359
    const/4 v5, 0x3

    new-array v11, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v11, v5

    const/4 v5, 0x1

    const-string v6, "\'sms\' as type"

    aput-object v6, v11, v5

    const/4 v5, 0x2

    const-string v6, "date"

    aput-object v6, v11, v5

    .line 366
    .local v11, SMS_MMS_MESSAGE_UNION_PROJECTION:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thread_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v55

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") UNION  select DISTINCT _id,\'mms\' as type, date * 1000 AS date from pdu where (thread_id= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v55

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const-string v14, "date DESC LIMIT 2"

    invoke-static/range {v8 .. v14}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_e .. :try_end_e} :catch_2

    move-result-object v32

    .line 374
    if-eqz v32, :cond_1e

    :try_start_f
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1e

    .line 375
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    .line 376
    const/4 v5, 0x2

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-result-wide v35

    .line 379
    :cond_1e
    if-eqz v32, :cond_1f

    .line 380
    :try_start_10
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 389
    .end local v11           #SMS_MMS_MESSAGE_UNION_PROJECTION:[Ljava/lang/String;
    .end local v32           #c:Landroid/database/Cursor;
    :cond_1f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 390
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/mms/transaction/NotificationTransaction;->updateMessageSize(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 396
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v5, v6, v8, v9, v10}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 398
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NotificationTransaction received new mms message: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 411
    const-wide/16 v5, -0x1

    cmp-long v5, v35, v5

    if-eqz v5, :cond_21

    .line 412
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 413
    .restart local v15       #values:Landroid/content/ContentValues;
    const-string v5, "date"

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v5, Landroid/provider/Telephony$Threads;->LAST_MESSAGE_TIME_URI:Landroid/net/Uri;

    move/from16 v0, v55

    int-to-long v8, v0

    invoke-static {v5, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 421
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_21
    if-nez v42, :cond_22

    .line 425
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeletePermanentFailure()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 426
    move-object/from16 v0, p0

    move-wide/from16 v1, v47

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;->getResponseStatus(J)I

    move-result v5

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_31

    .line 427
    const-string v5, "Mms:transaction"

    const-string v6, "RESPONSE_STATUS_ERROR_PERMANENT_FAILURE"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_22
    :goto_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_23

    .line 441
    if-eqz v7, :cond_23

    if-eqz v42, :cond_23

    .line 442
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v5, v7, v6}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v49

    .line 443
    .local v49, result:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForMms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 449
    .end local v49           #result:Z
    :cond_23
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 452
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 453
    instance-of v5, v4, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v5, :cond_26

    .line 454
    move-object v0, v4

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    if-eqz v5, :cond_24

    move-object v0, v4

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_25

    :cond_24
    move-object v0, v4

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    if-eqz v5, :cond_26

    move-object v0, v4

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_26

    const/4 v5, -0x1

    move/from16 v0, v44

    if-eq v0, v5, :cond_26

    .line 456
    :cond_25
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move/from16 v0, v44

    int-to-long v8, v0

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    .line 461
    :cond_26
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCiqUsAtt()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 462
    new-instance v22, Ljava/lang/String;

    move-object v0, v4

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageId()[B

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 463
    .local v22, strMmsMid:Ljava/lang/String;
    new-instance v17, Ljava/lang/String;

    move-object v0, v4

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 464
    .local v17, strContentType:Ljava/lang/String;
    sget-object v16, Lcom/android/mms/transaction/NotificationTransaction;->mMMSsb:Lcom/android/mms/transaction/MMSStateBroadcaster;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v47

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;->getRetrieveStatus(J)I

    move-result v19

    check-cast v4, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local v4           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getMmsVersion()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v16 .. v23}, Lcom/android/mms/transaction/MMSStateBroadcaster;->sendMMSRetrievalEnd(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_1

    .line 532
    .end local v3           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v7           #uri:Landroid/net/Uri;
    .end local v17           #strContentType:Ljava/lang/String;
    .end local v22           #strMmsMid:Ljava/lang/String;
    .end local v33           #currentStrorage:J
    .end local v35           #date:J
    .end local v45           #minStorage:J
    .end local v47           #msgId:J
    .end local v50           #retrieveConfData:[B
    .end local v52           #snippet:Ljava/lang/String;
    .end local v53           #status:I
    .end local v55           #threadId:I
    :catch_2
    move-exception v38

    .line 533
    .local v38, e:Lcom/google/android/mms/MmsException;
    :try_start_11
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[NotificationTransaction] "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v38 .. v38}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 535
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 536
    if-nez v31, :cond_27

    .line 539
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 541
    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 542
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 543
    const-string v5, "Mms:transaction"

    const-string v6, "[NotificationTransaction] NotificationTransaction failed."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 269
    .end local v38           #e:Lcom/google/android/mms/MmsException;
    .restart local v4       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v33       #currentStrorage:J
    .restart local v45       #minStorage:J
    .restart local v47       #msgId:J
    .restart local v50       #retrieveConfData:[B
    .restart local v53       #status:I
    :cond_28
    :try_start_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsAutoDownload4Spam()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 270
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/GenericPdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    invoke-static {v5, v6, v8}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;Lcom/google/android/mms/pdu/EncodedStringValue;)Z

    move-result v42

    .line 275
    :goto_a
    if-nez v42, :cond_14

    .line 276
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)Z

    move-result v42

    goto/16 :goto_5

    .line 272
    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/GenericPdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Z

    move-result v42

    goto :goto_a

    .line 284
    :catch_3
    move-exception v38

    .line 285
    .local v38, e:Ljava/io/IOException;
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[NotificationTransaction] "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v38 .. v38}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_6

    .line 535
    .end local v4           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v33           #currentStrorage:J
    .end local v38           #e:Ljava/io/IOException;
    .end local v45           #minStorage:J
    .end local v47           #msgId:J
    .end local v50           #retrieveConfData:[B
    .end local v53           #status:I
    :catchall_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v8}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 536
    if-nez v31, :cond_2a

    .line 539
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 541
    :cond_2a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_2b

    .line 542
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 543
    const-string v6, "Mms:transaction"

    const-string v8, "[NotificationTransaction] NotificationTransaction failed."

    invoke-static {v6, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    .line 535
    throw v5

    .line 296
    .restart local v3       #p:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v4       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v7       #uri:Landroid/net/Uri;
    .restart local v33       #currentStrorage:J
    .restart local v45       #minStorage:J
    .restart local v47       #msgId:J
    .restart local v50       #retrieveConfData:[B
    .restart local v53       #status:I
    :cond_2c
    :try_start_13
    sget-object v5, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v7

    .end local v7           #uri:Landroid/net/Uri;
    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_13 .. :try_end_13} :catch_2

    move-result-object v7

    .restart local v7       #uri:Landroid/net/Uri;
    goto/16 :goto_7

    .line 322
    .restart local v35       #date:J
    .restart local v43       #m:Lcom/android/mms/model/SlideshowModel;
    .restart local v51       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v52       #snippet:Ljava/lang/String;
    .restart local v55       #threadId:I
    .restart local v56       #tm:Lcom/android/mms/model/TextModel;
    :cond_2d
    :try_start_14
    invoke-virtual/range {v56 .. v56}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_14 .. :try_end_14} :catch_2

    move-result-object v52

    goto/16 :goto_8

    .line 326
    .end local v43           #m:Lcom/android/mms/model/SlideshowModel;
    .end local v51           #slide:Lcom/android/mms/model/SlideModel;
    .end local v56           #tm:Lcom/android/mms/model/TextModel;
    :catch_4
    move-exception v38

    .line 327
    .local v38, e:Ljava/lang/Exception;
    :try_start_15
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 338
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v32       #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v5

    if-eqz v32, :cond_2e

    .line 339
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_2e
    throw v5

    .line 354
    :catchall_2
    move-exception v5

    if-eqz v32, :cond_2f

    .line 355
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 354
    :cond_2f
    throw v5

    .line 379
    .restart local v11       #SMS_MMS_MESSAGE_UNION_PROJECTION:[Ljava/lang/String;
    :catchall_3
    move-exception v5

    if-eqz v32, :cond_30

    .line 380
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 379
    :cond_30
    throw v5

    .line 429
    .end local v11           #SMS_MMS_MESSAGE_UNION_PROJECTION:[Ljava/lang/String;
    .end local v32           #c:Landroid/database/Cursor;
    :cond_31
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v5, v7, v6}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    .line 430
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForMms(Landroid/content/Context;Landroid/net/Uri;)Z

    goto/16 :goto_9

    .line 435
    :cond_32
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v5, v7, v6}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    .line 436
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForMms(Landroid/content/Context;Landroid/net/Uri;)Z

    goto/16 :goto_9

    .line 475
    .end local v3           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v4           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v7           #uri:Landroid/net/Uri;
    .end local v35           #date:J
    .end local v52           #snippet:Ljava/lang/String;
    .end local v55           #threadId:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 476
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCiqUsAtt()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 477
    sget-object v23, Lcom/android/mms/transaction/NotificationTransaction;->mMMSsb:Lcom/android/mms/transaction/MMSStateBroadcaster;

    const/16 v24, 0x7

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v47

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;->getRetrieveStatus(J)I

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v23 .. v29}, Lcom/android/mms/transaction/MMSStateBroadcaster;->sendMMSRetrievalState(IBIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 482
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-nez v5, :cond_a

    .line 483
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_15 .. :try_end_15} :catch_2

    goto/16 :goto_2

    .line 509
    .end local v33           #currentStrorage:J
    .end local v45           #minStorage:J
    .end local v47           #msgId:J
    .end local v50           #retrieveConfData:[B
    .end local v53           #status:I
    .local v38, e:Ljava/io/IOException;
    :cond_33
    :try_start_16
    invoke-virtual/range {v38 .. v38}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "410"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 510
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeletePermanentFailure()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 511
    const-string v5, "Mms:transaction"

    const-string v6, "[NotificationTransaction] 410 Gone exception"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 513
    const/16 v5, 0x84

    :try_start_17
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6

    .line 521
    :goto_b
    :try_start_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setTypeTransState(I)V

    .line 522
    new-instance v15, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v15, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 523
    .restart local v15       #values:Landroid/content/ContentValues;
    const/16 v41, 0x1

    .line 524
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Lcom/android/mms/transaction/TransactionState;->setIsPermanetError(Z)V

    .line 525
    const-string v5, "resp_st"

    const/16 v6, 0xe0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v25, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v26, v15

    invoke-static/range {v23 .. v28}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 514
    .end local v15           #values:Landroid/content/ContentValues;
    :catch_5
    move-exception v39

    .line 516
    .local v39, e1:Lcom/google/android/mms/MmsException;
    invoke-virtual/range {v39 .. v39}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_b

    .line 517
    .end local v39           #e1:Lcom/google/android/mms/MmsException;
    :catch_6
    move-exception v39

    .line 519
    .local v39, e1:Ljava/io/IOException;
    invoke-virtual/range {v39 .. v39}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_b

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
