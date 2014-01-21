.class public Lcom/android/mms/ui/SplitManager;
.super Ljava/lang/Object;
.source "SplitManager.java"


# static fields
.field private static final ANIMATION_DELAY:I = 0x0

.field private static final ANIMATION_OFFSET:I = 0x28

.field private static final CONV_MODE:I = 0x65

.field private static DEVICE_SCREEN_WIDTH_SIZE:I = 0x0

.field private static final FOLDER_MODE:I = 0x66

.field private static SPLIT_BAR_DEFAULT_POSITION:I = 0x0

.field private static SPLIT_BAR_MARGIN:I = 0x0

.field private static SPLIT_BAR_MAX_X:I = 0x0

.field private static SPLIT_BAR_MIN_X:I = 0x0

.field private static final SPLIT_BAR_WIDTH:I = 0x4

.field public static final SPLIT_MODE_LEFT_ONLY:I = 0x0

.field public static final SPLIT_MODE_NONE:I = -0x1

.field public static final SPLIT_MODE_RIGHT_ONLY:I = 0x1

.field public static final SPLIT_MODE_SPLITED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Mms/SplitManager"


# instance fields
.field mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

.field private mCount:I

.field private mEndX:I

.field private mIsAnimationEnable:Z

.field private mLeftView:Landroid/view/View;

.field private mMode:I

.field private mOffset:I

.field private mOnAnimate:Z

.field private mRightView:Landroid/view/View;

.field private mSplitBar:Landroid/view/View;

.field private mSplitMode:I

.field private mSplitShadow:Landroid/view/View;

.field private mStartX:I

.field private mUseSplitMode:Z

.field private mWidth:I

.field private mX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/high16 v0, 0x4120

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MIN_X:I

    .line 27
    const v0, 0x441ec000

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MAX_X:I

    .line 30
    const/16 v0, 0x118

    sput v0, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_DEFAULT_POSITION:I

    .line 32
    const/high16 v0, 0x4180

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MARGIN:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/mms/ui/BoxListViewActivity;)V
    .locals 2
    .parameter "leftView"
    .parameter "rightView"
    .parameter "splitBar"
    .parameter "splitShadow"
    .parameter "boxListView"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    .line 40
    iput-object v0, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    .line 41
    iput-object v0, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    .line 42
    iput-object v0, p0, Lcom/android/mms/ui/SplitManager;->mSplitShadow:Landroid/view/View;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    .line 56
    iput-boolean v1, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    .line 90
    iput-object p1, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    .line 91
    iput-object p2, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    .line 92
    iput-object p3, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    .line 93
    iput-object p4, p0, Lcom/android/mms/ui/SplitManager;->mSplitShadow:Landroid/view/View;

    .line 94
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mMode:I

    .line 99
    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->loadSplitPosition()V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/mms/ui/ConversationComposer;)V
    .locals 5
    .parameter "leftView"
    .parameter "rightView"
    .parameter "splitBar"
    .parameter "splitShadow"
    .parameter "conversationComposer"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x4140

    const/4 v2, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v2, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    .line 40
    iput-object v2, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    .line 41
    iput-object v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    .line 42
    iput-object v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitShadow:Landroid/view/View;

    .line 55
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    .line 56
    iput-boolean v4, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    .line 57
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    .line 58
    iput-boolean v4, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    .line 64
    iput-object p1, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    .line 65
    iput-object p2, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    .line 66
    iput-object p3, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    .line 67
    iput-object p4, p0, Lcom/android/mms/ui/SplitManager;->mSplitShadow:Landroid/view/View;

    .line 69
    const/16 v2, 0x65

    iput v2, p0, Lcom/android/mms/ui/SplitManager;->mMode:I

    .line 71
    iput-object p5, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    .line 72
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 73
    .local v1, width:I
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 74
    .local v0, height:I
    if-lt v1, v0, :cond_0

    .end local v1           #width:I
    :goto_0
    sput v1, Lcom/android/mms/ui/SplitManager;->DEVICE_SCREEN_WIDTH_SIZE:I

    .line 76
    sget v2, Lcom/android/mms/ui/SplitManager;->DEVICE_SCREEN_WIDTH_SIZE:I

    sput v2, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MAX_X:I

    .line 79
    invoke-static {v3}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v2

    sput v2, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MIN_X:I

    .line 80
    invoke-static {v3}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v2

    sput v2, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MARGIN:I

    .line 84
    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->loadSplitPosition()V

    .line 85
    return-void

    .restart local v1       #width:I
    :cond_0
    move v1, v0

    .line 74
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SplitManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SplitManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/SplitManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    return p1
.end method

