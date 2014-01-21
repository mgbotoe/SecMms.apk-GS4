.class public final Lcom/android/mms/ui/MessageListView;
.super Landroid/widget/ListView;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;,
        Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;,
        Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;,
        Lcom/android/mms/ui/MessageListView$TransDelAnim;,
        Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;
    }
.end annotation


# static fields
.field public static final MSG_CHANGE_THREAD_VIEW_FONTSIZE:I = 0x1


# instance fields
.field private bLongPress:Z

.field private isPinchZoom:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field protected mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

.field private mCurFontlevel:I

.field public mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

.field private mFitstDistinct:D

.field private mFontInterval:I

.field private mHandler:Landroid/os/Handler;

.field protected mIsAvailableUp:Z

.field protected mIsDeleteMsgAnimating:Z

.field private mKeyIsLongPressed:Z

.field protected mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

.field private mPreFontlevel:I

.field private mResizeFontFactor:I

.field private mStart_x:F

.field private mStart_y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object v4, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    .line 55
    iput-object v4, p0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    .line 57
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    .line 60
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->mKeyIsLongPressed:Z

    .line 65
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->mIsAvailableUp:Z

    .line 78
    const/high16 v0, 0x425c

    iget-object v1, p0, Lcom/android/mms/ui/MessageListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/MessageListView;->mResizeFontFactor:I

    .line 131
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    .line 722
    iput-object v4, p0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    .line 82
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    .line 84
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->setFocusable(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->initDelAnimListView()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-object v4, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    .line 55
    iput-object v4, p0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    .line 57
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    .line 60
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->mKeyIsLongPressed:Z

    .line 65
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->mIsAvailableUp:Z

    .line 78
    const/high16 v0, 0x425c

    iget-object v1, p0, Lcom/android/mms/ui/MessageListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/MessageListView;->mResizeFontFactor:I

    .line 131
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    .line 722
    iput-object v4, p0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    .line 91
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    .line 93
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->setFocusable(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->initDelAnimListView()V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method private showContextPopup()V
    .locals 3

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedItemPosition()I

    move-result v1

    .line 329
    .local v1, position:I
    if-gez v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 333
    .local v2, view:Lcom/android/mms/ui/MessageListItem;
    if-eqz v2, :cond_0

    .line 334
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getBubbleLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 335
    .local v0, bubbleLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->showContextMenu()Z

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 206
    .local v6, pointerCount:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportBubbleViewPinchZoom()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    packed-switch v7, :pswitch_data_0

    .line 322
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    .line 209
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mStart_x:F

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mStart_y:F

    .line 212
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/mms/ui/MessageListView;->isPinchZoom:Z

    goto :goto_0

    .line 216
    :pswitch_2
    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    iget-boolean v7, p0, Lcom/android/mms/ui/MessageListView;->isPinchZoom:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 217
    const/4 v4, 0x0

    .local v4, dx:I
    const/4 v5, 0x0

    .line 218
    .local v5, dy:I
    const-wide/16 v0, 0x0

    .line 220
    .local v0, currentDistinct:D
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v4, v7

    .line 221
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v5, v7

    .line 223
    mul-int v7, v4, v4

    mul-int v8, v5, v5

    add-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 225
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 226
    const/4 v7, 0x1

    const/high16 v8, 0x4220

    iget-object v9, p0, Lcom/android/mms/ui/MessageListView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mResizeFontFactor:I

    .line 228
    :cond_1
    iget-wide v7, p0, Lcom/android/mms/ui/MessageListView;->mFitstDistinct:D

    sub-double v7, v0, v7

    iget v9, p0, Lcom/android/mms/ui/MessageListView;->mResizeFontFactor:I

    int-to-double v9, v9

    div-double v2, v7, v9

    .line 229
    .local v2, div:D
    const-wide/16 v7, 0x0

    cmpl-double v7, v2, v7

    if-ltz v7, :cond_d

    .line 230
    iget v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mPreFontlevel:I

    .line 231
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 232
    const-wide/high16 v7, 0x4018

    cmpl-double v7, v2, v7

    if-lez v7, :cond_2

    .line 233
    const/4 v7, 0x6

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    .line 261
    :goto_1
    iget v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    iget v8, p0, Lcom/android/mms/ui/MessageListView;->mPreFontlevel:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mFontInterval:I

    .line 263
    iget v7, p0, Lcom/android/mms/ui/MessageListView;->mFontInterval:I

    if-eqz v7, :cond_0

    .line 264
    iget-object v7, p0, Lcom/android/mms/ui/MessageListView;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    iget v9, p0, Lcom/android/mms/ui/MessageListView;->mFontInterval:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 234
    :cond_2
    const-wide/high16 v7, 0x4014

    cmpl-double v7, v2, v7

    if-lez v7, :cond_3

    .line 235
    const/4 v7, 0x5

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_1

    .line 236
    :cond_3
    const-wide/high16 v7, 0x4010

    cmpl-double v7, v2, v7

    if-lez v7, :cond_4

    .line 237
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_1

    .line 238
    :cond_4
    const-wide/high16 v7, 0x4008

    cmpl-double v7, v2, v7

    if-lez v7, :cond_5

    .line 239
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_1

    .line 240
    :cond_5
    const-wide/high16 v7, 0x4000

    cmpl-double v7, v2, v7

    if-lez v7, :cond_6

    .line 241
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_1

    .line 242
    :cond_6
    const-wide/high16 v7, 0x3ff0

    cmpl-double v7, v2, v7

    if-lez v7, :cond_7

    .line 243
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_1

    .line 245
    :cond_7
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_1

    .line 248
    :cond_8
    const-wide/high16 v7, 0x4010

    cmpl-double v7, v2, v7

    if-lez v7, :cond_9

    .line 249
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_1

    .line 250
    :cond_9
    const-wide/high16 v7, 0x4008

    cmpl-double v7, v2, v7

    if-lez v7, :cond_a

    .line 251
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_1

    .line 252
    :cond_a
    const-wide/high16 v7, 0x4000

    cmpl-double v7, v2, v7

    if-lez v7, :cond_b

    .line 253
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_1

    .line 254
    :cond_b
    const-wide/high16 v7, 0x3ff0

    cmpl-double v7, v2, v7

    if-lez v7, :cond_c

    .line 255
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_1

    .line 257
    :cond_c
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_1

    .line 266
    :cond_d
    iget v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mPreFontlevel:I

    .line 268
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 269
    const-wide/high16 v7, -0x3fe8

    cmpg-double v7, v2, v7

    if-gez v7, :cond_e

    .line 270
    const/4 v7, -0x6

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    .line 298
    :goto_2
    iget v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    iget v8, p0, Lcom/android/mms/ui/MessageListView;->mPreFontlevel:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mFontInterval:I

    .line 300
    iget v7, p0, Lcom/android/mms/ui/MessageListView;->mFontInterval:I

    if-eqz v7, :cond_0

    .line 301
    iget-object v7, p0, Lcom/android/mms/ui/MessageListView;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    iget v9, p0, Lcom/android/mms/ui/MessageListView;->mFontInterval:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 271
    :cond_e
    const-wide/high16 v7, -0x3fec

    cmpg-double v7, v2, v7

    if-gez v7, :cond_f

    .line 272
    const/4 v7, -0x5

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    .line 273
    :cond_f
    const-wide/high16 v7, -0x3ff0

    cmpg-double v7, v2, v7

    if-gez v7, :cond_10

    .line 274
    const/4 v7, -0x4

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    .line 275
    :cond_10
    const-wide/high16 v7, -0x3ff8

    cmpg-double v7, v2, v7

    if-gez v7, :cond_11

    .line 276
    const/4 v7, -0x3

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    .line 277
    :cond_11
    const-wide/high16 v7, -0x4000

    cmpg-double v7, v2, v7

    if-gez v7, :cond_12

    .line 278
    const/4 v7, -0x2

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    .line 279
    :cond_12
    const-wide/high16 v7, -0x4010

    cmpg-double v7, v2, v7

    if-gez v7, :cond_13

    .line 280
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    .line 282
    :cond_13
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    .line 285
    :cond_14
    const-wide/high16 v7, -0x3ff0

    cmpg-double v7, v2, v7

    if-gez v7, :cond_15

    .line 286
    const/4 v7, -0x4

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    .line 287
    :cond_15
    const-wide/high16 v7, -0x3ff8

    cmpg-double v7, v2, v7

    if-gez v7, :cond_16

    .line 288
    const/4 v7, -0x3

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    .line 289
    :cond_16
    const-wide/high16 v7, -0x4000

    cmpg-double v7, v2, v7

    if-gez v7, :cond_17

    .line 290
    const/4 v7, -0x2

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    .line 291
    :cond_17
    const-wide/high16 v7, -0x4010

    cmpg-double v7, v2, v7

    if-gez v7, :cond_18

    .line 292
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    .line 294
    :cond_18
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    .line 307
    .end local v0           #currentDistinct:D
    .end local v2           #div:D
    .end local v4           #dx:I
    .end local v5           #dy:I
    :pswitch_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/mms/ui/MessageListView;->isPinchZoom:Z

    goto/16 :goto_0

    .line 310
    :pswitch_4
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/mms/ui/MessageListView;->isPinchZoom:Z

    goto/16 :goto_0

    .line 313
    :pswitch_5
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/mms/ui/MessageListView;->isPinchZoom:Z

    .line 315
    iget v7, p0, Lcom/android/mms/ui/MessageListView;->mStart_x:F

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/android/mms/ui/MessageListView;->mStart_x:F

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/mms/ui/MessageListView;->mStart_y:F

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/android/mms/ui/MessageListView;->mStart_y:F

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/mms/ui/MessageListView;->mFitstDistinct:D

    .line 318
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mPreFontlevel:I

    goto/16 :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected initDelAnimListView()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    .line 101
    new-instance v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;-><init>(Lcom/android/mms/ui/MessageListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    .line 102
    new-instance v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;-><init>(Lcom/android/mms/ui/MessageListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    .line 103
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 358
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 359
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    if-eqz v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->runningDeleteMsgAnimation()V

    .line 362
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/ColorDrawable;

    if-nez v2, :cond_1

    .line 363
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 365
    .local v0, dp:Landroid/view/Display;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 366
    .local v1, lo:[I
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListView;->getLocationOnScreen([I)V

    .line 370
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 373
    .end local v0           #dp:Landroid/view/Display;
    .end local v1           #lo:[I
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    .line 137
    .local v0, msgListItem:Lcom/android/mms/ui/MessageListItem;
    const/16 v2, 0x13

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedItemPosition()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getCheckBox()I

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    :cond_0
    const/16 v2, 0x42

    if-eq p1, v2, :cond_1

    const/16 v2, 0x17

    if-ne p1, v2, :cond_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 145
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 146
    .local v1, vibe:Landroid/os/Vibrator;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    .line 147
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListView;->showContextPopup()V

    .line 148
    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 150
    .end local v1           #vibe:Landroid/os/Vibrator;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 112
    packed-switch p1, :pswitch_data_0

    .line 128
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 114
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 115
    .local v2, view:Lcom/android/mms/ui/MessageListItem;
    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 119
    .local v1, item:Lcom/android/mms/ui/MessageItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 122
    .local v0, clip:Landroid/text/ClipboardManager;
    iget-object v3, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const/4 v3, 0x1

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 155
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportQwertKeypad()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 157
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    if-eqz v3, :cond_0

    .line 158
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    .line 159
    const/4 v3, 0x1

    .line 193
    :goto_0
    return v3

    .line 160
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListItem;->getCheckBox()I

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x17

    if-eq p1, v3, :cond_1

    const/16 v3, 0x42

    if-ne p1, v3, :cond_3

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedItemPosition()I

    move-result v1

    .line 166
    .local v1, position:I
    if-gez v1, :cond_2

    move v3, v4

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 169
    .local v2, view:Lcom/android/mms/ui/MessageListItem;
    if-eqz v2, :cond_3

    .line 172
    :try_start_0
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->mKeyIsLongPressed:Z

    if-nez v3, :cond_3

    .line 176
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->hasFailedIconFocused()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 177
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->performFailedIconClick()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v1           #position:I
    .end local v2           #view:Lcom/android/mms/ui/MessageListItem;
    :cond_3
    :goto_1
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    .line 193
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 179
    .restart local v1       #position:I
    .restart local v2       #view:Lcom/android/mms/ui/MessageListItem;
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->userRelease()V

    .line 345
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->userCancelAnimationEffectForDeleteItems()V

    .line 347
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1090
    if-lez p2, :cond_0

    .line 1091
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1093
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 378
    invoke-super {p0, p1}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 383
    :cond_0
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 384
    return-void
.end method

.method public setMsgThreadViewHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView;->mHandler:Landroid/os/Handler;

    .line 108
    return-void
.end method

.method public setOnDeleteMsgAnimation(Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;)V
    .locals 0
    .parameter "onDelAnimTotalListener"

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    .line 727
    return-void
.end method

.method public startDeleteMsgAnimation([I)V
    .locals 1
    .parameter "selectedIndexes"

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->initDelAnimListView()V

    .line 353
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->readyDeleteMsgAnimation([I)V

    .line 355
    :cond_0
    return-void
.end method
