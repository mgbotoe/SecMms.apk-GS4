.class Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 2606
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 2608
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v6, v6, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v7, 0x1

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleting:Z
    invoke-static {v6, v7}, Lcom/android/mms/ui/ConversationListFragment;->access$3602(Lcom/android/mms/ui/ConversationListFragment;Z)Z

    .line 2609
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v6, v6, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const-wide/16 v7, 0x0

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mDeletedCount:J
    invoke-static {v6, v7, v8}, Lcom/android/mms/ui/ConversationListFragment;->access$3702(Lcom/android/mms/ui/ConversationListFragment;J)J

    .line 2611
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3800(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    .line 2612
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3900(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v6

    if-nez v6, :cond_5

    .line 2614
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v6, v6, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$3400(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4000(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2615
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xc8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2618
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4300(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v6

    const/16 v7, 0x709

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v8}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/data/Conversation;->startDeleteAll(Landroid/content/AsyncQueryHandler;IZ)V

    .line 2619
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/accessory/WatchRelay;->sendClearAllMsgIntent(Landroid/content/Context;)V

    .line 2651
    :cond_2
    :goto_0
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2652
    const-string v6, "GATE"

    const-string v7, "<GATE-M>MSG_DELETED</GATE-M>"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    :cond_3
    const-string v6, "ril.sms.gcf-mode"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2659
    .local v0, GcfMode:Ljava/lang/String;
    const-string v6, "On"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2660
    const-string v6, "Mms/ConversationList.DeleteThreadListener"

    const-string v7, "GCF Mode On"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    const/4 v6, 0x0

    sput v6, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 2662
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2663
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2666
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    return-void

    .line 2622
    .end local v0           #GcfMode:Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v6, v6, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$3400(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3900(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_6

    .line 2623
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xc8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2626
    :cond_6
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3900(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v6

    array-length v3, v6

    .line 2628
    .local v3, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 2629
    const/4 v6, 0x4

    new-array v4, v6, [I

    .line 2630
    .local v4, msgIdArray:[I
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3900(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8, v4}, Lcom/android/mms/accessory/WatchRelay;->getUnreadMsgFromThread(Landroid/content/Context;J[I)[Landroid/net/Uri;

    move-result-object v5

    .line 2631
    .local v5, uri:[Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4300(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v7

    const/16 v8, 0x70a

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v9

    const/4 v10, 0x1

    new-instance v11, Lcom/android/mms/ui/DeleteInfo;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3900(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-int/lit8 v6, v3, -0x1

    if-ne v6, v1, :cond_7

    const/4 v6, 0x1

    :goto_2
    invoke-direct {v11, v12, v13, v6}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;)V

    .line 2633
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5, v4}, Lcom/android/mms/accessory/WatchRelay;->sendReadNotificationProvider(Landroid/content/Context;[Landroid/net/Uri;[I)V

    .line 2628
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2631
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 2638
    .end local v1           #i:I
    .end local v3           #length:I
    .end local v4           #msgIdArray:[I
    .end local v5           #uri:[Landroid/net/Uri;
    :cond_8
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4000(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2639
    :cond_9
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    .line 2641
    :cond_a
    const/4 v6, 0x4

    new-array v4, v6, [I

    .line 2642
    .restart local v4       #msgIdArray:[I
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3800(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J

    move-result-wide v7

    invoke-static {v6, v7, v8, v4}, Lcom/android/mms/accessory/WatchRelay;->getUnreadMsgFromThread(Landroid/content/Context;J[I)[Landroid/net/Uri;

    move-result-object v5

    .line 2644
    .restart local v5       #uri:[Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4300(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v6

    const/16 v7, 0x70a

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v8}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v8

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z
    invoke-static {v9}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v9

    new-instance v10, Lcom/android/mms/ui/DeleteInfo;

    iget-object v11, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J
    invoke-static {v11}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3800(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;)V

    .line 2646
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5, v4}, Lcom/android/mms/accessory/WatchRelay;->sendReadNotificationProvider(Landroid/content/Context;[Landroid/net/Uri;[I)V

    goto/16 :goto_0
.end method
