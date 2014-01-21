.class final Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "LockedMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/LockedMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageListQueryHandler"
.end annotation


# instance fields
.field private mDeleteEventHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/mms/ui/LockedMessageManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/LockedMessageManager;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    .line 1433
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1434
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 1502
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$300(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->clearCheckedList()V

    .line 1503
    packed-switch p1, :pswitch_data_0

    .line 1528
    :cond_0
    :goto_0
    return-void

    .line 1506
    :pswitch_0
    const-string v1, "Mms/LockedMsgStoreActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeleteComplete(),DELETE_CONVERSATION_TOKEN,mMsgListMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    if-eqz p2, :cond_2

    move-object v0, p2

    .line 1510
    check-cast v0, Lcom/android/mms/ui/DeleteInfo;

    .line 1512
    .local v0, deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v1, :cond_1

    .line 1513
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1516
    :cond_1
    iget-boolean v1, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v1, :cond_2

    .line 1517
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    .line 1518
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    .line 1519
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 1523
    .end local v0           #deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1524
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v1, v4, v4, v4}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 1503
    nop

    :pswitch_data_0
    .packed-switch 0x70a
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1444
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$300(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/LockedMessageListAdapter;->checkMessageIdForLockedMessages(Landroid/database/Cursor;)V

    .line 1445
    packed-switch p1, :pswitch_data_0

    .line 1495
    const-string v2, "Mms/LockedMsgStoreActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete called with unknown token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    :goto_0
    return-void

    .line 1447
    :pswitch_0
    const-string v2, "Mms/LockedMsgStoreActivity"

    const-string v3, "onQueryComplete(), MESSAGE_LIST_FAKE_VIEW_QUERY_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    .line 1451
    const/4 v0, 0x0

    .line 1452
    .local v0, fakeCursorCount:I
    if-eqz p3, :cond_0

    .line 1453
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1455
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$300(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/LockedMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1457
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #calls: Lcom/android/mms/ui/LockedMessageManager;->updateEmptyScreen(IZ)V
    invoke-static {v2, v0, v4}, Lcom/android/mms/ui/LockedMessageManager;->access$1000(Lcom/android/mms/ui/LockedMessageManager;IZ)V

    .line 1459
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    const-wide/16 v3, 0xc8

    #calls: Lcom/android/mms/ui/LockedMessageManager;->startAsyncQueryDelayed(J)V
    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/LockedMessageManager;->access$1100(Lcom/android/mms/ui/LockedMessageManager;J)V

    goto :goto_0

    .line 1464
    .end local v0           #fakeCursorCount:I
    :pswitch_1
    const-string v2, "Mms/LockedMsgStoreActivity"

    const-string v3, "onQueryComplete(),THREAD_LIST_QUERY_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$1200(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1467
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$1200(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->unDohideSelectedChildItems()V

    .line 1469
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    .line 1471
    const/4 v1, 0x0

    .line 1472
    .local v1, fullCursorCount:I
    if-eqz p3, :cond_2

    .line 1473
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1476
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$300(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/LockedMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1479
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/LockedMessageManager;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1480
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #calls: Lcom/android/mms/ui/LockedMessageManager;->setTotalQuantityTextView(I)V
    invoke-static {v2, v1}, Lcom/android/mms/ui/LockedMessageManager;->access$1300(Lcom/android/mms/ui/LockedMessageManager;I)V

    .line 1483
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #calls: Lcom/android/mms/ui/LockedMessageManager;->updateEmptyScreen(IZ)V
    invoke-static {v2, v1, v5}, Lcom/android/mms/ui/LockedMessageManager;->access$1000(Lcom/android/mms/ui/LockedMessageManager;IZ)V

    .line 1485
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #calls: Lcom/android/mms/ui/LockedMessageManager;->isFirstItemChanged()Z
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$1400(Lcom/android/mms/ui/LockedMessageManager;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1486
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    .line 1491
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/Conversation;->startCaching(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1487
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mVisibleOffset:I
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$1500(Lcom/android/mms/ui/LockedMessageManager;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_4

    .line 1488
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #calls: Lcom/android/mms/ui/LockedMessageManager;->restoreListOffset()V
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$1600(Lcom/android/mms/ui/LockedMessageManager;)V

    goto :goto_1

    .line 1445
    :pswitch_data_0
    .packed-switch 0x6a4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 1533
    packed-switch p1, :pswitch_data_0

    .line 1552
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    .line 1553
    return-void

    .line 1536
    :pswitch_0
    const-string v1, "Mms/LockedMsgStoreActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateComplete(),UNLOCK_MESSAGE_TOKEN,mMsgListMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    if-eqz p2, :cond_1

    move-object v0, p2

    .line 1540
    check-cast v0, Lcom/android/mms/ui/DeleteInfo;

    .line 1542
    .local v0, deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v1, :cond_1

    .line 1543
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1547
    .end local v0           #deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1548
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v1, v4, v4, v4}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 1533
    nop

    :pswitch_data_0
    .packed-switch 0x70a
        :pswitch_0
    .end packed-switch
.end method

.method public setmDeleteEventHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    .line 1439
    return-void
.end method
