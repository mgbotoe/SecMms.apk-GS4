.class Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BoxListFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BoxListQueryHandler"
.end annotation


# instance fields
.field private mDeleteEventHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BoxListFrame;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 3066
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    .line 3067
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 3068
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/16 v8, 0x66

    const/4 v7, 0x0

    .line 3170
    packed-switch p1, :pswitch_data_0

    .line 3218
    :goto_0
    :pswitch_0
    return-void

    .line 3178
    :pswitch_1
    if-eqz p2, :cond_1

    move-object v0, p2

    .line 3179
    check-cast v0, Lcom/android/mms/ui/DeleteInfo;

    .line 3180
    .local v0, deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v5, :cond_1

    iget-boolean v5, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v5, :cond_1

    .line 3181
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3182
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z
    invoke-static {v5, v7}, Lcom/android/mms/ui/BoxListFrame;->access$4602(Lcom/android/mms/ui/BoxListFrame;Z)Z

    .line 3186
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mDeletedThreadIds:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$4700(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 3187
    .local v2, deleteThreadIdHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3188
    .local v1, deleteIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3189
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3190
    .local v3, threadId:J
    invoke-static {v3, v4}, Lcom/android/mms/data/Conversation;->removeCache(J)V

    .line 3191
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler$1;

    invoke-direct {v6, p0, v3, v4}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler$1;-><init>(Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;J)V

    const-wide/16 v7, 0x32

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 3197
    .end local v3           #threadId:J
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mDeletedThreadIds:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$4700(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 3205
    .end local v0           #deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    .end local v1           #deleteIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v2           #deleteThreadIdHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    goto :goto_0

    .line 3210
    :pswitch_2
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$800()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onDeleteComplete(),DELETE_ALL_BOX_TOKEN"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3211
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3212
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z
    invoke-static {v5, v7}, Lcom/android/mms/ui/BoxListFrame;->access$4602(Lcom/android/mms/ui/BoxListFrame;Z)Z

    .line 3214
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    goto :goto_0

    .line 3170
    nop

    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 3078
    if-nez p3, :cond_1

    .line 3166
    :cond_0
    :goto_0
    return-void

    .line 3081
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    #calls: Lcom/android/mms/ui/BoxListFrame;->afterResult(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->access$3900(Lcom/android/mms/ui/BoxListFrame;I)V

    .line 3082
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onQueryComplete] END : token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3084
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/BoxListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3087
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$900(Lcom/android/mms/ui/BoxListFrame;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$3700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter$MessageData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3088
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->refreshCheckedList()V
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$4000(Lcom/android/mms/ui/BoxListFrame;)V

    .line 3091
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->isFirstItemChanged()Z
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$4100(Lcom/android/mms/ui/BoxListFrame;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$400(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    .line 3095
    :cond_4
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 3144
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete called with unknown token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3148
    :goto_2
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$400(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 3149
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$400(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/BoxListFrame;->access$4502(Lcom/android/mms/ui/BoxListFrame;J)J

    .line 3160
    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->clearFocusOfBoxListIfNeeded()V

    .line 3163
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3164
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 3092
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$4200(Lcom/android/mms/ui/BoxListFrame;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->restoreListOffset()V
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$4300(Lcom/android/mms/ui/BoxListFrame;)V

    goto :goto_1

    .line 3101
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    const-wide/16 v1, 0xc8

    #calls: Lcom/android/mms/ui/BoxListFrame;->startAsyncQueryDelayed(J)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/BoxListFrame;->access$4400(Lcom/android/mms/ui/BoxListFrame;J)V

    goto :goto_2

    .line 3151
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    const-wide/16 v1, -0x1

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/BoxListFrame;->access$4502(Lcom/android/mms/ui/BoxListFrame;J)J

    goto :goto_3

    .line 3095
    :pswitch_data_0
    .packed-switch 0x6a5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setmDeleteEventHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 3072
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    .line 3073
    return-void
.end method
