.class Lcom/android/mms/ui/ReservationMessageManager$4;
.super Ljava/lang/Object;
.source "ReservationMessageManager.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ReservationMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ReservationMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$4;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 13
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 675
    if-nez p3, :cond_1

    .line 760
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v3, p3

    .line 678
    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 679
    .local v3, info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    iget-object v9, p0, Lcom/android/mms/ui/ReservationMessageManager$4;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    iget v10, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    #setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSelectedPosition:I
    invoke-static {v9, v10}, Lcom/android/mms/ui/ReservationMessageManager;->access$502(Lcom/android/mms/ui/ReservationMessageManager;I)I

    .line 680
    const-string v9, "Mms/ReservationMessageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreateContextMenu mSelectedPosition: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/ReservationMessageManager$4;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSelectedPosition:I
    invoke-static {v11}, Lcom/android/mms/ui/ReservationMessageManager;->access$500(Lcom/android/mms/ui/ReservationMessageManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v9, p0, Lcom/android/mms/ui/ReservationMessageManager$4;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v9}, Lcom/android/mms/ui/ReservationMessageManager;->access$000(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v9

    iget v10, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    .line 683
    .local v4, itemObject:Ljava/lang/Object;
    instance-of v9, v4, Landroid/database/Cursor;

    if-eqz v9, :cond_0

    move-object v1, v4

    .line 685
    check-cast v1, Landroid/database/Cursor;

    .line 687
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    if-ltz v9, :cond_0

    .line 691
    iget-object v9, p0, Lcom/android/mms/ui/ReservationMessageManager$4;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    iget-object v10, p0, Lcom/android/mms/ui/ReservationMessageManager$4;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/mms/ui/ReservationMessageManager;->access$600(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Lcom/android/mms/ui/ReservationMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    .line 692
    .local v6, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v6, :cond_0

    .line 694
    iget-object v9, p0, Lcom/android/mms/ui/ReservationMessageManager$4;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/mms/ui/ReservationMessageManager;->access$600(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 695
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    .line 700
    .local v7, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v9

    if-nez v9, :cond_9

    .line 701
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 702
    iget-object v9, p0, Lcom/android/mms/ui/ReservationMessageManager$4;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    const v10, 0x7f0c013b

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 709
    :goto_1
    new-instance v5, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;

    iget-object v9, p0, Lcom/android/mms/ui/ReservationMessageManager$4;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct {v5, v9, v6, p2}, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V

    .line 711
    .local v5, l:Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;
    const/4 v9, 0x0

    const/16 v10, 0xc9

    const/4 v11, 0x0

    const v12, 0x7f0c02d0

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 713
    const/4 v9, 0x0

    const/16 v10, 0xca

    const/4 v11, 0x0

    const v12, 0x7f0c02d1

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 716
    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v6, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/mms/ui/ReservationMessageManager$4;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #calls: Lcom/android/mms/ui/ReservationMessageManager;->getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    invoke-static {v9, v6}, Lcom/android/mms/ui/ReservationMessageManager;->access$700(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 719
    :cond_3
    const/4 v9, 0x0

    const/16 v10, 0xcb

    const/4 v11, 0x0

    const v12, 0x7f0c043c

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 723
    :cond_4
    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 724
    const/4 v9, 0x0

    const/16 v10, 0xcf

    const/4 v11, 0x0

    const v12, 0x7f0c0016

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 727
    :cond_5
    iget-boolean v9, v6, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v9, :cond_a

    .line 728
    const/4 v9, 0x0

    const/16 v10, 0xcc

    const/4 v11, 0x0

    const v12, 0x7f0c043e

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 733
    :goto_2
    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 734
    const/4 v9, 0x0

    const/16 v10, 0xce

    const/4 v11, 0x0

    const v12, 0x7f0c0090

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 738
    :cond_6
    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 740
    iget-object v9, v6, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v9, :cond_b

    .line 741
    const/4 v9, 0x0

    const/16 v10, 0xd4

    const/4 v11, 0x0

    const v12, 0x7f0c011d

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 758
    :cond_7
    :goto_3
    const/4 v9, 0x0

    const/16 v10, 0xd0

    const/4 v11, 0x0

    const v12, 0x7f0c000e

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 704
    .end local v5           #l:Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;
    :cond_8
    iget-object v9, p0, Lcom/android/mms/ui/ReservationMessageManager$4;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    const v10, 0x7f0c000b

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 706
    :cond_9
    const-string v9, ","

    invoke-virtual {v7, v9}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 730
    .restart local v5       #l:Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;
    :cond_a
    const/4 v9, 0x0

    const/16 v10, 0xcd

    const/4 v11, 0x0

    const v12, 0x7f0c043d

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_2

    .line 743
    :cond_b
    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 745
    :try_start_0
    iget-object v9, p0, Lcom/android/mms/ui/ReservationMessageManager$4;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/mms/ui/ReservationMessageManager;->access$600(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v6, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    .line 747
    .local v8, slideshow:Lcom/android/mms/model/SlideshowModel;
    if-eqz v8, :cond_7

    .line 748
    const/4 v9, 0x0

    const/16 v10, 0xd4

    const/4 v11, 0x0

    const v12, 0x7f0c011d

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 751
    .end local v8           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v2

    .line 752
    .local v2, e:Lcom/google/android/mms/MmsException;
    const-string v9, "Mms/ReservationMessageManager"

    invoke-virtual {v2}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method
