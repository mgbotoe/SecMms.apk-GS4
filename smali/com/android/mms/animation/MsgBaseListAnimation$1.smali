.class Lcom/android/mms/animation/MsgBaseListAnimation$1;
.super Ljava/lang/Object;
.source "MsgBaseListAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/animation/MsgBaseListAnimation;->setShowDeleteModeAnim(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/animation/MsgBaseListAnimation;


# direct methods
.method constructor <init>(Lcom/android/mms/animation/MsgBaseListAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/mms/animation/MsgBaseListAnimation$1;->this$0:Lcom/android/mms/animation/MsgBaseListAnimation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation$1;->this$0:Lcom/android/mms/animation/MsgBaseListAnimation;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    .line 84
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 80
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation$1;->this$0:Lcom/android/mms/animation/MsgBaseListAnimation;

    iget-object v0, v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mSelectAllLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    return-void
.end method
