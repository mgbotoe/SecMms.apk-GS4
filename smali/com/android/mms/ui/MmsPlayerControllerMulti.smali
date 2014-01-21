.class public Lcom/android/mms/ui/MmsPlayerControllerMulti;
.super Landroid/widget/FrameLayout;
.source "MmsPlayerControllerMulti.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;
    }
.end annotation


# static fields
.field private static final FADE_OUT:I = 0x1

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final SPLIT_MODE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Mms/MmsPlayerController"

.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDecor:Landroid/view/View;

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mHandler:Landroid/os/Handler;

.field private mIsBackPressed:Z

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mNextPageButton:Landroid/widget/ImageButton;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

.field private mPressDown:Z

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mPrevPageButton:Landroid/widget/ImageButton;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressContainer:Landroid/widget/LinearLayout;

.field private mRoot:Landroid/view/View;

.field private mShowing:Z

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPressDown:Z

    .line 151
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$1;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 382
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$6;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mHandler:Landroid/os/Handler;

    .line 489
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$7;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 497
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$8;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 504
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$9;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextListener:Landroid/view/View$OnClickListener;

    .line 719
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mIsBackPressed:Z

    .line 96
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mContext:Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->initFloatingWindow()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPressDown:Z

    .line 151
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$1;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 382
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$6;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mHandler:Landroid/os/Handler;

    .line 489
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$7;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 497
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$8;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 504
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$9;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextListener:Landroid/view/View$OnClickListener;

    .line 719
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mIsBackPressed:Z

    .line 84
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsPlayerControllerMulti;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsPlayerControllerMulti;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsPlayerControllerMulti;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgressContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsPlayerControllerMulti;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MmsPlayerControllerMulti;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mDragging:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MmsPlayerControllerMulti;)Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    return-object v0
.end method

.method private disableUnsupportedButtons()V
    .locals 2

    .prologue
    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->canPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 201
    const v1, 0x7f0b01e8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    .line 202
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 204
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/mms/ui/MmsPlayerControllerMulti$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$2;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 214
    :cond_0
    const v1, 0x7f0b01e7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    .line 215
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/mms/ui/MmsPlayerControllerMulti$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$3;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 225
    :cond_1
    const v1, 0x7f0b01e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextPageButton:Landroid/widget/ImageButton;

    .line 226
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextPageButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 227
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextPageButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextPageButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/mms/ui/MmsPlayerControllerMulti$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$4;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 237
    :cond_2
    const v1, 0x7f0b01e4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgressContainer:Landroid/widget/LinearLayout;

    .line 238
    const v1, 0x7f0b01e5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgress:Landroid/widget/ProgressBar;

    .line 239
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgressContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 240
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 241
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgressContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 244
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgressContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/MmsPlayerControllerMulti$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$5;-><init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 257
    :cond_3
    const v1, 0x7f0b002e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mEndTime:Landroid/widget/TextView;

    .line 258
    const v1, 0x7f0b01e6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mCurrentTime:Landroid/widget/TextView;

    .line 260
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 261
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 262
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mEndTime:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 266
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mFormatter:Ljava/util/Formatter;

    .line 267
    return-void
.end method

.method private initFloatingWindow()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method private setProgress()I
    .locals 8

    .prologue
    .line 417
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mDragging:Z

    if-eqz v4, :cond_2

    .line 418
    :cond_0
    const/4 v3, 0x0

    .line 437
    :cond_1
    :goto_0
    return v3

    .line 420
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->getCurrentPosition()I

    move-result v3

    .line 421
    .local v3, position:I
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 422
    .local v0, duration:I
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_3

    .line 423
    if-lez v0, :cond_3

    .line 425
    const-wide/16 v4, 0x3e8

    int-to-long v6, v3

    mul-long/2addr v4, v6

    int-to-long v6, v0

    div-long v1, v4, v6

    .line 426
    .local v1, pos:J
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgress:Landroid/widget/ProgressBar;

    long-to-int v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 432
    .end local v1           #pos:J
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mEndTime:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 433
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 435
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 11
    .parameter "timeMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 402
    div-int/lit16 v3, p1, 0x3e8

    .line 404
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 405
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 406
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 408
    .local v0, hours:I
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 409
    if-lez v0, :cond_0

    .line 410
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 412
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updatePausePlay()V
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->isStartAction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 527
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02020e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 528
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0194

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 530
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02020f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 531
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public SetIsPressDown(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPressDown:Z

    .line 352
    return-void
.end method

.method public SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V
    .locals 1
    .parameter "showModel"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0, p1}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V

    .line 695
    :cond_0
    return-void
