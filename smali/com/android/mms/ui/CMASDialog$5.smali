.class Lcom/android/mms/ui/CMASDialog$5;
.super Ljava/lang/Object;
.source "CMASDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CMASDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CMASDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/mms/ui/CMASDialog$5;->this$0:Lcom/android/mms/ui/CMASDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog$5;->this$0:Lcom/android/mms/ui/CMASDialog;

    #calls: Lcom/android/mms/ui/CMASDialog;->checkLockScreenOn()Z
    invoke-static {v0}, Lcom/android/mms/ui/CMASDialog;->access$400(Lcom/android/mms/ui/CMASDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog$5;->this$0:Lcom/android/mms/ui/CMASDialog;

    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog$5;->this$0:Lcom/android/mms/ui/CMASDialog;

    #getter for: Lcom/android/mms/ui/CMASDialog;->messageUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/ui/CMASDialog;->access$100(Lcom/android/mms/ui/CMASDialog;)Landroid/net/Uri;

    move-result-object v1

    #calls: Lcom/android/mms/ui/CMASDialog;->markAsRead(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/CMASDialog;->access$200(Lcom/android/mms/ui/CMASDialog;Landroid/net/Uri;)V

    .line 255
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 257
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasMessagePriorityCheckFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog$5;->this$0:Lcom/android/mms/ui/CMASDialog;

    invoke-static {v0}, Lcom/android/mms/transaction/CmasReceiverService;->showNextCMASDialog(Landroid/content/Context;)V

    .line 259
    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog$5;->this$0:Lcom/android/mms/ui/CMASDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/ui/CMASDialog;->mDialogHandled:Z

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog$5;->this$0:Lcom/android/mms/ui/CMASDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/CMASDialog;->sDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/CMASDialog;->access$302(Lcom/android/mms/ui/CMASDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 263
    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog$5;->this$0:Lcom/android/mms/ui/CMASDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASDialog;->finish()V

    .line 264
    return-void
.end method
