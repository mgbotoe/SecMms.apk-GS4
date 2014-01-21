.class public Lcom/android/mms/ui/DraftMessageManager;
.super Landroid/app/Activity;
.source "DraftMessageManager.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;
.implements Lcom/android/mms/ui/SweepHandler$ListCheckInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;,
        Lcom/android/mms/ui/DraftMessageManager$MsgListMenuClickListener;,
        Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;
    }
.end annotation


# static fields
.field public static final DELETE_ALL_MESSAGE_TOKEN:I = 0x709

.field public static final DELETE_MESSAGE_TOKEN:I = 0x70a

.field public static final FLAG_DELETE_COMPLETE:I = 0xc9

.field public static final FLAG_DELETE_START:I = 0xc8

.field public static final LIST_MODE_DELETE:I = 0x1

.field public static final LIST_MODE_NORMAL:I = 0x0

.field public static final MENU_DELETE_ALL:I = 0xc8

.field public static final MENU_DELETE_CANCEL:I = 0xd3

.field private static final MENU_DELETE_MESSAGE:I = 0xc9

.field public static final MENU_DELETE_OK:I = 0xd2

.field private static final MESSAGE_LIST_ALL_QUERY_TOKEN:I = 0x6a5

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_LIMIT:I = 0xb

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a4

.field private static final MESSAGE_LIST_SELECTION:Ljava/lang/String; = null

.field private static final OFFSET:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "Mms/DraftMessageManager"

.field public static badge:Landroid/widget/QuickContactBadge;


# instance fields
.field private final mContentChangedListener:Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;

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

.field private mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field public mMsgListMode:I

.field private final mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectedPosition:I

.field private mTotalConversations:Landroid/widget/TextView;

.field private mTotalConversationsLayout:Landroid/widget/LinearLayout;

.field private mVisibleOffset:I

