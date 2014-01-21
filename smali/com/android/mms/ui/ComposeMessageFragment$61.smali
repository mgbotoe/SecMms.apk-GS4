.class Lcom/android/mms/ui/ComposeMessageFragment$61;
.super Landroid/os/Handler;
.source "ComposeMessageFragment.java"


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
    .line 6280
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6283
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v4}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-nez v4, :cond_1

    .line 6320
    :cond_0
    :goto_0
    return-void

    .line 6287
    :cond_1
    const/4 v0, 0x0

    .line 6289
    .local v0, recipients:Ljava/lang/String;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 6291
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto :goto_0

    .line 6294
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #recipients:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 6295
    .restart local v0       #recipients:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 6296
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/RecipientsEditor;->setSelection(I)V

    goto :goto_0

    .line 6299
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #recipients:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 6300
    .restart local v0       #recipients:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v4, v0}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 6302
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6303
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_0

    .line 6305
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4, v0}, Lcom/android/mms/data/WorkingMessage;->setRecipients(Ljava/lang/String;)V

    .line 6306
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    .line 6307
    .local v1, showErrorDialog:Z
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZZ)Z
    invoke-static {v4, v2, v1, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3200(Lcom/android/mms/ui/ComposeMessageFragment;ZZZ)Z

    .line 6308
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_0

    .end local v1           #showErrorDialog:Z
    :cond_3
    move v1, v3

    .line 6306
    goto :goto_1

    .line 6313
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #recipients:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 6314
    .restart local v0       #recipients:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 6315
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/RecipientsEditor;->setSelection(I)V

    goto :goto_0

    .line 6289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