.end method

.method public clearBackPressed()V
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mIsBackPressed:Z

    .line 726
    return-void
.end method

.method public doNextPage()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->next()V

    .line 519
    return-void
.end method

.method public doPauseResume()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->pause()V

    .line 541
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->updatePausePlay()V

    .line 542
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->start()V

    goto :goto_0
.end method

.method public doPrevPage()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->prev()V

    .line 514
    return-void
.end method

.method public getBackPressed()Z
    .locals 1

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mIsBackPressed:Z

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 716
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextPageButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextPageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getPauseButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getPrevPageButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public hide()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 359
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    if-nez v2, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportQwertKeypad()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 363
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 364
    .local v0, bar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 365
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 368
    .end local v0           #bar:Landroid/app/ActionBar;
    :cond_2
    iget-boolean v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z

    if-eqz v2, :cond_0

    .line 370
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 371
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 373
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 374
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextPageButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setPressed(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_1
    iput-boolean v4, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z

    goto :goto_0

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaController"

    const-string v3, "already removed"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isInVisibleRect(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 729
    iget-boolean v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z

    if-eqz v1, :cond_0

    .line 730
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 731
    .local v0, globalRect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 732
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 734
    .end local v0           #globalRect:Landroid/graphics/Rect;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->isPaused()Z

    move-result v0

    .line 682
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayed()Z
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->isPlayed()Z

    move-result v0

    .line 668
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->isPlaying()Z

    move-result v0

    .line 675
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPressDown()Z
    .locals 3

    .prologue
    .line 346
    const-string v0, "Mms/MmsPlayerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPressDown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPressDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPressDown:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z

    return v0
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->isStop()Z

    move-result v0

    .line 689
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 193
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x7f04005a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    .line 195
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->initControllerView(Landroid/view/View;)V

    .line 197
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public moveToCurrentPosition()V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->getCurrentPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->seek(I)V

    .line 705
    :cond_0
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0xbb8

    const/4 v2, 0x1

    .line 739
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 741
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 743
    .local v1, uniqueDown:Z
    :goto_0
    const/16 v4, 0x4f

    if-eq v0, v4, :cond_0

    const/16 v4, 0x55

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3e

    if-ne v0, v4, :cond_3

    .line 745
    :cond_0
    if-eqz v1, :cond_1

    .line 746
    const-string v3, "Mms/MmsPlayerController"

    const-string v4, "handle toggle"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->doPauseResume()V

    .line 748
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show(I)V

    .line 749
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 750
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 800
    :cond_1
    :goto_1
    return v2

    .end local v1           #uniqueDown:Z
    :cond_2
    move v1, v3

    .line 741
    goto :goto_0

    .line 754
    .restart local v1       #uniqueDown:Z
    :cond_3
    const/16 v4, 0x7e

    if-ne v0, v4, :cond_4

    .line 755
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v3}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_1

    .line 756
    const-string v3, "Mms/MmsPlayerController"

    const-string v4, "handle play"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v3}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->start()V

    .line 758
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->updatePausePlay()V

    .line 759
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show(I)V

    goto :goto_1

    .line 762
    :cond_4
    const/16 v4, 0x56

    if-eq v0, v4, :cond_5

    const/16 v4, 0x7f

    if-ne v0, v4, :cond_6

    .line 764
    :cond_5
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v3}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 765
    const-string v3, "Mms/MmsPlayerController"

    const-string v4, "handle stop"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v3}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->pause()V

    .line 767
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->updatePausePlay()V

    .line 768
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show(I)V

    goto :goto_1

    .line 771
    :cond_6
    const/16 v4, 0x19

    if-eq v0, v4, :cond_7

    const/16 v4, 0x18

    if-eq v0, v4, :cond_7

    const/16 v4, 0xa4

    if-ne v0, v4, :cond_8

    .line 775
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1

    .line 777
    :cond_8
    const/16 v4, 0x52

    if-ne v0, v4, :cond_a

    .line 778
    if-eqz v1, :cond_9

    .line 779
    const-string v2, "Mms/MmsPlayerController"

    const-string v4, "handle key 4"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->hide()V

    :cond_9
    move v2, v3

    .line 782
    goto :goto_1

    .line 784
    :cond_a
    const/16 v4, 0x58

    if-ne v0, v4, :cond_b

    .line 785
    if-eqz v1, :cond_1

    .line 786
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->doPrevPage()V

    .line 787
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show(I)V

    goto :goto_1

    .line 792
    :cond_b
    const/16 v4, 0x57

    if-ne v0, v4, :cond_c

    .line 793
    if-eqz v1, :cond_1

    .line 794
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->doNextPage()V

    .line 795
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show(I)V

    goto/16 :goto_1

    :cond_c
    move v2, v3

    .line 800
    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 442
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show(I)V

    .line 443
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 448
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show(I)V

    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public pausePlayer()V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->pause()V

    .line 657
    :cond_0
    return-void
