.class Lcom/android/mms/ui/LockedMessageManager$5;
.super Ljava/lang/Object;
.source "LockedMessageManager.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/LockedMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/LockedMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager$5;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 15
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 671
    if-nez p3, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v5, p3

    .line 674
    check-cast v5, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 675
    .local v5, info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    iget-object v11, p0, Lcom/android/mms/ui/LockedMessageManager$5;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget v12, v5, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    #setter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectedPosition:I
    invoke-static {v11, v12}, Lcom/android/mms/ui/LockedMessageManager;->access$502(Lcom/android/mms/ui/LockedMessageManager;I)I

    .line 676
    const-string v11, "Mms/LockedMsgStoreActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onCreateContextMenu mSelectedPosition: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/mms/ui/LockedMessageManager$5;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectedPosition:I
    invoke-static {v13}, Lcom/android/mms/ui/LockedMessageManager;->access$500(Lcom/android/mms/ui/LockedMessageManager;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v11, p0, Lcom/android/mms/ui/LockedMessageManager$5;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v11}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v11

    iget v12, v5, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    .line 679
    .local v6, itemObject:Ljava/lang/Object;
    instance-of v11, v6, Landroid/database/Cursor;

    if-eqz v11, :cond_0

    move-object v3, v6

    .line 681
    check-cast v3, Landroid/database/Cursor;

    .line 683
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    if-ltz v11, :cond_0

    .line 687
    iget-object v11, p0, Lcom/android/mms/ui/LockedMessageManager$5;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v12, p0, Lcom/android/mms/ui/LockedMessageManager$5;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/mms/ui/LockedMessageManager;->access$600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Lcom/android/mms/ui/LockedMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v8

    .line 688
    .local v8, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v8, :cond_0

    .line 690
    iget-object v11, p0, Lcom/android/mms/ui/LockedMessageManager$5;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/mms/ui/LockedMessageManager;->access$600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-static {v11, v12, v13, v14}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v2

    .line 691
    .local v2, conv:Lcom/android/mms/data/Conversation;
    if-eqz v2, :cond_0

    .line 693
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    .line 696
    .local v9, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v9}, Lcom/android/mms/data/ContactList;->size()I

    move-result v11

    if-nez v11, :cond_e

    .line 697
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 698
    iget-object v11, p0, Lcom/android/mms/ui/LockedMessageManager$5;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    const v12, 0x7f0c013b

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/LockedMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 705
    :goto_1
    new-instance v7, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;

    iget-object v11, p0, Lcom/android/mms/ui/LockedMessageManager$5;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    move-object/from16 v0, p2

    invoke-direct {v7, v11, v8, v0}, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V

    .line 707
    .local v7, l:Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;
    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 708
    const/4 v11, 0x0

    const/16 v12, 0xca

    const/4 v13, 0x0

    const v14, 0x7f0c0091

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 712
    :cond_2
    const/4 v11, 0x0

    const/16 v12, 0xcb

    const/4 v13, 0x0

    const v14, 0x7f0c043b

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 715
    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v8, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_3
    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/mms/ui/LockedMessageManager$5;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #calls: Lcom/android/mms/ui/LockedMessageManager;->getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    invoke-static {v11, v8}, Lcom/android/mms/ui/LockedMessageManager;->access$700(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 718
    :cond_4
    const/4 v11, 0x0

    const/16 v12, 0xcc

    const/4 v13, 0x0

    const v14, 0x7f0c043c

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 722
    :cond_5
    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v8}, Lcom/android/mms/util/TelephonyUtils;->isEnableSpecificTidService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 725
    :cond_6
    const/4 v11, 0x0

    const/16 v12, 0xcf

    const/4 v13, 0x0

    const v14, 0x7f0c0016

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 729
    :cond_7
    const/4 v11, 0x0

    const/16 v12, 0xd2

    const/4 v13, 0x0

    const v14, 0x7f0c043e

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 737
    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 739
    iget-object v11, v8, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v11, :cond_f

    .line 740
    const/4 v11, 0x0

    const/16 v12, 0xce

    const/4 v13, 0x0

    const v14, 0x7f0c011d

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 757
    :cond_8
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 758
    invoke-static {v8}, Lcom/android/mms/util/TelephonyUtils;->isEnableSpecificTidService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 759
    const/4 v11, 0x0

    const/16 v12, 0xd5

    const/4 v13, 0x0

    const v14, 0x7f0c0197

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 763
    :cond_9
    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 764
    iget-object v11, p0, Lcom/android/mms/ui/LockedMessageManager$5;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/mms/ui/LockedMessageManager;->access$600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 765
    .local v1, airplane:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-wide v11, v8, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v13, 0x1

    cmp-long v11, v11, v13

    if-eqz v11, :cond_c

    invoke-static {v8}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-static {v8}, Lcom/android/mms/util/TelephonyUtils;->isEnableSpecificTidService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v11

    if-nez v11, :cond_c

    :cond_a
    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_b

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_c

    :cond_b
    if-nez v1, :cond_c

    .line 772
    const/4 v11, 0x0

    const/16 v12, 0xd0

    const/4 v13, 0x0

    const v14, 0x7f0c001d

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 777
    .end local v1           #airplane:I
    :cond_c
    const/4 v11, 0x0

    const/16 v12, 0xd1

    const/4 v13, 0x0

    const v14, 0x7f0c000e

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 700
    .end local v7           #l:Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;
    :cond_d
    iget-object v11, p0, Lcom/android/mms/ui/LockedMessageManager$5;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    const v12, 0x7f0c000b

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/LockedMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 702
    :cond_e
    const-string v11, ","

    invoke-virtual {v9, v11}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 742
    .restart local v7       #l:Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;
    :cond_f
    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 744
    :try_start_0
    iget-object v11, p0, Lcom/android/mms/ui/LockedMessageManager$5;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/mms/ui/LockedMessageManager;->access$600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v11

    sget-object v12, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v13, v8, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    .line 746
    .local v10, slideshow:Lcom/android/mms/model/SlideshowModel;
    if-eqz v10, :cond_8

    .line 747
    const/4 v11, 0x0

    const/16 v12, 0xce

    const/4 v13, 0x0

    const v14, 0x7f0c011d

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 750
    .end local v10           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v4

    .line 751
    .local v4, e:Lcom/google/android/mms/MmsException;
    const-string v11, "Mms/LockedMsgStoreActivity"

    invoke-virtual {v4}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method
