.class public Lcom/android/mms/ui/SpamMessageManager;
.super Landroid/app/Activity;
.source "SpamMessageManager.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;
.implements Lcom/android/mms/ui/SweepHandler$ListCheckInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;,
        Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;,
        Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;,
        Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;
    }
.end annotation


# static fields
.field public static final DELETE_ALL_MESSAGE_TOKEN:I = 0x709

.field public static final DELETE_MESSAGE_TOKEN:I = 0x70a

.field public static final FLAG_DELETE_COMPLETE:I = 0xc9

.field public static final FLAG_DELETE_START:I = 0xc8

.field public static final FLAG_RESTORE_COMPLETE:I = 0xcb

.field public static final FLAG_RESTORE_START:I = 0xca

.field public static final LIST_MODE_DELETE:I = 0x2

.field public static final LIST_MODE_NORMAL:I = 0x0

.field public static final LIST_MODE_RESTORE:I = 0x1

.field public static final MENU_DELETE_ALL:I = 0xc9

.field public static final MENU_DELETE_CANCEL:I = 0xce

.field private static final MENU_DELETE_MESSAGE:I = 0xcb

.field public static final MENU_DELETE_OK:I = 0xcd

.field public static final MENU_RESTORE_ALL:I = 0xc8

.field private static final MENU_RSTORE_MESSAGE:I = 0xca

.field public static final MENU_UNBLOCK_NUMBER_SETTING:I = 0xcf

.field private static final MENU_VIEW_MESSAGE_DETAILS:I = 0xcc

.field private static final MESSAGE_LIST_ALL_QUERY_TOKEN:I = 0x6a5

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_LIMIT:I = 0xb

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a4

.field private static final OFFSET:I = 0xc8

.field public static final RESTORE_MESSAGE_TOKEN:I = 0x70b

.field private static final TAG:Ljava/lang/String; = "Mms/SpamMessageManager"

.field public static badge:Landroid/widget/QuickContactBadge;

.field private static mDeleteComplete:Z


# instance fields
.field private final mContentChangedListener:Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;

.field private mContext:Landroid/content/Context;

.field private mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDeleteEventHandler:Landroid/os/Handler;

.field private mEmptyView:Landroid/view/View;

.field private mFirstItemId:J

.field private mIsAnimationEnable:Z

.field private mIsDeleteMsgAnimating:Z

.field private mIsLandscape:Z

.field private mListView:Lcom/android/mms/ui/MsgSweepActionListView;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

.field private mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field public mMsgListMode:I

.field private final mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectedPosition:I

.field private mTotalConversations:Landroid/widget/TextView;

.field private mTotalConversationsLayout:Landroid/widget/LinearLayout;

.field private mVisibleOffset:I

.field private onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteComplete:Z

    .line 131
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/SpamMessageManager;->badge:Landroid/widget/QuickContactBadge;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 129
    iput v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListMode:I

    .line 139
    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    .line 140
    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mVisibleOffset:I

    .line 142
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mFirstItemId:J

    .line 143
    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    iput-boolean v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsAnimationEnable:Z

    .line 150
    iput-boolean v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsDeleteMsgAnimating:Z

    .line 152
    iput-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 565
    new-instance v0, Lcom/android/mms/ui/SpamMessageManager$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SpamMessageManager$3;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1151
    new-instance v0, Lcom/android/mms/ui/SpamMessageManager$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SpamMessageManager$8;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mContentChangedListener:Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;

    .line 1312
    new-instance v0, Lcom/android/mms/ui/SpamMessageManager$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SpamMessageManager$9;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 1512
    return-void
.end method

.method private BroadcastingLockscreenHoverInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 5
    .parameter "address"
    .parameter "body"
    .parameter "date"

    .prologue
    .line 1826
    const-wide/16 v2, -0x1

    .line 1827
    .local v2, threadID:J
    const/4 v0, 0x0

    .line 1829
    .local v0, NameOrAddress:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1830
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->getOrCreateThreadId(Ljava/lang/String;)J

    move-result-wide v2

    .line 1831
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1834
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.mms.intent.action.LOCKSCREEN_HOVER_UNREAD_MSG"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1835
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "ThreadId"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1836
    const-string v4, "Address"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1837
    const-string v4, "Body"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1838
    const-string v4, "Date"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1840
    iget-object v4, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1842
    return-void
.end method

