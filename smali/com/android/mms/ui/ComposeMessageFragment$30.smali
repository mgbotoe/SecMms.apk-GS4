.class Lcom/android/mms/ui/ComposeMessageFragment$30;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;


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
    .line 2987
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;ILjava/lang/Object;)V
    .locals 4
    .parameter "v"
    .parameter "itemIndex"
    .parameter "data"

    .prologue
    .line 2991
    const-string v1, ""

    .local v1, selectedItem:Ljava/lang/String;
    move-object v0, p3

    .line 2992
    check-cast v0, Landroid/os/Bundle;

    .line 2993
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-eqz v0, :cond_1

    .line 2996
    :cond_0
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2999
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 3000
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 3001
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/RecipientsEditor;->setSelection(I)V

    .line 3002
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    .line 3003
    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3004
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v2}, Lcom/android/mms/ui/SipHandler;->showSip()V

    .line 3007
    :cond_1
    return-void
.end method
