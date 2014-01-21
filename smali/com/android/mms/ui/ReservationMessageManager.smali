.class public Lcom/android/mms/ui/ReservationMessageManager;
.super Landroid/app/Activity;
.source "ReservationMessageManager.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;
.implements Lcom/android/mms/ui/SweepHandler$ListCheckInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ReservationMessageManager$DialogSearchMenuBlockKeyListener;,
        Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;,
        Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;,
        Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;,
        Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;
    }
.end annotation


# static fields
.field public static final DELETE_ALL_MESSAGE_TOKEN:I = 0x709

.field public static final DELETE_MESSAGE_TOKEN:I = 0x70a

.field public static final FLAG_DELETE_COMPLETE:I = 0xc9

.field public static final FLAG_DELETE_START:I = 0xc8

.field public static final LIST_MODE_DELETE:I = 0x1

.field public static final LIST_MODE_NORMAL:I = 0x0

.field private static final MENU_ATTACHMENT_LIST:I = 0xd4

.field private static final MENU_COPY_MESSAGE_TEXT:I = 0xcb

.field public static final MENU_DELETE_ALL:I = 0xc8

.field public static final MENU_DELETE_CANCEL:I = 0xd3

.field private static final MENU_DELETE_MESSAGE:I = 0xca

.field public static final MENU_DELETE_OK:I = 0xd2

.field private static final MENU_EDIT_MESSAGE:I = 0xce

.field private static final MENU_FORWARD_MESSAGE:I = 0xcf

.field private static final MENU_LOCK_MESSAGE:I = 0xcd

.field private static final MENU_SEND_NOW:I = 0xc9

.field private static final MENU_UNLOCK_MESSAGE:I = 0xcc

.field private static final MENU_VIEW_MESSAGE_DETAILS:I = 0xd0

.field private static final MESSAGE_LIST_ALL_QUERY_TOKEN:I = 0x6a5

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_LIMIT:I = 0xb

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a4

.field private static final OFFSET:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "Mms/ReservationMessageManager"

.field public static badge:Landroid/widget/QuickContactBadge;

.field public static isVoLTEEnabled:Z


# instance fields
.field private final mContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

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

.field private mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field public mMsgListMode:I

.field private final mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

.field public mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectedPosition:I

.field private mSendNowAddr:Ljava/lang/String;

.field private mSendNowBody:Ljava/lang/String;

.field protected mSendNowConfirmDialog:Landroid/content/DialogInterface;

.field private mSendNowDeliveryReport:Z

.field private mSendNowLocked:Z

.field private mSendNowReadReport:Z

.field private mSendNowSize:J

.field private mSendNowThreadId:J

.field private mSendNowType:Ljava/lang/String;

.field private mSendNowUri:Landroid/net/Uri;

.field private mTotalConversations:Landroid/widget/TextView;

.field private mTotalConversationsLayout:Landroid/widget/LinearLayout;

.field private mVisibleOffset:I

