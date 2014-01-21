.class public Lcom/android/mms/animation/MsgListAnimation;
.super Lcom/android/mms/animation/MsgBaseListAnimation;
.source "MsgListAnimation.java"


# static fields
.field public static final ANIMATION_SLIDE_CHECKBOX_MOVING_SIZE:F = 80.0f

.field public static final ANIMATION_SLIDE_DOWN_DURATION:J = 0x12cL

.field public static final ANIMATION_SLIDE_DURATION:J = 0x12cL

.field public static final ANIMATION_SLIDE_MOVING_SIZE:F = 68.0f

.field public static final ANIMATION_SLIDE_RIGHT_DURATION:J = 0x258L

.field public static final ANIMATION_SLIDE_UP_DOWN_DURATION:J = 0x190L

.field public static final ANIMATION_SLIDE_UP_DURATION:J = 0x64L


# instance fields
.field private TAG:Ljava/lang/String;

.field private mHeightOfTitle:I

.field private mListView:Lcom/android/mms/ui/MsgSweepActionListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/mms/animation/MsgBaseListAnimation;-><init>()V

    .line 24
    const-string v0, "Mms/MsgConversationListAnimation"

    iput-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/animation/MsgListAnimation;->mHeightOfTitle:I

    .line 31
    return-void
.end method

