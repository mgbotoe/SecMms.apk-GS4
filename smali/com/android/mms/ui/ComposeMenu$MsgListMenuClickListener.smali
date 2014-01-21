.class final Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;
.super Ljava/lang/Object;
.source "ComposeMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgListMenuClickListener"
.end annotation


# instance fields
.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMenu;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "msgItem"
    .parameter "view"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p3, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->mView:Landroid/view/View;

    .line 295
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 296
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 33
    .parameter "item"

    .prologue
    .line 298
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 300
    .local v5, msgItem:Lcom/android/mms/ui/MessageItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListView()Lcom/android/mms/ui/MessageListView;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    if-nez v5, :cond_1

    .line 301
    :cond_0
    const/4 v3, 0x0

    .line 601
    :goto_0
    return v3

    .line 303
    :cond_1
    const-string v3, "Mms/ComposerMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMenuItemClick(),item="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v2, Lcom/android/mms/ui/MessageOptions;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    iget-object v8, v5, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 306
    .local v2, messageOptions:Lcom/android/mms/ui/MessageOptions;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 601
    const/4 v3, 0x0

    goto :goto_0

    .line 308
    :sswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->saveDraftSync(Z)Z

    .line 312
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->resetDraftMessage()V

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->setMessageUri(Landroid/net/Uri;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    .line 317
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->editMessageForEmpty(Lcom/android/mms/ui/MessageItem;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 318
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 320
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->setSentMessage(Z)V

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->drawComposerPanel()V

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelection()Z

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->updateMmsLayoutMode(Lcom/android/mms/ui/MessageItem;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->showSip(Landroid/view/View;)V

    .line 326
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 327
    const-string v3, "sms"

    iget-object v4, v5, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->setMessageUri(Landroid/net/Uri;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    .line 334
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 337
    :cond_5
    iget-wide v3, v5, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v6, 0x1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->resetReservedSettings()V

    .line 339
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 331
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->setMessageUri(Landroid/net/Uri;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 341
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    .line 344
    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 346
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getBodyAll()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/util/UIUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 349
    :sswitch_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V

    .line 351
    :cond_9
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 353
    :sswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 354
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;)V

    .line 358
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 356
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageOptions;->forwardMessageWithCloseComposer(Lcom/android/mms/ui/ComposeMessageFragment;ZLcom/android/mms/ui/MessageItem;)V

    goto :goto_2

    .line 360
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/mms/ui/MessageOptions;->viewMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V

    .line 361
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 363
    :sswitch_6
    iget-object v0, v5, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v30, v0

    .line 364
    .local v30, uri:Landroid/net/Uri;
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 365
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    .line 367
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getDeleteMessage()Lcom/android/mms/ui/ComposeDeleteMessage;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v5, v0}, Lcom/android/mms/ui/ComposeDeleteMessage;->showDeleteConfirmDlg(Lcom/android/mms/ui/MessageItem;Landroid/net/Uri;)V

    .line 368
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 371
    .end local v30           #uri:Landroid/net/Uri;
    :sswitch_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getSaveRestoreOperation()Lcom/samsung/mms/util/SaveRestoreOperation;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v6, 0x0

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v7

    aput-wide v7, v4, v6

    const/4 v6, 0x0

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/mms/util/SaveRestoreOperation;->startSaveOperation([JZZ)V

    .line 374
    :cond_c
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 376
    :sswitch_8
    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    .line 377
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 379
    :sswitch_9
    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    .line 380
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 383
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mNumberList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$200(Lcom/android/mms/ui/ComposeMenu;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/mms/ui/MessageOptions;->ReplyAllMessage(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Ljava/util/ArrayList;)V

    .line 384
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 389
    :sswitch_b
    invoke-virtual {v2, v5}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSDCARD(Lcom/android/mms/ui/MessageItem;)V

    .line 390
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 394
    :sswitch_c
    const/4 v12, 0x0

    .line 395
    .local v12, blockContact:Lcom/android/mms/data/Contact;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #blockContact:Lcom/android/mms/data/Contact;
    check-cast v12, Lcom/android/mms/data/Contact;

    .line 397
    .restart local v12       #blockContact:Lcom/android/mms/data/Contact;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v12}, Lcom/android/mms/ui/MessageUtils;->createblockNumberSettingDialog(Landroid/content/Context;Lcom/android/mms/data/Contact;)V

    .line 402
    :cond_d
    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 400
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->registerAsSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_3

    .line 405
    .end local v12           #blockContact:Lcom/android/mms/data/Contact;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/mms/data/Contact;

    .line 406
    .local v29, unblockContact:Lcom/android/mms/data/Contact;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->unregisterSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0409

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 408
    :cond_f
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 411
    .end local v29           #unblockContact:Lcom/android/mms/data/Contact;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 412
    iget-object v3, v5, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v4, 0x1

    iget-wide v6, v5, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/mms/ui/MessageOptions;->showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V

    .line 413
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 415
    :sswitch_f
    iget-object v3, v5, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-wide v6, v5, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/mms/ui/MessageOptions;->showAudioList(Lcom/android/mms/model/SlideshowModel;J)V

    .line 416
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 418
    :sswitch_10
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 419
    .local v9, addContactIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->setContactIntent(Landroid/content/Intent;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-virtual {v3, v9, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 421
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 424
    .end local v9           #addContactIntent:Landroid/content/Intent;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->viewMoreInfoLayout()V

    .line 425
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 430
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    const-wide/16 v6, 0x0

    invoke-static {v3, v6, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v24

    .line 431
    .local v24, replyIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SENDTO"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivity(Landroid/content/Intent;)V

    .line 434
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 439
    .end local v24           #replyIntent:Landroid/content/Intent;
    :sswitch_13
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v5, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0c000d

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 440
    const/16 v22, 0x0

    .line 442
    .local v22, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    iget-object v4, v5, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object/from16 v22, v0
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_4
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v28

    .line 447
    .local v28, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v26, sb:Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .line 450
    .local v13, count:I
    if-eqz v28, :cond_12

    .line 451
    move-object/from16 v11, v28

    .local v11, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v11

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_5
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    aget-object v23, v11, v17

    .line 452
    .local v23, recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-lez v13, :cond_10

    .line 453
    const-string v3, ", "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :cond_10
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    add-int/lit8 v13, v13, 0x1

    .line 451
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 443
    .end local v11           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v13           #count:I
    .end local v17           #i$:I
    .end local v19           #len$:I
    .end local v23           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v26           #sb:Ljava/lang/StringBuilder;
    .end local v28           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v16

    .line 444
    .local v16, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/ComposerMenu"

    const-string v4, "Failed to load the message: "

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 458
    .end local v16           #e:Lcom/google/android/mms/MmsException;
    .restart local v11       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v13       #count:I
    .restart local v17       #i$:I
    .restart local v19       #len$:I
    .restart local v26       #sb:Ljava/lang/StringBuilder;
    .restart local v28       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_11
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 480
    .end local v11           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v17           #i$:I
    .end local v19           #len$:I
    .end local v22           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v28           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v10, address:Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c012c

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0c02d2

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s"

    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0c004f

    new-instance v7, Lcom/android/mms/ui/ComposeMenu$SendNowListener;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    invoke-direct {v7, v8, v5}, Lcom/android/mms/ui/ComposeMenu$SendNowListener;-><init>(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0c0050

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, v3, Lcom/android/mms/ui/ComposeMenu;->mSendNowConfirmDialog:Landroid/content/DialogInterface;

    .line 489
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 460
    .end local v10           #address:Ljava/lang/String;
    .restart local v22       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v28       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0122

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #address:Ljava/lang/String;
    goto :goto_6

    .line 464
    .end local v10           #address:Ljava/lang/String;
    .end local v13           #count:I
    .end local v22           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v26           #sb:Ljava/lang/StringBuilder;
    .end local v28           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_13
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .restart local v26       #sb:Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .line 467
    .restart local v13       #count:I
    iget-object v3, v5, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v19, v0

    .restart local v19       #len$:I
    const/16 v17, 0x0

    .restart local v17       #i$:I
    :goto_7
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_16

    aget-object v23, v11, v17

    .line 468
    .local v23, recipient:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 467
    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 471
    :cond_14
    if-lez v13, :cond_15

    .line 472
    const-string v3, ", "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_15
    invoke-static/range {v23 .. v23}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 477
    .end local v23           #recipient:Ljava/lang/String;
    :cond_16
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #address:Ljava/lang/String;
    goto/16 :goto_6

    .line 492
    .end local v10           #address:Ljava/lang/String;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v13           #count:I
    .end local v17           #i$:I
    .end local v19           #len$:I
    .end local v26           #sb:Ljava/lang/StringBuilder;
    :sswitch_14
    iget-object v0, v5, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v30, v0

    .line 493
    .restart local v30       #uri:Landroid/net/Uri;
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 494
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    .line 495
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getDeleteMessage()Lcom/android/mms/ui/ComposeDeleteMessage;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v5, v0}, Lcom/android/mms/ui/ComposeDeleteMessage;->showCancelConfirmDlg(Lcom/android/mms/ui/MessageItem;Landroid/net/Uri;)V

    .line 498
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 501
    .end local v30           #uri:Landroid/net/Uri;
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #calls: Lcom/android/mms/ui/ComposeMenu;->InsertOrPickContactAddress(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v3, v5}, Lcom/android/mms/ui/ComposeMenu;->access$300(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageItem;)V

    .line 502
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 505
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->messageContentShare(Lcom/android/mms/ui/MessageItem;)V

    .line 506
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 509
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->dialRecipient()V

    .line 511
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 514
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->videoCallRecipient()V

    .line 516
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 520
    :sswitch_19
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SKT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LGU+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KOR_OPEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 524
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/util/TelephonyUtils;->checkPSAvailability(Landroid/content/Context;Z)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 525
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 530
    :cond_19
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 531
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    iget-object v4, v5, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->Isexpired(Landroid/net/Uri;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    .line 532
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    iget-object v4, v5, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->markExpriedState(Landroid/net/Uri;)V

    .line 533
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 539
    :cond_1a
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v14

    .line 540
    .local v14, currentStrorage:J
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAvailableSizeForRestrictAutoDownload()I

    move-result v3

    mul-int/lit16 v3, v3, 0x400

    mul-int/lit16 v3, v3, 0x400

    int-to-long v0, v3

    move-wide/from16 v20, v0

    .line 542
    .local v20, minStorage:J
    cmp-long v3, v14, v20

    if-gez v3, :cond_1b

    .line 543
    const-string v3, "Mms/ComposerMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Available Storage Size "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, v14, v20

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c014a

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 547
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 551
    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SKT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c03f3

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 556
    :cond_1c
    new-instance v18, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 557
    .local v18, intent_Transaction:Landroid/content/Intent;
    const-string v3, "uri"

    iget-object v4, v5, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v3, "type"

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 562
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 567
    .end local v14           #currentStrorage:J
    .end local v18           #intent_Transaction:Landroid/content/Intent;
    .end local v20           #minStorage:J
    :sswitch_1a
    invoke-virtual {v2, v5}, Lcom/android/mms/ui/MessageOptions;->startViewer(Lcom/android/mms/ui/MessageItem;)V

    .line 568
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 572
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v0, v8, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    invoke-static {v4, v0, v1}, Lcom/android/mms/ui/MessageUtils;->saveRingtone(Landroid/content/Context;J)Z

    move-result v4

    invoke-static {v3, v6, v7, v4}, Lcom/android/mms/ui/MessageUtils;->getDrmMimeSavedStringRsrc(Landroid/content/Context;JZ)I

    move-result v25

    .line 574
    .local v25, resId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v25

    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 575
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 578
    .end local v25           #resId:I
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 579
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 583
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateManager()Lcom/android/mms/ui/TranslateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/TranslateManager;->extractTranslateText(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v27

    .line 584
    .local v27, srcText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateManager()Lcom/android/mms/ui/TranslateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v4

    const/4 v6, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v4, v6}, Lcom/android/mms/ui/TranslateManager;->viewTranslate(Ljava/lang/String;Landroid/app/Activity;I)V

    .line 585
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 587
    .end local v27           #srcText:Ljava/lang/String;
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lcom/android/mms/ui/MessageOptions;->reportAsSpam(Lcom/android/mms/ui/MessageItem;Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 588
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 591
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/mms/util/TelephonyUtils;->connectSpecificTidService(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)V

    .line 593
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 596
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/mms/ui/ComposeMenu;->confirmCmasForwardMessage(Landroid/content/Context;Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;)V

    .line 597
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 306
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ee -> :sswitch_17
        0x3f3 -> :sswitch_18
        0x3f6 -> :sswitch_0
        0x3f9 -> :sswitch_5
        0x3fa -> :sswitch_6
        0x3fd -> :sswitch_4
        0x400 -> :sswitch_2
        0x401 -> :sswitch_1
        0x403 -> :sswitch_10
        0x404 -> :sswitch_8
        0x405 -> :sswitch_9
        0x407 -> :sswitch_3
        0x408 -> :sswitch_b
        0x40b -> :sswitch_e
        0x40c -> :sswitch_1d
        0x420 -> :sswitch_11
        0x424 -> :sswitch_12
        0x425 -> :sswitch_a
        0x427 -> :sswitch_c
        0x429 -> :sswitch_13
        0x42a -> :sswitch_14
        0x42b -> :sswitch_15
        0x434 -> :sswitch_19
        0x435 -> :sswitch_d
        0x439 -> :sswitch_1a
        0x43b -> :sswitch_1b
        0x441 -> :sswitch_7
        0x44b -> :sswitch_16
        0x44c -> :sswitch_1c
        0x44d -> :sswitch_1f
        0x44e -> :sswitch_20
        0x44f -> :sswitch_f
        0x450 -> :sswitch_1e
    .end sparse-switch
.end method
