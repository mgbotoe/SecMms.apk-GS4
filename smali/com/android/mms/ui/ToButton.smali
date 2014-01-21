.class public Lcom/android/mms/ui/ToButton;
.super Landroid/widget/Button;
.source "ToButton.java"


# static fields
.field public static final BTN_ALPHA_ANIM_DUR:I = 0xc8

.field public static final BTN_SCALE_ANIM_DUR:I = 0x64

.field private static final BUTTON_PADDING_PX:I


# instance fields
.field private mIsDelete:Z

.field private mNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/high16 v0, 0x4080

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ToButton;->BUTTON_PADDING_PX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ToButton;->mNumber:Ljava/lang/String;

    .line 25
    iput-boolean v2, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    .line 30
    const v0, 0x7f020279

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ToButton;->setBackgroundResource(I)V

    .line 31
    invoke-direct {p0}, Lcom/android/mms/ui/ToButton;->ToBtnCreateAnim()Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ToButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 33
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ToButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/mms/ui/ToButton;->setSingleLine()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ToButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 36
    const/high16 v0, 0x4188

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ToButton;->setTextSize(F)V

    .line 37
    sget v0, Lcom/android/mms/ui/ToButton;->BUTTON_PADDING_PX:I

    sget v1, Lcom/android/mms/ui/ToButton;->BUTTON_PADDING_PX:I

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/android/mms/ui/ToButton;->setPadding(IIII)V

    .line 38
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ToButton;->setGravity(I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "id"
    .parameter "number"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ToButton;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p3, p0, Lcom/android/mms/ui/ToButton;->mNumber:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ToButton;->setId(I)V

    .line 46
    return-void
.end method

.method private ToBtnCreateAnim()Landroid/view/animation/AnimationSet;
    .locals 9

    .prologue
    const v5, 0x3f19999a

    const/high16 v6, 0x3f80

    .line 112
    const-wide/16 v0, 0x64

    const-wide/16 v2, 0xc8

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    move v7, v5

    move v8, v6

    invoke-static/range {v0 .. v8}, Lcom/android/mms/animation/MsgObjectAnimation;->createScaleFadeInSet(JJLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private ToBtnDeleteAnim()Landroid/view/animation/AnimationSet;
    .locals 9

    .prologue
    const v6, 0x3e99999a

    const/high16 v5, 0x3f80

    .line 123
    const-wide/16 v0, 0x64

    const-wide/16 v2, 0xc8

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    move v7, v5

    move v8, v6

    invoke-static/range {v0 .. v8}, Lcom/android/mms/animation/MsgObjectAnimation;->createScaleFadeOutSet(JJLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/os/Handler;)V
    .locals 4
    .parameter "handler"

    .prologue
    const/4 v3, 0x1

    .line 134
    iget-boolean v2, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    if-ne v2, v3, :cond_0

    .line 155
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ToButton;->ToBtnDeleteAnim()Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 138
    .local v0, deleteAni:Landroid/view/animation/AnimationSet;
    invoke-virtual {p0}, Lcom/android/mms/ui/ToButton;->getId()I

    move-result v1

    .line 140
    .local v1, id:I
    new-instance v2, Lcom/android/mms/ui/ToButton$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/mms/ui/ToButton$3;-><init>(Lcom/android/mms/ui/ToButton;Landroid/os/Handler;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/mms/ui/ToButton;->clearAnimation()V

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ToButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 154
    iput-boolean v3, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    goto :goto_0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isDelete()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    return v0
.end method

.method public setFocusListen()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/android/mms/ui/ToButton$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ToButton$2;-><init>(Lcom/android/mms/ui/ToButton;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ToButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 101
    return-void
.end method

.method public setKeyListen()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/android/mms/ui/ToButton$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ToButton$1;-><init>(Lcom/android/mms/ui/ToButton;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ToButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 87
    return-void
.end method
