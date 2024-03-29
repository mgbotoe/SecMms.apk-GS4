.class public Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;
.super Ljava/lang/Object;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteMsgAnimation"
.end annotation


# instance fields
.field protected mIsAlphaAnim:Z

.field protected mIsTransferAnim:Z

.field protected mOrginalDelItems:[I

.field protected mStepForDelAnim:I

.field protected mTimeIntervalForTransfer:I

.field protected mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

.field protected mVisibleDelItems:[I

.field final synthetic this$0:Lcom/android/mms/ui/MessageListView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 396
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 388
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTimeIntervalForTransfer:I

    .line 389
    iput v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    .line 390
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    .line 391
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    .line 392
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    .line 393
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsTransferAnim:Z

    .line 394
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    .line 397
    new-instance v0, Lcom/android/mms/ui/MessageListView$TransDelAnim;

    invoke-direct {v0, p1}, Lcom/android/mms/ui/MessageListView$TransDelAnim;-><init>(Lcom/android/mms/ui/MessageListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    .line 398
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    new-instance v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;-><init>(Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;Lcom/android/mms/ui/MessageListView;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->setOnTransDelAnimListener(Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;)V

    .line 430
    return-void
.end method


# virtual methods
.method protected afterDelAnim()V
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    .line 658
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    .line 659
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->runningDeleteMsgAnimation()V

    .line 660
    return-void
.end method

.method protected hideSelectedChildItems()V
    .locals 4

    .prologue
    .line 711
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    if-nez v2, :cond_1

    .line 719
    :cond_0
    return-void

    .line 714
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    .line 716
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 717
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 714
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readyDeleteMsgAnimation([I)V
    .locals 4
    .parameter "selectedIndexes"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 475
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 476
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    .line 486
    :goto_0
    return-void

    .line 480
    :cond_1
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    .line 481
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iput-boolean v3, v0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    .line 484
    iput v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    .line 485
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->runningDeleteMsgAnimation()V

    goto :goto_0
.end method

.method public runningDeleteMsgAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x2

    .line 451
    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 452
    iput v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    .line 453
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->invalidate()V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    if-ne v0, v2, :cond_2

    .line 455
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->startDeleteMsgAnimation()V

    .line 456
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    goto :goto_0

    .line 457
    :cond_2
    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 458
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    if-eqz v0, :cond_3

    .line 459
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    invoke-interface {v0}, Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;->onEndDeleteMsgAnimation()V

    .line 462
    :cond_3
    iput v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    goto :goto_0

    .line 463
    :cond_4
    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    if-ne v0, v3, :cond_5

    .line 464
    iput v4, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    .line 465
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->invalidate()V

    .line 466
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->removeChildWithAll()V

    goto :goto_0

    .line 467
    :cond_5
    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    if-ne v0, v4, :cond_0

    .line 468
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    goto :goto_0
.end method

.method protected sortVisibleDelItemsInAscending([I)[I
    .locals 13
    .parameter "delItems"

    .prologue
    .line 664
    array-length v11, p1

    new-array v6, v11, [I

    .line 665
    .local v6, temp1:[I
    const/4 v9, 0x0

    .line 667
    .local v9, visibleItemCount:I
    iget-object v11, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    .line 668
    .local v8, totalItemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v11, p1

    if-ge v0, v11, :cond_1

    .line 669
    aget v11, p1, v0

    if-ltz v11, :cond_0

    aget v11, p1, v0

    if-ge v11, v8, :cond_0

    .line 670
    iget-object v11, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageListView;->getFirstVisiblePosition()I

    move-result v11

    aget v12, p1, v0

    if-gt v11, v12, :cond_0

    aget v11, p1, v0

    iget-object v12, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v12}, Lcom/android/mms/ui/MessageListView;->getLastVisiblePosition()I

    move-result v12

    if-gt v11, v12, :cond_0

    .line 672
    add-int/lit8 v10, v9, 0x1

    .end local v9           #visibleItemCount:I
    .local v10, visibleItemCount:I
    aget v11, p1, v0

    aput v11, v6, v9

    move v9, v10

    .line 668
    .end local v10           #visibleItemCount:I
    .restart local v9       #visibleItemCount:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 676
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_4

    .line 677
    add-int/lit8 v2, v0, 0x1

    .local v2, j:I
    :goto_2
    if-ge v2, v9, :cond_3

    .line 678
    aget v11, v6, v0

    aget v12, v6, v2

    if-le v11, v12, :cond_2

    .line 679
    aget v5, v6, v0

    .line 680
    .local v5, temp:I
    aget v11, v6, v2

    aput v11, v6, v0

    .line 681
    aput v5, v6, v2

    .line 677
    .end local v5           #temp:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 676
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 686
    .end local v2           #j:I
    :cond_4
    array-length v11, p1

    new-array v7, v11, [I

    .line 687
    .local v7, temp2:[I
    const/4 v3, 0x0

    .line 689
    .local v3, size2:I
    const/4 v0, 0x0

    move v4, v3

    .end local v3           #size2:I
    .local v4, size2:I
    :goto_3
    if-ge v0, v9, :cond_7

    .line 690
    add-int/lit8 v3, v4, 0x1

    .end local v4           #size2:I
    .restart local v3       #size2:I
    aget v11, v6, v0

    aput v11, v7, v4

    .line 691
    add-int/lit8 v2, v0, 0x1

    .restart local v2       #j:I
    :goto_4
    if-ge v2, v9, :cond_5

    .line 692
    aget v11, v6, v0

    aget v12, v6, v2

    if-eq v11, v12, :cond_6

    .line 693
    add-int/lit8 v0, v2, -0x1

    .line 689
    :cond_5
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3           #size2:I
    .restart local v4       #size2:I
    goto :goto_3

    .line 691
    .end local v4           #size2:I
    .restart local v3       #size2:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 699
    .end local v2           #j:I
    .end local v3           #size2:I
    .restart local v4       #size2:I
    :cond_7
    if-nez v4, :cond_9

    .line 700
    const/4 v1, 0x0

    .line 707
    :cond_8
    return-object v1

    .line 702
    :cond_9
    new-array v1, v4, [I

    .line 703
    .local v1, itemsAsVisible:[I
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v4, :cond_8

    .line 704
    aget v11, v7, v0

    iget-object v12, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v12}, Lcom/android/mms/ui/MessageListView;->getFirstVisiblePosition()I

    move-result v12

    sub-int/2addr v11, v12

    aput v11, v1, v0

    .line 703
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method protected startAlphaDelAnim([I)V
    .locals 12
    .parameter "delItemsOnlyVisible"

    .prologue
    const v2, 0x3e4ccccd

    const/high16 v1, 0x3f80

    const/4 v5, 0x1

    .line 526
    const/4 v10, 0x0

    .line 527
    .local v10, delAnimSet:Landroid/view/animation/AnimationSet;
    new-instance v10, Landroid/view/animation/AnimationSet;

    .end local v10           #delAnimSet:Landroid/view/animation/AnimationSet;
    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 528
    .restart local v10       #delAnimSet:Landroid/view/animation/AnimationSet;
    if-eqz v10, :cond_0

    .line 529
    invoke-virtual {v10}, Landroid/view/animation/AnimationSet;->reset()V

    .line 531
    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v8, 0x3f00

    move v3, v1

    move v4, v2

    move v6, v1

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 533
    .local v0, scale:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    .line 534
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 536
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 537
    .local v9, alpha:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v5}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 538
    invoke-virtual {v9, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 540
    if-eqz v10, :cond_1

    .line 541
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 542
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 543
    const-wide/16 v1, 0x1f4

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 544
    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 545
    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 547
    new-instance v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;-><init>(Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;)V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 647
    :cond_1
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    array-length v1, p1

    if-ge v11, v1, :cond_4

    .line 648
    iput-boolean v5, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    .line 649
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ne v11, v1, :cond_2

    .line 650
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    .line 651
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    aget v2, p1, v11

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 652
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    aget v2, p1, v11

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 647
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 654
    :cond_4
    return-void
.end method

.method protected startDeleteMsgAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 490
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v2

    .line 492
    .local v2, size:I
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    .line 522
    :goto_0
    return-void

    .line 497
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 498
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    aget v3, v3, v1

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    aget v3, v3, v1

    if-gt v2, v3, :cond_3

    .line 499
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    goto :goto_0

    .line 497
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 504
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->sortVisibleDelItemsInAscending([I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    .line 505
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v3, v3, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->addChildViewBelowWithInvisible([I)V

    .line 507
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    array-length v3, v3

    if-gez v3, :cond_6

    .line 508
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    goto :goto_0

    .line 512
    :cond_6
    iput-boolean v5, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    .line 513
    iput-boolean v5, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsTransferAnim:Z

    .line 515
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 517
    .local v0, handler:Landroid/os/Handler;
    new-instance v3, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$2;-><init>(Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public userCancelAnimationEffectForDeleteItems()V
    .locals 5

    .prologue
    .line 434
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    .line 436
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v3, v3, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v1

    .line 437
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 438
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v3, v3, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 439
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 440
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 437
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    .end local v2           #view:Landroid/view/View;
    :cond_1
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    if-eqz v3, :cond_3

    .line 444
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    .line 447
    :cond_2
    :goto_1
    return-void

    .line 445
    :cond_3
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsTransferAnim:Z

    if-eqz v3, :cond_2

    .line 446
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->cancelTransAnimation()V

    goto :goto_1
.end method
