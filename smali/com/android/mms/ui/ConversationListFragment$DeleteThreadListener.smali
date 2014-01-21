.class public Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteThreadListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/ConversationList.DeleteThreadListener"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeleteDraftMessages:Z

.field private mDeleteLockedMessages:Z

.field private mDeleteStartHandler:Landroid/os/Handler;

.field private final mHandler:Landroid/content/AsyncQueryHandler;

.field private mHasLockedMessages:Z

.field private final mThreadId:J

.field private final mThreadIdList:[Ljava/lang/Long;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationListFragment;JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V
    .locals 3
    .parameter
    .parameter "threadId"
    .parameter "handler"
    .parameter "context"
    .parameter "threadIdList"

    .prologue
    const/4 v1, 0x0

    .line 2438
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2439
    iput-wide p2, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    .line 2440
    iput-object p4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    .line 2441
    iput-object p5, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    .line 2443
    if-eqz p6, :cond_0

    .line 2444
    invoke-virtual {p6}, [Ljava/lang/Long;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    check-cast v0, [Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    .line 2449
    :goto_0
    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    .line 2450
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    .line 2451
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z

    .line 2453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z

    .line 2455
    new-instance v0, Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {p1}, Lcom/android/mms/ui/ConversationListFragment;->access$2500(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMsgAnimating:Z
    invoke-static {p1}, Lcom/android/mms/ui/ConversationListFragment;->access$3300(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;-><init>(Lcom/android/mms/ui/MsgSweepActionListView;Z)V

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {p1, v0}, Lcom/android/mms/ui/ConversationListFragment;->access$3202(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    .line 2456
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->initDeleteActionAnimation()V

    .line 2459
    return-void

    .line 2446
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    goto :goto_0
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2424
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteRun()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 2424
    iget-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2424
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2424
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2424
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2424
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2424
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2424
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2424
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z

    return v0
.end method

.method private deleteActionAnimationStart([I)V
    .locals 2
    .parameter "delItem"

    .prologue
    .line 2595
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2596
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2599
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$3200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->readyDeleteActionAnimMultiThread([I)V

    .line 2600
    return-void
.end method

.method private deleteRun()V
    .locals 6

    .prologue
    const/16 v3, 0x81

    const/4 v5, 0x1

    .line 2603
    const-string v0, "Mms/ConversationList.DeleteThreadListener"

    const-string v1, "deleteRun() start"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    new-instance v4, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;-><init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)V

    .line 2671
    .local v4, deleteRun:Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2672
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2673
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportWithoutConfirmDlg(Landroid/content/Context;JILjava/lang/Runnable;Z)V

    .line 2682
    :cond_0
    :goto_0
    return-void

    .line 2675
    :cond_1
    if-eqz v4, :cond_0

    .line 2676
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2680
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;Z)V

    goto :goto_0
.end method

.method private initDeleteActionAnimation()V
    .locals 2

    .prologue
    .line 2566
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMsgAnimating:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3302(Lcom/android/mms/ui/ConversationListFragment;Z)Z

    .line 2568
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$3200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;-><init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->setOnMsgDeleteActionAnimation(Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;)V

    .line 2591
    return-void
.end method

.method private isAnimatableThread(J)Z
    .locals 4
    .parameter "threadID"

    .prologue
    const/4 v2, 0x1

    .line 2551
    const/4 v0, 0x0

    .line 2553
    .local v0, isAnimatable:Z
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/ConversationListAdapter;->hasLockedMsg(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2554
    const/4 v0, 0x1

    .line 2560
    :goto_0
    const-string v1, "Mms/ConversationList.DeleteThreadListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAnimatableThread threadID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isAnimatable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    return v0

    .line 2555
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/ConversationListAdapter;->hasLockedMsg(J)Z

    move-result v1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    if-ne v1, v2, :cond_1

    .line 2556
    const/4 v0, 0x1

    goto :goto_0

    .line 2558
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2484
    const-string v7, "Mms/ConversationList.DeleteThreadListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onClick(),whichButton="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2486
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$3400(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    if-nez v7, :cond_2

    .line 2487
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteRun()V

    .line 2544
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v7, v12}, Lcom/android/mms/ui/ConversationComposer;->finishCmasViewer(Z)Z

    .line 2545
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2547
    return-void

    .line 2489
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$3200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->createDeleteActionThreadAnim()Landroid/view/animation/Animation;

    .line 2491
    iget-wide v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_8

    .line 2494
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2496
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 2498
    .local v2, deleteCount:I
    const/4 v3, -0x1

    .line 2499
    .local v3, messagePosition:I
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v7

    new-array v1, v7, [I

    .line 2501
    .local v1, delItem:[I
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2503
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 2504
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2506
    .local v5, threadID:J
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/android/mms/ui/ConversationListAdapter;->isCheckedThreadId(J)Z

    move-result v7

    if-nez v7, :cond_7

    .line 2514
    :cond_4
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2515
    if-lez v2, :cond_5

    .line 2516
    new-array v4, v2, [I

    .line 2517
    .local v4, realDelItem:[I
    invoke-static {v1, v11, v4, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2518
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteActionAnimationStart([I)V

    .line 2522
    .end local v4           #realDelItem:[I
    .end local v5           #threadID:J
    :cond_5
    if-nez v2, :cond_1

    .line 2523
    array-length v7, v1

    if-lez v7, :cond_6

    .line 2524
    const-string v7, "Mms/ConversationList.DeleteThreadListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DeleteThreadListener onClick() deleteCount == 0 delItem.length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2525
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteRun()V

    .line 2531
    :cond_6
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v7, v12, v11, v12, v11}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    goto/16 :goto_0

    .line 2509
    .restart local v5       #threadID:J
    :cond_7
    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->isAnimatableThread(J)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2512
    add-int/lit8 v2, v2, 0x1

    .line 2513
    add-int/lit8 v7, v2, -0x1

    aput v3, v1, v7

    goto :goto_1

    .line 2535
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #delItem:[I
    .end local v2           #deleteCount:I
    .end local v3           #messagePosition:I
    .end local v5           #threadID:J
    :cond_8
    iget-wide v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->isAnimatableThread(J)Z

    move-result v7

    if-nez v7, :cond_9

    .line 2536
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteRun()V

    goto/16 :goto_0

    .line 2538
    :cond_9
    new-array v1, v12, [I

    .line 2539
    .restart local v1       #delItem:[I
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedPosition:I
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$2400(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v7

    aput v7, v1, v11

    .line 2540
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteActionAnimationStart([I)V

    goto/16 :goto_0
.end method

.method public setDeleteDraftMessage(Z)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
    .locals 0
    .parameter "deleteDraftMessages"

    .prologue
    .line 2463
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z

    .line 2464
    return-object p0
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0
    .parameter "deleteLockedMessages"

    .prologue
    .line 2470
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    .line 2471
    return-void
.end method

.method public setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
    .locals 0
    .parameter "handler"

    .prologue
    .line 2475
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;

    .line 2476
    return-object p0
.end method

.method public setHasLockedMessage(Z)V
    .locals 0
    .parameter "hasLockedMessages"

    .prologue
    .line 2480
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z

    .line 2481
    return-void
.end method
