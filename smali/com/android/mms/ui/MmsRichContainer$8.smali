.class Lcom/android/mms/ui/MmsRichContainer$8;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsRichContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsRichContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 1689
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$8;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 1693
    if-eqz p2, :cond_2

    .line 1694
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$8;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v5}, Lcom/android/mms/ui/MmsRichContainer;->access$000(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 1696
    .local v3, mRecipeints:Lcom/android/mms/data/ContactList;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 1697
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 1698
    .local v4, recipient:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1700
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1701
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_2

    .line 1702
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1703
    .local v1, data:Landroid/os/Bundle;
    move-object v0, v4

    .line 1704
    .local v0, UniqueID:Ljava/lang/String;
    const-string v5, "ContextAwareUniqueID"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    const-string v5, "COMMAND_CONTEXT_AWARE"

    invoke-virtual {v2, p1, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1710
    .end local v0           #UniqueID:Ljava/lang/String;
    .end local v1           #data:Landroid/os/Bundle;
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v3           #mRecipeints:Lcom/android/mms/data/ContactList;
    .end local v4           #recipient:Ljava/lang/String;
    :cond_2
    return-void
.end method
