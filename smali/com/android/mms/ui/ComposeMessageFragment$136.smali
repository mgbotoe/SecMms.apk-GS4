.class Lcom/android/mms/ui/ComposeMessageFragment$136;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Lcom/android/mms/ui/OnPrivateIMECommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 14611
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$136;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 12
    .parameter "action"
    .parameter "data"

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 14615
    if-eqz p2, :cond_0

    .line 14618
    const-string v8, "imeAction:longPress"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 14619
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$136;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v8}, Lcom/android/mms/ui/RecipientsEditor;->length()I

    move-result v8

    const/16 v9, 0x14

    if-le v8, v9, :cond_1

    .line 14679
    :cond_0
    :goto_0
    return v11

    .line 14622
    :cond_1
    const/16 v7, 0x30

    .line 14623
    .local v7, zeroLong:I
    const-string v8, "imeAction:longPress"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 14624
    .local v0, keyCode:I
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$136;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v8}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 14626
    .local v4, str:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$136;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mNationalPrefixEnable:Z
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 14627
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$136;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v8}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionStart()I

    move-result v8

    if-ne v8, v11, :cond_4

    if-ne v7, v0, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "+"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 14628
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$136;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mNationalPrefixNum:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11600(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/lang/String;

    move-result-object v5

    .line 14629
    .local v5, strTemp:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 14630
    .local v6, subStr:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_2

    .line 14631
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$136;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mNationalPrefixNum:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11600(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 14632
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRecipientLength()I

    move-result v1

    .line 14633
    .local v1, nMaxAddressLen:I
    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v1, :cond_3

    .line 14634
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$136;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v8, v6}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14639
    :cond_3
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$136;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v8, v5}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 14640
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$136;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$136;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v9}, Lcom/android/mms/ui/RecipientsEditor;->length()I

    move-result v9

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$136;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mNationalPrefixNum:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11600(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/mms/ui/RecipientsEditor;->setSelection(I)V

    goto/16 :goto_0

    .line 14645
    .end local v1           #nMaxAddressLen:I
    .end local v5           #strTemp:Ljava/lang/String;
    .end local v6           #subStr:Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 14646
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$136;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v8}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionStart()I

    move-result v3

    .line 14647
    .local v3, selection:I
    if-ne v7, v0, :cond_9

    if-eq v11, v3, :cond_9

    .line 14648
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v4, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 14649
    .restart local v5       #strTemp:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v3, :cond_5

    .line 14650
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 14652
    :cond_5
    move-object v4, v5

    .line 14657
    .end local v5           #strTemp:Ljava/lang/String;
    :cond_6
    :goto_1
    const-string v8, "+"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_7

    .line 14658
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 14662
    .end local v3           #selection:I
    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-gt v8, v9, :cond_0

    .line 14663
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 14664
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 14665
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$136;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v8, v4}, Lcom/android/mms/ui/MessageUtils;->searchShortStr(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 14666
    .local v2, searchShortList:Lcom/android/mms/data/ContactList;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 14667
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$136;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v8, :cond_8

    .line 14668
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$136;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8, v2}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 14670
    :cond_8
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$136;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8, v2, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V

    .line 14671
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$136;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {v8}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 14653
    .end local v2           #searchShortList:Lcom/android/mms/data/ContactList;
    .restart local v3       #selection:I
    :cond_9
    if-ne v7, v0, :cond_6

    if-ne v11, v3, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_6

    const/4 v8, 0x2

    invoke-virtual {v4, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 14654
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method
