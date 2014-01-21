.class public Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;
.super Landroid/view/animation/Animation;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandCollapseAnimation"
.end annotation


# instance fields
.field private mAnimatedView:Landroid/view/View;

.field private mEndWidth:I

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/view/View;III)V
    .locals 2
    .parameter "view"
    .parameter "duration"
    .parameter "width"
    .parameter "type"

    .prologue
    .line 868
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 869
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->setDuration(J)V

    .line 870
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    .line 871
    iput p3, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mEndWidth:I

    .line 872
    new-instance v0, Lcom/android/mms/animation/easing/SineInOut80;

    invoke-direct {v0}, Lcom/android/mms/animation/easing/SineInOut80;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 873
    iput p4, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mType:I

    .line 874
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/high16 v3, 0x3f80

    .line 878
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 879
    cmpg-float v0, p1, v3

    if-gez v0, :cond_1

    .line 880
    iget v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mType:I

    if-nez v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mEndWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 882
    const/high16 v0, 0x4120

    div-float v0, p1, v0

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 887
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 900
    :goto_1
    return-void

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mEndWidth:I

    int-to-float v1, v1

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 885
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    sub-float v1, v3, p1

    const/high16 v2, 0x40a0

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 889
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mType:I

    if-nez v0, :cond_2

    .line 890
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mEndWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 891
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 892
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    .line 894
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 895
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 897
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->mEndWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method
