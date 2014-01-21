.class Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;
.super Ljava/lang/Object;
.source "SpamMessageManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SpamMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field mUri:Landroid/net/Uri;

.field mbIsDeleteLockedMsg:Z

.field final synthetic this$0:Lcom/android/mms/ui/SpamMessageManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SpamMessageManager;Landroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "bIsDeleteLockedMessage"

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1418
    iput-object p2, p0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->mUri:Landroid/net/Uri;

    .line 1419
    iput-boolean p3, p0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->mbIsDeleteLockedMsg:Z

    .line 1420
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 24
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 1424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->mUri:Landroid/net/Uri;

    #calls: Lcom/android/mms/ui/SpamMessageManager;->deleteMessage(Landroid/net/Uri;)V
    invoke-static {v3, v4}, Lcom/android/mms/ui/SpamMessageManager;->access$1800(Lcom/android/mms/ui/SpamMessageManager;Landroid/net/Uri;)V

    .line 1509
    :goto_0
    return-void

    .line 1433
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1434
    .local v9, arrayDeleteUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/16 v19, 0x0

    .line 1435
    .local v19, sizeCheckedMsg:I
    const/4 v12, 0x0

    .line 1437
    .local v12, deleteCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    .line 1438
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1439
    const/4 v10, 0x0

    .line 1440
    .local v10, checked:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCheckedCount()I

    move-result v19

    .line 1441
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 1442
    .local v20, sizeCursor:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move/from16 v0, v20

    if-ge v14, v0, :cond_4

    .line 1443
    const/16 v16, 0x0

    .line 1444
    .local v16, idxMsgType:I
    const/4 v15, 0x1

    .line 1447
    .local v15, idxMsgId:I
    :try_start_0
    const-string v3, "transport_type"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 1451
    :goto_2
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1454
    .local v21, szMessageType:Ljava/lang/String;
    :try_start_1
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    .line 1459
    :goto_3
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 1461
    .local v17, lMessageId:J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->mbIsDeleteLockedMsg:Z

    if-nez v3, :cond_1

    .line 1462
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 1442
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1448
    .end local v17           #lMessageId:J
    .end local v21           #szMessageType:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 1449
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1455
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .restart local v21       #szMessageType:Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 1456
    .restart local v13       #e:Ljava/lang/IllegalArgumentException;
    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1466
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .restart local v17       #lMessageId:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v3

    move-wide/from16 v0, v17

    move-object/from16 v2, v21

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/mms/ui/SpamMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v10

    .line 1468
    if-nez v10, :cond_2

    .line 1469
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 1473
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 1474
    const-string v3, "mms"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1475
    sget-object v3, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v17

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1483
    .local v6, deleteUri:Landroid/net/Uri;
    :goto_5
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 1480
    .end local v6           #deleteUri:Landroid/net/Uri;
    :cond_3
    sget-object v3, Landroid/provider/Telephony$SpamSms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v17

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .restart local v6       #deleteUri:Landroid/net/Uri;
    goto :goto_5

    .line 1488
    .end local v6           #deleteUri:Landroid/net/Uri;
    .end local v10           #checked:Z
    .end local v14           #i:I
    .end local v15           #idxMsgId:I
    .end local v16           #idxMsgType:I
    .end local v17           #lMessageId:J
    .end local v20           #sizeCursor:I
    .end local v21           #szMessageType:Ljava/lang/String;
    :cond_4
    if-nez v12, :cond_5

    .line 1489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    goto/16 :goto_0

    .line 1491
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1900(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1900(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1494
    :cond_6
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_6
    if-ge v14, v12, :cond_a

    .line 1495
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 1496
    .restart local v6       #deleteUri:Landroid/net/Uri;
    if-eqz v6, :cond_9

    .line 1497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$2000(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    move-result-object v3

    const/16 v4, 0x70a

    new-instance v5, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v22, 0x0

    add-int/lit8 v7, v12, -0x1

    if-ne v14, v7, :cond_8

    const/4 v7, 0x1

    :goto_7
    move-wide/from16 v0, v22

    invoke-direct {v5, v0, v1, v7}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1494
    :cond_7
    :goto_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1497
    :cond_8
    const/4 v7, 0x0

    goto :goto_7

    .line 1499
    :cond_9
    add-int/lit8 v3, v12, -0x1

    if-ne v14, v3, :cond_7

    .line 1500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1900(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1900(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 1506
    .end local v6           #deleteUri:Landroid/net/Uri;
    :cond_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method