.field private onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(type=3 OR msg_box=3) AND thread_id<>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/DraftMessageManager;->MESSAGE_LIST_SELECTION:Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/DraftMessageManager;->badge:Landroid/widget/QuickContactBadge;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 123
    iput v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListMode:I

    .line 131
    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    .line 132
    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mVisibleOffset:I

    .line 134
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mFirstItemId:J

    .line 136
    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    iput-boolean v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    .line 143
    iput-boolean v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsDeleteMsgAnimating:Z

    .line 145
    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 629
    new-instance v0, Lcom/android/mms/ui/DraftMessageManager$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DraftMessageManager$5;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1194
    new-instance v0, Lcom/android/mms/ui/DraftMessageManager$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DraftMessageManager$10;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mContentChangedListener:Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;

    .line 1306
    new-instance v0, Lcom/android/mms/ui/DraftMessageManager$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DraftMessageManager$11;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 1393
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/DraftMessageManager;I)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/DraftMessageManager;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/DraftMessageManager;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/DraftMessageManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->setTotalQuantityTextView(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/DraftMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/DraftMessageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mVisibleOffset:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/DraftMessageManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->startViewer(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/DraftMessageManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->openThread(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/DraftMessageManager;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/DraftMessageManager;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/DraftMessageManager;Landroid/net/Uri;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/DraftMessageManager;->deleteMessage(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/DraftMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/DraftMessageManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->updateCheckedMsgCount()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/DraftMessageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/DraftMessageManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/DraftMessageManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/DraftMessageManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/DraftMessageManager;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/DraftMessageManager;->updateEmptyScreen(IZ)V

    return-void
.end method

.method private beforeQuery()V
    .locals 2

    .prologue
    .line 1152
    const-string v0, "Mms/DraftMessageManager"

    const-string v1, "beforeQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->hideEmptyView()V

    .line 1154
    return-void
.end method

.method private changeHeaderSizewhenchangeFontSize()I
    .locals 2

    .prologue
    .line 1011
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1026
    .local v0, selectAllLP:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v1
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "locked"

    .prologue
    .line 815
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 816
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 818
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 819
    if-eqz p2, :cond_0

    const v1, 0x7f0c0078

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 821
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 822
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 823
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 824
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/ui/DraftMessageManager$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/DraftMessageManager$6;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 829
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 830
    return-void

    .line 819
    :cond_0
    const v1, 0x7f0c0077

    goto :goto_0
.end method

.method public static confirmDeleteMessageDialog(Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 7
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "hasLockedMessages"
    .parameter "context"
    .parameter "resourceId"

    .prologue
    const/4 v6, 0x0

    .line 797
    const v4, 0x7f04002f

    invoke-static {p3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 798
    .local v3, contents:Landroid/view/View;
    const v4, 0x7f0b0105

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 799
    .local v2, checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 800
    const v4, 0x7f0b0104

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 801
    .local v0, bodyMessage:Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 803
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 804
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

    .line 736
    if-eqz p1, :cond_1

    .line 737
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    const/16 v1, 0x70a

    new-instance v2, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v6}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    if-eqz p2, :cond_2

    move-object v4, v5

    :goto_0
    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 743
    :cond_1
    return-void

    .line 740
    :cond_2
    const-string v4, "locked=0"

    goto :goto_0
.end method

.method private deleteSelectedMessages()V
    .locals 22

    .prologue
    .line 746
    const-string v18, "Mms/DraftMessageManager"

    const-string v19, "deleteSelectedMessages()"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const/4 v6, 0x0

    .line 748
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 749
    .local v13, idxMsgType:I
    const/4 v12, 0x1

    .line 750
    .local v12, idxMsgId:I
    const/16 v11, 0x14

    .line 752
    .local v11, idxLockedMsg:I
    const/4 v14, 0x0

    .line 753
    .local v14, locked:Z
    const-wide/16 v15, 0x0

    .line 754
    .local v15, msgId:J
    const-string v17, "sms"

    .line 755
    .local v17, msgType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 756
    .local v4, checked:Z
    const/4 v9, 0x0

    .line 758
    .local v9, hasLockedMessage:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v5

    .line 759
    .local v5, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v5, :cond_2

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #cursor:Landroid/database/Cursor;
    check-cast v6, Landroid/database/Cursor;

    .line 761
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 759
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 764
    :cond_1
    const/4 v13, 0x0

    .line 765
    const/4 v12, 0x1

    .line 766
    const/16 v11, 0x14

    .line 768
    :try_start_0
    const-string v18, "transport_type"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 769
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 770
    const-string v18, "locked"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 774
    :goto_1
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 775
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 776
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v18, :cond_4

    const/4 v14, 0x1

    .line 778
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide v1, v15

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/DraftMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v4

    .line 780
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_0

    if-eqz v4, :cond_0

    .line 781
    const/4 v9, 0x1

    .line 785
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/DialogInterface;->dismiss()V

    .line 787
    :cond_3
    new-instance v19, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;

    const/16 v18, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;-><init>(Lcom/android/mms/ui/DraftMessageManager;Landroid/net/Uri;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCheckedCount()I

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

    invoke-static {v0, v1, v9, v2, v3}, Lcom/android/mms/ui/DraftMessageManager;->confirmDeleteMessageDialog(Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v7

    .line 791
    .local v7, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 792
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 793
    return-void

    .line 771
    .end local v7           #dlg:Landroid/app/AlertDialog;
    :catch_0
    move-exception v8

    .line 772
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-string v18, "colsMap"

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 776
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 787
    :cond_5
    const v18, 0x7f0c0177

    goto :goto_3
.end method

.method private disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 720
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 721
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 722
    return-void
.end method

.method private getConversation(I)Lcom/android/mms/data/Conversation;
    .locals 11
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 541
    const/4 v1, 0x0

    .line 543
    .local v1, conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v7, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    .line 544
    .local v4, itemObject:Ljava/lang/Object;
    const-string v7, "Mms/DraftMessageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getConversation position="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    instance-of v7, v4, Landroid/database/Cursor;

    if-nez v7, :cond_1

    .line 547
    const-string v7, "Mms/DraftMessageManager"

    const-string v8, "getConversation object isn\'t cursor instance"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .end local v4           #itemObject:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v6

    .line 551
    .restart local v4       #itemObject:Ljava/lang/Object;
    :cond_1
    move-object v0, v4

    check-cast v0, Landroid/database/Cursor;

    move-object v2, v0

    .line 553
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-ltz v7, :cond_0

    .line 557
    iget-object v7, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v2}, Lcom/android/mms/ui/DraftMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    .line 558
    .local v5, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v5, :cond_2

    .line 559
    const-string v7, "Mms/DraftMessageManager"

    const-string v8, "getConversation can\'t find msgItem"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 569
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v4           #itemObject:Ljava/lang/Object;
    .end local v5           #msgItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v3

    .line 570
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3           #ex:Ljava/lang/Exception;
    :goto_1
    move-object v6, v1

    .line 572
    goto :goto_0

    .line 563
    .restart local v2       #cursor:Landroid/database/Cursor;
    .restart local v4       #itemObject:Ljava/lang/Object;
    .restart local v5       #msgItem:Lcom/android/mms/ui/MessageItem;
    :cond_2
    :try_start_1
    const-string v7, "Mms/DraftMessageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getConversation threadId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 567
    iget-object v6, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 888
    new-instance v0, Lcom/android/mms/ui/DraftMessageManager$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DraftMessageManager$7;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    .prologue
    .line 711
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method private getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2
    .parameter "message"

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 924
    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 928
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 5
    .parameter "count"
    .parameter "zeroResourceId"
    .parameter "pluralResourceId"

    .prologue
    .line 932
    if-nez p1, :cond_0

    .line 933
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/DraftMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 936
    :goto_0
    return-object v0

    .line 935
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, str:Ljava/lang/String;
    goto :goto_0
.end method

.method private hideEmptyView()V
    .locals 2

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1526
    :cond_0
    return-void
.end method

.method private initEmptyView()V
    .locals 3

    .prologue
    .line 1529
    const-string v1, "Mms/DraftMessageManager"

    const-string v2, "initEmptyView"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    const v1, 0x7f0b0067

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1532
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_1

    .line 1533
    const-string v1, "Mms/DraftMessageManager"

    const-string v2, "initEmptyView inflate empty view"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    .line 1535
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0b00ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1539
    :cond_0
    :goto_0
    return-void

    .line 1536
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1537
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initEtc()V
    .locals 4

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/DraftMessageManager$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/DraftMessageManager$4;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/animation/MsgListAnimation;->setLayout(Landroid/widget/LinearLayout;Lcom/sec/android/touchwiz/widget/TwCheckBox;Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 529
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 530
    return-void
.end method

.method private initListAdapter()V
    .locals 3

    .prologue
    .line 446
    const-string v0, "Mms/DraftMessageManager"

    const-string v1, "initListAdapter()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    if-eqz v0, :cond_0

    .line 455
    :goto_0
    return-void

    .line 452
    :cond_0
    new-instance v0, Lcom/android/mms/ui/DraftMessageListAdapter;

    const/4 v1, 0x0

    const v2, 0x7f040046

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/DraftMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    .line 453
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mContentChangedListener:Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;)V

    .line 454
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private initListAnimation()V
    .locals 2

    .prologue
    .line 459
    new-instance v0, Lcom/android/mms/animation/MsgListAnimation;

    invoke-direct {v0}, Lcom/android/mms/animation/MsgListAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 460
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v1, Lcom/android/mms/ui/DraftMessageManager$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/DraftMessageManager$3;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgListAnimation;->setOnDeleteAnimation(Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;)V

    .line 484
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V

    .line 485
    return-void
.end method

.method private initResourceRefs()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 400
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 401
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 402
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040029

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    .line 403
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00ec

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversations:Landroid/widget/TextView;

    .line 405
    const v1, 0x7f0b003b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    .line 406
    const v1, 0x7f0b003d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 408
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 409
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversations:Landroid/widget/TextView;

    const v2, 0x7f0c0009

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DraftMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 411
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 412
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 413
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    new-instance v2, Lcom/android/mms/ui/DraftMessageManager$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/DraftMessageManager$2;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 442
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->setSweepRestriction(Z)V

    .line 443
    return-void
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 534
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    :cond_0
    const/4 v0, 0x0

    .line 537
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFirstItemChanged()Z
    .locals 4

    .prologue
    .line 949
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 950
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 951
    .local v0, newId:J
    iget-wide v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mFirstItemId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 952
    iput-wide v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mFirstItemId:J

    .line 953
    const/4 v2, 0x1

    .line 956
    .end local v0           #newId:J
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private openThread(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 673
    const-string v4, "Mms/DraftMessageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openThread startActivity for position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getCurrentListMode()I

    move-result v4

    if-lez v4, :cond_0

    .line 695
    :goto_0
    return-void

    .line 677
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 678
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    const-string v5, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 681
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-nez v0, :cond_1

    .line 682
    const-string v4, "Mms/DraftMessageManager"

    const-string v5, "openThread can\'t find conversation"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 685
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 686
    .local v2, threadId:J
    invoke-static {v2, v3}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 689
    const-string v4, "from_other_list"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 690
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 693
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->startActivity(Landroid/content/Intent;)V

    .line 694
    const-string v4, "Mms/DraftMessageManager"

    const-string v5, "openThread startActivity()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerMultiWindowBroadcastReciver()Z
    .locals 2

    .prologue
    .line 1089
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1090
    .local v0, RangeModeFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1092
    new-instance v1, Lcom/android/mms/ui/DraftMessageManager$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/DraftMessageManager$8;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1102
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/DraftMessageManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1103
    const/4 v1, 0x1

    return v1
.end method

.method private restoreListOffset()V
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 967
    :goto_0
    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mVisibleOffset:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    goto :goto_0
.end method

.method private saveListOffset()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 962
    :goto_0
    return-void

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mVisibleOffset:I

    goto :goto_0
.end method

.method private saveToDeleteMode(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 698
    const-string v0, "MessageListMode"

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getCurrentListMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 699
    return-void
.end method

.method private setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 715
    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/SweepHandler$ListCheckInterface;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 716
    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 717
    return-void
.end method

.method private setSweepRestriction(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1542
    const/4 v0, 0x0

    .line 1543
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

    .line 1546
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1549
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepAreaRestrictionStart(F)V

    .line 1550
    const-string v1, "Mms/DraftMessageManager"

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

    .line 1551
    return-void
.end method

.method private setTotalQuantityTextView(I)V
    .locals 4
    .parameter "count"

    .prologue
    .line 941
    const v1, 0x7f0c00ee

    const v2, 0x7f0d0001

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/DraftMessageManager;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    .line 943
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    const-string v1, "Mms/DraftMessageManager"

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

    .line 946
    return-void
.end method

.method private startAsyncQuery()V
    .locals 1

    .prologue
    .line 1171
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/DraftMessageManager;->startAsyncQueryInternal(Z)V

    .line 1172
    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 1162
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/DraftMessageManager$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/DraftMessageManager$9;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1167
    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 11
    .parameter "isFake"

    .prologue
    .line 1176
    :try_start_0
    const-string v7, "normalized_date DESC"

    .line 1177
    .local v7, sOrderBySQL:Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "draft-messages"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1178
    .local v3, uri:Landroid/net/Uri;
    if-eqz p1, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    .line 1180
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/android/mms/ui/DraftMessageManager;->MESSAGE_LIST_SELECTION:Ljava/lang/String;

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
    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 1184
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v7       #sOrderBySQL:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    .line 1185
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/android/mms/ui/DraftMessageManager;->MESSAGE_LIST_SELECTION:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1189
    .end local v3           #uri:Landroid/net/Uri;
    .end local v7           #sOrderBySQL:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1190
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    .prologue
    .line 1157
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->beforeQuery()V

    .line 1158
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/DraftMessageManager;->startAsyncQueryInternal(Z)V

    .line 1159
    return-void
.end method

.method private startViewer(I)V
    .locals 14
    .parameter "position"

    .prologue
    const/4 v13, 0x1

    .line 833
    const-string v9, "Mms/DraftMessageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startViewer position="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v9, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v9, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 835
    .local v2, itemObject:Ljava/lang/Object;
    instance-of v9, v2, Landroid/database/Cursor;

    if-nez v9, :cond_1

    .line 867
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v2

    .line 837
    check-cast v1, Landroid/database/Cursor;

    .line 838
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    if-ltz v9, :cond_0

    .line 841
    iget-object v9, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v9, v1}, Lcom/android/mms/ui/DraftMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    .line 842
    .local v5, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v5, :cond_0

    .line 844
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    .line 845
    .local v3, msgId:J
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v6

    .line 846
    .local v6, threadId:J
    const/4 v8, 0x0

    .line 849
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 850
    sget-object v9, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 857
    :goto_1
    iget-object v9, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    .line 860
    .local v0, composeIntent:Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 861
    const-string v9, "exit_on_sent"

    invoke-virtual {v0, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 862
    const-string v9, "from_draft_msgbox"

    invoke-virtual {v0, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 863
    const-string v9, "draft_ThreadId"

    invoke-virtual {v0, v9, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 864
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DraftMessageManager;->startActivity(Landroid/content/Intent;)V

    .line 866
    const-string v9, "Mms/DraftMessageManager"

    const-string v10, "startViewer startActivity"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 851
    .end local v0           #composeIntent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, v5, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v10, 0x82

    if-eq v9, v10, :cond_0

    .line 852
    sget-object v9, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    goto :goto_1
.end method

.method private unregisterMultiWindowBroadcastReciver()Z
    .locals 3

    .prologue
    .line 1108
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1109
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/DraftMessageManager"

    const-string v2, "mMultiWindowBroadcastReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCheckedMsgCount()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 990
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 992
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 996
    :goto_0
    iget-boolean v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_3

    .line 997
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f02022d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1002
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1003
    iget-boolean v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_4

    .line 1004
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f02022c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1008
    :cond_1
    :goto_2
    return-void

    .line 994
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 999
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 1006
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private updateEmptyScreen(IZ)V
    .locals 8
    .parameter "resultCount"
    .parameter "updateCount"

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1119
    const-string v2, "Mms/DraftMessageManager"

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

    .line 1120
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    .line 1121
    .local v0, listView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLandscape:Z

    .line 1123
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getCurrentListMode()I

    move-result v1

    .line 1124
    .local v1, nListMode:I
    if-ne v1, v3, :cond_3

    .line 1125
    if-nez p1, :cond_2

    .line 1126
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_0

    .line 1127
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 1128
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->initEmptyView()V

    .line 1129
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1130
    invoke-virtual {p0, v4, v3, v4}, Lcom/android/mms/ui/DraftMessageManager;->setListModeLayout(IZZ)V

    .line 1149
    :goto_1
    return-void

    .end local v1           #nListMode:I
    :cond_1
    move v2, v4

    .line 1121
    goto :goto_0

    .line 1133
    .restart local v1       #nListMode:I
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->hideEmptyView()V

    .line 1134
    invoke-virtual {p0, v3, v3, v4}, Lcom/android/mms/ui/DraftMessageManager;->setListModeLayout(IZZ)V

    goto :goto_1

    .line 1137
    :cond_3
    if-nez p1, :cond_5

    .line 1138
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_4

    .line 1139
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 1140
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->initEmptyView()V

    .line 1141
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1147
    :goto_2
    invoke-virtual {p0, v4, v3, v4, p2}, Lcom/android/mms/ui/DraftMessageManager;->setListModeLayout(IZZZ)V

    goto :goto_1

    .line 1143
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->hideEmptyView()V

    .line 1144
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public getCurrentListMode()I
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListMode:I

    return v0
.end method

.method getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 576
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/mms/ui/DraftMessageManager;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-object v0

    .line 580
    :cond_1
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 581
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    const/4 v10, 0x0

    .line 583
    .local v10, objMsgItem:Lcom/android/mms/ui/MessageItem;
    :try_start_0
    const-string v1, "transport_type"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 584
    .local v9, idxMsgType:I
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 585
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

    .line 586
    .end local v0           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .end local v2           #szMsgType:Ljava/lang/String;
    .end local v9           #idxMsgType:I
    .restart local v10       #objMsgItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    .line 587
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms/DraftMessageManager"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 594
    const-string v5, "Mms/DraftMessageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNumber(),position="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v1, 0x0

    .line 597
    .local v1, conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 598
    if-nez v1, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-object v4

    .line 601
    :catch_0
    move-exception v2

    .line 602
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 605
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 608
    .local v0, contactList:Lcom/android/mms/data/ContactList;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 611
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v3

    .line 612
    .local v3, numbers:[Ljava/lang/String;
    array-length v5, v3

    if-eqz v5, :cond_0

    .line 616
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 617
    const/4 v5, 0x0

    aget-object v4, v3, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 619
    .end local v3           #numbers:[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 620
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isCallable(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1515
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->getNumber(I)Ljava/lang/String;

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
    .line 1520
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->isMessageIndex(I)Z

    move-result v0

    return v0
.end method

.method public isMessageIndex(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 725
    if-gez p1, :cond_1

    .line 732
    :cond_0
    :goto_0
    return v3

    .line 728
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    .line 729
    .local v0, cnt:I
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    .line 730
    .local v2, cntHeader:I
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v1

    .line 732
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
    .line 389
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 391
    const-string v0, "Mms/DraftMessageManager"

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

    .line 392
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLandscape:Z

    .line 394
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getCurrentListMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->invalidateOptionsMenu()V

    .line 397
    :cond_0
    return-void

    .line 392
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    .line 151
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListMode:I

    .line 152
    const v1, 0x7f04002d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->setContentView(I)V

    .line 160
    new-instance v1, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;-><init>(Lcom/android/mms/ui/DraftMessageManager;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    .line 161
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    .line 163
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->initResourceRefs()V

    .line 164
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->initListAdapter()V

    .line 165
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->initListAnimation()V

    .line 166
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->initEtc()V

    .line 169
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/mms/ui/DraftMessageManager$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/DraftMessageManager$1;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 180
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 181
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->registerMultiWindowBroadcastReciver()Z

    .line 184
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 225
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 231
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->unregisterMultiWindowBroadcastReciver()Z

    .line 233
    :cond_2
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

    .line 372
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 373
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getCurrentListMode()I

    move-result v1

    if-lez v1, :cond_1

    .line 374
    iget-boolean v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgListAnimation;->hidecheckbox()V

    .line 384
    :goto_0
    return v0

    .line 377
    :cond_0
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/DraftMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 382
    :cond_1
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 384
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->startAsyncQuery()V

    .line 261
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 262
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 302
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 332
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 304
    :sswitch_0
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/mms/ui/DraftMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 308
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getCurrentListMode()I

    move-result v1

    if-lez v1, :cond_1

    .line 309
    iget-boolean v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgListAnimation;->hidecheckbox()V

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/DraftMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 315
    :cond_1
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 316
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->finish()V

    goto :goto_0

    .line 321
    :sswitch_2
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->deleteSelectedMessages()V

    goto :goto_0

    .line 325
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgListAnimation;->hidecheckbox()V

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/DraftMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 302
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xd2 -> :sswitch_2
        0xd3 -> :sswitch_3
        0x102002c -> :sswitch_1
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
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 266
    const-string v0, "Mms/DraftMessageManager"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 270
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getCurrentListMode()I

    move-result v0

    if-lez v0, :cond_3

    .line 271
    const/16 v0, 0xd3

    const v1, 0x7f0c017c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    .line 272
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 274
    const/16 v0, 0xd2

    const v1, 0x7f0c007b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    .line 275
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 277
    iget-boolean v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f02022c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 279
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f02022d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 297
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 287
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 292
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 293
    const/16 v0, 0xc8

    const v1, 0x7f0c0094

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020095

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onProgressDlgCompleted(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 917
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onProgressDlgStart(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 906
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 907
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 908
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 910
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, isAnimationEnable:Z
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DraftMessageManager;->setAnimationEnable(Z)V

    .line 203
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 238
    const-string v2, "Mms/DraftMessageManager"

    const-string v3, "onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->saveListOffset()V

    .line 241
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->saveToDeleteMode(Landroid/os/Bundle;)V

    .line 242
    iget-boolean v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsDeleteMsgAnimating:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->userRelease()V

    .line 244
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->userCancelAnimationEffectForDeleteItems()V

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    .line 247
    .local v1, headerCount:I
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v2, :cond_1

    .line 248
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mFirstItemId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v1           #headerCount:I
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 256
    return-void

    .line 250
    .restart local v1       #headerCount:I
    :cond_1
    const-wide/16 v2, -0x1

    :try_start_1
    iput-wide v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mFirstItemId:J
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
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftMessageListAdapter;->refreshFontSize()V

    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->startFakeAsyncQuery()V

    .line 191
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 194
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 195
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 218
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 219
    return-void
.end method

.method public onSweepActionCanceled(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 342
    const-string v0, "Mms/DraftMessageManager"

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

    .line 343
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 6
    .parameter "itemIndex"
    .parameter "flickDirection"

    .prologue
    const/4 v5, 0x1

    .line 347
    const-string v2, "Mms/DraftMessageManager"

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

    .line 350
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 352
    .local v0, list:Lcom/android/mms/ui/MsgSweepActionListView;
    if-nez p2, :cond_1

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->getNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, number:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 356
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 368
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 358
    .restart local v1       #number:Ljava/lang/String;
    :cond_0
    const-string v2, "Mms/DraftMessageManager"

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

    .line 360
    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 362
    .end local v1           #number:Ljava/lang/String;
    :cond_1
    if-ne v5, p2, :cond_2

    .line 363
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->openThread(I)V

    .line 364
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 366
    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 337
    const-string v0, "Mms/DraftMessageManager"

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

    .line 338
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 2
    .parameter "isAnimationEnable"

    .prologue
    .line 870
    iput-boolean p1, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    .line 872
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGUITunningForSysPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    if-eqz v0, :cond_1

    .line 877
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->setAnimationEnable(Z)V

    .line 878
    :cond_1
    return-void
.end method

.method public setCurrentListMode(I)I
    .locals 1
    .parameter "listmode"

    .prologue
    .line 706
    iput p1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListMode:I

    .line 707
    iget v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListMode:I

    return v0
.end method

.method public setListModeLayout(IZZ)V
    .locals 1
    .parameter "listMode"
    .parameter "requestLayout"
    .parameter "startAnimation"

    .prologue
    .line 1030
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/ui/DraftMessageManager;->setListModeLayout(IZZZ)V

    .line 1031
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

    .line 1034
    const-string v1, "Mms/DraftMessageManager"

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

    .line 1037
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->setCurrentListMode(I)I

    .line 1039
    const/16 v0, 0x50

    .line 1040
    .local v0, heightOfTitle:I
    if-eqz p1, :cond_3

    .line 1041
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->changeHeaderSizewhenchangeFontSize()I

    move-result v0

    .line 1043
    iget-boolean v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 1044
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    mul-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setTitleHeight(I)V

    .line 1045
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    mul-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    invoke-static {v6, v7, v2, v3, v4}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setDeleteModeLayout(Landroid/view/animation/Animation;)V

    .line 1055
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1056
    invoke-direct {p0, v5}, Lcom/android/mms/ui/DraftMessageManager;->setSweepRestriction(Z)V

    .line 1057
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 1077
    :goto_1
    if-eqz p4, :cond_0

    .line 1078
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->updateActionBarTitle(I)V

    .line 1080
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/DraftMessageListAdapter;->setMessageListMode(I)V

    .line 1081
    if-eqz p2, :cond_1

    .line 1082
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->requestLayout()V

    .line 1085
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->invalidateOptionsMenu()V

    .line 1086
    return-void

    .line 1052
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1059
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->clearCheckedList()V

    .line 1061
    iget-boolean v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_4

    if-eqz p3, :cond_4

    .line 1062
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v3}, Lcom/android/mms/animation/MsgListAnimation;->getTitleHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6, v7, v2, v4, v3}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setNormalModeLayout(Landroid/view/animation/Animation;)V

    .line 1072
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1073
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->setSweepRestriction(Z)V

    .line 1074
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    goto :goto_1

    .line 1069
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public setMessageSelectAll(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 881
    const-string v0, "Mms/DraftMessageManager"

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

    .line 882
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 883
    return-void
.end method

.method public updateActionBarTitle(I)V
    .locals 4
    .parameter "listMode"

    .prologue
    const v3, 0x7f0c0380

    .line 970
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 971
    .local v0, actionBar:Landroid/app/ActionBar;
    if-nez v0, :cond_0

    .line 987
    :goto_0
    return-void

    .line 974
    :cond_0
    if-nez p1, :cond_2

    .line 975
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 976
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 977
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/DraftMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 980
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 982
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 985
    :cond_2
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
