.class final Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SpamMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SpamMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageListQueryHandler"
.end annotation


# instance fields
.field private mDeleteEventHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/mms/ui/SpamMessageManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SpamMessageManager;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    .line 1162
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1163
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

    .line 1237
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/SpamMessageListAdapter;->clearCheckedList()V

    .line 1238
    invoke-static {v5}, Lcom/android/mms/ui/SpamMessageManager;->access$1402(Z)Z

    .line 1240
    packed-switch p1, :pswitch_data_0

    .line 1283
    :cond_0
    :goto_0
    return-void

    .line 1243
    :pswitch_0
    const-string v1, "Mms/SpamMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeleteComplete(),DELETE_CONVERSATION_TOKEN,mMsgListMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    if-eqz p2, :cond_2

    move-object v0, p2

    .line 1247
    check-cast v0, Lcom/android/mms/ui/DeleteInfo;

    .line 1249
    .local v0, deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v1, :cond_1

    .line 1250
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1253
    :cond_1
    iget-boolean v1, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v1, :cond_2

    .line 1254
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    .line 1255
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    .line 1261
    .end local v0           #deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1262
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v1, v4, v4, v4}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 1267
    :pswitch_1
    const-string v1, "Mms/SpamMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeleteComplete(),RESTORE_MESSAGE_TOKEN,mMsgListMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    if-eqz p2, :cond_3

    move-object v0, p2

    .line 1271
    check-cast v0, Lcom/android/mms/ui/DeleteInfo;

    .line 1273
    .restart local v0       #deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v1, :cond_3

    .line 1274
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1278
    .end local v0           #deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 1279
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v1, v4, v4, v4}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    goto/16 :goto_0

    .line 1240
    :pswitch_data_0
    .packed-switch 0x70a
        :pswitch_0
        :pswitch_1
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

    .line 1174
    packed-switch p1, :pswitch_data_0

    .line 1230
    const-string v2, "Mms/SpamMessageManager"

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

    .line 1233
    :goto_0
    return-void

    .line 1176
    :pswitch_0
    const-string v2, "Mms/SpamMessageManager"

    const-string v3, "onQueryComplete(), MESSAGE_LIST_FAKE_VIEW_QUERY_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/SpamMessageManager;->access$400(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    .line 1180
    const/4 v0, 0x0

    .line 1181
    .local v0, fakeCursorCount:I
    if-eqz p3, :cond_0

    .line 1182
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1184
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/SpamMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1186
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #calls: Lcom/android/mms/ui/SpamMessageManager;->updateEmptyScreen(IZ)V
    invoke-static {v2, v0, v4}, Lcom/android/mms/ui/SpamMessageManager;->access$800(Lcom/android/mms/ui/SpamMessageManager;IZ)V

    .line 1188
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    const-wide/16 v3, 0xc8

    #calls: Lcom/android/mms/ui/SpamMessageManager;->startAsyncQueryDelayed(J)V
    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/SpamMessageManager;->access$700(Lcom/android/mms/ui/SpamMessageManager;J)V

    goto :goto_0

    .line 1193
    .end local v0           #fakeCursorCount:I
    :pswitch_1
    const-string v2, "Mms/SpamMessageManager"

    const-string v3, "onQueryComplete(),THREAD_LIST_QUERY_TOKEN"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v2}, Lcom/android/mms/ui/SpamMessageManager;->access$900(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1196
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v2}, Lcom/android/mms/ui/SpamMessageManager;->access$900(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->unDohideSelectedChildItems()V

    .line 1198
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/SpamMessageManager;->access$400(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    .line 1200
    const/4 v1, 0x0

    .line 1201
    .local v1, fullCursorCount:I
    if-eqz p3, :cond_2

    .line 1202
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1205
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/SpamMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1208
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SpamMessageManager;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1209
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #calls: Lcom/android/mms/ui/SpamMessageManager;->setTotalQuantityTextView(I)V
    invoke-static {v2, v1}, Lcom/android/mms/ui/SpamMessageManager;->access$1000(Lcom/android/mms/ui/SpamMessageManager;I)V

    .line 1212
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #calls: Lcom/android/mms/ui/SpamMessageManager;->updateEmptyScreen(IZ)V
    invoke-static {v2, v1, v5}, Lcom/android/mms/ui/SpamMessageManager;->access$800(Lcom/android/mms/ui/SpamMessageManager;IZ)V

    .line 1214
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #calls: Lcom/android/mms/ui/SpamMessageManager;->isFirstItemChanged()Z
    invoke-static {v2}, Lcom/android/mms/ui/SpamMessageManager;->access$1100(Lcom/android/mms/ui/SpamMessageManager;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1215
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/SpamMessageManager;->access$400(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    .line 1221
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1222
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 1225
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/Conversation;->startCaching(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1216
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mVisibleOffset:I
    invoke-static {v2}, Lcom/android/mms/ui/SpamMessageManager;->access$1200(Lcom/android/mms/ui/SpamMessageManager;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_4

    .line 1217
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #calls: Lcom/android/mms/ui/SpamMessageManager;->restoreListOffset()V
    invoke-static {v2}, Lcom/android/mms/ui/SpamMessageManager;->access$1300(Lcom/android/mms/ui/SpamMessageManager;)V

    goto :goto_1

    .line 1174
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

    .line 1288
    packed-switch p1, :pswitch_data_0

    .line 1307
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    .line 1308
    return-void

    .line 1291
    :pswitch_0
    const-string v1, "Mms/SpamMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateComplete(),UNLOCK_MESSAGE_TOKEN,mMsgListMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    if-eqz p2, :cond_1

    move-object v0, p2

    .line 1295
    check-cast v0, Lcom/android/mms/ui/DeleteInfo;

    .line 1297
    .local v0, deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v1, :cond_1

    .line 1298
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1302
    .end local v0           #deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1303
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v1, v4, v4, v4}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 1288
    nop

    :pswitch_data_0
    .packed-switch 0x70b
        :pswitch_0
    .end packed-switch
.end method

.method public setmDeleteEventHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    .line 1168
    return-void
.end method
