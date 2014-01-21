.class Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method private constructor <init>(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .parameter

    .prologue
    .line 1693
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1693
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1696
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1697
    .local v3, action:Ljava/lang/String;
    const-string v15, "Mms:transaction"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[TransactionService] ConnectivityBroadcastReceiver.onReceive() action: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    const-string v15, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1880
    :cond_0
    :goto_0
    return-void

    .line 1703
    :cond_1
    const-string v15, "noConnectivity"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 1706
    .local v9, noConnectivity:Z
    const-string v15, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    .line 1709
    .local v8, networkInfo:Landroid/net/NetworkInfo;
    const/4 v7, 0x0

    .line 1710
    .local v7, isMmsApn:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->isDataEnabledInSettings()Z
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v5

    .line 1711
    .local v5, dataEnabled:Z
    const/4 v4, 0x0

    .line 1713
    .local v4, apnName:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 1714
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 1715
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    .line 1720
    :goto_1
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v7, 0x1

    .line 1735
    :cond_2
    :goto_2
    const-string v15, "Mms:transaction"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[TransactionService] Handle ConnectivityBroadcastReceiver.onReceive(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    if-nez v7, :cond_a

    .line 1738
    const-string v15, "Mms:transaction"

    const-string v16, "[TransactionService]    type is not TYPE_MOBILE_MMS, bail"

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    if-eqz v8, :cond_6

    const-string v15, "2GVoiceCallEnded"

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1745
    const-string v15, "Mms:transaction"

    const-string v16, "[TransactionService]    reason is 2GVoiceCallEnded, retrying mms connectivity"

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    new-instance v12, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v12, v15, v4}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1751
    .local v12, settings:Lcom/android/mms/transaction/TransactionSettings;
    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1752
    const-string v15, "Mms:transaction"

    const-string v16, "[TransactionService]    empty MMSC url, bail"

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1717
    .end local v12           #settings:Lcom/android/mms/transaction/TransactionSettings;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1720
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 1756
    .restart local v12       #settings:Lcom/android/mms/transaction/TransactionSettings;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->renewMmsConnectivity()V
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;)V

    .line 1757
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V

    .line 1759
    .end local v12           #settings:Lcom/android/mms/transaction/TransactionSettings;
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1760
    if-eqz v8, :cond_0

    .line 1761
    const-string v15, "Mms:transaction"

    const-string v16, "Network Info not null"

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    new-instance v12, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v12, v15, v4}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1766
    .restart local v12       #settings:Lcom/android/mms/transaction/TransactionSettings;
    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1767
    const-string v15, "Mms:transaction"

    const-string v16, "ConnectivityBroadcastReceiver empty MMSC url, bail"

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1770
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v16

    monitor-enter v16

    .line 1771
    :try_start_0
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v15

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1772
    const-string v15, "Mms:transaction"

    const-string v17, "pendded tansaction exist"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v15}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v10

    .line 1774
    .local v10, reconnectResult:I
    const/4 v15, 0x1

    if-ne v10, v15, :cond_8

    .line 1775
    const-string v15, "Mms:transaction"

    const-string v17, "mms reconnect requested"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    :cond_8
    monitor-exit v16

    goto/16 :goto_0

    .line 1780
    .end local v10           #reconnectResult:I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    :cond_9
    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1787
    .end local v12           #settings:Lcom/android/mms/transaction/TransactionSettings;
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1788
    const-string v15, "Mms:transaction"

    const-string v16, "onReceive : removeMessages(EVENT_MMS_CONNECTIVITY_START_CHECK)"

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v15

    const/16 v16, 0x6

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->removeMessages(I)V

    .line 1793
    :cond_b
    if-eqz v8, :cond_16

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v15

    if-nez v15, :cond_16

    .line 1794
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 1795
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v16

    monitor-enter v16

    .line 1796
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_10

    .line 1797
    const-string v15, "Mms:transaction"

    const-string v17, "   processing transaction exist"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_10

    .line 1800
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/transaction/Transaction;

    .line 1801
    .local v13, tempT:Lcom/android/mms/transaction/Transaction;
    instance-of v15, v13, Lcom/android/mms/transaction/SendTransaction;

    if-eqz v15, :cond_d

    .line 1802
    move-object v0, v13

    check-cast v0, Lcom/android/mms/transaction/SendTransaction;

    move-object v14, v0

    .line 1803
    .local v14, tmpST:Lcom/android/mms/transaction/SendTransaction;
    invoke-virtual {v14}, Lcom/android/mms/transaction/SendTransaction;->isSending()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1804
    const-string v15, "Mms:transaction"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v14, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "is dropped from copying to PND"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    .end local v14           #tmpST:Lcom/android/mms/transaction/SendTransaction;
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1807
    .restart local v14       #tmpST:Lcom/android/mms/transaction/SendTransaction;
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #tempT:Lcom/android/mms/transaction/Transaction;
    check-cast v13, Lcom/android/mms/transaction/Transaction;

    .line 1808
    .restart local v13       #tempT:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1839
    .end local v6           #i:I
    .end local v13           #tempT:Lcom/android/mms/transaction/Transaction;
    .end local v14           #tmpST:Lcom/android/mms/transaction/SendTransaction;
    :catchall_1
    move-exception v15

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v15

    .line 1810
    .restart local v6       #i:I
    .restart local v13       #tempT:Lcom/android/mms/transaction/Transaction;
    :cond_d
    :try_start_3
    instance-of v15, v13, Lcom/android/mms/transaction/NotificationTransaction;

    if-eqz v15, :cond_f

    .line 1811
    move-object v0, v13

    check-cast v0, Lcom/android/mms/transaction/NotificationTransaction;

    move-object v14, v0

    .line 1812
    .local v14, tmpST:Lcom/android/mms/transaction/NotificationTransaction;
    invoke-virtual {v14}, Lcom/android/mms/transaction/NotificationTransaction;->isNotiProcessing()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 1813
    const-string v15, "Mms:transaction"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v14, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "is dropped from copying to PND"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1816
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #tempT:Lcom/android/mms/transaction/Transaction;
    check-cast v13, Lcom/android/mms/transaction/Transaction;

    .line 1817
    .restart local v13       #tempT:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1820
    .end local v14           #tmpST:Lcom/android/mms/transaction/NotificationTransaction;
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #tempT:Lcom/android/mms/transaction/Transaction;
    check-cast v13, Lcom/android/mms/transaction/Transaction;

    .line 1821
    .restart local v13       #tempT:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1825
    .end local v6           #i:I
    .end local v13           #tempT:Lcom/android/mms/transaction/Transaction;
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$800(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Integer;

    move-result-object v17

    monitor-enter v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1826
    :try_start_4
    const-string v15, "Mms:transaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ConnectivityBroadcastReceiver : retry_count"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/transaction/TransactionService;->access$800(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$800(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_11

    .line 1828
    const-string v15, "Mms:transaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ConnectivityBroadcastReceiver=> mPending is not empty :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_11

    .line 1832
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    #setter for: Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;
    invoke-static {v15, v0}, Lcom/android/mms/transaction/TransactionService;->access$802(Lcom/android/mms/transaction/TransactionService;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1833
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v18

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v19, 0x2710

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1838
    :cond_11
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1839
    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1841
    :cond_12
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v15

    if-nez v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$1200(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 1842
    const-string v15, "Mms:transaction"

    const-string v16, "[TransactionService] TYPE_MOBILE_MMS is disconnected even waiting for connected"

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->isNetworkAvailable()Z
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v15

    if-eqz v15, :cond_15

    if-eqz v5, :cond_15

    .line 1845
    const-string v15, "Mms:transaction"

    const-string v16, "[TransactionService] beginMmsConnectivity().. "

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v15}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v11

    .line 1847
    .local v11, result:I
    const/4 v15, 0x1

    if-le v11, v15, :cond_14

    .line 1849
    const-string v15, "Mms:transaction"

    const-string v16, "[TransactionService] failed to activate PDP for TYPE_MOBILE_MMS"

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    .end local v11           #result:I
    :cond_13
    :goto_5
    const-string v15, "Mms:transaction"

    const-string v16, "[TransactionService]    TYPE_MOBILE_MMS not connected, bail"

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/16 v16, 0x0

    #setter for: Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z
    invoke-static/range {v15 .. v16}, Lcom/android/mms/transaction/TransactionService;->access$602(Lcom/android/mms/transaction/TransactionService;Z)Z

    goto/16 :goto_0

    .line 1838
    :catchall_2
    move-exception v15

    :try_start_6
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1852
    .restart local v11       #result:I
    :cond_14
    const-string v15, "Mms:transaction"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[TransactionService] beginMmsConnectivity: result="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1856
    .end local v11           #result:I
    :cond_15
    const-string v15, "Mms:transaction"

    const-string v16, "[TransactionService] register MmsSystemEventReceiver since noNetwork"

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v15}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->registerForConnectionStateChanges(Landroid/content/Context;)V

    goto :goto_5

    .line 1865
    :cond_16
    const-string v15, "Mms:transaction"

    const-string v16, "[TransactionService]    PDP for TYPE_MOBILE_MMS is connected"

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    new-instance v12, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v12, v15, v4}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1870
    .restart local v12       #settings:Lcom/android/mms/transaction/TransactionSettings;
    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 1871
    const-string v15, "Mms:transaction"

    const-string v16, "[TransactionService]    but empty MMSC url, bail"

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1874
    :cond_17
    const-string v15, "Mms:transaction"

    const-string v16, "[TransactionService]    Take the next step to process transactions"

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v15}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 1877
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/16 v16, 0x0

    #setter for: Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z
    invoke-static/range {v15 .. v16}, Lcom/android/mms/transaction/TransactionService;->access$1202(Lcom/android/mms/transaction/TransactionService;Z)Z

    .line 1878
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->renewMmsConnectivity()V
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;)V

    .line 1879
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v15}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V

    goto/16 :goto_0
.end method
