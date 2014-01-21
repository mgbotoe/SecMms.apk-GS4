.class public Lcom/android/mms/ui/LockedMessageManager;
.super Landroid/app/Activity;
.source "LockedMessageManager.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;
.implements Lcom/android/mms/ui/SweepHandler$ListCheckInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;,
        Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;,
        Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;
    }
.end annotation


# static fields
.field public static final DELETE_ALL_MESSAGE_TOKEN:I = 0x709

.field public static final DELETE_MESSAGE_TOKEN:I = 0x70a

.field public static final FLAG_DELETE_COMPLETE:I = 0xc9

.field public static final FLAG_DELETE_START:I = 0xc8

.field public static final FLAG_UNLOCK_COMPLETE:I = 0xcb

.field public static final FLAG_UNLOCK_START:I = 0xca

.field public static final LIST_MODE_DELETE:I = 0x2

.field public static final LIST_MODE_NORMAL:I = 0x0

.field public static final LIST_MODE_UNLOCK:I = 0x1

.field private static final MENU_ATTACHMENT_LIST:I = 0xce

.field public static final MENU_CONNECT_URL:I = 0xd5

.field private static final MENU_COPY_MESSAGE_TEXT:I = 0xcc

.field private static final MENU_COPY_MESSAGE_TO_SIM:I = 0xd0

.field public static final MENU_DELETE_ALL:I = 0xc9

.field public static final MENU_DELETE_CANCEL:I = 0xd4

.field private static final MENU_DELETE_MESSAGE:I = 0xcb

.field public static final MENU_DELETE_OK:I = 0xd3

.field private static final MENU_EDIT_MESSAGE:I = 0xcd

.field private static final MENU_FORWARD_MESSAGE:I = 0xcf

.field private static final MENU_RESEND_MESSAGE:I = 0xca

.field public static final MENU_UNLOCK_ALL:I = 0xc8

.field private static final MENU_UNLOCK_MESSAGE:I = 0xd2

.field private static final MENU_VIEW_MESSAGE_DETAILS:I = 0xd1

.field private static final MESSAGE_LIST_ALL_QUERY_TOKEN:I = 0x6a5

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_LIMIT:I = 0xb

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a4

.field private static final OFFSET:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "Mms/LockedMsgStoreActivity"

.field public static final UNLOCK_MESSAGE_TOKEN:I = 0x70a

.field public static badge:Landroid/widget/QuickContactBadge;


# instance fields
.field private final mContentChangedListener:Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;

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

.field private mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field public mMsgListMode:I

