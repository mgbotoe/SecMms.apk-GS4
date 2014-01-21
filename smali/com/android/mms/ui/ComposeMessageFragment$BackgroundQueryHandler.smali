.class public final Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 9905
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 9906
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 9907
    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 9910
    if-eqz p1, :cond_0

    .line 9911
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9913
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 10137
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteComplete token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10138
    sparse-switch p1, :sswitch_data_0

    .line 10177
    :cond_0
    :goto_0
    const/16 v0, 0x70a

    if-ne p1, v0, :cond_6

    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_6

    .line 10179
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 10183
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    .line 10185
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    .line 10187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->removeCache(J)V

    .line 10188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mFlagDeletedAll:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8402(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 10189
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    .line 10207
    :cond_1
    :goto_1
    return-void

    .line 10141
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z
    invoke-static {v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7902(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 10142
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7602(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 10150
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->clearCheckedList()V

    .line 10151
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 10154
    if-nez p3, :cond_0

    .line 10155
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsCopyToSimMode:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10156
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7600(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10157
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10158
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z

    .line 10161
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsCopyToSimMode:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10162
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v4, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setCopyToSimModeLayout(ZZ)V

    .line 10165
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7602(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto/16 :goto_0

    .line 10167
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->refreshCheckedList()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7700(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto/16 :goto_0

    .line 10192
    :cond_6
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteComplete / token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10193
    if-ge p3, v3, :cond_7

    .line 10194
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->resetChildView()V

    .line 10195
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 10196
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7800()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7800()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10197
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "DeleteAnimation Progress Dismissed with onDeleteComplete()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10198
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7800()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 10201
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getAttachmentType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 10203
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "only draft // clear cache mConversation.getThreadId() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10204
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->removeCache(J)V

    goto/16 :goto_1

    .line 10138
    :sswitch_data_0
    .sparse-switch
        0x70a -> :sswitch_0
        0x25e4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 22
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 9918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v18

    if-nez v18, :cond_1

    .line 9919
    const-string v18, "Mms/ComposeMessageFragment"

    const-string v19, "onQueryComplete, Fragment already detached. just Finish"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9920
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->closeCursor(Landroid/database/Cursor;)V

    .line 10133
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 9924
    .restart local p2
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->saveActionbarTitleWidth()V
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7100(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 9925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->initActionBarTitle()V
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7200(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 9926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->updateActionBarText()V
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6200(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 9928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteWithAnimation:Z
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7300(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 9929
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 9932
    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 10100
    :sswitch_0
    const-string v18, "Mms/ComposeMessageFragment"

    const-string v19, "onQueryComplete(),HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 10104
    :sswitch_1
    const-string v18, "Mms/ComposeMessageFragment"

    const-string v19, "onQueryComplete(),MESSAGE_HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 10105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteMessage:Lcom/android/mms/ui/ComposeDeleteMessage;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4300(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ComposeDeleteMessage;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8300(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageListView;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/database/Cursor;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeDeleteMessage;->showDeleteConfirmDlg(Landroid/database/Cursor;)V

    .line 10106
    const-string v18, "Mms/ComposeMessageFragment"

    const-string v19, "onQueryComplete(),MESSAGE_HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9935
    :sswitch_2
    const-string v18, "Mms/ComposeMessageFragment"

    const-string v19, "onQueryComplete(),MESSAGE_LIST_QUERY_TOKEN"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 9938
    const/16 v18, 0x253a

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    move-object/from16 v18, p2

    .line 9939
    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 9940
    .local v16, tid:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v18

    cmp-long v18, v16, v18

    if-eqz v18, :cond_3

    .line 9941
    const-string v18, "Mms/ComposeMessageFragment"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onQueryComplete: msg history query result is for threadId "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", but mConversation has threadId "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " starting a new query"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 9945
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->closeCursor(Landroid/database/Cursor;)V

    .line 9946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->startMsgListQuery()V

    .line 9947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-gtz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v18

    if-nez v18, :cond_0

    .line 9948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    goto/16 :goto_0

    .line 9955
    .end local v16           #tid:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->sanityCheckConversation()V
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7400(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 9958
    const/4 v5, 0x0

    .line 9959
    .local v5, cursorCount:I
    if-eqz p3, :cond_4

    .line 9960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v19

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setListNewPosition(IILandroid/database/Cursor;)V

    .line 9961
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 9964
    :cond_4
    const/4 v8, 0x0

    .line 9965
    .local v8, isIncrese:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v18

    move/from16 v0, v18

    if-le v5, v0, :cond_5

    .line 9966
    const/4 v8, 0x1

    .line 9970
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 9971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 9973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v18

    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsCopyToSimMode:Z
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 9974
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7600(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 9975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 9976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z

    .line 9979
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsCopyToSimMode:Z
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 9980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->setCopyToSimModeLayout(ZZ)V

    .line 9983
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7602(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 9989
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->resetChildView()V

    .line 9990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 9991
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7800()Landroid/app/ProgressDialog;

    move-result-object v18

    if-eqz v18, :cond_a

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7800()Landroid/app/ProgressDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 9992
    const-string v18, "Mms/ComposeMessageFragment"

    const-string v19, "DeleteAnimation Progress Dismissed with onQueryComplete()"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9993
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7800()Landroid/app/ProgressDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/ProgressDialog;->dismiss()V

    .line 10009
    :cond_a
    if-nez v5, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v18

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v18

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7900(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 10011
    const-string v18, "Mms/ComposeMessageFragment"

    const-string v19, "Composer close condition 1"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v18

    if-nez v18, :cond_b

    .line 10013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 10014
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 10015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    goto/16 :goto_0

    .line 9985
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->refreshCheckedList()V
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7700(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto/16 :goto_1

    .line 10017
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8000(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v18

    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsOnScreen:Z
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8100(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 10018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v6

    .line 10019
    .local v6, hasDraft:Z
    if-nez v5, :cond_e

    if-nez v6, :cond_e

    .line 10020
    const-string v18, "Mms/ComposeMessageFragment"

    const-string v19, "Composer close condition 2"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 10022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 10023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 10024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    .line 10025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto/16 :goto_0

    .line 10027
    :cond_e
    if-eqz v5, :cond_14

    if-nez v6, :cond_14

    .line 10028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mHasFocus:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 10029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 10030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->resetMessage()V
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 10032
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 10040
    .end local v6           #hasDraft:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v19

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->hideMessageList(Z)V
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8200(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    .line 10045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/ContactList;->size()I

    move-result v18

    if-gtz v18, :cond_17

    .line 10046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    move-object/from16 v18, v0

    if-eqz v18, :cond_16

    .line 10047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v18

    if-nez v18, :cond_12

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v18

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->isFocused()Z

    move-result v18

    if-nez v18, :cond_12

    .line 10049
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 10069
    :cond_12
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 10073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3400(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v18

    if-eqz v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v18

    if-eqz v18, :cond_1a

    .line 10075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MessageListAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageListView;

    .line 10076
    .local v9, mTestListView:Lcom/android/mms/ui/MessageListView;
    const/4 v10, 0x0

    .line 10077
    .local v10, msgCount:I
    const/4 v15, 0x0

    .line 10078
    .local v15, reservedCnt:I
    if-eqz v9, :cond_19

    .line 10079
    invoke-virtual {v9}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v10

    .line 10080
    const/4 v13, 0x0

    .line 10081
    .local v13, msgItem:Lcom/android/mms/ui/MessageListItem;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4
    if-ge v7, v10, :cond_19

    .line 10082
    invoke-virtual {v9, v7}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #msgItem:Lcom/android/mms/ui/MessageListItem;
    check-cast v13, Lcom/android/mms/ui/MessageListItem;

    .line 10083
    .restart local v13       #msgItem:Lcom/android/mms/ui/MessageListItem;
    if-eqz v13, :cond_13

    invoke-virtual {v13}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v18

    if-eqz v18, :cond_13

    invoke-virtual {v13}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v18

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_13

    .line 10085
    add-int/lit8 v15, v15, 0x1

    .line 10081
    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 10034
    .end local v7           #i:I
    .end local v9           #mTestListView:Lcom/android/mms/ui/MessageListView;
    .end local v10           #msgCount:I
    .end local v13           #msgItem:Lcom/android/mms/ui/MessageListItem;
    .end local v15           #reservedCnt:I
    .restart local v6       #hasDraft:Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->convertToNewComposerModeIfNeeded(I)V

    goto/16 :goto_2

    .line 10037
    .end local v6           #hasDraft:Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->convertToNewComposerModeIfNeeded(I)V

    goto/16 :goto_2

    .line 10053
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    .line 10054
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v18

    if-nez v18, :cond_12

    .line 10055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->requestFocus()Z

    goto/16 :goto_3

    .line 10061
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-eqz v18, :cond_12

    .line 10064
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 10065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_3

    .line 10089
    .restart local v9       #mTestListView:Lcom/android/mms/ui/MessageListView;
    .restart local v10       #msgCount:I
    .restart local v15       #reservedCnt:I
    :cond_19
    if-eqz v8, :cond_1a

    .line 10090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v18, v0

    sub-int v19, v5, v15

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    .line 10095
    .end local v9           #mTestListView:Lcom/android/mms/ui/MessageListView;
    .end local v10           #msgCount:I
    .end local v15           #reservedCnt:I
    :cond_1a
    const-string v18, "Mms/ComposeMessageFragment"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onQueryComplete(),MESSAGE_LIST_QUERY_TOKEN, mMsgListAdapter.getCount()="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "animationIdx="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " threadID = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    check-cast p2, Ljava/lang/Long;

    .end local p2
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10110
    .end local v5           #cursorCount:I
    .end local v8           #isIncrese:Z
    .restart local p2
    :sswitch_3
    const-string v18, "Mms/ComposeMessageFragment"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "cursor.getCount() = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10113
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 10115
    :cond_1b
    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 10116
    .local v11, msgId:J
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 10117
    .local v14, msgType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v12, v14}, Lcom/android/mms/ui/MessageListAdapter;->setChecked(JLjava/lang/String;)V

    .line 10118
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-nez v18, :cond_1b

    .line 10120
    .end local v11           #msgId:J
    .end local v14           #msgType:Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MessageListAdapter;->onContentChanged()V

    .line 10121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v4

    .line 10122
    .local v4, checkedCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v18

    move/from16 v0, v18

    if-ne v4, v0, :cond_1d

    .line 10123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 10127
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->updateActionBarText()V
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6200(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto/16 :goto_0

    .line 10125
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v18, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_5

    .line 9932
    nop

    :sswitch_data_0
    .sparse-switch
        0x70b -> :sswitch_0
        0x2537 -> :sswitch_2
        0x2538 -> :sswitch_1
        0x2539 -> :sswitch_3
        0x253a -> :sswitch_2
    .end sparse-switch
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 10211
    packed-switch p1, :pswitch_data_0

    .line 10229
    :cond_0
    :goto_0
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateComplete / token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10230
    if-ge p3, v3, :cond_1

    .line 10231
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->resetChildView()V

    .line 10232
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 10233
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7800()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7800()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10234
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "DeleteAnimation Progress Dismissed with onDeleteComplete()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10235
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7800()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 10238
    :cond_1
    return-void

    .line 10213
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7602(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 10214
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->clearCheckedList()V

    .line 10215
    if-nez p3, :cond_0

    .line 10216
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10217
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7600(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10218
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z

    .line 10219
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7602(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto :goto_0

    .line 10221
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->refreshCheckedList()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7700(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0

    .line 10211
    :pswitch_data_0
    .packed-switch 0x25e5
        :pswitch_0
    .end packed-switch
.end method
