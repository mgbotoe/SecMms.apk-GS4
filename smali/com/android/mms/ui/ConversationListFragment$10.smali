.class Lcom/android/mms/ui/ConversationListFragment$10;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->onPrepareListOptionsMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$10;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 1166
    if-nez p2, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$10;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListFragment;->conversationComposerActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 1172
    :goto_0
    return-void

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$10;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListFragment;->immConv:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$10;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListFragment;->searchPlate:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1170
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$10;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListFragment;->conversationComposerActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/SipHandler;->showSip()V

    goto :goto_0
.end method
