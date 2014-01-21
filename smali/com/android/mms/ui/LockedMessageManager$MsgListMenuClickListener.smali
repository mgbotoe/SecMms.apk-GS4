.class final Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;
.super Ljava/lang/Object;
.source "LockedMessageManager.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/LockedMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgListMenuClickListener"
.end annotation


# instance fields
.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/mms/ui/LockedMessageManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "msgItem"
    .parameter "view"

    .prologue
    .line 1609
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1610
    iput-object p3, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->mView:Landroid/view/View;

    .line 1611
    iput-object p2, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 1612
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1615
    const-string v1, "Mms/LockedMsgStoreActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMenuItemClick(),item="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 1618
    .local v3, msgItem:Lcom/android/mms/ui/MessageItem;
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move v1, v11

    .line 1688
    :goto_0
    return v1

    .line 1621
    :cond_1
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    iget-object v6, v3, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 1622
    .local v0, messageOptions:Lcom/android/mms/ui/MessageOptions;
    const/4 v7, 0x0

    .line 1624
    .local v7, conv:Lcom/android/mms/data/Conversation;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v11

    .line 1688
    goto :goto_0

    :pswitch_1
    move v1, v10

    .line 1626
    goto :goto_0

    .line 1629
    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    invoke-static {v1, v4, v5, v11}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v7

    .line 1630
    if-nez v7, :cond_2

    move v1, v11

    goto :goto_0

    .line 1631
    :cond_2
    invoke-virtual {v0, v3, v7, v11}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    move v1, v10

    .line 1632
    goto :goto_0

    .line 1635
    :pswitch_3
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1636
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v2, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/mms/util/UIUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_1
    move v1, v10

    .line 1640
    goto :goto_0

    .line 1637
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1638
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    #calls: Lcom/android/mms/ui/LockedMessageManager;->getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/mms/ui/LockedMessageManager;->access$700(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/util/UIUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 1643
    :pswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1644
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    invoke-static {v1, v4, v5, v11}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v7

    .line 1645
    if-nez v7, :cond_6

    move v1, v11

    goto :goto_0

    .line 1646
    :cond_6
    invoke-virtual {v0, v3, v7}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V

    :cond_7
    move v1, v10

    .line 1648
    goto :goto_0

    .line 1651
    :pswitch_5
    iput-boolean v10, v0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    .line 1652
    invoke-virtual {v0, v11, v3}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;)V

    .line 1653
    iput-boolean v11, v0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    move v1, v10

    .line 1654
    goto/16 :goto_0

    .line 1657
    :pswitch_6
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    invoke-static {v1, v4, v5, v11}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v7

    .line 1658
    if-nez v7, :cond_8

    move v1, v11

    goto/16 :goto_0

    .line 1659
    :cond_8
    invoke-virtual {v0, v3, v7, v10}, Lcom/android/mms/ui/MessageOptions;->viewMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V

    move v1, v10

    .line 1660
    goto/16 :goto_0

    .line 1663
    :pswitch_7
    iget-object v9, v3, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 1664
    .local v9, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1665
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1667
    :cond_9
    new-instance v8, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {v8, v1, v9, v10}, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;-><init>(Lcom/android/mms/ui/LockedMessageManager;Landroid/net/Uri;Z)V

    .line 1668
    .local v8, l:Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-boolean v2, v3, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    #calls: Lcom/android/mms/ui/LockedMessageManager;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    invoke-static {v1, v8, v2}, Lcom/android/mms/ui/LockedMessageManager;->access$1800(Lcom/android/mms/ui/LockedMessageManager;Landroid/content/DialogInterface$OnClickListener;Z)V

    move v1, v10

    .line 1669
    goto/16 :goto_0

    .line 1673
    .end local v8           #l:Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;
    .end local v9           #uri:Landroid/net/Uri;
    :pswitch_8
    invoke-virtual {v0, v3, v11}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    move v1, v10

    .line 1674
    goto/16 :goto_0

    .line 1677
    :pswitch_9
    iget-object v1, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-wide v4, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v0, v1, v10, v4, v5}, Lcom/android/mms/ui/MessageOptions;->showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V

    move v1, v10

    .line 1678
    goto/16 :goto_0

    .line 1681
    :pswitch_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1682
    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->isEnableSpecificTidService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1683
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/mms/util/TelephonyUtils;->connectSpecificTidService(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)V

    :cond_a
    move v1, v10

    .line 1685
    goto/16 :goto_0

    .line 1624
    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_1
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method