.field private onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ReservationMessageManager;->isVoLTEEnabled:Z

    .line 150
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ReservationMessageManager;->badge:Landroid/widget/QuickContactBadge;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 149
    iput v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListMode:I

    .line 157
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    .line 158
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mVisibleOffset:I

    .line 160
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mFirstItemId:J

    .line 163
    iput-boolean v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsAnimationEnable:Z

    .line 167
    iput-boolean v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsDeleteMsgAnimating:Z

    .line 170
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowType:Ljava/lang/String;

    .line 171
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowAddr:Ljava/lang/String;

    .line 172
    iput-wide v4, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J

    .line 173
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowBody:Ljava/lang/String;

    .line 174
    iput-wide v4, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowSize:J

    .line 175
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;

    .line 176
    iput-boolean v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowLocked:Z

    .line 177
    iput-boolean v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowDeliveryReport:Z

    .line 178
    iput-boolean v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowReadReport:Z

    .line 180
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 673
    new-instance v0, Lcom/android/mms/ui/ReservationMessageManager$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ReservationMessageManager$4;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1314
    new-instance v0, Lcom/android/mms/ui/ReservationMessageManager$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ReservationMessageManager$9;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

    .line 1435
    new-instance v0, Lcom/android/mms/ui/ReservationMessageManager$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ReservationMessageManager$10;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 1827
    new-instance v0, Lcom/android/mms/ui/ReservationMessageManager$DialogSearchMenuBlockKeyListener;

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/ReservationMessageManager$DialogSearchMenuBlockKeyListener;-><init>(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/ReservationMessageManager$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ReservationMessageManager;I)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ReservationMessageManager;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ReservationMessageManager;->updateEmptyScreen(IZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ReservationMessageManager;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ReservationMessageManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->setTotalQuantityTextView(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ReservationMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ReservationMessageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mVisibleOffset:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ReservationMessageManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->openThread(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ReservationMessageManager;->confirmSendDialog(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ReservationMessageManager;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ReservationMessageManager;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ReservationMessageManager;Landroid/net/Uri;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ReservationMessageManager;->deleteMessage(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/mms/ui/ReservationMessageManager;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ReservationMessageManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/android/mms/ui/ReservationMessageManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowBody:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ReservationMessageManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowSize:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/android/mms/ui/ReservationMessageManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowSize:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ReservationMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowLocked:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/mms/ui/ReservationMessageManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowLocked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/ReservationMessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/ReservationMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowDeliveryReport:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/mms/ui/ReservationMessageManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowDeliveryReport:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/ReservationMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowReadReport:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/mms/ui/ReservationMessageManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowReadReport:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->updateCheckedMsgCount()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ReservationMessageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/ReservationMessageManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ReservationMessageManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQuery()V

    return-void
.end method

.method private beforeQuery()V
    .locals 2

    .prologue
    .line 1271
    const-string v0, "Mms/ReservationMessageManager"

    const-string v1, "beforeQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->hideEmptyView()V

    .line 1273
    return-void
.end method

.method private changeHeaderSizewhenchangeFontSize()I
    .locals 2

    .prologue
    .line 1141
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1156
    .local v0, selectAllLP:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v1
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "locked"

    .prologue
    .line 933
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 934
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c012f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 936
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 937
    if-eqz p2, :cond_0

    const v1, 0x7f0c0354

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 939
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 940
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 941
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 942
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/ui/ReservationMessageManager$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ReservationMessageManager$5;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 947
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 948
    return-void

    .line 937
    :cond_0
    const v1, 0x7f0c0353

    goto :goto_0
.end method

.method public static confirmDeleteMessageDialog(Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 7
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "hasLockedMessages"
    .parameter "context"
    .parameter "resourceId"

    .prologue
    const/4 v6, 0x0

    .line 914
    const v4, 0x7f04002f

    invoke-static {p3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 915
    .local v3, contents:Landroid/view/View;
    const v4, 0x7f0b0105

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 916
    .local v2, checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 917
    const v4, 0x7f0b0104

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 919
    .local v0, bodyMessage:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    const v4, 0x7f0c0354

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 922
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 923
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c012f

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

    .line 919
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    const v4, 0x7f0c0353

    goto :goto_0
.end method

.method private confirmSendDialog(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)V
    .locals 3
    .parameter "msgItem"
    .parameter "address"

    .prologue
    .line 1609
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c012c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02d2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c004f

    new-instance v2, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;-><init>(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowConfirmDialog:Landroid/content/DialogInterface;

    .line 1617
    return-void
.end method

.method private deleteMessage(Landroid/net/Uri;Z)V
    .locals 7
    .parameter "uriMessage"
    .parameter "bLocked"

    .prologue
    const/4 v5, 0x0

    .line 852
    if-eqz p1, :cond_1

    .line 853
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    const/16 v1, 0x70a

    new-instance v2, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v6}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    if-eqz p2, :cond_2

    move-object v4, v5

    :goto_0
    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 859
    :cond_1
    return-void

    .line 856
    :cond_2
    const-string v4, "locked=0"

    goto :goto_0
.end method

.method private deleteSelectedMessages()V
    .locals 22

    .prologue
    .line 862
    const-string v18, "Mms/ReservationMessageManager"

    const-string v19, "deleteSelectedMessages()"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const/4 v6, 0x0

    .line 864
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 865
    .local v13, idxMsgType:I
    const/4 v12, 0x1

    .line 866
    .local v12, idxMsgId:I
    const/16 v11, 0x14

    .line 868
    .local v11, idxLockedMsg:I
    const/4 v14, 0x0

    .line 869
    .local v14, locked:Z
    const-wide/16 v15, 0x0

    .line 870
    .local v15, msgId:J
    const-string v17, "sms"

    .line 871
    .local v17, msgType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 872
    .local v4, checked:Z
    const/4 v9, 0x0

    .line 874
    .local v9, hasLockedMessage:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v5

    .line 875
    .local v5, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v5, :cond_2

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #cursor:Landroid/database/Cursor;
    check-cast v6, Landroid/database/Cursor;

    .line 877
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 875
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 880
    :cond_1
    const/4 v13, 0x0

    .line 881
    const/4 v12, 0x1

    .line 882
    const/16 v11, 0x14

    .line 884
    :try_start_0
    const-string v18, "transport_type"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 885
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 886
    const-string v18, "locked"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 890
    :goto_1
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 891
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 892
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v18, :cond_4

    const/4 v14, 0x1

    .line 894
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide v1, v15

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/ReservationMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v4

    .line 896
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_0

    if-eqz v4, :cond_0

    .line 897
    const/4 v9, 0x1

    .line 902
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/DialogInterface;->dismiss()V

    .line 904
    :cond_3
    new-instance v19, Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;

    const/16 v18, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ReservationMessageManager;Landroid/net/Uri;Z)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCheckedCount()I

    move-result v18

    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const v18, 0x7f0c0353

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, v18

    invoke-static {v0, v1, v9, v2, v3}, Lcom/android/mms/ui/ReservationMessageManager;->confirmDeleteMessageDialog(Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v7

    .line 908
    .local v7, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 909
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 910
    return-void

    .line 887
    .end local v7           #dlg:Landroid/app/AlertDialog;
    :catch_0
    move-exception v8

    .line 888
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-string v18, "colsMap"

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 892
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 904
    :cond_5
    const v18, 0x7f0c0353

    goto :goto_3
.end method

.method private disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 836
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 837
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 838
    return-void
.end method

.method private getConversation(I)Lcom/android/mms/data/Conversation;
    .locals 11
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 559
    const/4 v1, 0x0

    .line 561
    .local v1, conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v7, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    .line 562
    .local v4, itemObject:Ljava/lang/Object;
    instance-of v7, v4, Landroid/database/Cursor;

    if-nez v7, :cond_1

    .line 580
    .end local v4           #itemObject:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v6

    .line 564
    .restart local v4       #itemObject:Ljava/lang/Object;
    :cond_1
    move-object v0, v4

    check-cast v0, Landroid/database/Cursor;

    move-object v2, v0

    .line 566
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-ltz v7, :cond_0

    .line 570
    iget-object v7, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v2}, Lcom/android/mms/ui/ReservationMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    .line 571
    .local v5, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v5, :cond_0

    .line 573
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 575
    iget-object v6, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

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

    .line 580
    goto :goto_0

    .line 577
    :catch_0
    move-exception v3

    .line 578
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getConversation(J)Lcom/android/mms/data/Conversation;
    .locals 4
    .parameter "threadId"

    .prologue
    .line 584
    const/4 v0, 0x0

    .line 586
    .local v0, conv:Lcom/android/mms/data/Conversation;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    .line 592
    :goto_0
    return-object v2

    .line 588
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 592
    goto :goto_0

    .line 589
    :catch_0
    move-exception v1

    .line 590
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 4
    .parameter "msgItem"

    .prologue
    const/4 v0, 0x0

    .line 764
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-object v0

    .line 770
    :cond_1
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    .line 771
    .local v1, textModel:Lcom/android/mms/model/TextModel;
    if-eqz v1, :cond_0

    .line 775
    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 776
    .local v0, result:Ljava/lang/String;
    goto :goto_0
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1018
    new-instance v0, Lcom/android/mms/ui/ReservationMessageManager$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ReservationMessageManager$6;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    .prologue
    .line 827
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method private getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2
    .parameter "message"

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1054
    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1058
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 5
    .parameter "count"
    .parameter "zeroResourceId"
    .parameter "pluralResourceId"

    .prologue
    .line 1062
    if-nez p1, :cond_0

    .line 1063
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1066
    :goto_0
    return-object v0

    .line 1065
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1066
    .local v0, str:Ljava/lang/String;
    goto :goto_0
.end method

.method private hideEmptyView()V
    .locals 2

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1841
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1842
    :cond_0
    return-void
.end method

.method private initEmptyView()V
    .locals 3

    .prologue
    .line 1845
    const-string v1, "Mms/ReservationMessageManager"

    const-string v2, "initEmptyView"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    const v1, 0x7f0b0067

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1848
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_1

    .line 1849
    const-string v1, "Mms/ReservationMessageManager"

    const-string v2, "initEmptyView inflate empty view"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    .line 1851
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0b00ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1855
    :cond_0
    :goto_0
    return-void

    .line 1852
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1853
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initEtc()V
    .locals 4

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/ReservationMessageManager$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ReservationMessageManager$3;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/animation/MsgListAnimation;->setLayout(Landroid/widget/LinearLayout;Lcom/sec/android/touchwiz/widget/TwCheckBox;Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 546
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 547
    return-void
.end method

.method private initListAdapter()V
    .locals 3

    .prologue
    .line 463
    const-string v0, "Mms/ReservationMessageManager"

    const-string v1, "initListAdapter()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    if-eqz v0, :cond_0

    .line 472
    :goto_0
    return-void

    .line 469
    :cond_0
    new-instance v0, Lcom/android/mms/ui/ReservationMessageListAdapter;

    const/4 v1, 0x0

    const v2, 0x7f040046

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/ReservationMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    .line 470
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;)V

    .line 471
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private initListAnimation()V
    .locals 2

    .prologue
    .line 476
    new-instance v0, Lcom/android/mms/animation/MsgListAnimation;

    invoke-direct {v0}, Lcom/android/mms/animation/MsgListAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 477
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v1, Lcom/android/mms/ui/ReservationMessageManager$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ReservationMessageManager$2;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgListAnimation;->setOnDeleteAnimation(Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;)V

    .line 501
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V

    .line 502
    return-void
.end method

.method private initResourceRefs()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 417
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 418
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 419
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040029

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    .line 420
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00ec

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversations:Landroid/widget/TextView;

    .line 422
    const v1, 0x7f0b003b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    .line 423
    const v1, 0x7f0b003d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 425
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 426
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversations:Landroid/widget/TextView;

    const v2, 0x7f0c0009

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 428
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 429
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 430
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    new-instance v2, Lcom/android/mms/ui/ReservationMessageManager$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ReservationMessageManager$1;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 459
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->setSweepRestriction(Z)V

    .line 460
    return-void
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 552
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    :cond_0
    const/4 v0, 0x0

    .line 555
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFirstItemChanged()Z
    .locals 4

    .prologue
    .line 1079
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 1080
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1081
    .local v0, newId:J
    iget-wide v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mFirstItemId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 1082
    iput-wide v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mFirstItemId:J

    .line 1083
    const/4 v2, 0x1

    .line 1086
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
    .line 780
    const-string v5, "Mms/ReservationMessageManager"

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

    .line 781
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getCurrentListMode()I

    move-result v5

    if-lez v5, :cond_0

    .line 810
    :goto_0
    return-void

    .line 784
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v5}, Lcom/android/mms/ui/ReservationMessageManager;->getMessageItem(ILandroid/content/Context;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    .line 785
    .local v2, messageItem:Lcom/android/mms/ui/MessageItem;
    if-nez v2, :cond_1

    .line 786
    const-string v5, "Mms/ReservationMessageManager"

    const-string v6, "openThread can\'t find messageItem"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :cond_1
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/ReservationMessageManager;->getConversation(J)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 791
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-nez v0, :cond_2

    .line 792
    const-string v5, "Mms/ReservationMessageManager"

    const-string v6, "openThread can\'t find conversation"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 796
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 797
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    const-string v6, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    .line 799
    .local v3, threadId:J
    invoke-static {v3, v4}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 800
    const-string v5, "highlight"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    const-string v5, "message_type"

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    const-string v5, "select_id"

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 803
    const-string v5, "from_other_list"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 805
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 808
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->startActivity(Landroid/content/Intent;)V

    .line 809
    const-string v5, "Mms/ReservationMessageManager"

    const-string v6, "openThread startActivity"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerMultiWindowBroadcastReciver()Z
    .locals 2

    .prologue
    .line 1219
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1220
    .local v0, RangeModeFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1222
    new-instance v1, Lcom/android/mms/ui/ReservationMessageManager$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ReservationMessageManager$7;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1232
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ReservationMessageManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1233
    const/4 v1, 0x1

    return v1
.end method

.method private restoreListOffset()V
    .locals 2

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 1097
    :goto_0
    return-void

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mVisibleOffset:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    goto :goto_0
.end method

.method private saveListOffset()V
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 1092
    :goto_0
    return-void

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mVisibleOffset:I

    goto :goto_0
.end method

.method private saveToDeleteMode(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 813
    const-string v0, "MessageListMode"

    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getCurrentListMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 815
    return-void
.end method

.method private setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 831
    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/SweepHandler$ListCheckInterface;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 832
    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 833
    return-void
.end method

.method private setSweepRestriction(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1858
    const/4 v0, 0x0

    .line 1859
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

    .line 1862
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1865
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepAreaRestrictionStart(F)V

    .line 1866
    const-string v1, "Mms/ReservationMessageManager"

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

    .line 1867
    return-void
.end method

.method private setTotalQuantityTextView(I)V
    .locals 4
    .parameter "count"

    .prologue
    .line 1071
    const v1, 0x7f0c0260

    const v2, 0x7f0d0001

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/ReservationMessageManager;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    .line 1073
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    const-string v1, "Mms/ReservationMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTotalQuantityTextView(),text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    return-void
.end method

.method private startAsyncQuery()V
    .locals 1

    .prologue
    .line 1290
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQueryInternal(Z)V

    .line 1291
    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 1281
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ReservationMessageManager$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ReservationMessageManager$8;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1286
    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 11
    .parameter "isFake"

    .prologue
    .line 1295
    :try_start_0
    const-string v7, "normalized_date DESC"

    .line 1296
    .local v7, sOrderBySQL:Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "complete-conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1297
    .local v3, uri:Landroid/net/Uri;
    if-eqz p1, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    .line 1299
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "reserved=1"

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
    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 1303
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v7       #sOrderBySQL:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    .line 1304
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "reserved=1"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1308
    .end local v3           #uri:Landroid/net/Uri;
    .end local v7           #sOrderBySQL:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1309
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    .prologue
    .line 1276
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->beforeQuery()V

    .line 1277
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQueryInternal(Z)V

    .line 1278
    return-void
.end method

.method private startViewer(I)V
    .locals 14
    .parameter "position"

    .prologue
    const/16 v5, 0x82

    const/4 v13, 0x1

    .line 951
    const-string v0, "Mms/ReservationMessageManager"

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

    .line 952
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    .line 953
    .local v7, itemObject:Ljava/lang/Object;
    instance-of v0, v7, Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 997
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v7

    .line 955
    check-cast v1, Landroid/database/Cursor;

    .line 956
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    .line 960
    .local v3, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v3, :cond_0

    .line 962
    const/4 v6, 0x0

    .line 963
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v9

    .line 964
    .local v9, msgId:J
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v11

    .line 966
    .local v11, threadId:J
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 967
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsViewer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 968
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 969
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 970
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 971
    const-string v0, "requestReservedMessageView"

    invoke-virtual {v6, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 972
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ReservationMessageManager;->startActivity(Landroid/content/Intent;)V

    .line 987
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v0, v5, :cond_3

    .line 989
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    iget v2, v3, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v8

    .line 991
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

    .line 996
    .end local v8           #messageDetails:Ljava/lang/String;
    :cond_3
    const-string v0, "Mms/ReservationMessageManager"

    const-string v2, "startViewer startActivity"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 975
    :cond_4
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-eq v0, v5, :cond_2

    .line 977
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 978
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 981
    .restart local v6       #intent:Landroid/content/Intent;
    :goto_2
    const/high16 v0, 0x2400

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 982
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 983
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 984
    const-string v0, "requestReservedMessageView"

    invoke-virtual {v6, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 985
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ReservationMessageManager;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 980
    :cond_5
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v6       #intent:Landroid/content/Intent;
    goto :goto_2
.end method

.method private unregisterMultiWindowBroadcastReciver()Z
    .locals 3

    .prologue
    .line 1238
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1239
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1241
    :catch_0
    move-exception v0

    .line 1242
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/ReservationMessageManager"

    const-string v2, "mMultiWindowBroadcastReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCheckedMsgCount()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1120
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1122
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1126
    :goto_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_3

    .line 1127
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f02022d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1132
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1133
    iget-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_4

    .line 1134
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f02022c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1138
    :cond_1
    :goto_2
    return-void

    .line 1124
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1129
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 1136
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private updateEmptyScreen(IZ)V
    .locals 7
    .parameter "resultCount"
    .parameter "updateCount"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1249
    const-string v2, "Mms/ReservationMessageManager"

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

    .line 1250
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    .line 1251
    .local v0, listView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLandscape:Z

    .line 1253
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getCurrentListMode()I

    move-result v1

    .line 1254
    .local v1, nListMode:I
    if-ne v1, v3, :cond_1

    .line 1255
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->hideEmptyView()V

    .line 1256
    invoke-virtual {p0, v3, v3, v4}, Lcom/android/mms/ui/ReservationMessageManager;->setListModeLayout(IZZ)V

    .line 1268
    :goto_1
    return-void

    .end local v1           #nListMode:I
    :cond_0
    move v2, v4

    .line 1251
    goto :goto_0

    .line 1258
    .restart local v1       #nListMode:I
    :cond_1
    if-nez p1, :cond_2

    .line 1259
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->initEmptyView()V

    .line 1260
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1266
    :goto_2
    invoke-virtual {p0, v4, v3, v4, p2}, Lcom/android/mms/ui/ReservationMessageManager;->setListModeLayout(IZZZ)V

    goto :goto_1

    .line 1262
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->hideEmptyView()V

    .line 1263
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public getCurrentListMode()I
    .locals 1

    .prologue
    .line 818
    iget v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListMode:I

    return v0
.end method

.method getMessageItem(ILandroid/content/Context;)Lcom/android/mms/ui/MessageItem;
    .locals 12
    .parameter "position"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 596
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v10

    .line 597
    .local v10, itemObject:Ljava/lang/Object;
    instance-of v1, v10, Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v3, v10

    .line 600
    check-cast v3, Landroid/database/Cursor;

    .line 601
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ReservationMessageManager;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 607
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    const/4 v11, 0x0

    .line 609
    .local v11, objMsgItem:Lcom/android/mms/ui/MessageItem;
    :try_start_0
    const-string v1, "transport_type"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 610
    .local v9, idxMsgType:I
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 611
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

    .line 612
    .end local v0           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .end local v2           #szMsgType:Ljava/lang/String;
    .end local v9           #idxMsgType:I
    .restart local v11       #objMsgItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    .line 613
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms/ReservationMessageManager"

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

    .line 620
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/mms/ui/ReservationMessageManager;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-object v0

    .line 624
    :cond_1
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 625
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    const/4 v10, 0x0

    .line 627
    .local v10, objMsgItem:Lcom/android/mms/ui/MessageItem;
    :try_start_0
    const-string v1, "transport_type"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 628
    .local v9, idxMsgType:I
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 629
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

    .line 630
    .end local v0           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .end local v2           #szMsgType:Ljava/lang/String;
    .end local v9           #idxMsgType:I
    .restart local v10       #objMsgItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    .line 631
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms/ReservationMessageManager"

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

    .line 638
    const-string v5, "Mms/ReservationMessageManager"

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

    .line 639
    const/4 v1, 0x0

    .line 641
    .local v1, conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 642
    if-nez v1, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-object v4

    .line 645
    :catch_0
    move-exception v2

    .line 646
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 649
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 652
    .local v0, contactList:Lcom/android/mms/data/ContactList;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 655
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v3

    .line 656
    .local v3, numbers:[Ljava/lang/String;
    array-length v5, v3

    if-eqz v5, :cond_0

    .line 660
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 661
    const/4 v5, 0x0

    aget-object v4, v3, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 663
    .end local v3           #numbers:[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 664
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isCallable(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1831
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getNumber(I)Ljava/lang/String;

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
    .line 1836
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->isMessageIndex(I)Z

    move-result v0

    return v0
.end method

.method public isMessageIndex(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 841
    if-gez p1, :cond_1

    .line 848
    :cond_0
    :goto_0
    return v3

    .line 844
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    .line 845
    .local v0, cnt:I
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    .line 846
    .local v2, cntHeader:I
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v1

    .line 848
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
    .line 406
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 408
    const-string v0, "Mms/ReservationMessageManager"

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

    .line 409
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLandscape:Z

    .line 411
    iget v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListMode:I

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->invalidateOptionsMenu()V

    .line 414
    :cond_0
    return-void

    .line 409
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    .line 187
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListMode:I

    .line 188
    const v1, 0x7f04002d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->setContentView(I)V

    .line 196
    new-instance v1, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;-><init>(Lcom/android/mms/ui/ReservationMessageManager;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    .line 197
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    .line 199
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->initResourceRefs()V

    .line 200
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->initListAdapter()V

    .line 201
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->initListAnimation()V

    .line 202
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->initEtc()V

    .line 204
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 205
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 206
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->registerMultiWindowBroadcastReciver()Z

    .line 209
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->unregisterMultiWindowBroadcastReciver()Z

    .line 264
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 265
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 394
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getCurrentListMode()I

    move-result v1

    if-lez v1, :cond_0

    .line 396
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->setListModeLayout(IZZ)V

    .line 401
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
    .line 291
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQuery()V

    .line 292
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 293
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 327
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 354
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 329
    :sswitch_0
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/mms/ui/ReservationMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 333
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getCurrentListMode()I

    move-result v1

    if-lez v1, :cond_1

    .line 334
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->finish()V

    goto :goto_0

    .line 341
    :sswitch_2
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->deleteSelectedMessages()V

    goto :goto_0

    .line 345
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgListAnimation;->hidecheckbox()V

    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 327
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
    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 240
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 297
    const-string v0, "Mms/ReservationMessageManager"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 301
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getCurrentListMode()I

    move-result v0

    if-lez v0, :cond_3

    .line 302
    const/16 v0, 0xd3

    const v1, 0x7f0c017c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    .line 303
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 305
    const/16 v0, 0xd2

    const v1, 0x7f0c004f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    .line 306
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 308
    iget-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f02022c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 310
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f02022d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 322
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 319
    const/16 v0, 0xc8

    const v1, 0x7f0c02d1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02008e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onProgressDlgCompleted(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 1043
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 1047
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onProgressDlgStart(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 1036
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 1037
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1038
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1040
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, isAnimationEnable:Z
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ReservationMessageManager;->setAnimationEnable(Z)V

    .line 234
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 269
    const-string v2, "Mms/ReservationMessageManager"

    const-string v3, "onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->saveListOffset()V

    .line 272
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->saveToDeleteMode(Landroid/os/Bundle;)V

    .line 273
    iget-boolean v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsDeleteMsgAnimating:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->userRelease()V

    .line 275
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->userCancelAnimationEffectForDeleteItems()V

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    .line 278
    .local v1, headerCount:I
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v2, :cond_1

    .line 279
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mFirstItemId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v1           #headerCount:I
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 287
    return-void

    .line 281
    .restart local v1       #headerCount:I
    :cond_1
    const-wide/16 v2, -0x1

    :try_start_1
    iput-wide v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mFirstItemId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 283
    .end local v1           #headerCount:I
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->refreshFontSize()V

    .line 214
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->startFakeAsyncQuery()V

    .line 216
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 219
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 220
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 247
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 248
    return-void
.end method

.method public onSweepActionCanceled(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 364
    const-string v0, "Mms/ReservationMessageManager"

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

    .line 365
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 6
    .parameter "itemIndex"
    .parameter "flickDirection"

    .prologue
    const/4 v5, 0x1

    .line 369
    const-string v2, "Mms/ReservationMessageManager"

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

    .line 372
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 374
    .local v0, list:Lcom/android/mms/ui/MsgSweepActionListView;
    if-nez p2, :cond_1

    .line 375
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, number:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 378
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 390
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 380
    .restart local v1       #number:Ljava/lang/String;
    :cond_0
    const-string v2, "Mms/ReservationMessageManager"

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

    .line 382
    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    .end local v1           #number:Ljava/lang/String;
    :cond_1
    if-ne v5, p2, :cond_2

    .line 385
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->openThread(I)V

    .line 386
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 388
    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 359
    const-string v0, "Mms/ReservationMessageManager"

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

    .line 360
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 2
    .parameter "isAnimationEnable"

    .prologue
    .line 1000
    iput-boolean p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsAnimationEnable:Z

    .line 1002
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGUITunningForSysPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsAnimationEnable:Z

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    if-eqz v0, :cond_1

    .line 1007
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsAnimationEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->setAnimationEnable(Z)V

    .line 1008
    :cond_1
    return-void
.end method

.method public setCurrentListMode(I)I
    .locals 1
    .parameter "listmode"

    .prologue
    .line 822
    iput p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListMode:I

    .line 823
    iget v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListMode:I

    return v0
.end method

.method public setListModeLayout(IZZ)V
    .locals 1
    .parameter "listMode"
    .parameter "requestLayout"
    .parameter "startAnimation"

    .prologue
    .line 1160
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/ui/ReservationMessageManager;->setListModeLayout(IZZZ)V

    .line 1161
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

    .line 1164
    const-string v1, "Mms/ReservationMessageManager"

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

    .line 1167
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->setCurrentListMode(I)I

    .line 1169
    const/16 v0, 0x50

    .line 1170
    .local v0, heightOfTitle:I
    if-eqz p1, :cond_3

    .line 1171
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->changeHeaderSizewhenchangeFontSize()I

    move-result v0

    .line 1173
    iget-boolean v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 1174
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    mul-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setTitleHeight(I)V

    .line 1175
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    mul-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    invoke-static {v6, v7, v2, v3, v4}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setDeleteModeLayout(Landroid/view/animation/Animation;)V

    .line 1185
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1186
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ReservationMessageManager;->setSweepRestriction(Z)V

    .line 1187
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 1207
    :goto_1
    if-eqz p4, :cond_0

    .line 1208
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->updateActionBarTitle(I)V

    .line 1210
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->setMessageListMode(I)V

    .line 1211
    if-eqz p2, :cond_1

    .line 1212
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->requestLayout()V

    .line 1215
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->invalidateOptionsMenu()V

    .line 1216
    return-void

    .line 1182
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1189
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->clearCheckedList()V

    .line 1191
    iget-boolean v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_4

    if-eqz p3, :cond_4

    .line 1192
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v3}, Lcom/android/mms/animation/MsgListAnimation;->getTitleHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6, v7, v2, v4, v3}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setNormalModeLayout(Landroid/view/animation/Animation;)V

    .line 1202
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1203
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->setSweepRestriction(Z)V

    .line 1204
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    goto :goto_1

    .line 1199
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public setMessageSelectAll(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 1011
    const-string v0, "Mms/ReservationMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageSelectAll(),checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1013
    return-void
.end method

.method public updateActionBarTitle(I)V
    .locals 4
    .parameter "listMode"

    .prologue
    const v3, 0x7f0c02cc

    .line 1100
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1101
    .local v0, actionBar:Landroid/app/ActionBar;
    if-nez v0, :cond_0

    .line 1117
    :goto_0
    return-void

    .line 1104
    :cond_0
    if-nez p1, :cond_2

    .line 1105
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1106
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1107
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1110
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1112
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 1115
    :cond_2
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
