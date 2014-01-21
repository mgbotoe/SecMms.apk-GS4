.class Lcom/android/mms/ui/ComposeMessageFragment$21;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


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


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2476
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2479
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 2480
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    .line 2481
    .local v1, recipients_size:I
    if-le v1, v4, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2482
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 2486
    :goto_0
    return v3

    .line 2484
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    goto :goto_0
.end method
