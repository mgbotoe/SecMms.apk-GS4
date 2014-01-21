.class Lcom/android/mms/ui/ComposeMessageFragment$3;
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
    .line 831
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 834
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 835
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "mMessageListItemHandler Fragment was detached"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    const/4 v11, 0x0

    .line 840
    .local v11, type:Ljava/lang/String;
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMessageListItemHandler: msg.what = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 940
    :pswitch_0
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 843
    :pswitch_1
    const-string v11, "mms"

    .line 944
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v1, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    invoke-static {v2, v11, v4, v5, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$900(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    .line 945
    .local v3, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v3, :cond_0

    .line 946
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    iget-object v6, v3, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 947
    .local v0, messageOptions:Lcom/android/mms/ui/MessageOptions;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 948
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_0

    .line 846
    .end local v0           #messageOptions:Lcom/android/mms/ui/MessageOptions;
    .end local v3           #msgItem:Lcom/android/mms/ui/MessageItem;
    :pswitch_2
    const-string v11, "sms"

    .line 847
    goto :goto_1

    .line 849
    :pswitch_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 850
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object v7, v1

    check-cast v7, [Ljava/lang/String;

    .line 851
    .local v7, data:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v13, v7, v1

    .line 852
    .local v13, url:Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v10, v7, v1

    .line 853
    .local v10, text:Ljava/lang/String;
    const-string v1, "geo:"

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 854
    invoke-static {v13}, Lcom/android/mms/util/PackageInfo;->getIntentForUrl(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 855
    .local v8, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 857
    .end local v8           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v13, v10}, Lcom/android/mms/ui/MessageUtils;->showLinksContextMenu(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 865
    .end local v7           #data:[Ljava/lang/String;
    .end local v10           #text:Ljava/lang/String;
    .end local v13           #url:Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 866
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->saveDraftSync(Z)Z

    .line 869
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->resetMessage()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 871
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->setMessageUri(Landroid/net/Uri;)V

    .line 872
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    .line 873
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->setReservationTime(J)V

    .line 874
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/mms/data/WorkingMessage;->setReserveDeliveryTime(J)V

    .line 877
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/mms/ui/MessageItem;

    .line 879
    .restart local v3       #msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v3, :cond_0

    instance-of v1, v3, Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_0

    .line 882
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMessageSize()I

    move-result v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 883
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "Can not edit over size mms message"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0032

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 887
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setSentMessage(Z)V

    .line 888
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 889
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->drawComposerPanel()V

    .line 890
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelection()Z

    .line 891
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 893
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 894
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v1, :cond_5

    .line 895
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v1}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 898
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    if-eqz v1, :cond_6

    .line 899
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/16 v4, 0xc8

    invoke-virtual {v1, v2, v4}, Lcom/android/mms/ui/SipHandler;->showSipDelayed(Landroid/os/Handler;I)V

    .line 902
    :cond_6
    const-string v1, "sms"

    iget-object v2, v3, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 903
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->setMessageUri(Landroid/net/Uri;)V

    .line 904
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    .line 910
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 906
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->setMessageUri(Landroid/net/Uri;)V

    .line 907
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    goto :goto_2

    .line 916
    .end local v3           #msgItem:Lcom/android/mms/ui/MessageItem;
    :pswitch_5
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/mms/ui/MessageItem;

    .line 917
    .local v9, msgItemForDelete:Lcom/android/mms/ui/MessageItem;
    if-eqz v9, :cond_0

    instance-of v1, v9, Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_0

    .line 918
    const/4 v12, 0x0

    .line 919
    .local v12, uriForDelete:Landroid/net/Uri;
    const-string v1, "sms"

    iget-object v2, v9, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 920
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v9, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 925
    :cond_8
    :goto_3
    if-eqz v12, :cond_9

    .line 926
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v12, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 929
    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 932
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 933
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 934
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$3;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->requestDrawPointerOnConverationList()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto/16 :goto_0

    .line 921
    :cond_a
    const-string v1, "mms"

    iget-object v2, v9, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 922
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v9, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    goto :goto_3

    .line 841
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
