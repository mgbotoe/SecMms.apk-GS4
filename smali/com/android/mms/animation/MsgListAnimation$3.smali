.class Lcom/android/mms/animation/MsgListAnimation$3;
.super Ljava/lang/Object;
.source "MsgListAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/animation/MsgListAnimation;->createDateAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/animation/MsgListAnimation;

.field final synthetic val$date:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/mms/animation/MsgListAnimation;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/mms/animation/MsgListAnimation$3;->this$0:Lcom/android/mms/animation/MsgListAnimation;

    iput-object p2, p0, Lcom/android/mms/animation/MsgListAnimation$3;->val$date:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation$3;->val$date:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 177
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation$3;->val$date:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 178
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 173
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 170
    return-void
.end method
