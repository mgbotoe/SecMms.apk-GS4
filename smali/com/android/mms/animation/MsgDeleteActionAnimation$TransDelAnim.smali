.class public Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;
.super Ljava/lang/Object;
.source "MsgDeleteActionAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/animation/MsgDeleteActionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransDelAnim"
.end annotation


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mHandlerDuration:F

.field protected mHandlerInterval:I

.field protected mHandlerTick:F

.field protected mIsRunningHandler:Z

.field protected mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

.field final synthetic this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;


# direct methods
.method public constructor <init>(Lcom/android/mms/animation/MsgDeleteActionAnimation;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 600
    iput-object p1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandler:Landroid/os/Handler;

    .line 595
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerInterval:I

    .line 596
    const/high16 v0, 0x4248

    iput v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerDuration:F

    .line 597
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerTick:F

    .line 598
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mIsRunningHandler:Z

    .line 666
    iput-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    .line 601
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandler:Landroid/os/Handler;

    .line 602
    return-void
.end method


# virtual methods
.method public cancelTransAnimation()V
    .locals 1

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->stopTransAnimation()V

    .line 629
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    invoke-interface {v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;->onCancelTransDeleteAnimation()V

    .line 631
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    .line 638
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    iget v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerTick:F

    iget v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerInterval:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerTick:F

    .line 642
    iget v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerTick:F

    iget v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerDuration:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 643
    iget v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerDuration:F

    iput v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerTick:F

    .line 645
    :cond_2
    iget v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerTick:F

    iget v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerDuration:F

    div-float v0, v2, v3

    .line 646
    .local v0, input:F
    mul-float v1, v0, v0

    .line 647
    .local v1, interpolatedTime:F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_4

    .line 648
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    if-eqz v2, :cond_3

    .line 649
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    invoke-interface {v2, v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;->onApplyTransformation(F)V

    .line 650
    :cond_3
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 651
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidate()V

    goto :goto_0

    .line 652
    :cond_4
    cmpl-float v2, v1, v4

    if-nez v2, :cond_0

    .line 653
    iget-boolean v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mIsRunningHandler:Z

    if-eqz v2, :cond_6

    .line 654
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mIsRunningHandler:Z

    .line 655
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    if-eqz v2, :cond_5

    .line 656
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    invoke-interface {v2, v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;->onApplyTransformation(F)V

    .line 657
    :cond_5
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 658
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidate()V

    goto :goto_0

    .line 660
    :cond_6
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    if-eqz v2, :cond_0

    .line 661
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    invoke-interface {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;->onEndTransDeleteAnimation()V

    goto :goto_0
.end method

.method protected setOnTransDelAnimListener(Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;)V
    .locals 0
    .parameter "onTransAnimationListener"

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    .line 670
    return-void
.end method

.method public startTransAnimation(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->stopTransAnimation()V

    .line 611
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;

    invoke-interface {v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;->onBeginTransDeleteAnimation()V

    .line 614
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mIsRunningHandler:Z

    .line 615
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerTick:F

    .line 616
    int-to-float v0, p1

    iput v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerDuration:F

    .line 617
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandlerInterval:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 619
    :cond_1
    return-void
.end method

.method public startTransDeleteAnimation()V
    .locals 1

    .prologue
    .line 604
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->startTransAnimation(I)V

    .line 605
    return-void
.end method

.method public stopTransAnimation()V
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mIsRunningHandler:Z

    .line 623
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 625
    :cond_0
    return-void
.end method

.method public userRelease()V
    .locals 1

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->stopTransAnimation()V

    .line 635
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->mHandler:Landroid/os/Handler;

    .line 636
    return-void
.end method
