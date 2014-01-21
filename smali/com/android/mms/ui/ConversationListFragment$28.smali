.class Lcom/android/mms/ui/ConversationListFragment$28;
.super Landroid/os/Handler;
.source "ConversationListFragment.java"


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
    .line 3607
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$28;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 3610
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3630
    :cond_0
    :goto_0
    return-void

    .line 3615
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$28;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$5808(Lcom/android/mms/ui/ConversationListFragment;)I

    .line 3616
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$28;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->moveMsgCount:I
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$5800(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$28;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedThreadIds:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$5600(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 3617
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "Move mode will be changed to normal and Move dialog will be destroyed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3618
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$28;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->moveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$6000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3619
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$28;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->moveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$6000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 3620
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$28;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->clearCheckedList()V

    .line 3621
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$28;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    .line 3622
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$28;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/SecurityMailboxUtils;->sendMoveCompleteBroadCast(Landroid/content/Context;)V

    .line 3623
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$28;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    .line 3625
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    .line 3626
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$28;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->startFakeAsyncQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$6100(Lcom/android/mms/ui/ConversationListFragment;)V

    goto :goto_0

    .line 3610
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
