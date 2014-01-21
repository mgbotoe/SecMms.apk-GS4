.class public abstract Lcom/android/mms/animation/MsgBaseListAnimation;
.super Ljava/lang/Object;
.source "MsgBaseListAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;
    }
.end annotation


# static fields
.field public static mAleadyShowAnimation:Z


# instance fields
.field protected mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mHeightOfTitle:I

.field protected mHideSelectAllAnim:Landroid/view/animation/Animation;

.field protected mIsAnimating:Z

.field protected mListView:Landroid/widget/ListView;

.field protected mOnDelAnimListener:Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;

.field protected mSelectAllLayout:Landroid/widget/LinearLayout;

.field protected mShowSelectAllAnim:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mAleadyShowAnimation:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    .line 15
    iput-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    .line 22
    iput-boolean v1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mIsAnimating:Z

    .line 142
    iput-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mOnDelAnimListener:Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;

    .line 25
    iput v1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHeightOfTitle:I

    .line 26
    return-void
.end method


# virtual methods
.method public getTitleHeight()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHeightOfTitle:I

    return v0
.end method

.method public abstract hidecheckbox()V
.end method

.method public resetAnimationFlag()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mAleadyShowAnimation:Z

    .line 138
    return-void
.end method

.method public setDeleteModeLayout(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "deleteModeAnimation"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 46
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/mms/animation/MsgBaseListAnimation;->setShowDeleteModeAnim(Landroid/view/animation/Animation;)V

    .line 49
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    .line 55
    :cond_1
    return-void
.end method

.method protected setHideDeleteModeAnim(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "hideSelectAllAnim"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    .line 91
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 92
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/mms/animation/MsgBaseListAnimation$2;

    invoke-direct {v1, p0}, Lcom/android/mms/animation/MsgBaseListAnimation$2;-><init>(Lcom/android/mms/animation/MsgBaseListAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 104
    return-void
.end method

.method public setLayout(Landroid/widget/LinearLayout;Lcom/sec/android/touchwiz/widget/TwCheckBox;Landroid/widget/ListView;)V
    .locals 0
    .parameter "selectAllLayout"
    .parameter "deleteCheckbox"
    .parameter "listView"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mSelectAllLayout:Landroid/widget/LinearLayout;

    .line 39
    iput-object p2, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 40
    iput-object p3, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mListView:Landroid/widget/ListView;

    .line 41
    return-void
.end method

.method protected setListItemSlideEffectDone()V
    .locals 1

    .prologue
    .line 131
    sget-boolean v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mAleadyShowAnimation:Z

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mAleadyShowAnimation:Z

    .line 134
    :cond_0
    return-void
.end method

.method public setNormalModeLayout(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "normalModeAnimation"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/mms/animation/MsgBaseListAnimation;->setHideDeleteModeAnim(Landroid/view/animation/Animation;)V

    .line 61
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgBaseListAnimation;->resetAnimationFlag()V

    .line 68
    return-void
.end method

.method public setOnDeleteAnimation(Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;)V
    .locals 0
    .parameter "onDelAnimTotalListener"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mOnDelAnimListener:Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;

    .line 147
    return-void
.end method

.method protected setShowDeleteModeAnim(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "showSelectAllAnim"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    .line 73
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 74
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/mms/animation/MsgBaseListAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/mms/animation/MsgBaseListAnimation$1;-><init>(Lcom/android/mms/animation/MsgBaseListAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 86
    return-void
.end method

.method public setTitleHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHeightOfTitle:I

    .line 30
    return-void
.end method

.method public showCheckBoxAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "checkboxView"
    .parameter "checkBoxAnim"

    .prologue
    .line 108
    sget-boolean v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mAleadyShowAnimation:Z

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/android/mms/animation/MsgBaseListAnimation$3;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/animation/MsgBaseListAnimation$3;-><init>(Lcom/android/mms/animation/MsgBaseListAnimation;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
