.class final Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "DraftMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DraftMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageListQueryHandler"
.end annotation


# instance fields
.field private mDeleteEventHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/mms/ui/DraftMessageManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/DraftMessageManager;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 1204
    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    .line 1205
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1206
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1275
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$300(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->clearCheckedList()V

    .line 1276
    packed-switch p1, :pswitch_data_0

    .line 1303
    :cond_0
    :goto_0
    return-void

    .line 1279
    :pswitch_0
    const-string v1, "Mms/DraftMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeleteComplete(),DELETE_CONVERSATION_TOKEN,mMsgListMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/DraftMessageManager;->getCurrentListMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    if-eqz p2, :cond_2

    move-object v0, p2

    .line 1283
    check-cast v0, Lcom/android/mms/ui/DeleteInfo;

    .line 1285
    .local v0, deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v1, :cond_1

    .line 1286
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1289
    :cond_1
    iget-boolean v1, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v1, :cond_2

    .line 1290
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$600(Lcom/android/mms/ui/DraftMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    .line 1291
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    .line 1292
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 1293
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$600(Lcom/android/mms/ui/DraftMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 1294
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/DraftMessageManager;->access$600(Lcom/android/mms/ui/DraftMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 1298
    .end local v0           #deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/DraftMessageManager;->getCurrentListMode()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 1299
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-virtual {v1, v4, v4, v4}, Lcom/android/mms/ui/DraftMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 1276
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

    .line 1217
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$300(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/DraftMessageListAdapter;->checkMessageIdForSmsDrafts(Landroid/database/Cursor;)V

    .line 1218
    packed-switch p1, :pswitch_data_0

    .line 1268
    const-string v2, "Mms/DraftMessageManager"

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

    .line 1271
    :goto_0
    return-void

    .line 1220
    :pswitch_0
    const-string v2, "Mms/DraftMessageManager"

    const-string v3, "onQueryComplete(), MESSAGE_LIST_FAKE_VIEW_QUERY_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    .line 1224
    const/4 v0, 0x0

    .line 1225
    .local v0, fakeCursorCount:I
    if-eqz p3, :cond_0

    .line 1226
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1228
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$300(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/DraftMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1230
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #calls: Lcom/android/mms/ui/DraftMessageManager;->updateEmptyScreen(IZ)V
    invoke-static {v2, v0, v4}, Lcom/android/mms/ui/DraftMessageManager;->access$900(Lcom/android/mms/ui/DraftMessageManager;IZ)V

    .line 1232
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    const-wide/16 v3, 0xc8

    #calls: Lcom/android/mms/ui/DraftMessageManager;->startAsyncQueryDelayed(J)V
    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/DraftMessageManager;->access$1000(Lcom/android/mms/ui/DraftMessageManager;J)V

    goto :goto_0

    .line 1237
    .end local v0           #fakeCursorCount:I
    :pswitch_1
    const-string v2, "Mms/DraftMessageManager"

    const-string v3, "onQueryComplete(),THREAD_LIST_QUERY_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$1100(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1240
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$1100(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->unDohideSelectedChildItems()V

    .line 1242
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    .line 1244
    const/4 v1, 0x0

    .line 1245
    .local v1, fullCursorCount:I
    if-eqz p3, :cond_2

    .line 1246
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1249
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$300(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/DraftMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1252
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/DraftMessageManager;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1253
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #calls: Lcom/android/mms/ui/DraftMessageManager;->setTotalQuantityTextView(I)V
    invoke-static {v2, v1}, Lcom/android/mms/ui/DraftMessageManager;->access$1200(Lcom/android/mms/ui/DraftMessageManager;I)V

    .line 1256
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #calls: Lcom/android/mms/ui/DraftMessageManager;->updateEmptyScreen(IZ)V
    invoke-static {v2, v1, v5}, Lcom/android/mms/ui/DraftMessageManager;->access$900(Lcom/android/mms/ui/DraftMessageManager;IZ)V

    .line 1258
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #calls: Lcom/android/mms/ui/DraftMessageManager;->isFirstItemChanged()Z
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$1300(Lcom/android/mms/ui/DraftMessageManager;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1259
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    .line 1264
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$600(Lcom/android/mms/ui/DraftMessageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/Conversation;->startCaching(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1260
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mVisibleOffset:I
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$1400(Lcom/android/mms/ui/DraftMessageManager;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_4

    .line 1261
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #calls: Lcom/android/mms/ui/DraftMessageManager;->restoreListOffset()V
    invoke-static {v2}, Lcom/android/mms/ui/DraftMessageManager;->access$1500(Lcom/android/mms/ui/DraftMessageManager;)V

    goto :goto_1

    .line 1218
    :pswitch_data_0
    .packed-switch 0x6a4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setmDeleteEventHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 1210
    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    .line 1211
    return-void
.end method
