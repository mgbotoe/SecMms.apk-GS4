.class Lcom/android/mms/ui/ComposeMessageFragment$138;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->networkWarningDialogAndSend(Z)V
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
    .line 15182
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$138;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 15185
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$138;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mNetworkWarningDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12002(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 15187
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDocomoAccountAsDefault()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15189
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$138;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15190
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$138;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 15193
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$138;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V

    .line 15194
    return-void
.end method
