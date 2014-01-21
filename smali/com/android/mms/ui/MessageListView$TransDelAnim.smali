.class public Lcom/android/mms/ui/MessageListView$TransDelAnim;
.super Ljava/lang/Object;
.source "MessageListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TransDelAnim"
.end annotation


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mHandlerDuration:F

.field protected mHandlerInterval:I

.field protected mHandlerTick:F

.field protected mIsRunningHandler:Z

.field protected mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

.field final synthetic this$0:Lcom/android/mms/ui/MessageListView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 737
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 731
    iput-object v1, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    .line 732
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerInterval:I

    .line 733
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerDuration:F

    .line 734
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    .line 735
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mIsRunningHandler:Z

    .line 807
    iput-object v1, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    .line 738
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    .line 739
    return-void
.end method


# virtual methods
.method public cancelTransAnimation()V
    .locals 1

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->stopTransAnimation()V

    .line 767
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    invoke-interface {v0}, Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;->onCancelTransDeleteAnimation()V

    .line 769
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    .line 778
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    iget v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    iget v3, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerInterval:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    .line 782
    iget v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    iget v3, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerDuration:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 783
    iget v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerDuration:F

    iput v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    .line 785
    :cond_2
    iget v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    iget v3, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerDuration:F

    div-float v0, v2, v3

    .line 786
    .local v0, input:F
    mul-float v1, v0, v0

    .line 787
    .local v1, interpolatedTime:F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_4

    .line 788
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    if-eqz v2, :cond_3

    .line 789
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    invoke-interface {v2, v1}, Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;->onApplyTransformation(F)V

    .line 790
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->this$0:Lcom/android/mms/ui/MessageListView;

    iget v3, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/mms/ui/MessageListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 791
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->invalidate()V

    goto :goto_0

    .line 792
    :cond_4
    cmpl-float v2, v1, v4

    if-nez v2, :cond_0

    .line 793
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mIsRunningHandler:Z

    if-eqz v2, :cond_6

    .line 794
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mIsRunningHandler:Z

    .line 795
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    if-eqz v2, :cond_5

    .line 796
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    invoke-interface {v2, v1}, Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;->onApplyTransformation(F)V

    .line 797
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->this$0:Lcom/android/mms/ui/MessageListView;

    iget v3, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/mms/ui/MessageListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 798
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->invalidate()V

    goto :goto_0

    .line 800
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    if-eqz v2, :cond_0

    .line 801
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    invoke-interface {v2}, Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;->onEndTransDeleteAnimation()V

    goto :goto_0
.end method

.method protected setOnTransDelAnimListener(Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;)V
    .locals 0
    .parameter "onTransAnimationListener"

    .prologue
    .line 810
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    .line 811
    return-void
.end method

.method public startTransAnimation(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->stopTransAnimation()V

    .line 749
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    invoke-interface {v0}, Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;->onBeginTransDeleteAnimation()V

    .line 752
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mIsRunningHandler:Z

    .line 753
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    .line 754
    int-to-float v0, p1

    iput v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerDuration:F

    .line 755
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerInterval:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 757
    :cond_1
    return-void
.end method

.method public startTransDeleteAnimation()V
    .locals 1

    .prologue
    .line 742
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->startTransAnimation(I)V

    .line 743
    return-void
.end method

.method public stopTransAnimation()V
    .locals 1

    .prologue
    .line 760
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mIsRunningHandler:Z

    .line 761
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 763
    :cond_0
    return-void
.end method

.method public userRelease()V
    .locals 1

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->stopTransAnimation()V

    .line 773
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    .line 774
    return-void
.end method
