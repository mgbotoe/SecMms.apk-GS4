.class Lcom/samsung/mms/util/SaveRestoreOperation$8;
.super Ljava/lang/Object;
.source "SaveRestoreOperation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 493
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$8;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 495
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$8;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$300(Lcom/samsung/mms/util/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 496
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$8;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v1, v1, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 497
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 498
    return-void
.end method
