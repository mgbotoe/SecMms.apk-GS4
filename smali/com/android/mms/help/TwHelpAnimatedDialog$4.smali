.class Lcom/android/mms/help/TwHelpAnimatedDialog$4;
.super Ljava/lang/Object;
.source "TwHelpAnimatedDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/help/TwHelpAnimatedDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$4;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$4;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-static {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->access$108(Lcom/android/mms/help/TwHelpAnimatedDialog;)I

    .line 204
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$4;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    #getter for: Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I
    invoke-static {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->access$100(Lcom/android/mms/help/TwHelpAnimatedDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$4;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    #getter for: Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot:Ljava/util/List;
    invoke-static {v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->access$200(Lcom/android/mms/help/TwHelpAnimatedDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$4;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    #getter for: Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->access$600(Lcom/android/mms/help/TwHelpAnimatedDialog;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$4;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    #getter for: Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot:Ljava/util/List;
    invoke-static {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->access$200(Lcom/android/mms/help/TwHelpAnimatedDialog;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$4;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    #getter for: Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I
    invoke-static {v2}, Lcom/android/mms/help/TwHelpAnimatedDialog;->access$100(Lcom/android/mms/help/TwHelpAnimatedDialog;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog$4;->this$0:Lcom/android/mms/help/TwHelpAnimatedDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I
    invoke-static {v0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->access$102(Lcom/android/mms/help/TwHelpAnimatedDialog;I)I

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 199
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 193
    return-void
.end method