.end method

.method public pauseSmilPlayer()V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->pauseSmilPlayer()V

    .line 662
    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0, p1}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->seek(I)V

    .line 700
    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/widget/RelativeLayout;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, -0x1

    .line 175
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 176
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 178
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->makeControllerView()Landroid/view/View;

    move-result-object v1

    .line 179
    .local v1, v:Landroid/view/View;
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z

    .line 182
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 546
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setStatePauseButton(Z)V

    .line 548
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 551
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->disableUnsupportedButtons()V

    .line 552
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 553
    return-void
.end method

.method public setFocusPauseButton()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 628
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 630
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 631
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 632
    const-string v0, "Mms/MmsPlayerController"

    const-string v1, "setFocusPauseButton"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_0
    return-void
.end method

.method public setFocusPrevButton()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 619
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 621
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 622
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 623
    const-string v0, "Mms/MmsPlayerController"

    const-string v1, "setFocusPrevButton"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_0
    return-void
.end method

.method public setMediaPlayer(Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;)V
    .locals 0
    .parameter "player"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    .line 164
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->updatePausePlay()V

    .line 165
    return-void
.end method

.method public setPageMoveButton(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 556
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setStatePrevButton(Z)V

    .line 557
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setStateNextButton(Z)V

    .line 558
    return-void
.end method

.method public setPlayerState(Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0, p1}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->setPlayerState(Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;)V

    .line 710
    :cond_0
    return-void
.end method

.method public setStateNextButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextPageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 614
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mNextPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 616
    :cond_0
    return-void
.end method

.method public setStatePauseButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 600
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 602
    :cond_0
    return-void
.end method

.method public setStatePrevButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 607
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPrevPageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 609
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 274
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show(I)V

    .line 275
    return-void
.end method

.method public show(I)V
    .locals 7
    .parameter "timeout"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 302
    const-string v2, "Mms/MmsPlayerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show(),timeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-boolean v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 305
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setProgress()I

    .line 307
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 311
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->disableUnsupportedButtons()V

    .line 314
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 315
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->updatePausePlay()V

    .line 329
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 331
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableInfiniteDispMMSProgressbar()Z

    move-result v2

    if-nez v2, :cond_2

    .line 332
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 333
    .local v1, msg:Landroid/os/Message;
    if-eqz p1, :cond_2

    .line 334
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 335
    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mHandler:Landroid/os/Handler;

    int-to-long v3, p1

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 338
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    const-string v2, "Mms/MmsPlayerController"

    const-string v3, "catch BadTokenException - MmsPlayerController.show()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iput-boolean v6, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z

    goto :goto_0
.end method

.method public stopPlayer()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->stop()V

    .line 647
    :cond_0
    return-void
.end method

.method public stopSmilPlayer()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    invoke-interface {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->stopSmilPlayer()V

    .line 652
    :cond_0
    return-void
.end method

.method public updateToPlayButton()V
    .locals 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02020f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 641
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
