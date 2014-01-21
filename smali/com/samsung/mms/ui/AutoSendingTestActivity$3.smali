.class Lcom/samsung/mms/ui/AutoSendingTestActivity$3;
.super Ljava/lang/Object;
.source "AutoSendingTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/ui/AutoSendingTestActivity;->showDialogPassword(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

.field final synthetic val$editField:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$3;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    iput-object p2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$3;->val$editField:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 293
    invoke-static {}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$500()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$500()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$3;->val$editField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "guava"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$3;->val$editField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\ufffd\ufffd\ufffd\u01b9\ufffd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :cond_0
    invoke-static {}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$500()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 299
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$502(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 300
    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$3;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    #getter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$600(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 303
    :cond_1
    return-void
.end method