.method static synthetic access$112(Lcom/android/mms/ui/SplitManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mEndX:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SplitManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SplitManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mOffset:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SplitManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    return v0
.end method

.method static synthetic access$828(Lcom/android/mms/ui/SplitManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SplitManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->animationLayout()Z

    move-result v0

    return v0
.end method

.method private animationLayout()Z
    .locals 4

    .prologue
    .line 374
    iget-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    if-nez v2, :cond_0

    .line 375
    const/4 v2, 0x0

    .line 405
    :goto_0
    return v2

    .line 377
    :cond_0
    new-instance v1, Lcom/android/mms/ui/SplitManager$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SplitManager$1;-><init>(Lcom/android/mms/ui/SplitManager;)V

    .line 403
    .local v1, runExpand:Ljava/lang/Runnable;
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 404
    .local v0, handler:Landroid/os/Handler;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 405
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private loadSplitPosition()V
    .locals 4

    .prologue
    .line 161
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 163
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    .line 164
    .local v2, width:I
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v1

    .line 166
    .local v1, height:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    if-le v1, v2, :cond_0

    .line 170
    div-int/lit8 v3, v1, 0x2

    iput v3, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    .line 176
    :goto_0
    return-void

    .line 172
    :cond_0
    div-int/lit8 v3, v2, 0x2

    iput v3, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    goto :goto_0

    .line 174
    :cond_1
    sget v3, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_DEFAULT_POSITION:I

    iput v3, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    goto :goto_0
.end method


# virtual methods
.method public UpdateSplitPosition(I)Z
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 143
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    add-int v0, v2, p1

    .line 144
    .local v0, x:I
    sget v2, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MIN_X:I

    if-ge v0, v2, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v1

    .line 146
    :cond_1
    sget v2, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MAX_X:I

    if-gt v0, v2, :cond_0

    .line 149
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 152
    iput v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    .line 153
    invoke-virtual {p0}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    move-result v1

    goto :goto_0
.end method

.method public getAnimationEnable()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    return v0
.end method

.method public getSplitMode()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    return v0
.end method

.method public getXpositon()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    return v0
.end method

.method public refreshLayouts()Z
    .locals 10

    .prologue
    const/16 v7, 0x65

    const/16 v9, 0x8

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 253
    const/4 v1, 0x0

    .line 254
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    .line 256
    .local v2, lp_right:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 370
    :goto_0
    return v5

    .line 260
    :cond_0
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 262
    :pswitch_0
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v6, :cond_1

    .line 264
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 265
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mMode:I

    if-ne v6, v7, :cond_1

    .line 266
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->CreateConversationList()V

    .line 272
    :cond_1
    :goto_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 273
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 274
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #lp_right:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v2, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 278
    .restart local v2       #lp_right:Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 279
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mSplitShadow:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 370
    :goto_2
    const/4 v5, 0x1

    goto :goto_0

    .line 269
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->CreateConversationList()V

    goto :goto_1

    .line 285
    :pswitch_1
    iget-boolean v5, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    if-eqz v5, :cond_3

    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    .line 286
    .local v0, leftViewWidth:I
    :goto_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v0, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 287
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    neg-int v5, v0

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 288
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #lp_right:Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-direct {v2, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 291
    .restart local v2       #lp_right:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mSplitShadow:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 285
    .end local v0           #leftViewWidth:I
    :cond_3
    iget v0, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    goto :goto_3

    .line 311
    :pswitch_2
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v6, :cond_4

    .line 312
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 313
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mMode:I

    if-ne v6, v7, :cond_4

    .line 314
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->CreateConversationList()V

    .line 318
    :cond_4
    :goto_4
    const/4 v3, 0x0

    .line 320
    .local v3, toRight:Z
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    iget v7, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    if-ge v6, v7, :cond_6

    .line 321
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 322
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 323
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #lp_right:Landroid/widget/LinearLayout$LayoutParams;
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    iget v7, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    sub-int/2addr v6, v7

    invoke-direct {v2, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 325
    .restart local v2       #lp_right:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    :goto_5
    iget v4, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    .line 339
    .local v4, totalWidth:I
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 341
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_7

    .line 342
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    sub-int v6, v4, v6

    sget v7, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MARGIN:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    iget v8, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    neg-int v6, v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 346
    :goto_6
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mSplitShadow:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 350
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    sget v7, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_DEFAULT_POSITION:I

    mul-int/lit8 v7, v7, 0x2

    if-ge v6, v7, :cond_8

    .line 351
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mSplitShadow:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 352
    sget v5, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MARGIN:I

    neg-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 353
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mSplitShadow:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 316
    .end local v3           #toRight:Z
    .end local v4           #totalWidth:I
    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->CreateConversationList()V

    goto :goto_4

    .line 327
    .restart local v3       #toRight:Z
    :cond_6
    const/4 v3, 0x1

    .line 328
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 329
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 330
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #lp_right:Landroid/widget/LinearLayout$LayoutParams;
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v2, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 333
    .restart local v2       #lp_right:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 344
    .restart local v4       #totalWidth:I
    :cond_7
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    sub-int v6, v4, v6

    sget v7, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MARGIN:I

    add-int/2addr v6, v7

    neg-int v6, v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_6

    .line 354
    :cond_8
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    sget v7, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_DEFAULT_POSITION:I

    mul-int/lit8 v7, v7, 0x2

    if-le v6, v7, :cond_a

    .line 355
    iget v6, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    sub-int v6, v4, v6

    sget v7, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MARGIN:I

    div-int/lit8 v7, v7, 0x2

    if-gt v6, v7, :cond_9

    .line 356
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mSplitShadow:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 358
    :cond_9
    iget-object v6, p0, Lcom/android/mms/ui/SplitManager;->mSplitShadow:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget v5, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    sub-int v5, v4, v5

    sget v6, Lcom/android/mms/ui/SplitManager;->SPLIT_BAR_MARGIN:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 360
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mSplitShadow:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 363
    :cond_a
    iget-object v5, p0, Lcom/android/mms/ui/SplitManager;->mSplitShadow:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public saveSplitPosition()V
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_splitbar_position"

    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    .end local v0           #editPrefs:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0
    .parameter "isAnimationEnable"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    .line 110
    return-void
.end method

.method public setSplitMode(IZ)Z
    .locals 5
    .parameter "splitMode"
    .parameter "withAnimation"

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 187
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    if-ne p1, v2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v1

    .line 190
    :cond_1
    iput p1, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    .line 192
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 207
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 217
    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mIsAnimationEnable:Z

    if-nez v2, :cond_7

    .line 218
    :cond_4
    iput-boolean v1, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    .line 219
    invoke-virtual {p0}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    move-result v1

    goto :goto_0

    .line 198
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v2, :cond_2

    .line 199
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    if-eq v2, v3, :cond_6

    .line 200
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/ConversationComposer;->setActionBarHomeAsUp(Z)V

    goto :goto_1

    .line 202
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mConversationComposer:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationComposer;->setActionBarHomeAsUp(Z)V

    goto :goto_1

    .line 221
    :cond_7
    iget-boolean v2, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    if-nez v2, :cond_0

    .line 224
    iput-boolean v3, p0, Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z

    .line 225
    iput v3, p0, Lcom/android/mms/ui/SplitManager;->mCount:I

    .line 226
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitShadow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget v2, p0, Lcom/android/mms/ui/SplitManager;->mSplitMode:I

    if-ne v2, v3, :cond_9

    .line 230
    const/16 v2, -0x28

    iput v2, p0, Lcom/android/mms/ui/SplitManager;->mOffset:I

    .line 231
    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mStartX:I

    .line 232
    iget-boolean v1, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/mms/ui/SplitManager;->mX:I

    neg-int v1, v1

    :goto_2
    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mEndX:I

    .line 242
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 243
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :goto_3
    invoke-direct {p0}, Lcom/android/mms/ui/SplitManager;->animationLayout()Z

    move-result v1

    goto :goto_0

    .line 232
    :cond_8
    iget v1, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    neg-int v1, v1

    goto :goto_2

    .line 245
    :cond_9
    const/16 v1, 0x28

    iput v1, p0, Lcom/android/mms/ui/SplitManager;->mOffset:I

    goto :goto_3
.end method

.method public setUseSplitMode(Z)V
    .locals 4
    .parameter "useSplitMode"

    .prologue
    const/4 v2, -0x1

    .line 113
    iput-boolean p1, p0, Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 117
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 118
    .restart local v0       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    :goto_0
    const-string v1, "Mms/SplitManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUseSplitMode usesplitMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void

    .line 120
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 121
    .restart local v0       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager;->mRightView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setWidth(I)V
    .locals 3
    .parameter "width"

    .prologue
    .line 104
    iput p1, p0, Lcom/android/mms/ui/SplitManager;->mWidth:I

    .line 105
    const-string v0, "Mms/SplitManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWidth width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method
