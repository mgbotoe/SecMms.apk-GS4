.class Lcom/samsung/mms/util/SaveRestoreOperation$9;
.super Ljava/lang/Object;
.source "SaveRestoreOperation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/util/SaveRestoreOperation;->showSaveFileNameDialog([JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/util/SaveRestoreOperation;


# direct methods
.method constructor <init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$9;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$9;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v0, v0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$9;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v0, v0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 508
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 510
    :cond_0
    return-void
.end method
