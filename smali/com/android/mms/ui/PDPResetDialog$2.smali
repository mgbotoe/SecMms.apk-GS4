.class Lcom/android/mms/ui/PDPResetDialog$2;
.super Ljava/lang/Object;
.source "PDPResetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/PDPResetDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/PDPResetDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/PDPResetDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/mms/ui/PDPResetDialog$2;->this$0:Lcom/android/mms/ui/PDPResetDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 43
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/PDPResetDialog$2;->this$0:Lcom/android/mms/ui/PDPResetDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/PDPResetDialog;->sDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/PDPResetDialog;->access$102(Lcom/android/mms/ui/PDPResetDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/PDPResetDialog$2;->this$0:Lcom/android/mms/ui/PDPResetDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/PDPResetDialog;->finish()V

    .line 46
    return-void
.end method
