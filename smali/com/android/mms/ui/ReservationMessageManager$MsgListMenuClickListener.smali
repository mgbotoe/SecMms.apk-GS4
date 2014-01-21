.class final Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;
.super Ljava/lang/Object;
.source "ReservationMessageManager.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ReservationMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgListMenuClickListener"
.end annotation


# instance fields
.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/mms/ui/ReservationMessageManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "msgItem"
    .parameter "view"

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1489
    iput-object p3, p0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->mView:Landroid/view/View;

    .line 1490
    iput-object p2, p0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 1491
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 21
    .parameter "item"

    .prologue
    .line 1494
    const-string v2, "Mms/ReservationMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMenuItemClick(),item="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 1497
    .local v4, msgItem:Lcom/android/mms/ui/MessageItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$000(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    if-nez v4, :cond_1

    .line 1498
    :cond_0
    const/4 v2, 0x0

    .line 1604
    :goto_0
    return v2

    .line 1500
    :cond_1
    new-instance v1, Lcom/android/mms/ui/MessageOptions;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v5

    iget-object v7, v4, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 1501
    .local v1, messageOptions:Lcom/android/mms/ui/MessageOptions;
    const/4 v10, 0x0

    .line 1503
    .local v10, conv:Lcom/android/mms/data/Conversation;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1604
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1508
    :pswitch_1
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$600(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0c000d

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1509
    const/16 v16, 0x0

    .line 1511
    .local v16, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$600(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    iget-object v3, v4, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object/from16 v16, v0
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1516
    :goto_1
    const/16 v19, 0x0

    .line 1517
    .local v19, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v16, :cond_2

    .line 1518
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v19

    .line 1520
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1522
    .local v18, sb:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 1523
    .local v11, count:I
    if-eqz v19, :cond_5

    .line 1524
    move-object/from16 v9, v19

    .local v9, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v15, v9

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_2
    if-ge v13, v15, :cond_4

    aget-object v17, v9, v13

    .line 1525
    .local v17, recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-lez v11, :cond_3

    .line 1526
    const-string v2, ", "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    add-int/lit8 v11, v11, 0x1

    .line 1524
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1512
    .end local v9           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v11           #count:I
    .end local v13           #i$:I
    .end local v15           #len$:I
    .end local v17           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v18           #sb:Ljava/lang/StringBuilder;
    .end local v19           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v12

    .line 1513
    .local v12, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/ReservationMessageManager"

    const-string v3, "Failed to load the message: "

    invoke-static {v2, v3, v12}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1531
    .end local v12           #e:Lcom/google/android/mms/MmsException;
    .restart local v9       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v11       #count:I
    .restart local v13       #i$:I
    .restart local v15       #len$:I
    .restart local v18       #sb:Ljava/lang/StringBuilder;
    .restart local v19       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1555
    .end local v9           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v13           #i$:I
    .end local v15           #len$:I
    .end local v16           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v19           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v8, address:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #calls: Lcom/android/mms/ui/ReservationMessageManager;->confirmSendDialog(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)V
    invoke-static {v2, v4, v8}, Lcom/android/mms/ui/ReservationMessageManager;->access$1800(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)V

    .line 1556
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1534
    .end local v8           #address:Ljava/lang/String;
    .restart local v16       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v19       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$600(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0122

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #address:Ljava/lang/String;
    goto :goto_3

    .line 1539
    .end local v8           #address:Ljava/lang/String;
    .end local v11           #count:I
    .end local v16           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v18           #sb:Ljava/lang/StringBuilder;
    .end local v19           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1540
    .restart local v18       #sb:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 1542
    .restart local v11       #count:I
    iget-object v2, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, arr$:[Ljava/lang/String;
    array-length v15, v9

    .restart local v15       #len$:I
    const/4 v13, 0x0

    .restart local v13       #i$:I
    :goto_4
    if-ge v13, v15, :cond_9

    aget-object v17, v9, v13

    .line 1543
    .local v17, recipient:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1542
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1546
    :cond_7
    if-lez v11, :cond_8

    .line 1547
    const-string v2, ", "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    :cond_8
    invoke-static/range {v17 .. v17}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1552
    .end local v17           #recipient:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #address:Ljava/lang/String;
    goto :goto_3

    .line 1559
    .end local v8           #address:Ljava/lang/String;
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v11           #count:I
    .end local v13           #i$:I
    .end local v15           #len$:I
    .end local v18           #sb:Ljava/lang/StringBuilder;
    :pswitch_2
    iget-object v0, v4, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    .line 1560
    .local v20, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1561
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 1563
    :cond_a
    new-instance v14, Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-direct {v14, v2, v0, v3}, Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ReservationMessageManager;Landroid/net/Uri;Z)V

    .line 1564
    .local v14, l:Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    iget-boolean v3, v4, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    #calls: Lcom/android/mms/ui/ReservationMessageManager;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    invoke-static {v2, v14, v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$1900(Lcom/android/mms/ui/ReservationMessageManager;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 1565
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1569
    .end local v14           #l:Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;
    .end local v20           #uri:Landroid/net/Uri;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1570
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    iget-object v3, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 1574
    :cond_c
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1571
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    #calls: Lcom/android/mms/ui/ReservationMessageManager;->getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/mms/ui/ReservationMessageManager;->access$700(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 1577
    :pswitch_4
    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    .line 1578
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1581
    :pswitch_5
    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    .line 1582
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1585
    :pswitch_6
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;)V

    .line 1586
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1590
    :pswitch_7
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Z)V

    .line 1591
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1594
    :pswitch_8
    iget-object v2, v4, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x1

    iget-wide v5, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/android/mms/ui/MessageOptions;->showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V

    .line 1595
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1599
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$600(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v5

    const/4 v3, 0x0

    invoke-static {v2, v5, v6, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v10

    .line 1600
    if-nez v10, :cond_e

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1601
    :cond_e
    const/4 v2, 0x1

    invoke-virtual {v1, v4, v10, v2}, Lcom/android/mms/ui/MessageOptions;->viewMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V

    .line 1602
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1503
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
