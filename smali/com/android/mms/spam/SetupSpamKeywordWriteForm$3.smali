.class Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;
.super Ljava/lang/Object;
.source "SetupSpamKeywordWriteForm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->showKeyWordConfirmDialog(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, -0x1

    .line 425
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$000(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, insertKeyword:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->update_MODE:Z
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$100(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 428
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    #calls: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->insert(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$200(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;Ljava/lang/String;)V

    .line 429
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    invoke-virtual {v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 430
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "NumberCount"

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    #calls: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getSpamWordData()I
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$300(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    invoke-virtual {v2, v4, v1}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->setResult(ILandroid/content/Intent;)V

    .line 432
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    invoke-virtual {v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->finish()V

    .line 441
    :goto_0
    return-void

    .line 435
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    #calls: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->updateSapmKeyWord()V
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$400(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    .line 436
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    invoke-virtual {v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 437
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "NumberCount"

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    #calls: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getSpamWordData()I
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$300(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    invoke-virtual {v2, v4, v1}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->setResult(ILandroid/content/Intent;)V

    .line 439
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    invoke-virtual {v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->finish()V

    goto :goto_0
.end method
