.class Lcom/android/mms/ui/CMASDialog_single_top$3;
.super Ljava/lang/Object;
.source "CMASDialog_single_top.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CMASDialog_single_top;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASDialog_single_top;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CMASDialog_single_top;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/mms/ui/CMASDialog_single_top$3;->this$0:Lcom/android/mms/ui/CMASDialog_single_top;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog_single_top$3;->this$0:Lcom/android/mms/ui/CMASDialog_single_top;

    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog_single_top$3;->this$0:Lcom/android/mms/ui/CMASDialog_single_top;

    #getter for: Lcom/android/mms/ui/CMASDialog_single_top;->messageUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/ui/CMASDialog_single_top;->access$100(Lcom/android/mms/ui/CMASDialog_single_top;)Landroid/net/Uri;

    move-result-object v1

    #calls: Lcom/android/mms/ui/CMASDialog_single_top;->markAsRead(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/CMASDialog_single_top;->access$200(Lcom/android/mms/ui/CMASDialog_single_top;Landroid/net/Uri;)V

    .line 200
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 201
    invoke-static {}, Lcom/android/mms/transaction/CmasReceiverService;->removeCmasdialog()V

    .line 202
    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog_single_top$3;->this$0:Lcom/android/mms/ui/CMASDialog_single_top;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/CMASDialog_single_top;->sDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/CMASDialog_single_top;->access$302(Lcom/android/mms/ui/CMASDialog_single_top;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 203
    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog_single_top$3;->this$0:Lcom/android/mms/ui/CMASDialog_single_top;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASDialog_single_top;->finish()V

    .line 204
    return-void
.end method
