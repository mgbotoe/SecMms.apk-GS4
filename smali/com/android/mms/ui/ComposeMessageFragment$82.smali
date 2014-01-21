.class Lcom/android/mms/ui/ComposeMessageFragment$82;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mResult:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 7495
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 7532
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7533
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7534
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v0, v5}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZZ)V

    .line 7539
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerAttachmentHandler:Lcom/android/mms/util/HandleComposerAttachment;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->mResult:I

    const v2, 0x7f0c015f

    const/4 v3, 0x0

    const/4 v4, 0x3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 7541
    return-void

    :cond_1
    move v0, v5

    .line 7534
    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 7499
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 7506
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onUserInteraction()V

    .line 7508
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 7509
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mGroupSnippetText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6002(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 7513
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->updateCounter(Ljava/lang/CharSequence;III)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->mResult:I

    .line 7514
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasOnlySignatureText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7515
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTranslatorMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateModeForComposer()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateBtnMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateModeForComposer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7519
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setTranslateBtnMode(Z)V

    .line 7523
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->delayedUpdateSendButtonState(I)V

    .line 7526
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$82;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setAttachmentList(Lcom/android/mms/model/SlideshowModel;Z)V

    .line 7527
    return-void
.end method
