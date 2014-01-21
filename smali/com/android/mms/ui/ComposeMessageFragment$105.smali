.class Lcom/android/mms/ui/ComposeMessageFragment$105;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showSmileyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$a:Landroid/widget/SimpleAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/SimpleAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10316
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$105;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$105;->val$a:Landroid/widget/SimpleAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v7, 0x21

    .line 10319
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$105;->val$a:Landroid/widget/SimpleAdapter;

    invoke-virtual {v4, p2}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 10320
    .local v1, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "text"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10323
    .local v2, smiley:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 10324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10326
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$105;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10328
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$105;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerAttachmentHandler:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$105;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v5}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/android/mms/util/HandleComposerAttachment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    .line 10329
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$105;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$105;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 10351
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 10352
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 10353
    :cond_1
    return-void

    .line 10330
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$105;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$105;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 10331
    const/4 v0, 0x0

    .line 10332
    .local v0, currentSubjectLength:I
    const/4 v3, 0x0

    .line 10334
    .local v3, smileyLength:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLimitOnMmsSubjectByByte()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10335
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$105;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/TelephonyUtils;->getByteSize(Ljava/lang/String;)I

    move-result v0

    .line 10336
    invoke-static {v2}, Lcom/android/mms/util/TelephonyUtils;->getByteSize(Ljava/lang/String;)I

    move-result v3

    .line 10343
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$105;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v5

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->isUnderLength(III)Z
    invoke-static {v4, v0, v3, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8500(Lcom/android/mms/ui/ComposeMessageFragment;III)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10344
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$105;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerAttachmentHandler:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$105;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/android/mms/util/HandleComposerAttachment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    goto :goto_0

    .line 10338
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$105;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 10339
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1

    .line 10347
    .end local v0           #currentSubjectLength:I
    .end local v3           #smileyLength:I
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$105;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 10348
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$105;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$105;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    goto :goto_0
.end method
