.class Lcom/android/mms/ui/CMASUserPromptDialog$2;
.super Ljava/lang/Object;
.source "CMASUserPromptDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CMASUserPromptDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASUserPromptDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CMASUserPromptDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/mms/ui/CMASUserPromptDialog$2;->this$0:Lcom/android/mms/ui/CMASUserPromptDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/CMASUserPromptDialog$2;->this$0:Lcom/android/mms/ui/CMASUserPromptDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASUserPromptDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/CMASUserPromptDialog$2;->this$0:Lcom/android/mms/ui/CMASUserPromptDialog;

    const v2, 0x7f0c036b

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/CMASUserPromptDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 80
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/CMASUserPromptDialog$2;->this$0:Lcom/android/mms/ui/CMASUserPromptDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/CMASUserPromptDialog;->sDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/CMASUserPromptDialog;->access$102(Lcom/android/mms/ui/CMASUserPromptDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/CMASUserPromptDialog$2;->this$0:Lcom/android/mms/ui/CMASUserPromptDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASUserPromptDialog;->finish()V

    .line 83
    return-void
.end method