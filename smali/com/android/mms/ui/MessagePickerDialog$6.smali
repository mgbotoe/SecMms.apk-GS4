.class Lcom/android/mms/ui/MessagePickerDialog$6;
.super Ljava/lang/Object;
.source "MessagePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagePickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagePickerDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagePickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/mms/ui/MessagePickerDialog$6;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 234
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    const-string v2, "clipboardEx"

    invoke-virtual {v1, v2}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 235
    .local v0, clipExMgr:Landroid/sec/clipboard/ClipboardExManager;
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog$6;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessagePickerDialog;->dismiss()V

    .line 239
    return-void
.end method
