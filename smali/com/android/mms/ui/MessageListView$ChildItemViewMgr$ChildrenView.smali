.class Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
.super Ljava/lang/Object;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildrenView"
.end annotation


# instance fields
.field protected mFromXDeltaTransfer:F

.field protected mFromYDeltaTransfer:F

.field protected mIsAlignLeft:Z

.field protected mIsNewChildView:Z

.field protected mIsTransfer:Z

.field protected mMoveXTransfer:F

.field protected mMoveYTransfer:F

.field protected mToXDeltaTransfer:F

.field protected mToYDeltaTransfer:F

.field protected mView:Landroid/view/View;

.field final synthetic this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;IIZLandroid/view/View;)V
    .locals 3
    .parameter
    .parameter "index"
    .parameter "position"
    .parameter "isNew"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 997
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 986
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 987
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 988
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    .line 989
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    .line 990
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 991
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 992
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    .line 993
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    .line 994
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    .line 995
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    .line 998
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userSetChildView(IIZLandroid/view/View;)V

    .line 999
    return-void
.end method

.method private userSetChildView(IIZLandroid/view/View;)V
    .locals 1
    .parameter "index"
    .parameter "position"
    .parameter "isNew"
    .parameter "view"

    .prologue
    .line 1018
    iput-boolean p3, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 1019
    iput-object p4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 1020
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->isAlignLeft()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    .line 1021
    return-void
.end method


# virtual methods
.method public releaseChildView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1002
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    .line 1003
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    .line 1004
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 1005
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 1006
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    .line 1007
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    .line 1008
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    .line 1009
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    .line 1011
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->removeViewInLayout(Landroid/view/View;)V

    .line 1013
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 1015
    :cond_0
    return-void
.end method

.method public userCalculateOffsetTransfer(IF)V
    .locals 7
    .parameter "index"
    .parameter "interpolatedTime"

    .prologue
    const/4 v4, 0x0

    .line 1051
    iget-boolean v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    iget v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p2

    float-to-int v1, v5

    .line 1053
    .local v1, moveYTransfer:I
    :goto_0
    iget-boolean v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    if-eqz v5, :cond_2

    iget v4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    float-to-int v0, v4

    .line 1056
    .local v0, moveXTransfer:I
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v4, v4, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v4, v4, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v4, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 1057
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_0

    move-object v2, v3

    .line 1058
    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 1059
    .local v2, msgListItem:Lcom/android/mms/ui/MessageListItem;
    int-to-float v4, v1

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0, v4, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userOffsetChildTopAndBottom(II)V

    .line 1060
    int-to-float v4, v0

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0, v4, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userOffsetLeftAndRight(II)V

    .line 1061
    int-to-float v4, v0

    iput v4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    .line 1062
    int-to-float v4, v1

    iput v4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    .line 1064
    .end local v2           #msgListItem:Lcom/android/mms/ui/MessageListItem;
    :cond_0
    return-void

    .end local v0           #moveXTransfer:I
    .end local v1           #moveYTransfer:I
    .end local v3           #view:Landroid/view/View;
    :cond_1
    move v1, v4

    .line 1051
    goto :goto_0

    .restart local v1       #moveYTransfer:I
    :cond_2
    move v0, v4

    .line 1053
    goto :goto_1
.end method

.method public userGetChildView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public userOffsetChildTopAndBottom(II)V
    .locals 1
    .parameter "offset"
    .parameter "index"

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1029
    return-void
.end method

.method public userOffsetLeftAndRight(II)V
    .locals 2
    .parameter "offset"
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 1032
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->isAlignLeft(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1037
    :goto_0
    return-void

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0
.end method

.method public userSetTransfer(FFFF)V
    .locals 1
    .parameter "fromXDelta"
    .parameter "toXDelta"
    .parameter "fromYDelta"
    .parameter "toYDelta"

    .prologue
    .line 1041
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    .line 1043
    iput p3, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 1044
    iput p4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 1045
    iput p1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    .line 1046
    iput p2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    .line 1047
    return-void
.end method
