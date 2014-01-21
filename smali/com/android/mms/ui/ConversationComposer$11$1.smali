.class Lcom/android/mms/ui/ConversationComposer$11$1;
.super Ljava/lang/Object;
.source "ConversationComposer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationComposer$11;->onEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationComposer$11;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer$11;)V
    .locals 0
    .parameter

    .prologue
    .line 2094
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$11$1;->this$1:Lcom/android/mms/ui/ConversationComposer$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2096
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$11$1;->this$1:Lcom/android/mms/ui/ConversationComposer$11;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$11;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #calls: Lcom/android/mms/ui/ConversationComposer;->composerRequestsClosing()V
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$500(Lcom/android/mms/ui/ConversationComposer;)V

    .line 2097
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$11$1;->this$1:Lcom/android/mms/ui/ConversationComposer$11;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$11;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2099
    .local v0, actionbar:Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$11$1;->this$1:Lcom/android/mms/ui/ConversationComposer$11;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$11;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$600(Lcom/android/mms/ui/ConversationComposer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2100
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 2101
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$11$1;->this$1:Lcom/android/mms/ui/ConversationComposer$11;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$11;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2102
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$11$1;->this$1:Lcom/android/mms/ui/ConversationComposer$11;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$11;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->reInitComposerActionbar()V

    .line 2106
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$11$1;->this$1:Lcom/android/mms/ui/ConversationComposer$11;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$11;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2107
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$11$1;->this$1:Lcom/android/mms/ui/ConversationComposer$11;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$11;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #calls: Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$700(Lcom/android/mms/ui/ConversationComposer;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 2108
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$11$1;->this$1:Lcom/android/mms/ui/ConversationComposer$11;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$11;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->initListItemSelectedThreadId()V

    .line 2109
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2112
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$11$1;->this$1:Lcom/android/mms/ui/ConversationComposer$11;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer$11;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->closeSearchView(Z)V

    .line 2114
    :cond_2
    return-void
.end method
