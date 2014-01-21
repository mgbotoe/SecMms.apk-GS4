.class Lcom/android/mms/ui/ComposeMessageFragment$45;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V
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
    .line 4769
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$45;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "KeyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 4772
    const/16 v0, 0xeb

    if-ne p2, v0, :cond_0

    .line 4773
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$45;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDialogflag:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4702(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 4774
    :cond_0
    return v1
.end method
