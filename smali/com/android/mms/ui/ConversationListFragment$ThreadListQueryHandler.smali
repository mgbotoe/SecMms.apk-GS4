.class final Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# static fields
.field private static final UNREAD_COUNT:I = 0xa


# instance fields
.field private final DEBUG_LOG:Z

.field private mDeleteEventHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;

.field private threadPositionLatestNewNoti:I


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 2743
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    .line 2744
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 2754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->DEBUG_LOG:Z

    .line 2755
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->threadPositionLatestNewNoti:I

    .line 2745
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/16 v9, 0xc9

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2991
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListAdapter;->clearCheckedList()V

    .line 2992
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListAdapter;->clearHasLockedMsg()V

    .line 2993
    invoke-static {v8}, Lcom/android/mms/ui/ConversationListFragment;->access$902(Z)Z

    .line 2995
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iput-boolean v8, v4, Lcom/android/mms/ui/ConversationListFragment;->checkAnim:Z

    .line 2996
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleting:Z
    invoke-static {v4, v7}, Lcom/android/mms/ui/ConversationListFragment;->access$3602(Lcom/android/mms/ui/ConversationListFragment;Z)Z

    .line 2998
    packed-switch p1, :pswitch_data_0

    .line 3083
    :cond_0
    :goto_0
    return-void

    .line 3000
    :pswitch_0
    const-string v4, "Mms/ConversationListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDeleteComplete(),DELETE_ALL_CONVERSATION_TOKEN,mIsDeleteMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3010
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    .line 3012
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    .line 3013
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 3014
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 3015
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4, v8}, Lcom/android/mms/ui/ConversationComposer;->finishCmasViewer(Z)Z

    .line 3017
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3018
    if-nez p3, :cond_2

    .line 3019
    const-string v4, "Mms/ConversationListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDeleteComplete() result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3020
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4, v8, v7, v8, v7}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    .line 3022
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$3200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3023
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$3200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->unDohideSelectedChildItems()V

    .line 3028
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    int-to-long v5, p3

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mDeletedCount:J
    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/ConversationListFragment;->access$3702(Lcom/android/mms/ui/ConversationListFragment;J)J

    .line 3029
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 3030
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3025
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4, v8, v7, v7, v7}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    goto :goto_1

    .line 3034
    :pswitch_1
    const-string v4, "Mms/ConversationListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDeleteComplete(),DELETE_CONVERSATION_TOKEN,mIsDeleteMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3037
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    int-to-long v5, p3

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/ConversationListFragment;->access$3714(Lcom/android/mms/ui/ConversationListFragment;J)J

    .line 3039
    if-eqz p2, :cond_7

    move-object v0, p2

    .line 3040
    check-cast v0, Lcom/android/mms/ui/DeleteInfo;

    .line 3041
    .local v0, deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v4, :cond_3

    iget-boolean v4, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v4, :cond_3

    .line 3042
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3045
    :cond_3
    iget-wide v1, v0, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    .line 3048
    .local v1, threadId:J
    if-lez p3, :cond_4

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_4

    .line 3049
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v7}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    .line 3055
    :cond_4
    iget-boolean v4, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v4, :cond_6

    .line 3058
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3059
    if-nez p3, :cond_8

    .line 3060
    const-string v4, "Mms/ConversationListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDeleteComplete() result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3061
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4, v8, v7, v8, v7}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    .line 3063
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$3200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 3064
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$3200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->unDohideSelectedChildItems()V

    .line 3069
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    .line 3071
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    .line 3073
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 3074
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 3076
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v3

    .line 3077
    .local v3, useSplitView:Z
    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$5500(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 3078
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ConversationComposer;

    iget-wide v5, v0, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/ui/ConversationComposer;->removeComposeFragmentWithoutPreProcess(J)V

    .line 3080
    .end local v0           #deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    .end local v1           #threadId:J
    .end local v3           #useSplitView:Z
    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4, v8}, Lcom/android/mms/ui/ConversationComposer;->finishCmasViewer(Z)Z

    goto/16 :goto_0

    .line 3066
    .restart local v0       #deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    .restart local v1       #threadId:J
    :cond_8
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4, v8, v7, v7, v7}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    goto :goto_2

    .line 2998
    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 18
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 2803
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2985
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 2806
    .restart local p2
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 2980
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryComplete called with unknown token "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2982
    .end local p2
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getSplitModePreference()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2983
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    goto :goto_0

    .line 2808
    .restart local p2
    :sswitch_0
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onQueryComplete(),THREAD_LIST_FAKE_VIEW_QUERY_TOKEN"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2810
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$2500(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    .line 2812
    const/4 v14, 0x0

    .line 2813
    .local v14, fakeCursorCount:I
    if-eqz p3, :cond_3

    .line 2814
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 2817
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2820
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->updateEmptyScreen(I)V
    invoke-static {v1, v14}, Lcom/android/mms/ui/ConversationListFragment;->access$4600(Lcom/android/mms/ui/ConversationListFragment;I)V

    .line 2822
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRemovingContactThumbnail()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2823
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    if-eqz v14, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v1

    if-nez v1, :cond_6

    if-eqz v14, :cond_6

    .line 2827
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    .line 2831
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const-wide/16 v5, 0x190

    invoke-virtual {v1, v5, v6}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryDelayed(J)V

    goto/16 :goto_1

    .line 2836
    .end local v14           #fakeCursorCount:I
    :sswitch_1
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onQueryComplete(),THREAD_LIST_QUERY_TOKEN"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2838
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2839
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->unDohideSelectedChildItems()V

    .line 2843
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$2500(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    .line 2845
    const/4 v15, 0x0

    .line 2846
    .local v15, fullCursorCount:I
    if-eqz p3, :cond_8

    .line 2847
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 2850
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2851
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_9

    .line 2852
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2855
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2856
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->setTotalQuantityTextView(I)V
    invoke-static {v1, v15}, Lcom/android/mms/ui/ConversationListFragment;->access$4700(Lcom/android/mms/ui/ConversationListFragment;I)V

    .line 2860
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->updateEmptyScreen(I)V
    invoke-static {v1, v15}, Lcom/android/mms/ui/ConversationListFragment;->access$4600(Lcom/android/mms/ui/ConversationListFragment;I)V

    .line 2864
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->access$900()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2865
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->reCalulateCheckedThreads()V

    .line 2867
    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->access$900()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2869
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$902(Z)Z

    .line 2875
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2876
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->startedFromLaundher()Z
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$4800(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2877
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v2, -0x1

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I
    invoke-static {v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->access$4902(Lcom/android/mms/ui/ConversationListFragment;I)I

    .line 2883
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->isFirstItemChanged()Z
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$5000(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2884
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$2500(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    .line 2885
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$5100(Lcom/android/mms/ui/ConversationListFragment;)V

    .line 2891
    :cond_f
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    if-eqz v15, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v1

    if-nez v1, :cond_12

    if-eqz v15, :cond_12

    .line 2895
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    .line 2901
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Conversation;->startCaching(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 2886
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$4900(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_f

    .line 2887
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->restoreListOffset()V
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$5200(Lcom/android/mms/ui/ConversationListFragment;)V

    goto :goto_2

    .line 2905
    .end local v15           #fullCursorCount:I
    :sswitch_2
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onQueryComplete(),HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2907
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2908
    .local v3, threadId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2910
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->notifyDeleteStart()V
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$5300(Lcom/android/mms/ui/ConversationListFragment;)V

    .line 2912
    const/4 v12, 0x0

    .line 2913
    .local v12, cursorCount:I
    if-eqz p3, :cond_14

    .line 2915
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .line 2917
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 2921
    :cond_14
    const/4 v1, 0x1

    if-ne v12, v1, :cond_15

    .line 2922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/android/mms/ui/ConversationListAdapter;->setHasLockedMsg(J)V

    .line 2924
    :cond_15
    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$2600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;-><init>(Lcom/android/mms/ui/ConversationListFragment;JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-result-object v6

    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    move v5, v1

    :goto_3
    if-lez v12, :cond_17

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3100(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_18

    const v2, 0x7f0c0156

    :goto_5
    invoke-static {v6, v5, v1, v7, v2}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v13

    .line 2930
    .local v13, dlg:Landroid/app/AlertDialog;
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v13, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2931
    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    .line 2932
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;
    invoke-static {v1, v13}, Lcom/android/mms/ui/ConversationListFragment;->access$402(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    goto/16 :goto_1

    .line 2917
    .end local v13           #dlg:Landroid/app/AlertDialog;
    :catchall_0
    move-exception v1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2924
    :cond_16
    const/4 v1, 0x0

    move v5, v1

    goto :goto_3

    :cond_17
    const/4 v1, 0x0

    goto :goto_4

    :cond_18
    const v2, 0x7f0c0176

    goto :goto_5

    .line 2936
    .end local v3           #threadId:J
    .end local v12           #cursorCount:I
    .restart local p2
    :sswitch_3
    if-eqz p3, :cond_0

    .line 2939
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onQueryComplete(),LOCKED_MESSAGES_IN_SELECTED_TOKEN"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    const/16 v16, 0x0

    .line 2942
    .local v16, hasLockedMessage:Z
    :try_start_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2944
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/android/mms/ui/ConversationListAdapter;->isCheckedThreadId(J)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2945
    const/16 v16, 0x1

    .line 2946
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/android/mms/ui/ConversationListAdapter;->setHasLockedMsg(J)V

    .line 2948
    :cond_1a
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_19

    .line 2951
    :cond_1b
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 2954
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedList()[Ljava/lang/Long;

    move-result-object v11

    .line 2955
    .local v11, threadList:[Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2957
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->notifyDeleteStart()V
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$5300(Lcom/android/mms/ui/ConversationListFragment;)V

    .line 2959
    new-instance v5, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const-wide/16 v7, -0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$2600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct/range {v5 .. v11}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;-><init>(Lcom/android/mms/ui/ConversationListFragment;JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$5400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3100(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_1c

    const v1, 0x7f0c0156

    :goto_6
    move/from16 v0, v16

    invoke-static {v2, v5, v0, v6, v1}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v13

    .line 2965
    .restart local v13       #dlg:Landroid/app/AlertDialog;
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v13, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2966
    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    .line 2968
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;
    invoke-static {v1, v13}, Lcom/android/mms/ui/ConversationListFragment;->access$402(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    goto/16 :goto_1

    .line 2951
    .end local v11           #threadList:[Ljava/lang/Long;
    .end local v13           #dlg:Landroid/app/AlertDialog;
    :catchall_1
    move-exception v1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2959
    .restart local v11       #threadList:[Ljava/lang/Long;
    :cond_1c
    const v1, 0x7f0c0176

    goto :goto_6

    .line 2972
    .end local v11           #threadList:[Ljava/lang/Long;
    .end local v16           #hasLockedMessage:Z
    :sswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2973
    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v17, p2

    .line 2974
    check-cast v17, Landroid/view/Menu;

    .line 2975
    .local v17, menu:Landroid/view/Menu;
    const/16 v1, 0xce

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    goto/16 :goto_1

    .line 2806
    nop

    :sswitch_data_0
    .sparse-switch
        0x6a4 -> :sswitch_0
        0x6a5 -> :sswitch_1
        0x70b -> :sswitch_2
        0x70d -> :sswitch_3
        0x70e -> :sswitch_4
    .end sparse-switch
.end method

.method public setmDeleteEventHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 2749
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    .line 2750
    return-void
.end method
