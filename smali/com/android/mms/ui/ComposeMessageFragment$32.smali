.class Lcom/android/mms/ui/ComposeMessageFragment$32;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3346
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginDeleteAnimation()V
    .locals 0

    .prologue
    .line 3349
    return-void
.end method

.method public onCancelDeleteAnimation()V
    .locals 0

    .prologue
    .line 3353
    return-void
.end method

.method public onEndDeleteAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3359
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getMultiMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 3360
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z

    .line 3364
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isCopyToSimMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3365
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setCopyToSimModeLayout(ZZ)V

    .line 3367
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsCombFwdMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3368
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelectionModeLayout(IZ)V

    .line 3371
    :cond_2
    return-void
.end method

.method public onExitDeleteAnimation()V
    .locals 0

    .prologue
    .line 3375
    return-void
.end method
