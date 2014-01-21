.class Lcom/android/mms/ui/ComposeMessageFragment$20;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initRecipientsEditor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$addressAdapter:Lcom/android/mms/ui/RecipientsAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/RecipientsAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2421
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->val$addressAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "s"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2431
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2432
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->getNumbers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/mms/data/WorkingMessage;->checkIfAddressContainsEmailToMms(Ljava/util/List;Ljava/lang/CharSequence;)Z

    .line 2435
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePlusButtonOnRecipient()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2436
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2437
    .local v0, seq:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2438
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->m_BtnReceiverAdd:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2439
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->m_BtnReceiverAdd:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2440
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 2442
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->val$addressAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    iget v1, v1, Lcom/android/mms/ui/RecipientsAdapter;->mRecipientsAdapterCount:I

    if-le v1, v4, :cond_3

    .line 2443
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->m_BtnReceiverAdd:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0126

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2448
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2449
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2457
    .end local v0           #seq:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 2445
    .restart local v0       #seq:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->m_BtnReceiverAdd:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2451
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->m_BtnReceiverAdd:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2452
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->m_BtnReceiverAdd:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2453
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2454
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 2423
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 2426
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2427
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$20;->val$addressAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/RecipientsAdapter;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    .line 2429
    :cond_0
    return-void
.end method