.method private createCheckBoxAnimation(Landroid/view/View;Z)Landroid/view/animation/Animation;
    .locals 6
    .parameter "checkbox"
    .parameter "isLastIndex"

    .prologue
    .line 185
    const-wide/16 v1, 0x12c

    new-instance v3, Lcom/android/mms/animation/easing/SineInOut50;

    invoke-direct {v3}, Lcom/android/mms/animation/easing/SineInOut50;-><init>()V

    const/4 v4, 0x0

    const/high16 v5, 0x4288

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    .line 188
    .local v0, animSlideRightCheckbox:Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/mms/animation/MsgListAnimation$4;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/animation/MsgListAnimation$4;-><init>(Lcom/android/mms/animation/MsgListAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 207
    return-object v0
.end method

.method private createDateAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 6
    .parameter "date"

    .prologue
    .line 164
    const-wide/16 v1, 0x258

    new-instance v3, Lcom/android/mms/animation/easing/SineInOut50;

    invoke-direct {v3}, Lcom/android/mms/animation/easing/SineInOut50;-><init>()V

    const/high16 v4, -0x3d78

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    .line 168
    .local v0, animSlideRightDate:Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/mms/animation/MsgListAnimation$3;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/animation/MsgListAnimation$3;-><init>(Lcom/android/mms/animation/MsgListAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 180
    return-object v0
.end method

.method private createStatusAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 6
    .parameter "status"

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, animSlideRightStatus:Landroid/view/animation/Animation;
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 119
    const-wide/16 v1, 0x258

    new-instance v3, Lcom/android/mms/animation/easing/SineInOut50;

    invoke-direct {v3}, Lcom/android/mms/animation/easing/SineInOut50;-><init>()V

    const/high16 v4, -0x3d78

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/android/mms/animation/MsgListAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/animation/MsgListAnimation$1;-><init>(Lcom/android/mms/animation/MsgListAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 136
    :cond_0
    return-object v0
.end method

.method private createUnreadCountAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 6
    .parameter "mUnreadCount"

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, animSlideRightUnreadCount:Landroid/view/animation/Animation;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 143
    const-wide/16 v1, 0x12c

    new-instance v3, Lcom/android/mms/animation/easing/SineInOut50;

    invoke-direct {v3}, Lcom/android/mms/animation/easing/SineInOut50;-><init>()V

    const/high16 v4, -0x3d78

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    .line 147
    new-instance v1, Lcom/android/mms/animation/MsgListAnimation$2;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/animation/MsgListAnimation$2;-><init>(Lcom/android/mms/animation/MsgListAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 160
    :cond_0
    return-object v0
.end method

.method private hideCheckBoxAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZI)V
    .locals 7
    .parameter "listItemView"
    .parameter "date"
    .parameter "status"
    .parameter "mUnreadCount"
    .parameter "checkbox"
    .parameter "isLastIndex"
    .parameter "currentIndex"

    .prologue
    const/16 v6, 0x8

    .line 83
    invoke-direct {p0, p5, p6}, Lcom/android/mms/animation/MsgListAnimation;->createCheckBoxAnimation(Landroid/view/View;Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 84
    .local v0, animSlideRightCheckbox:Landroid/view/animation/Animation;
    invoke-direct {p0, p2}, Lcom/android/mms/animation/MsgListAnimation;->createDateAnimation(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 85
    .local v1, animSlideRightDate:Landroid/view/animation/Animation;
    invoke-direct {p0, p3}, Lcom/android/mms/animation/MsgListAnimation;->createStatusAnimation(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v2

    .line 86
    .local v2, animSlideRightStatus:Landroid/view/animation/Animation;
    invoke-direct {p0, p4}, Lcom/android/mms/animation/MsgListAnimation;->createUnreadCountAnimation(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v3

    .line 88
    .local v3, animSlideRightUnreadCount:Landroid/view/animation/Animation;
    invoke-virtual {p5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 90
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/mms/animation/MsgListAnimation;->mIsAnimating:Z

    .line 93
    if-nez p7, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v4, v5

    if-gez v4, :cond_2

    .line 98
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 99
    if-nez p7, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v4, v5

    if-gez v4, :cond_3

    .line 106
    :cond_0
    :goto_1
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 107
    if-nez p7, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v4, v5

    if-gez v4, :cond_4

    .line 114
    :cond_1
    :goto_2
    return-void

    .line 96
    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {p4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method


# virtual methods
.method public hidecheckbox()V
    .locals 14

    .prologue
    const v13, 0x7f0b00f7

    .line 43
    iget-boolean v0, p0, Lcom/android/mms/animation/MsgListAnimation;->mIsAnimating:Z

    if-eqz v0, :cond_1

    .line 44
    const-string v0, "TAG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hidecheckbox: isAnimating Now = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/mms/animation/MsgListAnimation;->mIsAnimating:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v8

    .line 49
    .local v8, firstPos:I
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getLastVisiblePosition()I

    move-result v10

    .line 50
    .local v10, lastPos:I
    sub-int v0, v10, v8

    add-int/lit8 v11, v0, 0x1

    .line 51
    .local v11, visibleCount:I
    const/4 v6, 0x0

    .line 53
    .local v6, isLastIndex:Z
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    sub-int v12, v10, v8

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 54
    .local v9, lastItem:Landroid/view/View;
    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 55
    add-int/lit8 v11, v11, -0x1

    .line 56
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->TAG:Ljava/lang/String;

    const-string v12, "hideCheckbox lastItem is footer"

    invoke-static {v0, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_2
    const/4 v5, 0x0

    .line 60
    .local v5, checkboxView:Landroid/view/View;
    const/4 v2, 0x0

    .line 61
    .local v2, dateView:Landroid/view/View;
    const/4 v3, 0x0

    .line 62
    .local v3, threadStatus:Landroid/view/View;
    const/4 v1, 0x0

    .line 63
    .local v1, listItemView:Landroid/view/View;
    const/4 v4, 0x0

    .line 64
    .local v4, unreadCount:Landroid/view/View;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v11, :cond_0

    .line 65
    add-int/lit8 v0, v11, -0x1

    if-ne v7, v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->TAG:Ljava/lang/String;

    const-string v12, "isLastIndex = TRUE!"

    invoke-static {v0, v12}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v6, 0x1

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 70
    const v0, 0x7f0b00f5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 71
    const v0, 0x7f0b00f3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 72
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 73
    const v0, 0x7f0b00f2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 75
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    move-object v0, p0

    .line 76
    invoke-direct/range {v0 .. v7}, Lcom/android/mms/animation/MsgListAnimation;->hideCheckBoxAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZI)V

    .line 64
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public setLayout(Landroid/widget/LinearLayout;Lcom/sec/android/touchwiz/widget/TwCheckBox;Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 0
    .parameter "selectAllLayout"
    .parameter "deleteCheckbox"
    .parameter "listView"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/mms/animation/MsgListAnimation;->mSelectAllLayout:Landroid/widget/LinearLayout;

    .line 36
    iput-object p2, p0, Lcom/android/mms/animation/MsgListAnimation;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 37
    iput-object p3, p0, Lcom/android/mms/animation/MsgListAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 38
    return-void
.end method
