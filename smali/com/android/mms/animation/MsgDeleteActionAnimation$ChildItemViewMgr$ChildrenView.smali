.class Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;
.super Ljava/lang/Object;
.source "MsgDeleteActionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildrenView"
.end annotation


# instance fields
.field protected mFromYDeltaTransfer:F

.field protected mIsNewChildView:Z

.field protected mIsTransfer:Z

.field protected mMoveYTransfer:F

.field protected mToYDeltaTransfer:F

.field protected mView:Landroid/view/View;

.field final synthetic this$1:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;


# direct methods
.method public constructor <init>(Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;IIZLandroid/view/View;)V
    .locals 3
    .parameter
    .parameter "index"
    .parameter "position"
    .parameter "isNew"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 542
    iput-object p1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-boolean v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 538
    iput-boolean v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    .line 539
    iput v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 540
    iput v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 541
    iput v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    .line 543
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->userSetChildView(IIZLandroid/view/View;)V

    .line 544
    return-void
.end method

.method private userSetChildView(IIZLandroid/view/View;)V
    .locals 0
    .parameter "index"
    .parameter "position"
    .parameter "isNew"
    .parameter "view"

    .prologue
    .line 559
    iput-boolean p3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 560
    iput-object p4, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 561
    return-void
.end method


# virtual methods
.method public releaseChildView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    .line 548
    iput v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 549
    iput v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 550
    iput v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    .line 552
    iget-boolean v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    iget-object v0, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v0, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->removeViewInLayout(Landroid/view/View;)V

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 556
    :cond_0
    return-void
.end method

.method public userCalculateOffsetTransfer(IF)V
    .locals 4
    .parameter "index"
    .parameter "interpolatedTime"

    .prologue
    .line 580
    iget-boolean v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    iget v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    float-to-int v0, v2

    .line 582
    .local v0, moveYTransfer:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    .line 584
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 585
    int-to-float v2, v0

    iget v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, p1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->userOffsetChildTopAndBottom(II)V

    .line 586
    int-to-float v2, v0

    iput v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    .line 588
    :cond_0
    return-void

    .line 580
    .end local v0           #moveYTransfer:I
    .end local v1           #view:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userGetChildView()Landroid/view/View;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public userOffsetChildTopAndBottom(II)V
    .locals 1
    .parameter "offset"
    .parameter "index"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 577
    return-void
.end method

.method public userSetTransfer(FFFF)V
    .locals 1
    .parameter "fromXDelta"
    .parameter "toXDelta"
    .parameter "fromYDelta"
    .parameter "toYDelta"

    .prologue
    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    .line 571
    iput p3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 572
    iput p4, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 573
    return-void
.end method
