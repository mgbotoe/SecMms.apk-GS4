.class public Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
.super Ljava/lang/Object;
.source "MsgDeleteActionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/animation/MsgDeleteActionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChildItemViewMgr"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;
    }
.end annotation


# instance fields
.field protected mChildItemViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;",
            ">;"
        }
    .end annotation
.end field

.field protected mVisibleChildCount:I

.field final synthetic this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;


# direct methods
.method public constructor <init>(Lcom/android/mms/animation/MsgDeleteActionAnimation;)V
    .locals 1
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mVisibleChildCount:I

    .line 371
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    .line 372
    return-void
.end method


# virtual methods
.method public addChildViewBelowWithInvisible([I)V
    .locals 26
    .parameter "orginalIndexes"

    .prologue
    .line 420
    const/4 v12, 0x0

    .line 421
    .local v12, addedChildViewCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v19

    .line 422
    .local v19, size:I
    if-nez v19, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->removeChildWithAll()V

    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v16

    .line 428
    .local v16, positionTop:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v4, v4, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 429
    .local v25, viewBottom:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getLastVisiblePosition()I

    move-result v15

    .line 431
    .local v15, positionBottom:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildCount()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mVisibleChildCount:I

    .line 432
    const/16 v23, 0x0

    .line 433
    .local v23, totalRemainViewSize:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getBottom()I

    move-result v24

    .line 434
    .local v24, totalScreenSize:I
    move/from16 v18, v15

    .line 435
    .local v18, realUnderPosition:I
    const/4 v13, 0x0

    .line 437
    .local v13, isChecked:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildCount()I

    move-result v21

    .line 438
    .local v21, sizeScreen:I
    const/16 v20, 0x0

    .line 439
    .local v20, sizeOfInvisibleBelowItems:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    move/from16 v0, v21

    if-ge v5, v0, :cond_5

    .line 440
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    new-instance v3, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;

    add-int v6, v16, v5

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v4, v4, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;IIZLandroid/view/View;)V

    invoke-virtual {v10, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 441
    const/4 v14, 0x0

    .local v14, j:I
    :goto_2
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v14, v3, :cond_3

    .line 442
    aget v3, p1, v14

    if-ne v5, v3, :cond_2

    const/4 v13, 0x1

    .line 441
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 444
    :cond_3
    if-nez v13, :cond_4

    .line 445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int v23, v23, v3

    .line 446
    :cond_4
    const/4 v13, 0x0

    .line 439
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 449
    .end local v14           #j:I
    :cond_5
    add-int/lit8 v3, v19, -0x1

    if-ge v15, v3, :cond_0

    .line 450
    move-object/from16 v17, v25

    .line 451
    .local v17, previousView:Landroid/view/View;
    const/4 v11, 0x0

    .line 453
    .local v11, thisView:Landroid/view/View;
    add-int/lit8 v3, v19, -0x1

    sub-int v20, v3, v15

    .line 454
    const/4 v5, 0x0

    :goto_3
    add-int/lit8 v3, v20, -0x1

    if-ge v5, v3, :cond_0

    .line 455
    add-int v8, v21, v5

    .line 456
    .local v8, index:I
    add-int/lit8 v3, v15, 0x1

    add-int v9, v3, v5

    .line 457
    .local v9, position:I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v8, v9, v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->makeChildView(Landroid/view/View;II[I)Landroid/view/View;

    move-result-object v11

    .line 458
    if-nez v11, :cond_7

    .line 454
    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 461
    :cond_7
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    add-int/lit8 v3, v21, 0x2

    if-ge v12, v3, :cond_8

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v4, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v11, v4, v6}, Lcom/android/mms/ui/MsgSweepActionListView;->addViewInLayoutMsg(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 464
    add-int/lit8 v12, v12, 0x1

    .line 465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    new-instance v6, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;

    const/4 v10, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;IIZLandroid/view/View;)V

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 466
    add-int/lit8 v18, v18, 0x1

    .line 467
    move-object/from16 v17, v11

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 470
    .local v22, tmpView:Landroid/view/View;
    if-eqz v22, :cond_6

    .line 471
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int v23, v23, v3

    goto :goto_4

    .line 473
    .end local v22           #tmpView:Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    #getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$000(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Didn\'t add childrenView"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public calculateOffsetForTransDelAnim(IF)V
    .locals 1
    .parameter "index"
    .parameter "interpolatedTime"

    .prologue
    .line 529
    invoke-virtual {p0, p1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;

    move-result-object v0

    .line 531
    .local v0, childView:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;
    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0, p1, p2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->userCalculateOffsetTransfer(IF)V

    .line 533
    :cond_0
    return-void
.end method

.method public getChildAtWithAll(I)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 408
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v2

    if-gtz v2, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-object v1

    .line 411
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v0

    .line 412
    .local v0, size:I
    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    if-le v0, p1, :cond_0

    .line 415
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;

    goto :goto_0
.end method

.method public getChildItemCountWithAll()I
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 394
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildItemViewAt(I)Landroid/view/View;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 398
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v0

    .line 400
    .local v0, size:I
    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    if-gt v0, p1, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-object v1

    .line 403
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->userGetChildView()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getVisibleChildItemViewCount()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mVisibleChildCount:I

    return v0
.end method

.method protected makeChildView(Landroid/view/View;II[I)Landroid/view/View;
    .locals 11
    .parameter "previousView"
    .parameter "index"
    .parameter "position"
    .parameter "orginalIndexes"

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 481
    iget-object v7, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v7, v7, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-eqz v7, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v5, v6

    .line 519
    :goto_0
    return-object v5

    .line 484
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, p4

    if-ge v2, v7, :cond_3

    .line 485
    aget v7, p4, v2

    if-ne p3, v7, :cond_2

    move-object v5, v6

    goto :goto_0

    .line 484
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 488
    :cond_3
    iget-object v7, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v7, v7, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v7}, Lcom/android/mms/ui/MsgSweepActionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v8, v8, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-interface {v7, p3, v6, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 489
    .local v5, thisView:Landroid/view/View;
    if-nez v5, :cond_4

    move-object v5, v6

    .line 490
    goto :goto_0

    .line 492
    :cond_4
    iget-object v6, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v6, v6, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MsgSweepActionListView;->getCacheColorHint()I

    move-result v6

    if-eqz v6, :cond_5

    .line 493
    iget-object v6, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v6, v6, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MsgSweepActionListView;->getCacheColorHint()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 495
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 496
    .local v4, p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-nez v4, :cond_6

    .line 497
    new-instance v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .end local v4           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(III)V

    .line 499
    .restart local v4       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->width:I

    .line 504
    iget-object v6, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v6, v6, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MsgSweepActionListView;->getListPaddingLeft()I

    move-result v6

    iget-object v7, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v7, v7, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v7}, Lcom/android/mms/ui/MsgSweepActionListView;->getListPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->width:I

    invoke-static {v9, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 506
    .local v1, childWidthSpec:I
    iget v3, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->height:I

    .line 508
    .local v3, lpHeight:I
    if-lez v3, :cond_7

    .line 509
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 513
    .local v0, childHeightSpec:I
    :goto_2
    invoke-virtual {v5, v1, v0}, Landroid/view/View;->measure(II)V

    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 511
    .end local v0           #childHeightSpec:I
    :cond_7
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_2
.end method

.method public removeChildWithAll()V
    .locals 4

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v2

    .line 376
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 377
    invoke-virtual {p0, v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;

    move-result-object v0

    .line 378
    .local v0, childView:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;
    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->releaseChildView()V

    .line 376
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    .end local v0           #childView:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    .line 384
    return-void
.end method

.method public userSetTransfer(IFFFF)V
    .locals 1
    .parameter "index"
    .parameter "fromXDelta"
    .parameter "toXDelta"
    .parameter "fromYDelta"
    .parameter "toYDelta"

    .prologue
    .line 523
    invoke-virtual {p0, p1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;

    move-result-object v0

    .line 524
    .local v0, childView:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;
    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->userSetTransfer(FFFF)V

    .line 526
    :cond_0
    return-void
.end method
