.class Lcom/android/mms/ui/ConversationListFragment$25;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
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
    .line 2367
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2369
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    .line 2370
    sparse-switch p2, :sswitch_data_0

    .line 2417
    :cond_0
    :goto_0
    return v4

    .line 2372
    :sswitch_0
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$2500(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/MsgSweepActionListView;->getSelectedItemPosition()I

    move-result v7

    #calls: Lcom/android/mms/ui/ConversationListFragment;->getConversation(I)Lcom/android/mms/data/Conversation;
    invoke-static {v6, v7}, Lcom/android/mms/ui/ConversationListFragment;->access$2900(Lcom/android/mms/ui/ConversationListFragment;I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 2373
    .local v0, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 2375
    .local v3, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-lt v6, v5, :cond_0

    .line 2377
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-eq v6, v5, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-le v6, v5, :cond_0

    .line 2378
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    move v4, v5

    .line 2379
    goto :goto_0

    .line 2385
    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    .end local v3           #recipients:Lcom/android/mms/data/ContactList;
    :sswitch_1
    const-string v4, "Mms/ConversationListFragment"

    const-string v6, "mThreadListKeyListener.onKey(),KEYCODE_DEL"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$3000(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getSelectedItemId()J

    move-result-wide v1

    .line 2388
    .local v1, id:J
    const-wide/16 v6, 0x0

    cmp-long v4, v1, v6

    if-lez v4, :cond_2

    .line 2389
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I
    invoke-static {v4, v5}, Lcom/android/mms/ui/ConversationListFragment;->access$3102(Lcom/android/mms/ui/ConversationListFragment;I)I

    .line 2390
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$2600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    :cond_2
    move v4, v5

    .line 2392
    goto :goto_0

    .line 2395
    .end local v1           #id:J
    :sswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportQwertKeypad()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2402
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2403
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$2500(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MsgSweepActionListView;->getSelectedItemPosition()I

    move-result v6

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$2500(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    if-ne v6, v7, :cond_0

    .line 2404
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$2500(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    move v4, v5

    .line 2405
    goto/16 :goto_0

    .line 2412
    :sswitch_3
    const-string v4, "Mms/ConversationListFragment"

    const-string v5, "mThreadListKeyListener.onKey(),KEYCODE_DPAD_RIGHT"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationComposer;->requestFocusOnComposer()Z

    move-result v4

    goto/16 :goto_0

    .line 2370
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x14 -> :sswitch_2
        0x16 -> :sswitch_3
        0x43 -> :sswitch_1
    .end sparse-switch
.end method
