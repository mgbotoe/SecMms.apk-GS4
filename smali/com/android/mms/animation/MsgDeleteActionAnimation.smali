.class public Lcom/android/mms/animation/MsgDeleteActionAnimation;
.super Ljava/lang/Object;
.source "MsgDeleteActionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;,
        Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;,
        Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;,
        Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;
    }
.end annotation


# instance fields
.field private final ANIMATION_DELETE_ACTION_FADEOUT_DURATION:J

.field private final ANIMATION_DELETE_ACTION_SCALE_DURATION:J

.field private TAG:Ljava/lang/String;

.field private final TIME_INTERVAL_FOR_TRANSFER:I

.field private mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

.field protected mIsDeleteMsgAnimating:Z

.field protected mIsScaleFadeOutSet:Z

.field protected mIsTransferDelItemAnim:Z

.field mListView:Lcom/android/mms/ui/MsgSweepActionListView;

.field protected mOnDelActionAnimListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;

.field protected mOriginalDelItems:[I

.field mScaleFadeOutSet:Landroid/view/animation/AnimationSet;

.field public mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

.field protected mVisibleDelItems:[I


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MsgSweepActionListView;Z)V
    .locals 4
    .parameter "listView"
    .parameter "isDeleteMsgAnimating"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->ANIMATION_DELETE_ACTION_FADEOUT_DURATION:J

    .line 18
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->ANIMATION_DELETE_ACTION_SCALE_DURATION:J

    .line 19
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->TIME_INTERVAL_FOR_TRANSFER:I

    .line 20
    const-string v0, "Mms/MsgDeleteActionAnimation"

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    .line 26
    iput-boolean v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsDeleteMsgAnimating:Z

    .line 27
    iput-boolean v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsScaleFadeOutSet:Z

    .line 28
    iput-boolean v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsTransferDelItemAnim:Z

    .line 29
    iput-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    .line 30
    iput-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    .line 350
    iput-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOnDelActionAnimListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;

    .line 32
    iput-object p1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 33
    new-instance v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    invoke-direct {v0, p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;-><init>(Lcom/android/mms/animation/MsgDeleteActionAnimation;)V

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    .line 34
    iput-boolean p2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsDeleteMsgAnimating:Z

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    return-object v0
.end method

.method private sortVisibleDelItemsInAscending(Lcom/android/mms/ui/MsgSweepActionListView;[I)[I
    .locals 13
    .parameter "listView"
    .parameter "delItems"

    .prologue
    .line 284
    array-length v11, p2

    new-array v6, v11, [I

    .line 285
    .local v6, temp1:[I
    const/4 v9, 0x0

    .line 286
    .local v9, visibleItemCount:I
    invoke-virtual {p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    .line 287
    .local v8, totalItemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v11, p2

    if-ge v0, v11, :cond_1

    .line 288
    aget v11, p2, v0

    if-ltz v11, :cond_0

    aget v11, p2, v0

    if-ge v11, v8, :cond_0

    .line 289
    invoke-virtual {p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v11

    aget v12, p2, v0

    if-gt v11, v12, :cond_0

    aget v11, p2, v0

    invoke-virtual {p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getLastVisiblePosition()I

    move-result v12

    if-gt v11, v12, :cond_0

    .line 291
    add-int/lit8 v10, v9, 0x1

    .end local v9           #visibleItemCount:I
    .local v10, visibleItemCount:I
    aget v11, p2, v0

    aput v11, v6, v9

    move v9, v10

    .line 287
    .end local v10           #visibleItemCount:I
    .restart local v9       #visibleItemCount:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_4

    .line 296
    add-int/lit8 v2, v0, 0x1

    .local v2, j:I
    :goto_2
    if-ge v2, v9, :cond_3

    .line 297
    aget v11, v6, v0

    aget v12, v6, v2

    if-le v11, v12, :cond_2

    .line 298
    aget v5, v6, v0

    .line 299
    .local v5, temp:I
    aget v11, v6, v2

    aput v11, v6, v0

    .line 300
    aput v5, v6, v2

    .line 296
    .end local v5           #temp:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 295
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 304
    .end local v2           #j:I
    :cond_4
    array-length v11, p2

    new-array v7, v11, [I

    .line 305
    .local v7, temp2:[I
    const/4 v3, 0x0

    .line 306
    .local v3, size2:I
    const/4 v0, 0x0

    move v4, v3

    .end local v3           #size2:I
    .local v4, size2:I
    :goto_3
    if-ge v0, v9, :cond_7

    .line 307
    add-int/lit8 v3, v4, 0x1

    .end local v4           #size2:I
    .restart local v3       #size2:I
    aget v11, v6, v0

    aput v11, v7, v4

    .line 308
    add-int/lit8 v2, v0, 0x1

    .restart local v2       #j:I
    :goto_4
    if-ge v2, v9, :cond_5

    .line 309
    aget v11, v6, v0

    aget v12, v6, v2

    if-eq v11, v12, :cond_6

    .line 310
    add-int/lit8 v0, v2, -0x1

    .line 306
    :cond_5
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3           #size2:I
    .restart local v4       #size2:I
    goto :goto_3

    .line 308
    .end local v4           #size2:I
    .restart local v3       #size2:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 315
    .end local v2           #j:I
    .end local v3           #size2:I
    .restart local v4       #size2:I
    :cond_7
    if-nez v4, :cond_9

    .line 316
    const/4 v1, 0x0

    .line 321
    :cond_8
    return-object v1

    .line 317
    :cond_9
    new-array v1, v4, [I

    .line 318
    .local v1, itemsAsVisible:[I
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v4, :cond_8

    .line 319
    aget v11, v7, v0

    invoke-virtual {p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v12

    sub-int/2addr v11, v12

    aput v11, v1, v0

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method protected afterDelAnim()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;

    const-string v1, "afterDelAnim Start "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsDeleteMsgAnimating:Z

    .line 272
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOnDelActionAnimListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOnDelActionAnimListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;

    invoke-interface {v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;->onEndDeleteConversationListAnimationEnd()V

    .line 275
    :cond_0
    return-void
.end method

.method public createDeleteActionThreadAnim()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/high16 v5, 0x3f80

    .line 41
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;

    const-string v1, "createDeleteActionThreadAnim"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mScaleFadeOutSet:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 43
    const-wide/16 v0, 0xc8

    const-wide/16 v2, 0x78

    new-instance v4, Lcom/android/mms/animation/easing/SineInOut70;

    invoke-direct {v4}, Lcom/android/mms/animation/easing/SineInOut70;-><init>()V

    const v8, 0x3dcccccd

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v8}, Lcom/android/mms/animation/MsgObjectAnimation;->createScaleFadeOutSet(JJLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mScaleFadeOutSet:Landroid/view/animation/AnimationSet;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    invoke-direct {v0, p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;-><init>(Lcom/android/mms/animation/MsgDeleteActionAnimation;)V

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    .line 47
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    new-instance v1, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;-><init>(Lcom/android/mms/animation/MsgDeleteActionAnimation;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->setOnTransDelAnimListener(Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mScaleFadeOutSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public deleteActionAnimMultiThread()V
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;

    const-string v2, "deleteActionAnimMultiThread"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mScaleFadeOutSet:Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mScaleFadeOutSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;

    invoke-direct {v2, p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;-><init>(Lcom/android/mms/animation/MsgDeleteActionAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 235
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 236
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsScaleFadeOutSet:Z

    .line 237
    iget-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 238
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsScaleFadeOutSet:Z

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mScaleFadeOutSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 235
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method public getDeleteActionThreadAnim()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mScaleFadeOutSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method protected hideSelectedChildItems()V
    .locals 4

    .prologue
    .line 325
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    if-nez v2, :cond_1

    .line 333
    :cond_0
    return-void

    .line 328
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    .line 330
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 331
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readyDeleteActionAnimMultiThread([I)V
    .locals 3
    .parameter "delItem"

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsDeleteMsgAnimating:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->afterDelAnim()V

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_1
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    .line 92
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsDeleteMsgAnimating:Z

    .line 95
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->startDeleteActionAnimMultiThread()V

    goto :goto_0
.end method

.method public setOnMsgDeleteActionAnimation(Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;)V
    .locals 0
    .parameter "deleteConvActionAnimEndListener"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOnDelActionAnimListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;

    .line 355
    return-void
.end method

.method public startDeleteActionAnimMultiThread()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 100
    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v4, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    invoke-direct {p0, v3, v4}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->sortVisibleDelItemsInAscending(Lcom/android/mms/ui/MsgSweepActionListView;[I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    .line 103
    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    iget-object v4, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    invoke-virtual {v3, v4}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->addChildViewBelowWithInvisible([I)V

    .line 105
    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDeleteActionAnimMultiThread delItem size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    if-eqz v3, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->afterDelAnim()V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    .line 114
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 115
    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    aget v3, v3, v1

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    aget v3, v3, v1

    if-gt v2, v3, :cond_3

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->afterDelAnim()V

    goto :goto_0

    .line 114
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    :cond_4
    iput-boolean v6, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsScaleFadeOutSet:Z

    .line 124
    iput-boolean v6, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsTransferDelItemAnim:Z

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 128
    .local v0, handler:Landroid/os/Handler;
    new-instance v3, Lcom/android/mms/animation/MsgDeleteActionAnimation$2;

    invoke-direct {v3, p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$2;-><init>(Lcom/android/mms/animation/MsgDeleteActionAnimation;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public unDohideSelectedChildItems()V
    .locals 4

    .prologue
    .line 336
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    if-nez v2, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 340
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    .line 341
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_3

    .line 339
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 344
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 345
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 347
    .end local v1           #view:Landroid/view/View;
    :cond_4
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->removeChildWithAll()V

    goto :goto_0
.end method

.method public userCancelAnimationEffectForDeleteItems()V
    .locals 5

    .prologue
    .line 246
    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;

    const-string v4, "userCancelAnimationEffectForDeleteItems "

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsDeleteMsgAnimating:Z

    .line 250
    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    invoke-virtual {v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v1

    .line 251
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 252
    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    invoke-virtual {v3, v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 253
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 251
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    .end local v2           #view:Landroid/view/View;
    :cond_1
    iget-boolean v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsScaleFadeOutSet:Z

    if-eqz v3, :cond_3

    .line 259
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->afterDelAnim()V

    .line 262
    :cond_2
    :goto_1
    return-void

    .line 260
    :cond_3
    iget-boolean v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsTransferDelItemAnim:Z

    if-eqz v3, :cond_2

    .line 261
    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    invoke-virtual {v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->cancelTransAnimation()V

    goto :goto_1
.end method
