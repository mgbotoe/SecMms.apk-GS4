.class final Lcom/android/mms/transaction/TransactionService$ServiceHandler;
.super Landroid/os/Handler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    .line 1022
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1023
    return-void
.end method

.method private decodeMessage(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .parameter "msg"

    .prologue
    .line 1026
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 1027
    const-string v0, "EVENT_QUIT"

    .line 1039
    :goto_0
    return-object v0

    .line 1028
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1029
    const-string v0, "EVENT_CONTINUE_MMS_CONNECTIVITY"

    goto :goto_0

    .line 1030
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1031
    const-string v0, "EVENT_TRANSACTION_REQUEST"

    goto :goto_0

    .line 1032
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1033
    const-string v0, "EVENT_HANDLE_NEXT_PENDING_TRANSACTION"

    goto :goto_0

    .line 1034
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 1035
    const-string v0, "EVENT_HANDLE_NEXT_CHECKING_TRANSACTION"

    goto :goto_0

    .line 1036
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 1037
    const-string v0, "EVENT_MMS_CONNECTIVITY_START_CHECK"

    goto :goto_0

    .line 1039
    :cond_5
    const-string v0, "unknown message.what"

    goto :goto_0
.end method

.method private decodeTransactionType(I)Ljava/lang/String;
    .locals 1
    .parameter "transactionType"

    .prologue
    .line 1043
    if-nez p1, :cond_0

    .line 1044
    const-string v0, "NOTIFICATION_TRANSACTION"

    .line 1052
    :goto_0
    return-object v0

    .line 1045
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1046
    const-string v0, "RETRIEVE_TRANSACTION"

    goto :goto_0

    .line 1047
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1048
    const-string v0, "SEND_TRANSACTION"

    goto :goto_0

    .line 1049
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 1050
    const-string v0, "READREC_TRANSACTION"

    goto :goto_0

    .line 1052
    :cond_3
    const-string v0, "invalid transaction type"

    goto :goto_0
.end method

.method private processTransaction(Lcom/android/mms/transaction/Transaction;)Z
    .locals 25
    .parameter "transaction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1473
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v23

    .line 1474
    .local v23, type:I
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TransactionService] transaction type  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1478
    .local v13, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    const/4 v3, 0x2

    move/from16 v0, v23

    if-ne v0, v3, :cond_0

    invoke-virtual {v13}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/PhoneRestrictionPolicy;->isOutgoingMmsAllowed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1481
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Sending MMS failedOutgoing MMS is not allowed."

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1485
    const/4 v3, 0x0

    .line 1682
    :goto_0
    return v3

    .line 1486
    :cond_0
    const/4 v3, 0x1

    move/from16 v0, v23

    if-eq v0, v3, :cond_1

    if-nez v23, :cond_2

    :cond_1
    invoke-virtual {v13}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/PhoneRestrictionPolicy;->isIncomingMmsAllowed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1488
    const/4 v3, 0x0

    goto :goto_0

    .line 1493
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v24

    monitor-enter v24

    .line 1494
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/mms/transaction/Transaction;

    .line 1495
    .local v20, t:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1496
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TransactionService] Transaction already pending: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    const-string v3, "Mms:transaction"

    const-string v4, "[TransactionService] already pending: call beginMmsConnectivity..."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v19

    .line 1510
    .local v19, result:I
    const/4 v3, 0x2

    move/from16 v0, v23

    if-ne v0, v3, :cond_4

    .line 1511
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Sending MMS succeeded"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1515
    :cond_4
    const/4 v3, 0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 1665
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v19           #result:I
    .end local v20           #t:Lcom/android/mms/transaction/Transaction;
    :catchall_0
    move-exception v3

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1518
    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/mms/transaction/Transaction;

    .line 1519
    .restart local v20       #t:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1520
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TransactionService] Duplicated transaction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    const/4 v3, 0x2

    move/from16 v0, v23

    if-ne v0, v3, :cond_7

    .line 1523
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Sending MMS succeeded"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1527
    :cond_7
    const/4 v3, 0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 1537
    .end local v20           #t:Lcom/android/mms/transaction/Transaction;
    :cond_8
    const-string v3, "Mms:transaction"

    const-string v4, "[TransactionService] processTransaction: call beginMmsConnectivity..."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v11

    .line 1550
    .local v11, connectivityResult:I
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TransactionService] processTransaction mProcessing size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    const/4 v3, 0x1

    if-eq v11, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_e

    .line 1553
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1554
    const-string v3, "Mms:transaction"

    const-string v4, "[TransactionService] processTransaction: connResult=APN_REQUEST_STARTED, defer transaction pending MMS connectivity"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    const/4 v3, 0x2

    move/from16 v0, v23

    if-ne v0, v3, :cond_a

    .line 1559
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Sending MMS succeeded"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1564
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCiqUsAtt()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1565
    if-nez v23, :cond_b

    .line 1566
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v12

    .line 1567
    .local v12, downloadManager:Lcom/android/mms/util/DownloadManager;
    invoke-virtual {v12}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v10

    .line 1568
    .local v10, autoDownload:Z
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v18, v0

    .line 1569
    .local v18, noti:Lcom/android/mms/transaction/NotificationTransaction;
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/transaction/NotificationTransaction;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 1570
    .local v16, msgId:J
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/Transaction;->getContentLocation(J)Ljava/lang/String;

    move-result-object v9

    .line 1571
    .local v9, strContentLocation:Ljava/lang/String;
    if-eqz v10, :cond_d

    .line 1572
    sget-object v3, Lcom/android/mms/transaction/Transaction;->mMMSsb:Lcom/android/mms/transaction/MMSStateBroadcaster;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/android/mms/transaction/MMSStateBroadcaster;->sendMMSRetrievalState(IBIILjava/lang/String;Ljava/lang/String;)V

    .line 1580
    .end local v9           #strContentLocation:Ljava/lang/String;
    .end local v10           #autoDownload:Z
    .end local v12           #downloadManager:Lcom/android/mms/util/DownloadManager;
    .end local v16           #msgId:J
    .end local v18           #noti:Lcom/android/mms/transaction/NotificationTransaction;
    :cond_b
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1581
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1582
    const-string v3, "Mms:transaction"

    const-string v4, "EVENT_MMS_CONNECTIVITY_START_CHECK timer start"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 1586
    .local v15, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v15, v4, v5}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1591
    .end local v15           #msg:Landroid/os/Message;
    :cond_c
    const/4 v3, 0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 1574
    .restart local v9       #strContentLocation:Ljava/lang/String;
    .restart local v10       #autoDownload:Z
    .restart local v12       #downloadManager:Lcom/android/mms/util/DownloadManager;
    .restart local v16       #msgId:J
    .restart local v18       #noti:Lcom/android/mms/transaction/NotificationTransaction;
    :cond_d
    sget-object v3, Lcom/android/mms/transaction/Transaction;->mMMSsb:Lcom/android/mms/transaction/MMSStateBroadcaster;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/android/mms/transaction/MMSStateBroadcaster;->sendMMSRetrievalState(IBIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1592
    .end local v9           #strContentLocation:Ljava/lang/String;
    .end local v10           #autoDownload:Z
    .end local v12           #downloadManager:Lcom/android/mms/util/DownloadManager;
    .end local v16           #msgId:J
    .end local v18           #noti:Lcom/android/mms/transaction/NotificationTransaction;
    :cond_e
    const/4 v3, 0x1

    if-le v11, v3, :cond_14

    .line 1594
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1595
    const/4 v3, 0x3

    if-ne v11, v3, :cond_10

    .line 1596
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v3

    if-nez v3, :cond_f

    .line 1597
    const-string v3, "Mms:transaction"

    const-string v4, "[TransactionService] processTransaction: connResult=APN_REQUEST_FAILED"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->removeMessages(I)V

    .line 1601
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setTypeTransState(I)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 1606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->removeMessages(I)V

    .line 1607
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v18, v0

    .line 1608
    .restart local v18       #noti:Lcom/android/mms/transaction/NotificationTransaction;
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/transaction/NotificationTransaction;->getUri()Landroid/net/Uri;

    move-result-object v4

    const/16 v5, 0x82

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/transaction/NotificationTransaction;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v21

    .line 1612
    .local v21, threadId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    move-wide/from16 v0, v21

    invoke-static {v3, v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/Transaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 1616
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->notifyObservers()V

    .line 1618
    const/4 v3, 0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 1619
    .end local v18           #noti:Lcom/android/mms/transaction/NotificationTransaction;
    .end local v21           #threadId:J
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1620
    const-string v3, "Mms:transaction"

    const-string v4, "[TransactionService] processTransaction: connResult=APN_REQUEST_FAILED"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->removeMessages(I)V

    .line 1624
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setTypeTransState(I)V

    .line 1627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 1629
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->removeMessages(I)V

    .line 1631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/Transaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 1632
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->notifyObservers()V

    .line 1634
    const/4 v3, 0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 1640
    :cond_10
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 1641
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v3

    if-nez v3, :cond_13

    .line 1642
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v18, v0

    .line 1643
    .restart local v18       #noti:Lcom/android/mms/transaction/NotificationTransaction;
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/transaction/NotificationTransaction;->getUri()Landroid/net/Uri;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 1648
    .end local v18           #noti:Lcom/android/mms/transaction/NotificationTransaction;
    :cond_11
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/Transaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 1649
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->notifyObservers()V

    .line 1651
    const/4 v3, 0x2

    move/from16 v0, v23

    if-ne v0, v3, :cond_12

    .line 1652
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Sending MMS failed"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1656
    :cond_12
    const/4 v3, 0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 1644
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_11

    .line 1645
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/mms/transaction/SendTransaction;

    move-object/from16 v20, v0

    .line 1646
    .local v20, t:Lcom/android/mms/transaction/SendTransaction;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/transaction/SendTransaction;->getSendReqURI()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    goto :goto_2

    .line 1660
    .end local v20           #t:Lcom/android/mms/transaction/SendTransaction;
    :cond_14
    const-string v3, "Mms:transaction"

    const-string v4, "processTransaction: removeMessages(EVENT_MMS_CONNECTIVITY_START_CHECK)"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->removeMessages(I)V

    .line 1663
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TransactionService] Adding transaction to \'mProcessing\' list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1665
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1668
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7530

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1671
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TransactionService] processTransaction: starting transaction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/Transaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 1675
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->process()V

    .line 1677
    const/4 v3, 0x2

    move/from16 v0, v23

    if-ne v0, v3, :cond_15

    .line 1678
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Sending MMS succeeded"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1682
    :cond_15
    const/4 v3, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public failSendMessageMMS(Landroid/net/Uri;J)Z
    .locals 19
    .parameter "messageUri"
    .parameter "messageId"

    .prologue
    .line 1057
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failSendMessageMMS()-messageUri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", messageId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failSendMessageMMS()-Id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    if-nez p1, :cond_0

    .line 1061
    const-string v2, "Mms:transaction"

    const-string v3, "failSendMessageMMS()-messageUri: null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const/4 v2, 0x0

    .line 1105
    :goto_0
    return v2

    .line 1066
    :cond_0
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1067
    .local v5, values:Landroid/content/ContentValues;
    const-string v2, "resp_st"

    const/16 v3, 0x82

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1068
    const-string v2, "msg_box"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1069
    const-string v2, "read"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 1078
    new-instance v18, Landroid/content/ContentValues;

    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1079
    .local v18, valuesPending:Landroid/content/ContentValues;
    const-string v2, "err_type"

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1080
    const-string v2, "last_try"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1082
    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v17

    .line 1083
    .local v17, uriBuilder:Landroid/net/Uri$Builder;
    const-string v2, "protocol"

    const-string v3, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1084
    const-string v2, "message"

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1086
    const/4 v14, 0x0

    .line 1088
    .local v14, cursorPending:Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1091
    if-eqz v14, :cond_1

    .line 1092
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1093
    const-string v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1094
    .local v13, columnIndex:I
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1095
    .local v15, id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v9, v18

    invoke-static/range {v6 .. v11}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1101
    .end local v13           #columnIndex:I
    .end local v15           #id:J
    :cond_1
    if-eqz v14, :cond_2

    .line 1102
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1105
    :cond_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1072
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v14           #cursorPending:Landroid/database/Cursor;
    .end local v17           #uriBuilder:Landroid/net/Uri$Builder;
    .end local v18           #valuesPending:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    throw v2

    .line 1101
    .restart local v5       #values:Landroid/content/ContentValues;
    .restart local v14       #cursorPending:Landroid/database/Cursor;
    .restart local v17       #uriBuilder:Landroid/net/Uri$Builder;
    .restart local v18       #valuesPending:Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    if-eqz v14, :cond_3

    .line 1102
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public failWriteProc()V
    .locals 27

    .prologue
    .line 1109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v26

    monitor-enter v26

    .line 1110
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v3, v6, v7}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 1112
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_3

    .line 1114
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 1115
    .local v12, count:I
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failWriteProc : failWriteProc count : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    if-lez v12, :cond_7

    .line 1117
    const-string v3, "msg_id"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1119
    .local v10, columnIndexOfMsgId:I
    const-string v3, "msg_type"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1121
    .local v11, columnIndexOfMsgType:I
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failWriteProc : failWriteProc id : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v15

    .line 1127
    .local v15, downloadManager:Lcom/android/mms/util/DownloadManager;
    :cond_0
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1128
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1129
    .local v20, msgType:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move/from16 v0, v20

    #calls: Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I
    invoke-static {v3, v0}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;I)I

    move-result v25

    .line 1130
    .local v25, transactionType:I
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1133
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 1134
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_6

    .line 1136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "st"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    .line 1137
    .local v14, cursorState:Landroid/database/Cursor;
    if-eqz v14, :cond_2

    .line 1139
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1140
    const-string v3, "st"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1141
    .local v19, msgState:I
    const/16 v3, 0x82

    move/from16 v0, v19

    if-eq v0, v3, :cond_1

    .line 1142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v23

    .line 1143
    .local v23, threadId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    move-wide/from16 v0, v23

    invoke-static {v3, v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1147
    .end local v19           #msgState:I
    .end local v23           #threadId:J
    :cond_1
    if-eqz v14, :cond_2

    .line 1148
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1152
    :cond_2
    const/16 v3, 0x82

    invoke-virtual {v15, v5, v3}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1161
    .end local v5           #uri:Landroid/net/Uri;
    .end local v10           #columnIndexOfMsgId:I
    .end local v11           #columnIndexOfMsgType:I
    .end local v12           #count:I
    .end local v14           #cursorState:Landroid/database/Cursor;
    .end local v15           #downloadManager:Lcom/android/mms/util/DownloadManager;
    .end local v20           #msgType:I
    .end local v25           #transactionType:I
    :catch_0
    move-exception v21

    .line 1162
    .local v21, t:Ljava/lang/Throwable;
    :try_start_4
    const-string v3, "Mms:transaction"

    const-string v4, "[failWriteProc] "

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1164
    if-eqz v13, :cond_3

    .line 1165
    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1169
    .end local v21           #t:Ljava/lang/Throwable;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/mms/transaction/Transaction;

    .line 1170
    .local v22, tempT:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto :goto_2

    .line 1177
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v22           #tempT:Lcom/android/mms/transaction/Transaction;
    :catchall_0
    move-exception v3

    monitor-exit v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 1147
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local v10       #columnIndexOfMsgId:I
    .restart local v11       #columnIndexOfMsgType:I
    .restart local v12       #count:I
    .restart local v13       #cursor:Landroid/database/Cursor;
    .restart local v14       #cursorState:Landroid/database/Cursor;
    .restart local v15       #downloadManager:Lcom/android/mms/util/DownloadManager;
    .restart local v20       #msgType:I
    .restart local v25       #transactionType:I
    :catchall_1
    move-exception v3

    if-eqz v14, :cond_4

    .line 1148
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 1164
    .end local v5           #uri:Landroid/net/Uri;
    .end local v10           #columnIndexOfMsgId:I
    .end local v11           #columnIndexOfMsgType:I
    .end local v12           #count:I
    .end local v14           #cursorState:Landroid/database/Cursor;
    .end local v15           #downloadManager:Lcom/android/mms/util/DownloadManager;
    .end local v20           #msgType:I
    .end local v25           #transactionType:I
    :catchall_2
    move-exception v3

    if-eqz v13, :cond_5

    .line 1165
    :try_start_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1153
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local v10       #columnIndexOfMsgId:I
    .restart local v11       #columnIndexOfMsgType:I
    .restart local v12       #count:I
    .restart local v15       #downloadManager:Lcom/android/mms/util/DownloadManager;
    .restart local v20       #msgType:I
    .restart local v25       #transactionType:I
    :cond_6
    const/4 v3, 0x2

    move/from16 v0, v25

    if-ne v0, v3, :cond_0

    .line 1155
    :try_start_8
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 1156
    .local v17, lMsgId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->failSendMessageMMS(Landroid/net/Uri;J)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 1164
    .end local v5           #uri:Landroid/net/Uri;
    .end local v10           #columnIndexOfMsgId:I
    .end local v11           #columnIndexOfMsgType:I
    .end local v15           #downloadManager:Lcom/android/mms/util/DownloadManager;
    .end local v17           #lMsgId:J
    .end local v20           #msgType:I
    .end local v25           #transactionType:I
    :cond_7
    if-eqz v13, :cond_3

    .line 1165
    :try_start_9
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1172
    .end local v12           #count:I
    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/mms/transaction/Transaction;

    .line 1173
    .restart local v22       #tempT:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto :goto_3

    .line 1175
    .end local v22           #tempT:Lcom/android/mms/transaction/Transaction;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1177
    monitor-exit v26
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1178
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .parameter "msg"

    .prologue
    .line 1188
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[TransactionService] Handling incoming message: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->decodeMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const/16 v16, 0x0

    .line 1192
    .local v16, transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    .line 1414
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[TransactionService] what="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1194
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 1199
    :sswitch_1
    const-string v22, "Mms:transaction"

    const-string v23, "handleMessage() : EVENT_MMS_CONNECTIVITY_START_CHECK"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z
    invoke-static/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionService;->access$602(Lcom/android/mms/transaction/TransactionService;Z)Z

    .line 1201
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->failWriteProc()V

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v22

    const/16 v23, 0x6

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->removeMessages(I)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v22

    const/16 v23, 0x5

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->removeMessages(I)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    goto :goto_0

    .line 1208
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$800(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Integer;

    move-result-object v23

    monitor-enter v23

    .line 1210
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    #calls: Lcom/android/mms/transaction/TransactionService;->isNetworkAvailable()Z
    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v22

    if-nez v22, :cond_4

    const/4 v9, 0x1

    .line 1211
    .local v9, noNetwork:Z
    :goto_1
    const/4 v7, 0x0

    .line 1212
    .local v7, isdataDisable:Z
    const-string v22, "Mms:transaction"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_HANDLE_NEXT_CHECKING_TRANSACTION : noNetwork: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    const-string v22, "Mms:transaction"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_HANDLE_NEXT_CHECKING_TRANSACTION : retry_count: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;
    invoke-static/range {v25 .. v25}, Lcom/android/mms/transaction/TransactionService;->access$800(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$800(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v24, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;
    invoke-static/range {v24 .. v24}, Lcom/android/mms/transaction/TransactionService;->access$800(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    #setter for: Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/android/mms/transaction/TransactionService;->access$802(Lcom/android/mms/transaction/TransactionService;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1217
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v22

    const-string v24, "KT"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v22

    const-string v24, "LGU+"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1219
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/mms/util/NetworkConnectionUtils;->isDataNetworkDisable(Landroid/content/Context;)Z

    move-result v7

    .line 1221
    const-string v22, "Mms:transaction"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_HANDLE_NEXT_CHECKING_TRANSACTION : isdataDisable: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    if-nez v9, :cond_2

    if-eqz v7, :cond_3

    .line 1224
    :cond_2
    const/4 v9, 0x1

    .line 1227
    :cond_3
    if-eqz v9, :cond_6

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$800(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v24, 0x6

    move/from16 v0, v22

    move/from16 v1, v24

    if-le v0, v1, :cond_5

    .line 1229
    const-string v22, "Mms:transaction"

    const-string v24, "EVENT_HANDLE_NEXT_CHECKING_TRANSACTION : failWriteProc(msg_args);: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    const/16 v24, -0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    #setter for: Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/android/mms/transaction/TransactionService;->access$802(Lcom/android/mms/transaction/TransactionService;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1233
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->failWriteProc()V

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v22

    const/16 v24, 0x5

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    .end local v7           #isdataDisable:Z
    .end local v9           #noNetwork:Z
    :goto_2
    :try_start_1
    monitor-exit v23

    goto/16 :goto_0

    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v22

    .line 1210
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1240
    .restart local v7       #isdataDisable:Z
    .restart local v9       #noNetwork:Z
    :cond_5
    :try_start_2
    const-string v22, "Mms:transaction"

    const-string v24, "sendMessageDelayed: EVENT_HANDLE_NEXT_CHECKING_TRANSACTION "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    const/16 v22, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    const-wide/16 v24, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1255
    .end local v7           #isdataDisable:Z
    .end local v9           #noNetwork:Z
    :catch_0
    move-exception v15

    .line 1256
    .local v15, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v22, "Mms:transaction"

    const-string v24, "EVENT_HANDLE_NEXT_CHECKING_TRANSACTION : exception!! "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    #setter for: Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/android/mms/transaction/TransactionService;->access$802(Lcom/android/mms/transaction/TransactionService;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v22

    const-wide/16 v24, 0x2710

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1247
    .end local v15           #t:Ljava/lang/Throwable;
    .restart local v7       #isdataDisable:Z
    .restart local v9       #noNetwork:Z
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    const/16 v24, -0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    #setter for: Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/android/mms/transaction/TransactionService;->access$802(Lcom/android/mms/transaction/TransactionService;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1248
    const-string v22, "Mms:transaction"

    const-string v24, "EVENT_HANDLE_NEXT_CHECKING_TRANSACTION : noNetwork is false!! "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v22

    const/16 v24, 0x5

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->removeMessages(I)V

    .line 1251
    new-instance v13, Landroid/content/Intent;

    const-string v22, "android.intent.action.ACTION_ONALARM"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-class v26, Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1253
    .local v13, service:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 1265
    .end local v7           #isdataDisable:Z
    .end local v9           #noNetwork:Z
    .end local v13           #service:Landroid/content/Intent;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v23

    monitor-enter v23

    .line 1266
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1267
    monitor-exit v23

    goto/16 :goto_0

    .line 1269
    :catchall_1
    move-exception v22

    monitor-exit v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v22

    :cond_7
    :try_start_6
    monitor-exit v23
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1271
    const-string v22, "Mms:transaction"

    const-string v23, "[TransactionService] handle EVENT_CONTINUE_MMS_CONNECTIVITY event..."

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v12

    .line 1283
    .local v12, result:I
    if-eqz v12, :cond_8

    .line 1284
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[TransactionService] Extending MMS connectivity returned "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " instead of APN_ALREADY_ACTIVE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1292
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    #calls: Lcom/android/mms/transaction/TransactionService;->renewMmsConnectivity()V
    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;)V

    goto/16 :goto_0

    .line 1296
    .end local v12           #result:I
    :sswitch_4
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 1298
    .local v14, serviceId:I
    :try_start_7
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/mms/transaction/TransactionBundle;

    .line 1301
    .local v4, args:Lcom/android/mms/transaction/TransactionBundle;
    const-string v22, "Mms:transaction"

    const-string v23, "[TransactionService] handle EVENT_TRANSACTION_REQUEST event..."

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[TransactionService]     MmscUrl="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getMmscUrl()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " proxy port: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getProxyAddress()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getMmscUrl()Ljava/lang/String;

    move-result-object v8

    .line 1308
    .local v8, mmsc:Ljava/lang/String;
    if-eqz v8, :cond_9

    .line 1309
    new-instance v18, Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getProxyAddress()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getProxyPort()I

    move-result v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v8, v1, v2}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1316
    .local v18, transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    :goto_3
    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v19

    .line 1318
    .local v19, transactionType:I
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[TransactionService] handle EVENT_TRANSACTION_REQUEST: transactionType="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->decodeTransactionType(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    packed-switch v19, :pswitch_data_0

    .line 1371
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[TransactionService] Invalid transaction type: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1372
    const/16 v16, 0x0

    .line 1402
    if-nez v16, :cond_0

    .line 1403
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[TransactionService] Transaction was null. Stopping self: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 1312
    .end local v18           #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    .end local v19           #transactionType:I
    :cond_9
    :try_start_8
    new-instance v18, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v18       #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    goto/16 :goto_3

    .line 1324
    .restart local v19       #transactionType:I
    :pswitch_0
    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v21

    .line 1325
    .local v21, uri:Ljava/lang/String;
    if-eqz v21, :cond_a

    .line 1326
    new-instance v17, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v16           #transaction:Lcom/android/mms/transaction/Transaction;
    .local v17, transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v16, v17

    .line 1348
    .end local v17           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v16       #transaction:Lcom/android/mms/transaction/Transaction;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 1376
    .end local v21           #uri:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result v22

    if-nez v22, :cond_d

    .line 1377
    const/16 v16, 0x0

    .line 1402
    if-nez v16, :cond_0

    .line 1403
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[TransactionService] Transaction was null. Stopping self: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 1331
    .restart local v21       #uri:Ljava/lang/String;
    :cond_a
    :try_start_9
    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getPushData()[B

    move-result-object v11

    .line 1332
    .local v11, pushData:[B
    new-instance v10, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v10, v11}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 1333
    .local v10, parser:Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v6

    .line 1335
    .local v6, ind:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Lcom/android/mms/util/AddressUtils;->checkUnknownAddress(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 1337
    const/16 v20, 0x82

    .line 1338
    .local v20, type:I
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 1339
    new-instance v17, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    check-cast v6, Lcom/google/android/mms/pdu/NotificationInd;

    .end local v6           #ind:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v14, v2, v6}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V

    .end local v16           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v17       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v16, v17

    .end local v17           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v16       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_4

    .line 1343
    .restart local v6       #ind:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_b
    const-string v22, "Mms:transaction"

    const-string v23, "[TransactionService] Invalid PUSH data."

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 1344
    const/16 v16, 0x0

    .line 1402
    if-nez v16, :cond_0

    .line 1403
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[TransactionService] Transaction was null. Stopping self: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 1351
    .end local v6           #ind:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v10           #parser:Lcom/google/android/mms/pdu/PduParser;
    .end local v11           #pushData:[B
    .end local v20           #type:I
    .end local v21           #uri:Ljava/lang/String;
    :pswitch_1
    :try_start_a
    new-instance v17, Lcom/android/mms/transaction/RetrieveTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/mms/transaction/RetrieveTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v16           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v17       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v16, v17

    .line 1354
    .end local v17           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v16       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_5

    .line 1357
    :pswitch_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 1358
    const-string v22, "GATE"

    const-string v23, "[TransactionService] <GATE-M>MMS_SENDING</GATE-M>"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_c
    new-instance v17, Lcom/android/mms/transaction/SendTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/mms/transaction/SendTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v16           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v17       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v16, v17

    .line 1364
    .end local v17           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v16       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_5

    .line 1366
    :pswitch_3
    new-instance v17, Lcom/android/mms/transaction/ReadRecTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/mms/transaction/ReadRecTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v16           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v17       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v16, v17

    .line 1369
    .end local v17           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v16       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_5

    .line 1381
    :cond_d
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[TransactionService] Started processing of incoming message: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 1402
    if-nez v16, :cond_0

    .line 1403
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[TransactionService] Transaction was null. Stopping self: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 1382
    .end local v4           #args:Lcom/android/mms/transaction/TransactionBundle;
    .end local v8           #mmsc:Ljava/lang/String;
    .end local v18           #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    .end local v19           #transactionType:I
    :catch_1
    move-exception v5

    .line 1383
    .local v5, ex:Ljava/lang/Exception;
    :try_start_b
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[TransactionService] Exception occurred while handling message: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1385
    if-eqz v16, :cond_f

    .line 1387
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v23

    monitor-enter v23
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    .line 1390
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1391
    monitor-exit v23
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1398
    :cond_e
    const/16 v16, 0x0

    .line 1402
    :cond_f
    :goto_6
    if-nez v16, :cond_0

    .line 1403
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[TransactionService] Transaction was null. Stopping self: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 1391
    :catchall_2
    move-exception v22

    :try_start_e
    monitor-exit v23
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v22
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2

    .line 1393
    :catch_2
    move-exception v15

    .line 1394
    .restart local v15       #t:Ljava/lang/Throwable;
    :try_start_10
    const-string v22, "Mms:transaction"

    const-string v23, "[TransactionService] Unexpected Throwable."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v15}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 1398
    const/16 v16, 0x0

    .line 1399
    goto :goto_6

    .line 1398
    .end local v15           #t:Ljava/lang/Throwable;
    :catchall_3
    move-exception v22

    const/16 v16, 0x0

    :try_start_11
    throw v22
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 1402
    .end local v5           #ex:Ljava/lang/Exception;
    :catchall_4
    move-exception v22

    if-nez v16, :cond_10

    .line 1403
    const-string v23, "Mms:transaction"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[TransactionService] Transaction was null. Stopping self: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    :cond_10
    throw v22

    .line 1411
    .end local v14           #serviceId:I
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V

    goto/16 :goto_0

    .line 1192
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch

    .line 1322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V
    .locals 7
    .parameter "transaction"
    .parameter "settings"

    .prologue
    .line 1422
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TransactionService] processPendingTxn: transaction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    const/4 v2, 0x0

    .line 1425
    .local v2, numProcessTransaction:I
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 1426
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1427
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object p1, v0

    .line 1429
    :cond_0
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1430
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1432
    if-eqz p1, :cond_4

    .line 1433
    if-eqz p2, :cond_1

    .line 1434
    invoke-virtual {p1, p2}, Lcom/android/mms/transaction/Transaction;->setConnectionSettings(Lcom/android/mms/transaction/TransactionSettings;)V

    .line 1441
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v3

    .line 1443
    .local v3, serviceId:I
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TransactionService] processPendingTxn: process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1446
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TransactionService] Started deferred processing of transaction  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1461
    .end local v3           #serviceId:I
    :cond_2
    :goto_0
    return-void

    .line 1430
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1449
    .restart local v3       #serviceId:I
    :cond_3
    const/4 p1, 0x0

    .line 1450
    :try_start_3
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v4, v3}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1452
    .end local v3           #serviceId:I
    :catch_0
    move-exception v1

    .line 1453
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TransactionService] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1456
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    if-nez v2, :cond_2

    .line 1457
    const-string v4, "Mms:transaction"

    const-string v5, "[TransactionService] processPendingTxn: no more transaction, endMmsConnectivity"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    goto :goto_0
.end method