.method private BroadcastingLockscreenHoverInformationMMS(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V
    .locals 24
    .parameter "pdu"
    .parameter "mmsUri"

    .prologue
    .line 1745
    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, "sub"

    aput-object v2, v4, v1

    const/4 v1, 0x3

    const-string v2, "sub_cs"

    aput-object v2, v4, v1

    .line 1749
    .local v4, SPAM_MMS_STATUS_PROJECTION:[Ljava/lang/String;
    const/4 v15, 0x0

    .line 1750
    .local v15, mCursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1751
    .local v8, address:Ljava/lang/String;
    const/4 v14, 0x0

    .line 1752
    .local v14, mBody:Ljava/lang/String;
    const-wide/16 v10, -0x1

    .line 1755
    .local v10, date:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1758
    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1759
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1760
    .local v18, msgId:J
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v20

    .line 1762
    .local v20, msgUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v1, v0}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 1763
    const/4 v1, 0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    mul-long v10, v1, v5

    .line 1765
    const/16 v23, 0x0

    .line 1766
    .local v23, subject:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1767
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v23

    .line 1771
    :cond_0
    :try_start_1
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v1, :cond_7

    .line 1773
    const/16 v17, 0x0

    .line 1774
    .local v17, messageBody:Ljava/lang/String;
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object/from16 v16, v0

    .line 1776
    .local v16, mMessagePdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v22

    .line 1778
    .local v22, slideshow:Lcom/android/mms/model/SlideshowModel;
    const/4 v1, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v13

    .line 1779
    .local v13, firstSlide:Lcom/android/mms/model/SlideModel;
    if-eqz v13, :cond_1

    .line 1780
    invoke-virtual {v13}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1781
    invoke-virtual {v13}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v17

    .line 1785
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1786
    .local v9, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    .line 1787
    .local v21, offset:I
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1788
    const/16 v1, 0xa

    const/16 v2, 0x20

    move-object/from16 v0, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v23

    .line 1789
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    const/16 v1, 0x20

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1793
    :cond_2
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1794
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_3

    .line 1795
    const/4 v1, 0x0

    const/16 v2, 0x64

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1797
    :cond_3
    const/16 v1, 0xa

    const/16 v2, 0x20

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v17

    .line 1798
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    .line 1810
    .end local v9           #buf:Ljava/lang/StringBuilder;
    .end local v13           #firstSlide:Lcom/android/mms/model/SlideModel;
    .end local v16           #mMessagePdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v17           #messageBody:Ljava/lang/String;
    .end local v18           #msgId:J
    .end local v20           #msgUri:Landroid/net/Uri;
    .end local v21           #offset:I
    .end local v22           #slideshow:Lcom/android/mms/model/SlideshowModel;
    .end local v23           #subject:Ljava/lang/String;
    :cond_5
    :goto_0
    if-eqz v15, :cond_6

    .line 1811
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1815
    :cond_6
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v1}, Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1816
    return-void

    .line 1802
    .restart local v18       #msgId:J
    .restart local v20       #msgUri:Landroid/net/Uri;
    .restart local v23       #subject:Ljava/lang/String;
    :cond_7
    move-object/from16 v14, v23

    goto :goto_0

    .line 1805
    :catch_0
    move-exception v12

    .line 1806
    .local v12, e:Lcom/google/android/mms/MmsException;
    :try_start_2
    const-string v1, "Mms/SpamMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmsException ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1810
    .end local v12           #e:Lcom/google/android/mms/MmsException;
    .end local v18           #msgId:J
    .end local v20           #msgUri:Landroid/net/Uri;
    .end local v23           #subject:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v15, :cond_8

    .line 1811
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1810
    :cond_8
    throw v1
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SpamMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SpamMessageManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->setTotalQuantityTextView(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SpamMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SpamMessageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mVisibleOffset:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/SpamMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    sput-boolean p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteComplete:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/SpamMessageManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->startViewer(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SpamMessageManager;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SpamMessageManager;->confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SpamMessageManager;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SpamMessageManager;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/SpamMessageManager;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->deleteMessage(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SpamMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->updateCheckedMsgCount()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/SpamMessageManager;Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformationMMS(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 83
    invoke-static/range {p0 .. p10}, Lcom/android/mms/ui/SpamMessageManager;->addMessageToUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/SpamMessageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SpamMessageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SpamMessageManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SpamMessageManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SpamMessageManager;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SpamMessageManager;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SpamMessageManager;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SpamMessageManager;->updateEmptyScreen(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    return-object v0
.end method

.method private static addMessageToUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "extensionValues"

    .prologue
    .line 1855
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1856
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    const-string v1, "subject"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    if-eqz p5, :cond_0

    const-string v1, "date"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1860
    :cond_0
    const-string v1, "read"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1861
    if-eqz p7, :cond_1

    const-string v1, "status"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1862
    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, p8, v1

    if-nez v1, :cond_3

    .line 1863
    invoke-static {p0, p2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p8

    .line 1864
    const-string v1, "thread_id"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1870
    :goto_0
    if-eqz p10, :cond_2

    invoke-virtual {v0, p10}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1872
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 1866
    :cond_3
    const-string v1, "thread_id"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private beforeQuery()V
    .locals 2

    .prologue
    .line 1109
    const-string v0, "Mms/SpamMessageManager"

    const-string v1, "beforeQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->hideEmptyView()V

    .line 1111
    return-void
.end method

.method private changeHeaderSizewhenchangeFontSize()I
    .locals 2

    .prologue
    .line 962
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 974
    .local v0, selectAllLP:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v1
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "locked"

    .prologue
    .line 743
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 744
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 746
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 747
    if-eqz p2, :cond_0

    const v1, 0x7f0c0078

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 749
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 750
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 751
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 752
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/ui/SpamMessageManager$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SpamMessageManager$4;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 757
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 758
    return-void

    .line 747
    :cond_0
    const v1, 0x7f0c0077

    goto :goto_0
.end method

.method public static confirmDeleteMessageDialog(Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;ZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 7
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "context"
    .parameter "resourceId"

    .prologue
    const/4 v6, 0x0

    .line 724
    const v4, 0x7f04002f

    invoke-static {p2, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 725
    .local v3, contents:Landroid/view/View;
    const v4, 0x7f0b0105

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 726
    .local v2, checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v4, 0x7f0b0104

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 727
    .local v0, bodyMessage:Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 729
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 730
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_0

    const v4, 0x7f0c0076

    :goto_0
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_0
    const v4, 0x7f0c0075

    goto :goto_0
.end method

.method private confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 3
    .parameter "listener"
    .parameter "resourceId"

    .prologue
    .line 1876
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1877
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0278

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1879
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1880
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1881
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1882
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1883
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1884
    return-void
.end method

.method private deleteMessage(Landroid/net/Uri;)V
    .locals 7
    .parameter "uriMessage"

    .prologue
    const/4 v4, 0x0

    .line 695
    if-eqz p1, :cond_1

    .line 696
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    const/16 v1, 0x70a

    new-instance v2, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v5, 0x0

    const/4 v3, 0x1

    invoke-direct {v2, v5, v6, v3}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 701
    :cond_1
    return-void
.end method

.method private deleteSelectedMessages()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 712
    const-string v1, "Mms/SpamMessageManager"

    const-string v2, "deleteSelectedMessages()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 715
    :cond_0
    new-instance v2, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1, v4}, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;-><init>(Lcom/android/mms/ui/SpamMessageManager;Landroid/net/Uri;Z)V

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCheckedCount()I

    move-result v1

    if-ne v1, v4, :cond_1

    const v1, 0x7f0c0077

    :goto_0
    invoke-static {v2, v3, p0, v1}, Lcom/android/mms/ui/SpamMessageManager;->confirmDeleteMessageDialog(Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;ZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v0

    .line 718
    .local v0, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 719
    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 720
    return-void

    .line 715
    .end local v0           #dlg:Landroid/app/AlertDialog;
    :cond_1
    const v1, 0x7f0c0177

    goto :goto_0
.end method

.method private disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 679
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 680
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 681
    return-void
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 824
    new-instance v0, Lcom/android/mms/ui/SpamMessageManager$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SpamMessageManager$5;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    .prologue
    .line 670
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SpamMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method private getOrCreateThreadId(Ljava/lang/String;)J
    .locals 3
    .parameter "recipient"

    .prologue
    .line 1819
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1821
    .local v0, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1822
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v1

    return-wide v1
.end method

.method private getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2
    .parameter "message"

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 866
    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 870
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 5
    .parameter "count"
    .parameter "zeroResourceId"
    .parameter "pluralResourceId"

    .prologue
    .line 874
    if-nez p1, :cond_0

    .line 875
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/SpamMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 878
    :goto_0
    return-object v0

    .line 877
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 878
    .local v0, str:Ljava/lang/String;
    goto :goto_0
.end method

.method private hideEmptyView()V
    .locals 2

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1898
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1899
    :cond_0
    return-void
.end method

.method private initEmptyView()V
    .locals 3

    .prologue
    .line 1902
    const-string v1, "Mms/SpamMessageManager"

    const-string v2, "initEmptyView"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    const v1, 0x7f0b0067

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SpamMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1905
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_1

    .line 1906
    const-string v1, "Mms/SpamMessageManager"

    const-string v2, "initEmptyView inflate empty view"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyView:Landroid/view/View;

    .line 1908
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0b00ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1912
    :cond_0
    :goto_0
    return-void

    .line 1909
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1910
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mEmptyView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initEtc()V
    .locals 4

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/SpamMessageManager$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SpamMessageManager$2;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/animation/MsgListAnimation;->setLayout(Landroid/widget/LinearLayout;Lcom/sec/android/touchwiz/widget/TwCheckBox;Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 506
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 507
    return-void
.end method

.method private initListAdapter()V
    .locals 3

    .prologue
    .line 422
    const-string v0, "Mms/SpamMessageManager"

    const-string v1, "initListAdapter()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    if-eqz v0, :cond_0

    .line 431
    :goto_0
    return-void

    .line 428
    :cond_0
    new-instance v0, Lcom/android/mms/ui/SpamMessageListAdapter;

    const/4 v1, 0x0

    const v2, 0x7f040086

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/SpamMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    .line 429
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mContentChangedListener:Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SpamMessageListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;)V

    .line 430
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private initListAnimation()V
    .locals 2

    .prologue
    .line 435
    new-instance v0, Lcom/android/mms/animation/MsgListAnimation;

    invoke-direct {v0}, Lcom/android/mms/animation/MsgListAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 436
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v1, Lcom/android/mms/ui/SpamMessageManager$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SpamMessageManager$1;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgListAnimation;->setOnDeleteAnimation(Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;)V

    .line 460
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SpamMessageListAdapter;->setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V

    .line 461
    return-void
.end method

.method private initResourceRefs()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 405
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 406
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 407
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040029

    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    .line 408
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00ec

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mTotalConversations:Landroid/widget/TextView;

    .line 410
    const v1, 0x7f0b003b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SpamMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    .line 411
    const v1, 0x7f0b003d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SpamMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 413
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SpamMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 414
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mTotalConversations:Landroid/widget/TextView;

    const v2, 0x7f0c0009

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SpamMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 416
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 417
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 418
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SpamMessageManager;->setSweepRestriction(Z)V

    .line 419
    return-void
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 512
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    :cond_0
    const/4 v0, 0x0

    .line 515
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFirstItemChanged()Z
    .locals 4

    .prologue
    .line 891
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 892
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 893
    .local v0, newId:J
    iget-wide v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mFirstItemId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 894
    iput-wide v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mFirstItemId:J

    .line 895
    const/4 v2, 0x1

    .line 898
    .end local v0           #newId:J
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isMultiWindowMode()Z
    .locals 5

    .prologue
    .line 1038
    const/4 v2, 0x0

    .line 1041
    .local v2, isMultiWindowMode:Z
    :try_start_0
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    .line 1042
    .local v0, MW:Landroid/sec/multiwindow/MultiWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1043
    const/4 v2, 0x1

    .line 1051
    .end local v0           #MW:Landroid/sec/multiwindow/MultiWindow;
    :goto_0
    return v2

    .line 1045
    .restart local v0       #MW:Landroid/sec/multiwindow/MultiWindow;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1047
    .end local v0           #MW:Landroid/sec/multiwindow/MultiWindow;
    :catch_0
    move-exception v1

    .line 1048
    .local v1, e:Ljava/lang/NoClassDefFoundError;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadToDeleteMode(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 657
    const-string v0, "MessageListMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListMode:I

    .line 658
    return-void
.end method

.method private openThread(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 636
    const-string v3, "Mms/SpamMessageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openThread startActivity for position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v3

    if-lez v3, :cond_0

    .line 649
    :goto_0
    return-void

    .line 640
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 641
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SENDTO"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->getNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 643
    .local v2, number:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smsto:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 644
    .local v0, data:Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 645
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 646
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SpamMessageManager;->startActivity(Landroid/content/Intent;)V

    .line 648
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->drawMessagePointer(I)V

    goto :goto_0
.end method

.method private registerMultiWindowBroadcastReciver()Z
    .locals 2

    .prologue
    .line 1055
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1056
    .local v0, RangeModeFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1058
    new-instance v1, Lcom/android/mms/ui/SpamMessageManager$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SpamMessageManager$6;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1068
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/SpamMessageManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1069
    const/4 v1, 0x1

    return v1
.end method

.method private restoreListOffset()V
    .locals 2

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 909
    :goto_0
    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mVisibleOffset:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    goto :goto_0
.end method

.method private restoreSelectedMessages()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 704
    const-string v0, "Mms/SpamMessageManager"

    const-string v1, "restoreSelectedMessages()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    new-instance v1, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    invoke-direct {v1, p0, v2, v2}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;-><init>(Lcom/android/mms/ui/SpamMessageManager;Landroid/net/Uri;Lcom/android/mms/ui/MessageItem;)V

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCheckedCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const v0, 0x7f0c027b

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/SpamMessageManager;->confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    .line 709
    return-void

    .line 706
    :cond_0
    const v0, 0x7f0c027a

    goto :goto_0
.end method

.method private saveListOffset()V
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 904
    :goto_0
    return-void

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mVisibleOffset:I

    goto :goto_0
.end method

.method private saveToDeleteMode(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 652
    const-string v0, "MessageListMode"

    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 654
    return-void
.end method

.method private setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 674
    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/SweepHandler$ListCheckInterface;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 675
    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 676
    return-void
.end method

.method private setSweepRestriction(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1915
    const/4 v0, 0x0

    .line 1916
    .local v0, restrictionStart:I
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRemovingContactThumbnail()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ExcludeAvatar"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSweepOperationArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1919
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1922
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepAreaRestrictionStart(F)V

    .line 1923
    const-string v1, "Mms/SpamMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSweepRestriction enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " restrictionStart="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    return-void
.end method

.method private setTotalQuantityTextView(I)V
    .locals 4
    .parameter "count"

    .prologue
    .line 883
    const v1, 0x7f0c00ee

    const v2, 0x7f0d0001

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/SpamMessageManager;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    const-string v1, "Mms/SpamMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTotalQuantityTextView(),text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    return-void
.end method

.method private startAsyncQuery()V
    .locals 1

    .prologue
    .line 1128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SpamMessageManager;->startAsyncQueryInternal(Z)V

    .line 1129
    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 1119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/SpamMessageManager$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SpamMessageManager$7;-><init>(Lcom/android/mms/ui/SpamMessageManager;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1124
    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 11
    .parameter "isFake"

    .prologue
    .line 1133
    :try_start_0
    const-string v7, "normalized_date DESC"

    .line 1135
    .local v7, sOrderBySQL:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    .line 1137
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    const/4 v2, 0x0

    sget-object v3, Lcom/android/mms/spam/SpamFilter;->SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " LIMIT "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v7           #sOrderBySQL:Ljava/lang/String;
    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    :goto_0
    return-void

    .line 1141
    .restart local v7       #sOrderBySQL:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    .line 1142
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    const/4 v2, 0x0

    sget-object v3, Lcom/android/mms/spam/SpamFilter;->SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1146
    .end local v7           #sOrderBySQL:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1147
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    .prologue
    .line 1114
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->beforeQuery()V

    .line 1115
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SpamMessageManager;->startAsyncQueryInternal(Z)V

    .line 1116
    return-void
.end method

.method private startViewer(I)V
    .locals 13
    .parameter "position"

    .prologue
    const/16 v5, 0x82

    const/4 v4, 0x1

    .line 761
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    .line 762
    .local v7, itemObject:Ljava/lang/Object;
    instance-of v0, v7, Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 804
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v7

    .line 764
    check-cast v1, Landroid/database/Cursor;

    .line 765
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SpamMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    .line 769
    .local v3, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v3, :cond_0

    .line 771
    const/4 v6, 0x0

    .line 772
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v9

    .line 773
    .local v9, msgId:J
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v11

    .line 775
    .local v11, threadId:J
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 776
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsViewer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 777
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 778
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 779
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 780
    const-string v0, "isSpam"

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 781
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SpamMessageManager;->startActivity(Landroid/content/Intent;)V

    .line 796
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v0, v5, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    iget v2, v3, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v8

    .line 800
    .local v8, messageDetails:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c007d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 784
    .end local v8           #messageDetails:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-eq v0, v5, :cond_2

    .line 786
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 787
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 790
    .restart local v6       #intent:Landroid/content/Intent;
    :goto_2
    const/high16 v0, 0x2400

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 791
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 792
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 793
    const-string v0, "isSpam"

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 794
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SpamMessageManager;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 789
    :cond_4
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v6       #intent:Landroid/content/Intent;
    goto :goto_2
.end method

.method private unregisterMultiWindowBroadcastReciver()Z
    .locals 3

    .prologue
    .line 1074
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1075
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SpamMessageManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/SpamMessageManager"

    const-string v2, "mMultiWindowBroadcastReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCheckedMsgCount()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 941
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 943
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 947
    :goto_0
    iget-boolean v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_3

    .line 948
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f02022d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 953
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 954
    iget-boolean v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_4

    .line 955
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f02022c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 959
    :cond_1
    :goto_2
    return-void

    .line 945
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 950
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 957
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private updateEmptyScreen(IZ)V
    .locals 8
    .parameter "resultCount"
    .parameter "updateCount"

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1085
    const-string v2, "Mms/SpamMessageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateEmptyScreen(),resultCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    .line 1087
    .local v0, listView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v7, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsLandscape:Z

    .line 1089
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v1

    .line 1090
    .local v1, nListMode:I
    if-ne v1, v3, :cond_1

    .line 1091
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->hideEmptyView()V

    .line 1092
    invoke-virtual {p0, v3, v3, v4}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    .line 1106
    :goto_1
    return-void

    .end local v1           #nListMode:I
    :cond_0
    move v2, v4

    .line 1087
    goto :goto_0

    .line 1093
    .restart local v1       #nListMode:I
    :cond_1
    if-ne v1, v7, :cond_2

    .line 1094
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->hideEmptyView()V

    .line 1095
    invoke-virtual {p0, v7, v3, v4}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    goto :goto_1

    .line 1097
    :cond_2
    if-nez p1, :cond_3

    .line 1098
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->initEmptyView()V

    .line 1099
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1104
    :goto_2
    invoke-virtual {p0, v4, v3, v4, p2}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZZ)V

    goto :goto_1

    .line 1101
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->hideEmptyView()V

    .line 1102
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public drawMessagePointer(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 626
    const-string v0, "Mms/SpamMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawMessagePointer(),position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SpamMessageListAdapter;->setListItemSelected(J)V

    .line 633
    return-void
.end method

.method public getCurrentListMode()I
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListMode:I

    return v0
.end method

.method getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 519
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/mms/ui/SpamMessageManager;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-object v0

    .line 523
    :cond_1
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 524
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    const/4 v10, 0x0

    .line 526
    .local v10, objMsgItem:Lcom/android/mms/ui/MessageItem;
    :try_start_0
    const-string v1, "transport_type"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 527
    .local v9, idxMsgType:I
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, szMsgType:Ljava/lang/String;
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .local v0, objMsgItem:Lcom/android/mms/ui/MessageItem;
    goto :goto_0

    .line 529
    .end local v0           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .end local v2           #szMsgType:Ljava/lang/String;
    .end local v9           #idxMsgType:I
    .restart local v10       #objMsgItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    .line 530
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms/SpamMessageManager"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .end local v10           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #objMsgItem:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public getNumber(I)Ljava/lang/String;
    .locals 9
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 537
    const-string v6, "Mms/SpamMessageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNumber(),position="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v6, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    .line 541
    .local v3, itemObject:Ljava/lang/Object;
    instance-of v6, v3, Landroid/database/Cursor;

    if-nez v6, :cond_1

    .line 559
    .end local v3           #itemObject:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v5

    .line 543
    .restart local v3       #itemObject:Ljava/lang/Object;
    :cond_1
    move-object v0, v3

    check-cast v0, Landroid/database/Cursor;

    move-object v1, v0

    .line 545
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    if-ltz v6, :cond_0

    .line 549
    iget-object v6, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6, v1}, Lcom/android/mms/ui/SpamMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    .line 550
    .local v4, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v4, :cond_0

    .line 552
    iget-object v6, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 553
    iget-object v5, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 555
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #itemObject:Ljava/lang/Object;
    .end local v4           #msgItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v2

    .line 556
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isCallable(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1888
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->getNumber(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isListIndex(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1893
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->isMessageIndex(I)Z

    move-result v0

    return v0
.end method

.method public isMessageIndex(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 684
    if-gez p1, :cond_1

    .line 691
    :cond_0
    :goto_0
    return v3

    .line 687
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    .line 688
    .local v0, cnt:I
    iget-object v4, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    .line 689
    .local v2, cntHeader:I
    iget-object v4, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v1

    .line 691
    .local v1, cntFooter:I
    add-int/lit8 v4, v2, -0x1

    if-le p1, v4, :cond_0

    sub-int v4, v0, v1

    if-ge p1, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 394
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 396
    const-string v0, "Mms/SpamMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configurationChanged(),newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsLandscape:Z

    .line 399
    iget v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListMode:I

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->invalidateOptionsMenu()V

    .line 402
    :cond_0
    return-void

    .line 397
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f0c027f

    const v3, 0x7f0c027e

    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;

    .line 158
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListMode:I

    .line 159
    const v1, 0x7f04002d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SpamMessageManager;->setContentView(I)V

    .line 167
    new-instance v1, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;-><init>(Lcom/android/mms/ui/SpamMessageManager;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    .line 168
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    .line 170
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->initResourceRefs()V

    .line 171
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->initListAdapter()V

    .line 172
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->initListAnimation()V

    .line 173
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->initEtc()V

    .line 175
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 176
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 177
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 179
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 181
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SpamMessageManager;->setTitle(I)V

    .line 186
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->registerMultiWindowBroadcastReciver()Z

    .line 187
    return-void

    .line 183
    :cond_1
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 184
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SpamMessageManager;->setTitle(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->unregisterMultiWindowBroadcastReciver()Z

    .line 233
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 234
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 382
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v1

    if-lez v1, :cond_0

    .line 384
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    .line 389
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->startAsyncQuery()V

    .line 262
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 263
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 306
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 341
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 308
    :sswitch_0
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 312
    :sswitch_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 316
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v1

    if-lez v1, :cond_1

    .line 317
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->finish()V

    goto :goto_0

    .line 326
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 327
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->restoreSelectedMessages()V

    goto :goto_0

    .line 329
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->deleteSelectedMessages()V

    goto :goto_0

    .line 333
    :sswitch_4
    iget-boolean v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_3

    .line 334
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgListAnimation;->hidecheckbox()V

    goto :goto_0

    .line 337
    :cond_3
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 306
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xcd -> :sswitch_3
        0xce -> :sswitch_4
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 209
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/16 v4, 0xcd

    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 267
    const-string v0, "Mms/SpamMessageManager"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 272
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v0

    if-lez v0, :cond_4

    .line 273
    const/16 v0, 0xce

    const v1, 0x7f0c017c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    .line 274
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 276
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 277
    const v0, 0x7f0c007b

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    .line 282
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 284
    iget-boolean v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f02022c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 286
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f02022d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 301
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 279
    :cond_2
    const v0, 0x7f0c0022

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    goto :goto_0

    .line 292
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 294
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 295
    const/16 v0, 0xc8

    const v1, 0x7f0c0278

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200c0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 297
    const/16 v0, 0xc9

    const v1, 0x7f0c0279

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020095

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onProgressDlgCompleted(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 859
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onProgressDlgStart(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 848
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 849
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 850
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 852
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, isAnimationEnable:Z
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SpamMessageManager;->setAnimationEnable(Z)V

    .line 203
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 238
    const-string v2, "Mms/SpamMessageManager"

    const-string v3, "\t\t onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->saveListOffset()V

    .line 241
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->saveToDeleteMode(Landroid/os/Bundle;)V

    .line 242
    iget-boolean v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsDeleteMsgAnimating:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->userRelease()V

    .line 244
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->userCancelAnimationEffectForDeleteItems()V

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    .line 247
    .local v1, headerCount:I
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v2, :cond_1

    .line 248
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mFirstItemId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v1           #headerCount:I
    :goto_0
    const-string v2, "Mms/SpamMessageManager"

    const-string v3, "onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 257
    return-void

    .line 250
    .restart local v1       #headerCount:I
    :cond_1
    const-wide/16 v2, -0x1

    :try_start_1
    iput-wide v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mFirstItemId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 252
    .end local v1           #headerCount:I
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SpamMessageListAdapter;->refreshFontSize()V

    .line 192
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->startFakeAsyncQuery()V

    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 195
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SpamMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 216
    return-void
.end method

.method public onSweepActionCanceled(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 351
    const-string v0, "Mms/SpamMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionCanceled(),itemIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 6
    .parameter "itemIndex"
    .parameter "flickDirection"

    .prologue
    const/4 v5, 0x1

    .line 356
    const-string v2, "Mms/SpamMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionFired(),itemIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",flickDirection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 361
    .local v0, list:Lcom/android/mms/ui/MsgSweepActionListView;
    if-nez p2, :cond_1

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->getNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, number:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 365
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 377
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 367
    .restart local v1       #number:Ljava/lang/String;
    :cond_0
    const-string v2, "Mms/SpamMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionFired calling(),itemIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 371
    .end local v1           #number:Ljava/lang/String;
    :cond_1
    if-ne v5, p2, :cond_2

    .line 372
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->openThread(I)V

    .line 373
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 375
    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 346
    const-string v0, "Mms/SpamMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionStarted(),itemIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 2
    .parameter "isAnimationEnable"

    .prologue
    .line 807
    iput-boolean p1, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsAnimationEnable:Z

    .line 809
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGUITunningForSysPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsAnimationEnable:Z

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsAnimationEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SpamMessageListAdapter;->setAnimationEnable(Z)V

    .line 815
    :cond_1
    return-void
.end method

.method public setCurrentListMode(I)I
    .locals 1
    .parameter "listmode"

    .prologue
    .line 665
    iput p1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListMode:I

    .line 666
    iget v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListMode:I

    return v0
.end method

.method public setListModeLayout(IZZ)V
    .locals 1
    .parameter "listMode"
    .parameter "requestLayout"
    .parameter "startAnimation"

    .prologue
    .line 978
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/ui/SpamMessageManager;->setListModeLayout(IZZZ)V

    .line 979
    return-void
.end method

.method public setListModeLayout(IZZZ)V
    .locals 8
    .parameter "listMode"
    .parameter "requestLayout"
    .parameter "startAnimation"
    .parameter "updateCount"

    .prologue
    const-wide/16 v6, 0x190

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 982
    const-string v1, "Mms/SpamMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setListModeLayout(),nListMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",requestLayout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->setCurrentListMode(I)I

    .line 987
    const/16 v0, 0x50

    .line 988
    .local v0, heightOfTitle:I
    if-eqz p1, :cond_3

    .line 989
    invoke-direct {p0}, Lcom/android/mms/ui/SpamMessageManager;->changeHeaderSizewhenchangeFontSize()I

    move-result v0

    .line 991
    iget-boolean v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 992
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    mul-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setTitleHeight(I)V

    .line 993
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    mul-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    invoke-static {v6, v7, v2, v3, v4}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setDeleteModeLayout(Landroid/view/animation/Animation;)V

    .line 1003
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1004
    invoke-direct {p0, v5}, Lcom/android/mms/ui/SpamMessageManager;->setSweepRestriction(Z)V

    .line 1005
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SpamMessageManager;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 1025
    :goto_1
    if-eqz p4, :cond_0

    .line 1026
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SpamMessageManager;->updateActionBarTitle(I)V

    .line 1028
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/SpamMessageListAdapter;->setMessageListMode(I)V

    .line 1029
    if-eqz p2, :cond_1

    .line 1030
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->requestLayout()V

    .line 1033
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->invalidateOptionsMenu()V

    .line 1034
    return-void

    .line 1000
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1007
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SpamMessageListAdapter;->clearCheckedList()V

    .line 1009
    iget-boolean v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_4

    if-eqz p3, :cond_4

    .line 1010
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v3}, Lcom/android/mms/animation/MsgListAnimation;->getTitleHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6, v7, v2, v4, v3}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setNormalModeLayout(Landroid/view/animation/Animation;)V

    .line 1020
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1021
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SpamMessageManager;->setSweepRestriction(Z)V

    .line 1022
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SpamMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    goto :goto_1

    .line 1017
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public setMessageSelectAll(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 818
    const-string v0, "Mms/SpamMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageSelectAll(),checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 820
    return-void
.end method

.method public updateActionBarTitle(I)V
    .locals 5
    .parameter "listMode"

    .prologue
    const v4, 0x7f0c027f

    const v3, 0x7f0c027e

    .line 912
    invoke-virtual {p0}, Lcom/android/mms/ui/SpamMessageManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 913
    .local v0, actionBar:Landroid/app/ActionBar;
    if-nez v0, :cond_0

    .line 938
    :goto_0
    return-void

    .line 916
    :cond_0
    if-nez p1, :cond_4

    .line 917
    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 918
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 919
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 920
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SpamMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 927
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 923
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SpamMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 929
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 930
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 932
    :cond_3
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 936
    :cond_4
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
