.class Lcom/android/mms/ui/CMASUserPromptDialog$1;
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
    .line 66
    iput-object p1, p0, Lcom/android/mms/ui/CMASUserPromptDialog$1;->this$0:Lcom/android/mms/ui/CMASUserPromptDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/CMASUserPromptDialog$1;->this$0:Lcom/android/mms/ui/CMASUserPromptDialog;

    #calls: Lcom/android/mms/ui/CMASUserPromptDialog;->launchCmasSetting()V
    invoke-static {v0}, Lcom/android/mms/ui/CMASUserPromptDialog;->access$000(Lcom/android/mms/ui/CMASUserPromptDialog;)V

    .line 70
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 71
    iget-object v0, p0, Lcom/android/mms/ui/CMASUserPromptDialog$1;->this$0:Lcom/android/mms/ui/CMASUserPromptDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/CMASUserPromptDialog;->sDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/CMASUserPromptDialog;->access$102(Lcom/android/mms/ui/CMASUserPromptDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 72
    iget-object v0, p0, Lcom/android/mms/ui/CMASUserPromptDialog$1;->this$0:Lcom/android/mms/ui/CMASUserPromptDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASUserPromptDialog;->finish()V

    .line 73
    return-void
.end method