.field private final mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

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
    .line 133
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/LockedMessageManager;->badge:Landroid/widget/QuickContactBadge;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 132
    iput v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListMode:I

    .line 141
    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    .line 142
    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mVisibleOffset:I

    .line 144
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mFirstItemId:J

    .line 146
    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    iput-boolean v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsAnimationEnable:Z

    .line 153
    iput-boolean v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsDeleteMsgAnimating:Z

    .line 155
    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 669
    new-instance v0, Lcom/android/mms/ui/LockedMessageManager$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/LockedMessageManager$5;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1422
    new-instance v0, Lcom/android/mms/ui/LockedMessageManager$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/LockedMessageManager$9;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mContentChangedListener:Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;

    .line 1556
    new-instance v0, Lcom/android/mms/ui/LockedMessageManager$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/LockedMessageManager$10;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 1693
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/LockedMessageManager;I)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/LockedMessageManager;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/LockedMessageManager;->updateEmptyScreen(IZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/LockedMessageManager;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/LockedMessageManager;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/LockedMessageManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->setTotalQuantityTextView(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/LockedMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/LockedMessageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mVisibleOffset:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/LockedMessageManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->openThread(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/LockedMessageManager;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/LockedMessageManager;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/LockedMessageManager;Landroid/net/Uri;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/LockedMessageManager;->deleteMessage(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/LockedMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/LockedMessageManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->updateCheckedMsgCount()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/LockedMessageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/LockedMessageManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/LockedMessageManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->startAsyncQuery()V

    return-void
.end method

.method private beforeQuery()V
    .locals 2

    .prologue
    .line 1380
    const-string v0, "Mms/LockedMsgStoreActivity"

    const-string v1, "beforeQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->hideEmptyView()V

    .line 1382
    return-void
.end method

.method private changeHeaderSizewhenchangeFontSize()I
    .locals 2

    .prologue
    .line 1247
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1261
    .local v0, selectAllLP:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v1
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "locked"

    .prologue
    .line 1040
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1041
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1043
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1044
    if-eqz p2, :cond_0

    const v1, 0x7f0c0078

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1046
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1047
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1048
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1049
    return-void

    .line 1044
    :cond_0
    const v1, 0x7f0c0077

    goto :goto_0
.end method

.method public static confirmDeleteMessageDialog(Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 7
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "hasLockedMessages"
    .parameter "context"
    .parameter "resourceId"

    .prologue
    const/4 v6, 0x0

    .line 1022
    const v4, 0x7f04002f

    invoke-static {p3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1023
    .local v3, contents:Landroid/view/View;
    const v4, 0x7f0b0105

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1024
    .local v2, checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v4, 0x7f0b0104

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1025
    .local v0, bodyMessage:Landroid/widget/TextView;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 1026
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 1028
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1029
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

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_0
    const v4, 0x7f0c0075

    goto :goto_0
.end method

.method private deleteMessage(Landroid/net/Uri;Z)V
    .locals 7
    .parameter "uriMessage"
    .parameter "bLocked"

    .prologue
    const/4 v5, 0x0

    .line 961
    if-eqz p1, :cond_1

    .line 962
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    const/16 v1, 0x70a

    new-instance v2, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v6}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    if-eqz p2, :cond_2

    move-object v4, v5

    :goto_0
    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 968
    :cond_1
    return-void

    .line 965
    :cond_2
    const-string v4, "locked=0"

    goto :goto_0
.end method

.method private deleteSelectedMessages()V
    .locals 22

    .prologue
    .line 971
    const-string v18, "Mms/LockedMsgStoreActivity"

    const-string v19, "deleteSelectedMessages()"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const/4 v6, 0x0

    .line 973
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 974
    .local v13, idxMsgType:I
    const/4 v12, 0x1

    .line 975
    .local v12, idxMsgId:I
    const/16 v11, 0x14

    .line 977
    .local v11, idxLockedMsg:I
    const/4 v14, 0x0

    .line 978
    .local v14, locked:Z
    const-wide/16 v15, 0x0

    .line 979
    .local v15, msgId:J
    const-string v17, "sms"

    .line 980
    .local v17, msgType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 981
    .local v4, checked:Z
    const/4 v9, 0x0

    .line 983
    .local v9, hasLockedMessage:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v5

    .line 984
    .local v5, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v5, :cond_2

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #cursor:Landroid/database/Cursor;
    check-cast v6, Landroid/database/Cursor;

    .line 986
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 984
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 989
    :cond_1
    const/4 v13, 0x0

    .line 990
    const/4 v12, 0x1

    .line 991
    const/16 v11, 0x14

    .line 993
    :try_start_0
    const-string v18, "transport_type"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 994
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 995
    const-string v18, "locked"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 999
    :goto_1
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1000
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1001
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v18, :cond_4

    const/4 v14, 0x1

    .line 1003
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide v1, v15

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/LockedMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v4

    .line 1005
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_0

    if-eqz v4, :cond_0

    .line 1006
    const/4 v9, 0x1

    .line 1010
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/DialogInterface;->dismiss()V

    .line 1012
    :cond_3
    new-instance v19, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;

    const/16 v18, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;-><init>(Lcom/android/mms/ui/LockedMessageManager;Landroid/net/Uri;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCheckedCount()I

    move-result v18

    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const v18, 0x7f0c0077

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, v18

    invoke-static {v0, v1, v9, v2, v3}, Lcom/android/mms/ui/LockedMessageManager;->confirmDeleteMessageDialog(Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v7

    .line 1016
    .local v7, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 1017
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 1018
    return-void

    .line 996
    .end local v7           #dlg:Landroid/app/AlertDialog;
    :catch_0
    move-exception v8

    .line 997
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-string v18, "colsMap"

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1001
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 1012
    :cond_5
    const v18, 0x7f0c0177

    goto :goto_3
.end method

.method private disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 855
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 856
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 857
    return-void
.end method

.method private getConversation(I)Lcom/android/mms/data/Conversation;
    .locals 11
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 555
    const/4 v1, 0x0

    .line 557
    .local v1, conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v7, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    .line 558
    .local v4, itemObject:Ljava/lang/Object;
    instance-of v7, v4, Landroid/database/Cursor;

    if-nez v7, :cond_1

    .line 576
    .end local v4           #itemObject:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v6

    .line 560
    .restart local v4       #itemObject:Ljava/lang/Object;
    :cond_1
    move-object v0, v4

    check-cast v0, Landroid/database/Cursor;

    move-object v2, v0

    .line 562
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-ltz v7, :cond_0

    .line 566
    iget-object v7, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v2}, Lcom/android/mms/ui/LockedMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    .line 567
    .local v5, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v5, :cond_0

    .line 569
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 571
    iget-object v6, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v4           #itemObject:Ljava/lang/Object;
    .end local v5           #msgItem:Lcom/android/mms/ui/MessageItem;
    :goto_1
    move-object v6, v1

    .line 576
    goto :goto_0

    .line 573
    :catch_0
    move-exception v3

    .line 574
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getConversation(J)Lcom/android/mms/data/Conversation;
    .locals 4
    .parameter "threadId"

    .prologue
    .line 580
    const/4 v0, 0x0

    .line 582
    .local v0, conv:Lcom/android/mms/data/Conversation;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    .line 588
    :goto_0
    return-object v2

    .line 584
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 588
    goto :goto_0

    .line 585
    :catch_0
    move-exception v1

    .line 586
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 4
    .parameter "msgItem"

    .prologue
    const/4 v0, 0x0

    .line 783
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-object v0

    .line 789
    :cond_1
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    .line 790
    .local v1, textModel:Lcom/android/mms/model/TextModel;
    if-eqz v1, :cond_0

    .line 794
    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, result:Ljava/lang/String;
    goto :goto_0
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1118
    new-instance v0, Lcom/android/mms/ui/LockedMessageManager$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/LockedMessageManager$6;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    .prologue
    .line 846
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method private getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2
    .parameter "message"

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1160
    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1164
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 5
    .parameter "count"
    .parameter "zeroResourceId"
    .parameter "pluralResourceId"

    .prologue
    .line 1168
    if-nez p1, :cond_0

    .line 1169
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/LockedMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1172
    :goto_0
    return-object v0

    .line 1171
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1172
    .local v0, str:Ljava/lang/String;
    goto :goto_0
.end method

.method private hideEmptyView()V
    .locals 2

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1823
    :cond_0
    return-void
.end method

.method private initEmptyView()V
    .locals 3

    .prologue
    .line 1826
    const-string v1, "Mms/LockedMsgStoreActivity"

    const-string v2, "initEmptyView"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const v1, 0x7f0b0067

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1829
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_1

    .line 1830
    const-string v1, "Mms/LockedMsgStoreActivity"

    const-string v2, "initEmptyView inflate empty view"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    .line 1832
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0b00ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1836
    :cond_0
    :goto_0
    return-void

    .line 1833
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1834
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initEtc()V
    .locals 4

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/LockedMessageManager$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/LockedMessageManager$4;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/animation/MsgListAnimation;->setLayout(Landroid/widget/LinearLayout;Lcom/sec/android/touchwiz/widget/TwCheckBox;Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 543
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 544
    return-void
.end method

.method private initListAdapter()V
    .locals 3

    .prologue
    .line 460
    const-string v0, "Mms/LockedMsgStoreActivity"

    const-string v1, "initListAdapter()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    if-eqz v0, :cond_0

    .line 469
    :goto_0
    return-void

    .line 466
    :cond_0
    new-instance v0, Lcom/android/mms/ui/LockedMessageListAdapter;

    const/4 v1, 0x0

    const v2, 0x7f040046

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/LockedMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    .line 467
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mContentChangedListener:Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;)V

    .line 468
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private initListAnimation()V
    .locals 2

    .prologue
    .line 473
    new-instance v0, Lcom/android/mms/animation/MsgListAnimation;

    invoke-direct {v0}, Lcom/android/mms/animation/MsgListAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 474
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v1, Lcom/android/mms/ui/LockedMessageManager$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/LockedMessageManager$3;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgListAnimation;->setOnDeleteAnimation(Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;)V

    .line 498
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V

    .line 499
    return-void
.end method

.method private initResourceRefs()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 414
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 415
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 416
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040029

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    .line 417
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00ec

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversations:Landroid/widget/TextView;

    .line 419
    const v1, 0x7f0b003b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    .line 420
    const v1, 0x7f0b003d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 422
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 423
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversations:Landroid/widget/TextView;

    const v2, 0x7f0c0009

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LockedMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 425
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 426
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 427
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    new-instance v2, Lcom/android/mms/ui/LockedMessageManager$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/LockedMessageManager$2;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 456
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->setSweepRestriction(Z)V

    .line 457
    return-void
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 548
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    :cond_0
    const/4 v0, 0x0

    .line 551
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFirstItemChanged()Z
    .locals 4

    .prologue
    .line 1185
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 1186
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1187
    .local v0, newId:J
    iget-wide v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mFirstItemId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 1188
    iput-wide v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mFirstItemId:J

    .line 1189
    const/4 v2, 0x1

    .line 1192
    .end local v0           #newId:J
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private openThread(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 799
    const-string v5, "Mms/LockedMsgStoreActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openThread startActivity for position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v5

    if-lez v5, :cond_0

    .line 829
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v5}, Lcom/android/mms/ui/LockedMessageManager;->getMessageItem(ILandroid/content/Context;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    .line 804
    .local v2, messageItem:Lcom/android/mms/ui/MessageItem;
    if-nez v2, :cond_1

    .line 805
    const-string v5, "Mms/LockedMsgStoreActivity"

    const-string v6, "openThread can\'t find messageItem"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 809
    :cond_1
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/LockedMessageManager;->getConversation(J)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 810
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-nez v0, :cond_2

    .line 811
    const-string v5, "Mms/LockedMsgStoreActivity"

    const-string v6, "openThread can\'t find conversation"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 815
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 816
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    const-string v6, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    .line 818
    .local v3, threadId:J
    invoke-static {v3, v4}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 819
    const-string v5, "highlight"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    const-string v5, "message_type"

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 821
    const-string v5, "select_id"

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 822
    const-string v5, "from_other_list"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 824
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 827
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->startActivity(Landroid/content/Intent;)V

    .line 828
    const-string v5, "Mms/LockedMsgStoreActivity"

    const-string v6, "openThread startActivity()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerMultiWindowBroadcastReciver()Z
    .locals 2

    .prologue
    .line 1324
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1325
    .local v0, RangeModeFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1327
    new-instance v1, Lcom/android/mms/ui/LockedMessageManager$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/LockedMessageManager$7;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1337
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/LockedMessageManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1338
    const/4 v1, 0x1

    return v1
.end method

.method private restoreListOffset()V
    .locals 2

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 1203
    :goto_0
    return-void

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mVisibleOffset:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    goto :goto_0
.end method

.method private saveListOffset()V
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 1198
    :goto_0
    return-void

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mVisibleOffset:I

    goto :goto_0
.end method

.method private saveToDeleteMode(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 832
    const-string v0, "MessageListMode"

    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 834
    return-void
.end method

.method private setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 850
    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/SweepHandler$ListCheckInterface;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 851
    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 852
    return-void
.end method

.method private setSweepRestriction(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1839
    const/4 v0, 0x0

    .line 1840
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

    .line 1842
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1845
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepAreaRestrictionStart(F)V

    .line 1846
    const-string v1, "Mms/LockedMsgStoreActivity"

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

    .line 1847
    return-void
.end method

.method private setTotalQuantityTextView(I)V
    .locals 4
    .parameter "count"

    .prologue
    .line 1177
    const v1, 0x7f0c00ee

    const v2, 0x7f0d0001

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/LockedMessageManager;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    .line 1179
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1181
    const-string v1, "Mms/LockedMsgStoreActivity"

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

    .line 1182
    return-void
.end method

.method private startAsyncQuery()V
    .locals 1

    .prologue
    .line 1399
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/LockedMessageManager;->startAsyncQueryInternal(Z)V

    .line 1400
    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 1390
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/LockedMessageManager$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/LockedMessageManager$8;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1395
    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 11
    .parameter "isFake"

    .prologue
    .line 1404
    :try_start_0
    const-string v7, "normalized_date DESC"

    .line 1405
    .local v7, sOrderBySQL:Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "complete-conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1406
    .local v3, uri:Landroid/net/Uri;
    if-eqz p1, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    .line 1408
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "(locked=1) AND (hidden=0)"

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
    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 1412
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v7       #sOrderBySQL:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    .line 1413
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "(locked=1) AND (hidden=0)"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1417
    .end local v3           #uri:Landroid/net/Uri;
    .end local v7           #sOrderBySQL:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1418
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    .prologue
    .line 1385
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->beforeQuery()V

    .line 1386
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/LockedMessageManager;->startAsyncQueryInternal(Z)V

    .line 1387
    return-void
.end method

.method private startViewer(I)V
    .locals 14
    .parameter "position"

    .prologue
    const/16 v5, 0x82

    const/4 v13, 0x1

    .line 1052
    const-string v0, "Mms/LockedMsgStoreActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startViewer position="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    .line 1054
    .local v7, itemObject:Ljava/lang/Object;
    instance-of v0, v7, Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 1098
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v7

    .line 1056
    check-cast v1, Landroid/database/Cursor;

    .line 1057
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/LockedMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    .line 1061
    .local v3, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v3, :cond_0

    .line 1063
    const/4 v6, 0x0

    .line 1064
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v9

    .line 1065
    .local v9, msgId:J
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v11

    .line 1067
    .local v11, threadId:J
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1068
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsViewer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1069
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1070
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1071
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1072
    const-string v0, "requestLockedMessageView"

    invoke-virtual {v6, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1073
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/LockedMessageManager;->startActivity(Landroid/content/Intent;)V

    .line 1088
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v0, v5, :cond_3

    .line 1090
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    iget v2, v3, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v8

    .line 1092
    .local v8, messageDetails:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c007d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1097
    .end local v8           #messageDetails:Ljava/lang/String;
    :cond_3
    const-string v0, "Mms/LockedMsgStoreActivity"

    const-string v2, "startViewer startActivity"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1076
    :cond_4
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-eq v0, v5, :cond_2

    .line 1078
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1079
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1082
    .restart local v6       #intent:Landroid/content/Intent;
    :goto_2
    const/high16 v0, 0x2400

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1083
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1084
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1085
    const-string v0, "requestLockedMessageView"

    invoke-virtual {v6, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1086
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/LockedMessageManager;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1081
    :cond_5
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v6       #intent:Landroid/content/Intent;
    goto :goto_2
.end method

.method private unlockSelectedMessages()V
    .locals 27

    .prologue
    .line 871
    const-string v3, "Mms/LockedMsgStoreActivity"

    const-string v4, "unlockSelectedMessages()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .local v10, arrayUnlockUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/16 v24, 0x0

    .line 885
    .local v24, unlockCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v12

    .line 886
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 887
    const/4 v11, 0x0

    .line 888
    .local v11, checked:Z
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v22

    .line 889
    .local v22, sizeCursor:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move/from16 v0, v22

    if-ge v14, v0, :cond_4

    .line 890
    const/16 v17, 0x0

    .line 891
    .local v17, idxMsgType:I
    const/16 v16, 0x1

    .line 892
    .local v16, idxMsgId:I
    const/16 v15, 0x15

    .line 895
    .local v15, idxGroupId:I
    :try_start_0
    const-string v3, "transport_type"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 899
    :goto_1
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 902
    .local v23, szMessageType:Ljava/lang/String;
    :try_start_1
    const-string v3, "_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v16

    .line 906
    :goto_2
    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 909
    .local v20, lMessageId:J
    :try_start_2
    const-string v3, "group_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v15

    .line 913
    :goto_3
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 915
    .local v18, lMessageGroupId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    move-wide/from16 v0, v20

    move-object/from16 v2, v23

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/mms/ui/LockedMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v11

    .line 917
    if-nez v11, :cond_0

    .line 918
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 889
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 896
    .end local v18           #lMessageGroupId:J
    .end local v20           #lMessageId:J
    .end local v23           #szMessageType:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 897
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 903
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .restart local v23       #szMessageType:Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 904
    .restart local v13       #e:Ljava/lang/IllegalArgumentException;
    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 910
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .restart local v20       #lMessageId:J
    :catch_2
    move-exception v13

    .line 911
    .restart local v13       #e:Ljava/lang/IllegalArgumentException;
    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 922
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .restart local v18       #lMessageGroupId:J
    :cond_0
    add-int/lit8 v24, v24, 0x1

    .line 923
    const-string v3, "mms"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 924
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 936
    .local v6, unlockUri:Landroid/net/Uri;
    :goto_5
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 925
    .end local v6           #unlockUri:Landroid/net/Uri;
    :cond_1
    const-string v3, "wpm"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 926
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .restart local v6       #unlockUri:Landroid/net/Uri;
    goto :goto_5

    .line 929
    .end local v6           #unlockUri:Landroid/net/Uri;
    :cond_2
    cmp-long v3, v20, v18

    if-nez v3, :cond_3

    .line 930
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .restart local v6       #unlockUri:Landroid/net/Uri;
    goto :goto_5

    .line 933
    .end local v6           #unlockUri:Landroid/net/Uri;
    :cond_3
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .restart local v6       #unlockUri:Landroid/net/Uri;
    goto :goto_5

    .line 941
    .end local v6           #unlockUri:Landroid/net/Uri;
    .end local v11           #checked:Z
    .end local v14           #i:I
    .end local v15           #idxGroupId:I
    .end local v16           #idxMsgId:I
    .end local v17           #idxMsgType:I
    .end local v18           #lMessageGroupId:J
    .end local v20           #lMessageId:J
    .end local v22           #sizeCursor:I
    .end local v23           #szMessageType:Ljava/lang/String;
    :cond_4
    if-nez v24, :cond_5

    .line 942
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    .line 958
    :goto_6
    return-void

    .line 944
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v3, :cond_6

    .line 945
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v4, 0xca

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 947
    :cond_6
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 948
    .local v7, values:Landroid/content/ContentValues;
    const-string v3, "locked"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 949
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_7
    move/from16 v0, v24

    if-ge v14, v0, :cond_9

    .line 950
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 951
    .restart local v6       #unlockUri:Landroid/net/Uri;
    if-eqz v6, :cond_7

    .line 952
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    const/16 v4, 0x70a

    new-instance v5, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v25, 0x0

    add-int/lit8 v8, v24, -0x1

    if-ne v14, v8, :cond_8

    const/4 v8, 0x1

    :goto_8
    move-wide/from16 v0, v25

    invoke-direct {v5, v0, v1, v8}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 949
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 952
    :cond_8
    const/4 v8, 0x0

    goto :goto_8

    .line 956
    .end local v6           #unlockUri:Landroid/net/Uri;
    :cond_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_6
.end method

.method private unregisterMultiWindowBroadcastReciver()Z
    .locals 3

    .prologue
    .line 1343
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1344
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1346
    :catch_0
    move-exception v0

    .line 1347
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/LockedMsgStoreActivity"

    const-string v2, "mMultiWindowBroadcastReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCheckedMsgCount()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1226
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1228
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1232
    :goto_0
    iget-boolean v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_3

    .line 1233
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f02022d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1238
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1239
    iget-boolean v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_4

    .line 1240
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f02022c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1244
    :cond_1
    :goto_2
    return-void

    .line 1230
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1235
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 1242
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuCancel:Landroid/view/MenuItem;

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

    .line 1354
    const-string v2, "Mms/LockedMsgStoreActivity"

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

    .line 1355
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    .line 1356
    .local v0, listView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v7, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLandscape:Z

    .line 1358
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v1

    .line 1359
    .local v1, nListMode:I
    if-nez p1, :cond_2

    .line 1360
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_0

    .line 1361
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 1363
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->initEmptyView()V

    .line 1364
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1365
    invoke-virtual {p0, v4, v3, v4, p2}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZZ)V

    .line 1377
    :goto_1
    return-void

    .end local v1           #nListMode:I
    :cond_1
    move v2, v4

    .line 1356
    goto :goto_0

    .line 1366
    .restart local v1       #nListMode:I
    :cond_2
    if-ne v1, v3, :cond_3

    .line 1367
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->hideEmptyView()V

    .line 1368
    invoke-virtual {p0, v3, v3, v4}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    goto :goto_1

    .line 1369
    :cond_3
    if-ne v1, v7, :cond_4

    .line 1370
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->hideEmptyView()V

    .line 1371
    invoke-virtual {p0, v7, v3, v4}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    goto :goto_1

    .line 1373
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->hideEmptyView()V

    .line 1374
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1375
    invoke-virtual {p0, v4, v3, v4, p2}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZZ)V

    goto :goto_1
.end method


# virtual methods
.method public getCurrentListMode()I
    .locals 1

    .prologue
    .line 837
    iget v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListMode:I

    return v0
.end method

.method getMessageItem(ILandroid/content/Context;)Lcom/android/mms/ui/MessageItem;
    .locals 12
    .parameter "position"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 592
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v10

    .line 593
    .local v10, itemObject:Ljava/lang/Object;
    instance-of v1, v10, Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v3, v10

    .line 596
    check-cast v3, Landroid/database/Cursor;

    .line 597
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-direct {p0, v3}, Lcom/android/mms/ui/LockedMessageManager;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 603
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    const/4 v11, 0x0

    .line 605
    .local v11, objMsgItem:Lcom/android/mms/ui/MessageItem;
    :try_start_0
    const-string v1, "transport_type"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 606
    .local v9, idxMsgType:I
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 607
    .local v2, szMsgType:Ljava/lang/String;
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .local v0, objMsgItem:Lcom/android/mms/ui/MessageItem;
    goto :goto_0

    .line 608
    .end local v0           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .end local v2           #szMsgType:Ljava/lang/String;
    .end local v9           #idxMsgType:I
    .restart local v11       #objMsgItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    .line 609
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms/LockedMsgStoreActivity"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v11

    .end local v11           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #objMsgItem:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 616
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/mms/ui/LockedMessageManager;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-object v0

    .line 620
    :cond_1
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 621
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    const/4 v10, 0x0

    .line 623
    .local v10, objMsgItem:Lcom/android/mms/ui/MessageItem;
    :try_start_0
    const-string v1, "transport_type"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 624
    .local v9, idxMsgType:I
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, szMsgType:Ljava/lang/String;
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .local v0, objMsgItem:Lcom/android/mms/ui/MessageItem;
    goto :goto_0

    .line 626
    .end local v0           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .end local v2           #szMsgType:Ljava/lang/String;
    .end local v9           #idxMsgType:I
    .restart local v10       #objMsgItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    .line 627
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms/LockedMsgStoreActivity"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .end local v10           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #objMsgItem:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public getNumber(I)Ljava/lang/String;
    .locals 8
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 634
    const-string v5, "Mms/LockedMsgStoreActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNumber(),position="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const/4 v1, 0x0

    .line 637
    .local v1, conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 638
    if-nez v1, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-object v4

    .line 641
    :catch_0
    move-exception v2

    .line 642
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 645
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 648
    .local v0, contactList:Lcom/android/mms/data/ContactList;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 651
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v3

    .line 652
    .local v3, numbers:[Ljava/lang/String;
    array-length v5, v3

    if-eqz v5, :cond_0

    .line 656
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 657
    const/4 v5, 0x0

    aget-object v4, v3, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 659
    .end local v3           #numbers:[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 660
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isCallable(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1812
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getNumber(I)Ljava/lang/String;

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
    .line 1817
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->isMessageIndex(I)Z

    move-result v0

    return v0
.end method

.method public isMessageIndex(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 860
    if-gez p1, :cond_1

    .line 867
    :cond_0
    :goto_0
    return v3

    .line 863
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    .line 864
    .local v0, cnt:I
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    .line 865
    .local v2, cntHeader:I
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v1

    .line 867
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
    .line 403
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 405
    const-string v0, "Mms/LockedMsgStoreActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configurationChanged(),newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLandscape:Z

    .line 408
    iget v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListMode:I

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->invalidateOptionsMenu()V

    .line 411
    :cond_0
    return-void

    .line 406
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    .line 161
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListMode:I

    .line 162
    const v1, 0x7f04002d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->setContentView(I)V

    .line 170
    new-instance v1, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;-><init>(Lcom/android/mms/ui/LockedMessageManager;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    .line 171
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    .line 173
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->initResourceRefs()V

    .line 174
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->initListAdapter()V

    .line 175
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->initListAnimation()V

    .line 176
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->initEtc()V

    .line 179
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/mms/ui/LockedMessageManager$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/LockedMessageManager$1;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 190
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 191
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->registerMultiWindowBroadcastReciver()Z

    .line 194
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 233
    const-string v0, "aaa"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 236
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 242
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->unregisterMultiWindowBroadcastReciver()Z

    .line 244
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 245
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 392
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v1

    if-lez v1, :cond_0

    .line 394
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    .line 398
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
    .line 272
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->startAsyncQuery()V

    .line 273
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 274
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 316
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 352
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 318
    :sswitch_0
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 322
    :sswitch_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 326
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v1

    if-lez v1, :cond_1

    .line 327
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->finish()V

    goto :goto_0

    .line 335
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 336
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->unlockSelectedMessages()V

    goto :goto_0

    .line 338
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->deleteSelectedMessages()V

    goto :goto_0

    .line 343
    :sswitch_4
    iget-boolean v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_3

    .line 344
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgListAnimation;->hidecheckbox()V

    goto :goto_0

    .line 347
    :cond_3
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 316
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xd3 -> :sswitch_3
        0xd4 -> :sswitch_4
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 219
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/16 v4, 0xd3

    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 278
    const-string v0, "Mms/LockedMsgStoreActivity"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 282
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v0

    if-lez v0, :cond_4

    .line 283
    const/16 v0, 0xd4

    const v1, 0x7f0c017c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    .line 284
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 286
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 287
    const v0, 0x7f0c007b

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 294
    iget-boolean v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f02022c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f02022d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 311
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 289
    :cond_2
    const v0, 0x7f0c0022

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    goto :goto_0

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 304
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 305
    const/16 v0, 0xc8

    const v1, 0x7f0c0097

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200bb

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 307
    const/16 v0, 0xc9

    const v1, 0x7f0c0094

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
    .line 1149
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 1153
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1154
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onProgressDlgStart(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 1142
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 1143
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1144
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1146
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, isAnimationEnable:Z
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/LockedMessageManager;->setAnimationEnable(Z)V

    .line 213
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 249
    const-string v2, "Mms/LockedMsgStoreActivity"

    const-string v3, "\t\t onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->saveListOffset()V

    .line 252
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->saveToDeleteMode(Landroid/os/Bundle;)V

    .line 253
    iget-boolean v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsDeleteMsgAnimating:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->userRelease()V

    .line 255
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->userCancelAnimationEffectForDeleteItems()V

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    .line 258
    .local v1, headerCount:I
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mFirstItemId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v1           #headerCount:I
    :goto_0
    const-string v2, "Mms/LockedMsgStoreActivity"

    const-string v3, "onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 268
    return-void

    .line 261
    .restart local v1       #headerCount:I
    :cond_1
    const-wide/16 v2, -0x1

    :try_start_1
    iput-wide v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mFirstItemId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 263
    .end local v1           #headerCount:I
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageListAdapter;->refreshFontSize()V

    .line 199
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->startFakeAsyncQuery()V

    .line 201
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 204
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 205
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 228
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 229
    return-void
.end method

.method public onSweepActionCanceled(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 362
    const-string v0, "Mms/LockedMsgStoreActivity"

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

    .line 363
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 6
    .parameter "itemIndex"
    .parameter "flickDirection"

    .prologue
    const/4 v5, 0x1

    .line 367
    const-string v2, "Mms/LockedMsgStoreActivity"

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

    .line 370
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 372
    .local v0, list:Lcom/android/mms/ui/MsgSweepActionListView;
    if-nez p2, :cond_1

    .line 373
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, number:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 376
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 388
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 378
    .restart local v1       #number:Ljava/lang/String;
    :cond_0
    const-string v2, "Mms/LockedMsgStoreActivity"

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

    .line 380
    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    .end local v1           #number:Ljava/lang/String;
    :cond_1
    if-ne v5, p2, :cond_2

    .line 383
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->openThread(I)V

    .line 384
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 357
    const-string v0, "Mms/LockedMsgStoreActivity"

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

    .line 358
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 2
    .parameter "isAnimationEnable"

    .prologue
    .line 1101
    iput-boolean p1, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsAnimationEnable:Z

    .line 1103
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGUITunningForSysPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsAnimationEnable:Z

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    if-eqz v0, :cond_1

    .line 1108
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsAnimationEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->setAnimationEnable(Z)V

    .line 1109
    :cond_1
    return-void
.end method

.method public setCurrentListMode(I)I
    .locals 1
    .parameter "listmode"

    .prologue
    .line 841
    iput p1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListMode:I

    .line 842
    iget v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListMode:I

    return v0
.end method

.method public setListModeLayout(IZZ)V
    .locals 1
    .parameter "listMode"
    .parameter "requestLayout"
    .parameter "startAnimation"

    .prologue
    .line 1265
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZZ)V

    .line 1266
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

    .line 1269
    const-string v1, "Mms/LockedMsgStoreActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setListModeLayout(),listMode="

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

    .line 1272
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->setCurrentListMode(I)I

    .line 1274
    const/16 v0, 0x50

    .line 1275
    .local v0, heightOfTitle:I
    if-eqz p1, :cond_3

    .line 1276
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->changeHeaderSizewhenchangeFontSize()I

    move-result v0

    .line 1278
    iget-boolean v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 1279
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    mul-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setTitleHeight(I)V

    .line 1280
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    mul-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    invoke-static {v6, v7, v2, v3, v4}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setDeleteModeLayout(Landroid/view/animation/Animation;)V

    .line 1290
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1291
    invoke-direct {p0, v5}, Lcom/android/mms/ui/LockedMessageManager;->setSweepRestriction(Z)V

    .line 1292
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 1312
    :goto_1
    if-eqz p4, :cond_0

    .line 1313
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->updateActionBarTitle(I)V

    .line 1315
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/LockedMessageListAdapter;->setMessageListMode(I)V

    .line 1316
    if-eqz p2, :cond_1

    .line 1317
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->requestLayout()V

    .line 1320
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->invalidateOptionsMenu()V

    .line 1321
    return-void

    .line 1287
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1294
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->clearCheckedList()V

    .line 1296
    iget-boolean v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_4

    if-eqz p3, :cond_4

    .line 1297
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v3}, Lcom/android/mms/animation/MsgListAnimation;->getTitleHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6, v7, v2, v4, v3}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setNormalModeLayout(Landroid/view/animation/Animation;)V

    .line 1307
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1308
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->setSweepRestriction(Z)V

    .line 1309
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    goto :goto_1

    .line 1304
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public setMessageSelectAll(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 1112
    const-string v0, "Mms/LockedMsgStoreActivity"

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

    .line 1113
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1114
    return-void
.end method

.method public updateActionBarTitle(I)V
    .locals 4
    .parameter "listMode"

    .prologue
    const v3, 0x7f0c02ca

    .line 1206
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1207
    .local v0, actionBar:Landroid/app/ActionBar;
    if-nez v0, :cond_0

    .line 1223
    :goto_0
    return-void

    .line 1210
    :cond_0
    if-nez p1, :cond_2

    .line 1211
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1212
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1213
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/LockedMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1216
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1218
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 1221
    :cond_2
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
