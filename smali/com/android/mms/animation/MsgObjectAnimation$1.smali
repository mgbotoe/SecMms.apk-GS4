.class final Lcom/android/mms/animation/MsgObjectAnimation$1;
.super Ljava/lang/Object;
.source "MsgObjectAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/animation/MsgObjectAnimation;->concatenatedAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$secondAni:Landroid/view/animation/Animation;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/mms/animation/MsgObjectAnimation$1;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/mms/animation/MsgObjectAnimation$1;->val$secondAni:Landroid/view/animation/Animation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/mms/animation/MsgObjectAnimation$1;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/animation/MsgObjectAnimation$1;->val$secondAni:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 27
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 23
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 21
    return-void
.end method
