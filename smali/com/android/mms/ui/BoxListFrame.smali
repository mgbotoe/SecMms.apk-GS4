.class public Lcom/android/mms/ui/BoxListFrame;
.super Landroid/widget/FrameLayout;
.source "BoxListFrame.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;
.implements Lcom/android/mms/ui/SweepHandler$ListCheckInterface;
.implements Lcom/android/mms/data/Contact$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;,
        Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;,
        Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;
    }
.end annotation


# static fields
.field private static final ACTION_CONFIG_DIALOG:Ljava/lang/String; = "com.sec.android.app.firewall.action.CONFIG_DIALOG"

.field public static final ALL_DRAFT_MESSAGE_URI:Landroid/net/Uri; = null

.field public static final ALL_IN_MESSAGE_URI:Landroid/net/Uri; = null

.field public static final ALL_OUT_MESSAGE_URI:Landroid/net/Uri; = null

.field public static final ALL_PUSH_MESSAGE_URI:Landroid/net/Uri; = null

.field public static final ALL_SENT_MESSAGE_URI:Landroid/net/Uri; = null

.field private static final BLACK_LIST:Ljava/lang/String; = "blacklist"

.field private static final CACHE_SIZE:I = 0x32

.field private static final DELETE_ALL_BOX_TOKEN:I = 0x70b

.field private static final DELETE_MSG_QUERY_TOKEN:I = 0x709

.field private static final DELETE_SELECTED_MSG_TOKEN:I = 0x70a

.field private static final DRAFTBOX_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6ac

.field private static final DRAFTBOX_LIST_QUERY_TOKEN:I = 0x6ab

.field public static final FLAG_DELETE_COMPLETE:I = 0x66

.field public static final FLAG_DELETE_START:I = 0x65

.field private static final HANDLER_MSG_MOVE_OK:I = 0x3e8

.field private static final ICON_HTML_END:Ljava/lang/String; = "\" align=\"middle\"/>"

.field private static final ICON_HTML_START:Ljava/lang/String; = "<img src=\"@drawable/"

.field private static final INBOX_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a6

.field private static final INBOX_LIST_QUERY_TOKEN:I = 0x6a5

.field public static final INDEX_DRAFT:I = 0x3

.field public static final INDEX_INBOX:I = 0x0

.field public static final INDEX_OUTBOX:I = 0x2

.field public static final INDEX_SENTBOX:I = 0x1

.field public static final INDEX_WAPPUSH:I = 0x4

.field private static final MENU_ADD_TO_BLACK_LIST:I = 0x36

.field private static final MENU_ADD_TO_WHITE_LIST:I = 0x35

.field private static final MENU_COMPOSE_NEW:I = 0x1

.field private static final MENU_COPY_TEXT:I = 0x8

.field private static final MENU_COPY_TO_SIM:I = 0xd

.field private static final MENU_DELETE:I = 0x2

.field private static final MENU_DELETE_CANCEL:I = 0x3a

.field private static final MENU_DELETE_OK:I = 0x39

.field private static final MENU_EDIT:I = 0xc

.field private static final MENU_FORWARD:I = 0x7

.field private static final MENU_GOTO_MAILBOX:I = 0x11

.field private static final MENU_LOCK:I = 0xb

.field private static final MENU_LOCK_MESSAGE:I = 0x1c

.field private static final MENU_MOVE_CANCEL:I = 0x3c

.field private static final MENU_MOVE_MSG:I = 0x10

.field private static final MENU_MOVE_OK:I = 0x3b

.field private static final MENU_PREFERENCES:I = 0x6

.field private static final MENU_REMOVE_FROM_BLACK_LIST:I = 0x38

.field private static final MENU_REMOVE_FROM_WHITE_LIST:I = 0x37

.field private static final MENU_RESEND:I = 0x9

.field private static final MENU_SEARCH:I = 0x3

.field private static final MENU_SPAM_MESSAGE:I = 0xf

.field private static final MENU_TIMEDSEND:I = 0x4

.field private static final MENU_UNLOCK:I = 0xa

.field private static final MENU_UNLOCK_MESSAGE:I = 0x1d

.field private static final MENU_VIEW_CONV:I = 0x5

.field private static final MENU_VIEW_DETAILS:I = 0xe

.field public static final MOVE_TO_INBOX_WITH_NEWMSG_NOTI:Z = true

.field public static final MOVE_TO_OUTBOX_WITH_FAILED_NOTI:Z = true

.field private static final OUTBOX_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a8

.field private static final OUTBOX_LIST_QUERY_TOKEN:I = 0x6a7

.field private static final PUSHBOX_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6ae

.field private static final PUSHBOX_LIST_QUERY_TOKEN:I = 0x6ad

.field private static final SENTBOX_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6aa

.field private static final SENTBOX_LIST_QUERY_TOKEN:I = 0x6a9

.field public static final START_VIEW_LATEST_NEW_MESSAGE:Z = false

.field private static TAG:Ljava/lang/String; = null

.field private static final WHITE_LIST:Ljava/lang/String; = "whitelist"

.field private static boxId:I

.field public static mContxtMenu:Landroid/view/ContextMenu;

.field private static mDialogMessageDetails:Ljava/lang/String;

.field private static mIsSearchMode:Z

.field private static mNotifyFailed:Z

.field private static mStatusBarNoti:Z

.field private static mStatusBarNotiPushMessage:Z


# instance fields
.field private final ACTION_BAR_INIT:I

.field private final ACTION_BAR_RESUME:I

.field private isKeyLongPressed:Z

.field items:[Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionbarNormalListLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListTitle:Landroid/widget/TextView;

.field private mActivity:Landroid/app/Activity;

.field private mBoxButton:Landroid/widget/LinearLayout;

.field private mBoxButtonText:Landroid/widget/Button;

.field private mBoxListHeader:Landroid/widget/LinearLayout;

.field private mBoxListHeaderText:Landroid/widget/TextView;

.field private final mBoxListKeyListener:Landroid/view/View$OnKeyListener;

.field private mBoxListMoveTitle:Landroid/widget/LinearLayout;

.field private final mBoxListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mBoxListTitle:Landroid/widget/LinearLayout;

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field protected mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private final mContentChangedListener:Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;

.field private mCountToDelete:I

.field private mCursor:Landroid/database/Cursor;

.field private mDeleteConfirmDialog:Landroid/app/AlertDialog;

.field private mDeleteEventHandler:Landroid/os/Handler;

.field private mDeleteListActionBarCancelButton:Landroid/widget/TextView;

.field private mDeleteListActionBarDoneButton:Landroid/widget/TextView;

.field private mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

.field private mDeleteListActionBarTitle:Landroid/widget/TextView;

.field private mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field private mDeletedThreadIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroid/app/Dialog;

.field private mDialogId:I

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewPopup:Landroid/widget/TextView;

.field private mFirstItemId:J

.field private mId:J

.field private final mImgGetter:Landroid/text/Html$ImageGetter;

.field private mIntent:Landroid/content/Intent;

.field private mIsDeleteMode:Z

.field private mIsDeletedAll:Z

.field private mIsMoveMode:Z

.field private mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

.field public mListType:I

.field private mListView:Lcom/android/mms/ui/MsgSweepActionListView;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgLocked:Z

.field private mMsgOptions:Lcom/android/mms/ui/MessageOptions;

.field private mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

.field private mMsgType:I

.field private mMsgUri:Landroid/net/Uri;

.field private mNewButton:Landroid/widget/LinearLayout;

.field private mPosition:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

.field private mSearchView:Landroid/widget/SearchView;

.field mSeen:I

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectBoxDialog:Landroid/app/AlertDialog;

.field private mSelectedItemTop:I

.field private mSelectedMMSMsgIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedMMSThreadIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPosition:I

.field private mSelectedSMSMsgIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectorAdapter:Lcom/android/mms/ui/SelectBoxTypeAdapter;

.field private mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mSoftkeyLeft_Move:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mTopView:Landroid/widget/FrameLayout;

.field private mTotalMessages:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mVisiblePosition:I

.field private messageHandler:Landroid/os/Handler;

.field private moveMsgCount:I

.field private moveProgressDialog:Landroid/app/ProgressDialog;

.field private onBoxListChanged:Landroid/view/View$OnClickListener;

.field private onBoxListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

.field private onNewMessage:Landroid/view/View$OnClickListener;

.field private startNotiViewer:Z

.field update_read:Z

.field update_seen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    const-string v0, "BoxList"

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    .line 264
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->mContxtMenu:Landroid/view/ContextMenu;

    .line 280
    sput-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    .line 542
    sput-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    .line 543
    sput-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    .line 545
    sput-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNotiPushMessage:Z

    .line 2384
    const-string v0, "content://mms-sms/allinmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_MESSAGE_URI:Landroid/net/Uri;

    .line 2387
    const-string v0, "content://mms-sms/alloutmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_MESSAGE_URI:Landroid/net/Uri;

    .line 2390
    const-string v0, "content://mms-sms/allsentmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_MESSAGE_URI:Landroid/net/Uri;

    .line 2393
    const-string v0, "content://mms-sms/alldraft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_DRAFT_MESSAGE_URI:Landroid/net/Uri;

    .line 2396
    const-string v0, "content://mms-sms/allwappush"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_PUSH_MESSAGE_URI:Landroid/net/Uri;

    .line 3444
    sput v1, Lcom/android/mms/ui/BoxListFrame;->boxId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 287
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 204
    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I

    .line 205
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J

    .line 206
    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    .line 207
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    .line 222
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mView:Landroid/view/View;

    .line 223
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mPosition:I

    .line 246
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    .line 247
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z

    .line 253
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    .line 254
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->moveMsgCount:I

    .line 265
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectBoxDialog:Landroid/app/AlertDialog;

    .line 270
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "inbox"

    aput-object v1, v0, v4

    const-string v1, "sentbox"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "outbox"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "draftbox"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->items:[Ljava/lang/String;

    .line 273
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->isKeyLongPressed:Z

    .line 277
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    .line 278
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    .line 281
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSearchView:Landroid/widget/SearchView;

    .line 283
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuCancel:Landroid/view/MenuItem;

    .line 284
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    .line 480
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 481
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 483
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->ACTION_BAR_INIT:I

    .line 484
    iput v5, p0, Lcom/android/mms/ui/BoxListFrame;->ACTION_BAR_RESUME:I

    .line 847
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$5;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mImgGetter:Landroid/text/Html$ImageGetter;

    .line 913
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$6;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->onBoxListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 955
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$7;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->onBoxListChanged:Landroid/view/View$OnClickListener;

    .line 962
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$8;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->onNewMessage:Landroid/view/View$OnClickListener;

    .line 1116
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$10;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContentChangedListener:Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;

    .line 1165
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$11;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1463
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    .line 1464
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    .line 1465
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    .line 1466
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarTitle:Landroid/widget/TextView;

    .line 2465
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$20;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$20;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListKeyListener:Landroid/view/View$OnKeyListener;

    .line 2768
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mSeen:I

    .line 2769
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->update_read:Z

    .line 2770
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->update_seen:Z

    .line 3819
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$26;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$26;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->messageHandler:Landroid/os/Handler;

    .line 288
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 291
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 204
    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I

    .line 205
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J

    .line 206
    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    .line 207
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    .line 222
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mView:Landroid/view/View;

    .line 223
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mPosition:I

    .line 246
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    .line 247
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z

    .line 253
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    .line 254
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->moveMsgCount:I

    .line 265
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectBoxDialog:Landroid/app/AlertDialog;

    .line 270
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "inbox"

    aput-object v1, v0, v4

    const-string v1, "sentbox"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "outbox"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "draftbox"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->items:[Ljava/lang/String;

    .line 273
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->isKeyLongPressed:Z

    .line 277
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    .line 278
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    .line 281
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSearchView:Landroid/widget/SearchView;

    .line 283
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuCancel:Landroid/view/MenuItem;

    .line 284
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    .line 480
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 481
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 483
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->ACTION_BAR_INIT:I

    .line 484
    iput v5, p0, Lcom/android/mms/ui/BoxListFrame;->ACTION_BAR_RESUME:I

    .line 847
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$5;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mImgGetter:Landroid/text/Html$ImageGetter;

    .line 913
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$6;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->onBoxListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 955
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$7;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->onBoxListChanged:Landroid/view/View$OnClickListener;

    .line 962
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$8;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->onNewMessage:Landroid/view/View$OnClickListener;

    .line 1116
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$10;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContentChangedListener:Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;

    .line 1165
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$11;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1463
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    .line 1464
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    .line 1465
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    .line 1466
    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarTitle:Landroid/widget/TextView;

    .line 2465
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$20;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$20;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListKeyListener:Landroid/view/View$OnKeyListener;

    .line 2768
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mSeen:I

    .line 2769
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->update_read:Z

    .line 2770
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->update_seen:Z

    .line 3819
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$26;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$26;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->messageHandler:Landroid/os/Handler;

    .line 292
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/BoxListFrame;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/BoxListFrame;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/BoxListFrame;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/BoxListFrame;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->showSelectBoxDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/BoxListFrame;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/BoxListFrame;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/BoxListFrame;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/BoxListFrame;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageOptions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageOptions;)Lcom/android/mms/ui/MessageOptions;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/BoxListFrame;->getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/BoxListFrame;Landroid/view/ContextMenu;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/BoxListFrame;->addVIPModeListMenu(Landroid/view/ContextMenu;J)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->moveSelectedMessages()V

    return-void
.end method

.method static synthetic access$2302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    sput-boolean p0, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    return p0
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/BoxListFrame;Landroid/widget/SearchView;)Landroid/widget/SearchView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mSearchView:Landroid/widget/SearchView;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/BoxListFrame;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/BoxListFrame;->setChecked(IZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/BoxListFrame;Landroid/database/Cursor;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/BoxListFrame;->getCountOfNotDelMsg(Landroid/database/Cursor;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/BoxListFrame;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->deleteAllMessage(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/BoxListFrame;Landroid/database/Cursor;ZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/BoxListFrame;->deleteMessage(Landroid/database/Cursor;ZII)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/BoxListFrame;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/BoxListFrame;)Landroid/util/SparseBooleanArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/mms/ui/BoxListFrame;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter$MessageData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/BoxListAdapter$MessageData;)Lcom/android/mms/ui/BoxListAdapter$MessageData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/BoxListFrame;->confirmDeleteDialog(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/BoxListFrame;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->afterResult(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->refreshCheckedList()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/BoxListFrame;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/BoxListFrame;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/mms/ui/BoxListFrame;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$4502(Lcom/android/mms/ui/BoxListFrame;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J

    return-wide p1
.end method

.method static synthetic access$4602(Lcom/android/mms/ui/BoxListFrame;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeletedThreadIds:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$4800()I
    .locals 1

    .prologue
    .line 122
    sget v0, Lcom/android/mms/ui/BoxListFrame;->boxId:I

    return v0
.end method

.method static synthetic access$4802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    sput p0, Lcom/android/mms/ui/BoxListFrame;->boxId:I

    return p0
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/SelectBoxTypeAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectorAdapter:Lcom/android/mms/ui/SelectBoxTypeAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/BoxListFrame;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/BoxListFrame;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->updateList(I)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedSMSMsgIds:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/mms/ui/BoxListFrame;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedSMSMsgIds:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedMMSMsgIds:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/mms/ui/BoxListFrame;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedMMSMsgIds:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedMMSThreadIds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/android/mms/ui/BoxListFrame;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedMMSThreadIds:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/mms/ui/BoxListFrame;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->moveMsgCount:I

    return v0
.end method

.method static synthetic access$5502(Lcom/android/mms/ui/BoxListFrame;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput p1, p0, Lcom/android/mms/ui/BoxListFrame;->moveMsgCount:I

    return p1
.end method

.method static synthetic access$5508(Lcom/android/mms/ui/BoxListFrame;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->moveMsgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/BoxListFrame;->moveMsgCount:I

    return v0
.end method

.method static synthetic access$5600(Lcom/android/mms/ui/BoxListFrame;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->moveProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/android/mms/ui/BoxListFrame;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->moveProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->startFakeAsyncQuery()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->updateCheckedMsgCount()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->deleteSelectedItems()V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/BoxListFrame;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    return v0
.end method

.method private addRecipientsListener()V
    .locals 0

    .prologue
    .line 4035
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 4036
    return-void
.end method

.method private addVIPModeListMenu(Landroid/view/ContextMenu;J)V
    .locals 9
    .parameter "menu"
    .parameter "threadId"

    .prologue
    .line 1126
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-static {v5, p2, p3, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v2

    .line 1127
    .local v2, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1131
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v5, p2, p3}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 1132
    .local v1, address:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1134
    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1135
    .local v4, recipient:[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x1

    if-gt v5, v6, :cond_0

    .line 1137
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1141
    const/16 v5, 0xc

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "\\"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-string v6, "/"

    aput-object v6, v0, v5

    const/4 v5, 0x2

    const-string v6, ":"

    aput-object v6, v0, v5

    const/4 v5, 0x3

    const-string v6, "*"

    aput-object v6, v0, v5

    const/4 v5, 0x4

    const-string v6, "?"

    aput-object v6, v0, v5

    const/4 v5, 0x5

    const-string v6, "\""

    aput-object v6, v0, v5

    const/4 v5, 0x6

    const-string v6, "<"

    aput-object v6, v0, v5

    const/4 v5, 0x7

    const-string v6, ">"

    aput-object v6, v0, v5

    const/16 v5, 0x8

    const-string v6, "|"

    aput-object v6, v0, v5

    const/16 v5, 0x9

    const-string v6, ";"

    aput-object v6, v0, v5

    const/16 v5, 0xa

    const-string v6, "\n"

    aput-object v6, v0, v5

    const/16 v5, 0xb

    const-string v6, "#"

    aput-object v6, v0, v5

    .line 1142
    .local v0, INVALID_CHAR:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_2

    .line 1143
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v4, v6

    aget-object v7, v0, v3

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1142
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1147
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x3

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/MessageUtils;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x4

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/MessageUtils;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1149
    const/4 v5, 0x0

    const/16 v6, 0x37

    const/4 v7, 0x0

    const v8, 0x7f0c0343

    invoke-interface {p1, v5, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1155
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/MessageUtils;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/MessageUtils;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 1157
    const/4 v5, 0x0

    const/16 v6, 0x38

    const/4 v7, 0x0

    const v8, 0x7f0c0342

    invoke-interface {p1, v5, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1151
    :cond_3
    const/4 v5, 0x0

    const/16 v6, 0x35

    const/4 v7, 0x0

    const v8, 0x7f0c0341

    invoke-interface {p1, v5, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2

    .line 1159
    :cond_4
    const/4 v5, 0x0

    const/16 v6, 0x36

    const/4 v7, 0x0

    const v8, 0x7f0c0340

    invoke-interface {p1, v5, v6, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method private afterResult(I)V
    .locals 14
    .parameter "resultCount"

    .prologue
    const/4 v13, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 996
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v12

    .line 997
    .local v12, listView:Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->updateEmptyScreen(I)V

    .line 998
    if-nez p1, :cond_1

    .line 999
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    if-ne v0, v3, :cond_6

    .line 1000
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1002
    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    .line 1004
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/mms/ui/BoxListFrame;->setDeleteModeLayout(ZZ)V

    .line 1010
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-nez v0, :cond_3

    .line 1012
    const/4 v9, 0x0

    .line 1015
    .local v9, UnreadCnt:I
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(sms.type=1) AND (read=0)"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1016
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 1017
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1018
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1021
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(pdu.msg_box=1) AND (read=0)"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1022
    if-eqz v10, :cond_3

    .line 1023
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v9, v0

    .line 1024
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1032
    .end local v9           #UnreadCnt:I
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_3
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-ne v0, v13, :cond_5

    .line 1033
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->mContxtMenu:Landroid/view/ContextMenu;

    if-eqz v0, :cond_5

    .line 1037
    :try_start_0
    const-string v0, "mms"

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1038
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1039
    .local v4, messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "msg_box"

    aput-object v1, v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1040
    .restart local v10       #cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    .line 1042
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1043
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v13, :cond_4

    .line 1044
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->mContxtMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->close()V

    .line 1045
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->mContxtMenu:Landroid/view/ContextMenu;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1049
    :cond_4
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1076
    .end local v4           #messageUri:Landroid/net/Uri;
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_5
    :goto_1
    return-void

    .line 1005
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    if-ne v0, v3, :cond_1

    .line 1006
    invoke-virtual {p0, v1, v1}, Lcom/android/mms/ui/BoxListFrame;->setMoveModeLayout(ZZ)V

    goto/16 :goto_0

    .line 1049
    .restart local v4       #messageUri:Landroid/net/Uri;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1069
    .end local v4           #messageUri:Landroid/net/Uri;
    .end local v10           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 1070
    .local v11, e:Ljava/lang/Exception;
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->mContxtMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->close()V

    .line 1071
    sput-object v2, Lcom/android/mms/ui/BoxListFrame;->mContxtMenu:Landroid/view/ContextMenu;

    goto :goto_1

    .line 1053
    .end local v11           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_4
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1054
    .restart local v4       #messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "type"

    aput-object v1, v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v10

    .line 1055
    .restart local v10       #cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    .line 1057
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 1058
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v13, :cond_8

    .line 1059
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->mContxtMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->close()V

    .line 1060
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->mContxtMenu:Landroid/view/ContextMenu;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1064
    :cond_8
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method private applyImages(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "text"

    .prologue
    .line 859
    sget-object v6, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v7, "applyImages()"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 863
    .local v5, sb:Ljava/lang/StringBuffer;
    const-string v6, "%s"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 864
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 865
    .local v1, m:Ljava/util/regex/Matcher;
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 866
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    .line 867
    .local v4, result:Z
    :goto_0
    if-eqz v4, :cond_0

    .line 868
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<img src=\"@drawable/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f02006d

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" align=\"middle\"/>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 871
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    goto :goto_0

    .line 873
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 874
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, finalString:Ljava/lang/String;
    return-object v0
.end method

.method private beforeResult()V
    .locals 0

    .prologue
    .line 992
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->hideEmptyView()V

    .line 993
    return-void
.end method

.method private changeHeaderSizewhenchangeFontSize()I
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 1712
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1714
    .local v1, selectAllLP:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    .line 1716
    .local v0, fontSize:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1717
    :cond_0
    const/16 v2, 0x6c

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1723
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1725
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v2

    .line 1718
    :cond_1
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 1719
    :cond_2
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1721
    :cond_3
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private checkContactValidityWithDelay(I)V
    .locals 4
    .parameter "delay"

    .prologue
    .line 770
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkContactValidityWithDelay():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/BoxListFrame$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BoxListFrame$4;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 783
    return-void
.end method

.method private clearNewMessageIconForNoti(J)V
    .locals 2
    .parameter "mMsgId"

    .prologue
    .line 2765
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/mms/ui/BoxListFrame;->markAsRead(JLjava/lang/Runnable;Z)V

    .line 2766
    return-void
.end method

.method private closeSearchView()V
    .locals 3

    .prologue
    .line 4007
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSearchView(), mIsSearchMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4008
    sget-boolean v0, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    if-eqz v0, :cond_0

    .line 4009
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    .line 4010
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSearchView:Landroid/widget/SearchView;

    .line 4011
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 4013
    :cond_0
    return-void
.end method

.method private confirmDeleteDialog(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;Z)V
    .locals 4
    .parameter "listener"
    .parameter "locked"

    .prologue
    .line 2135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2136
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c0075

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-eqz p2, :cond_0

    const v2, 0x7f0c0078

    :goto_0
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2143
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2144
    .local v1, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2145
    iput-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    .line 2146
    return-void

    .line 2136
    .end local v1           #dlg:Landroid/app/AlertDialog;
    :cond_0
    const v2, 0x7f0c0077

    goto :goto_0
.end method

.method private confirmRecvMmsDialog(Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 880
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 881
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 882
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 883
    const-string v1, "retrieve?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 884
    const v1, 0x7f0c00ea

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 885
    const v1, 0x7f0c00eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 886
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 887
    return-void
.end method

.method private deleteAllMessage(I)V
    .locals 9
    .parameter "box"

    .prologue
    const/4 v4, 0x0

    .line 3405
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAllMessage   : box ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3406
    sget-object v3, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_MESSAGE_URI:Landroid/net/Uri;

    .line 3407
    .local v3, uriForDel:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 3408
    .local v6, selectionForDel:Ljava/lang/String;
    const-string v6, "locked=0"

    .line 3409
    packed-switch p1, :pswitch_data_0

    .line 3430
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z

    .line 3431
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    const/16 v1, 0x70b

    new-instance v2, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v7, 0x0

    iget-boolean v5, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z

    invoke-direct {v2, v7, v8, v3, v5}, Lcom/android/mms/ui/DeleteInfo;-><init>(JLandroid/net/Uri;Z)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3433
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 3435
    return-void

    .line 3411
    :pswitch_0
    sget-object v3, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_MESSAGE_URI:Landroid/net/Uri;

    .line 3412
    goto :goto_0

    .line 3415
    :pswitch_1
    sget-object v3, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_MESSAGE_URI:Landroid/net/Uri;

    .line 3416
    goto :goto_0

    .line 3419
    :pswitch_2
    sget-object v3, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_MESSAGE_URI:Landroid/net/Uri;

    .line 3420
    goto :goto_0

    .line 3423
    :pswitch_3
    sget-object v3, Lcom/android/mms/ui/BoxListFrame;->ALL_DRAFT_MESSAGE_URI:Landroid/net/Uri;

    .line 3424
    goto :goto_0

    .line 3427
    :pswitch_4
    sget-object v3, Lcom/android/mms/ui/BoxListFrame;->ALL_PUSH_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    .line 3409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private deleteMessage(Landroid/database/Cursor;ZII)V
    .locals 14
    .parameter "cursor"
    .parameter "delLockedMsg"
    .parameter "deletedCount"
    .parameter "notDelLockedMsgCount"

    .prologue
    .line 3349
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 3350
    .local v7, msgId:J
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3351
    .local v10, msgType:Ljava/lang/String;
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 3352
    .local v9, msgLock:Ljava/lang/Boolean;
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 3354
    .local v11, threadId:J
    const-wide/16 v1, -0x1

    cmp-long v1, v7, v1

    if-nez v1, :cond_1

    .line 3400
    :goto_1
    return-void

    .line 3351
    .end local v9           #msgLock:Ljava/lang/Boolean;
    .end local v11           #threadId:J
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3358
    .restart local v9       #msgLock:Ljava/lang/Boolean;
    .restart local v11       #threadId:J
    :cond_1
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMessage msgType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3360
    const-string v1, "mms"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3361
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 3368
    .local v4, MessageUri:Landroid/net/Uri;
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->getCheckedCount()I

    move-result v1

    sub-int v1, v1, p4

    move/from16 v0, p3

    if-ne v0, v1, :cond_2

    .line 3369
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z

    .line 3371
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3372
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    const/16 v2, 0x70a

    new-instance v3, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v5, 0x0

    iget-boolean v13, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z

    invoke-direct {v3, v5, v6, v4, v13}, Lcom/android/mms/ui/DeleteInfo;-><init>(JLandroid/net/Uri;Z)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3380
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeletedThreadIds:Ljava/util/HashSet;

    if-nez v1, :cond_4

    .line 3381
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeletedThreadIds:Ljava/util/HashSet;

    .line 3383
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeletedThreadIds:Ljava/util/HashSet;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3362
    .end local v4           #MessageUri:Landroid/net/Uri;
    :cond_5
    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 3363
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .restart local v4       #MessageUri:Landroid/net/Uri;
    goto :goto_2

    .line 3365
    .end local v4           #MessageUri:Landroid/net/Uri;
    :cond_6
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .restart local v4       #MessageUri:Landroid/net/Uri;
    goto :goto_2

    .line 3374
    :cond_7
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_3

    .line 3375
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    const/16 v2, 0x70a

    new-instance v3, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v5, 0x0

    iget-boolean v13, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z

    invoke-direct {v3, v5, v6, v4, v13}, Lcom/android/mms/ui/DeleteInfo;-><init>(JLandroid/net/Uri;Z)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3
.end method

.method private deleteSelectedItems()V
    .locals 10

    .prologue
    .line 3311
    const/4 v2, 0x0

    .line 3312
    .local v2, deleteAll:Z
    const/4 v3, 0x0

    .line 3313
    .local v3, hasLockedMessages:Z
    const/4 v6, 0x0

    .line 3315
    .local v6, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3316
    const/4 v2, 0x1

    .line 3321
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v7

    .line 3322
    .local v7, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v7, :cond_2

    if-nez v3, :cond_2

    .line 3323
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3324
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    .line 3325
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3326
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3327
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 3328
    .local v9, locked:I
    if-eqz v9, :cond_0

    .line 3329
    const/4 v3, 0x1

    .line 3322
    .end local v9           #locked:I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3318
    .end local v7           #count:I
    .end local v8           #i:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 3336
    .restart local v7       #count:I
    .restart local v8       #i:I
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->getCheckedCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCountToDelete:I

    .line 3337
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, v4}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;-><init>(Lcom/android/mms/ui/BoxListFrame;Landroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCountToDelete:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    const v5, 0x7f0c0077

    :goto_2
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/BoxListFrame;->confirmDeleteDialog(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;ZZLandroid/content/Context;I)V

    .line 3344
    return-void

    .line 3337
    :cond_3
    const v5, 0x7f0c0177

    goto :goto_2
.end method

.method private disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 2189
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 2190
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 2191
    return-void
.end method

.method private static extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "value"

    .prologue
    .line 1872
    if-eqz p1, :cond_0

    .line 1873
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1875
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getBoxId()I
    .locals 1

    .prologue
    .line 3446
    sget v0, Lcom/android/mms/ui/BoxListFrame;->boxId:I

    return v0
.end method

.method private getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 1356
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1357
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1360
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_2

    .line 1385
    :cond_0
    if-eqz v3, :cond_1

    .line 1386
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1389
    :cond_1
    :goto_0
    return-object v2

    .line 1363
    :cond_2
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1366
    new-instance v10, Lcom/android/mms/ui/BoxListFrame$13;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v10, p0, v1, v2, v5}, Lcom/android/mms/ui/BoxListFrame$13;-><init>(Lcom/android/mms/ui/BoxListFrame;IFZ)V

    .line 1372
    .local v10, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 1373
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1375
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_5

    .line 1377
    :try_start_2
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1378
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_3
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1385
    :goto_1
    if-eqz v3, :cond_3

    .line 1386
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v2, v0

    .line 1389
    goto :goto_0

    .line 1380
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 1381
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Lcom/google/android/mms/MmsException;
    :goto_2
    :try_start_4
    const-string v1, "BoxListActivity"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1385
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    .end local v10           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v3, :cond_4

    .line 1386
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 1385
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v4       #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    .restart local v10       #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_1
    move-exception v1

    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_3

    .line 1380
    :catch_1
    move-exception v8

    goto :goto_2

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :cond_5
    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1
.end method

.method private getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1396
    const-string v1, "SmsViewFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCachedMessageItemWpm : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msgId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1399
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1400
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    const/4 v8, 0x0

    .line 1403
    .local v8, invalidData:Z
    if-nez v3, :cond_1

    .line 1451
    if-eqz v3, :cond_0

    .line 1452
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1455
    :cond_0
    :goto_0
    return-object v2

    .line 1406
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1411
    :cond_2
    if-nez v3, :cond_4

    .line 1416
    :cond_3
    :goto_1
    if-ne v8, v7, :cond_6

    .line 1417
    const-string v1, "BoxListFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no msg id  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1451
    if-eqz v3, :cond_0

    .line 1452
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1412
    :cond_4
    :try_start_1
    const-string v1, "_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v1, v5, p2

    if-eqz v1, :cond_3

    .line 1413
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v8, 0x1

    .line 1414
    :cond_5
    if-nez v3, :cond_2

    goto :goto_1

    .line 1425
    :cond_6
    new-instance v10, Lcom/android/mms/ui/BoxListFrame$14;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v10, p0, v1, v2, v5}, Lcom/android/mms/ui/BoxListFrame$14;-><init>(Lcom/android/mms/ui/BoxListFrame;IFZ)V

    .line 1431
    .local v10, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 1435
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1437
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_9

    .line 1440
    :try_start_2
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1442
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_3
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    const-string v1, "BoxListFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1451
    :goto_2
    if-eqz v3, :cond_7

    .line 1452
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v2, v0

    .line 1455
    goto/16 :goto_0

    .line 1451
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v10           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v3, :cond_8

    .line 1452
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    .line 1451
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v4       #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    .restart local v10       #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_1
    move-exception v1

    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_3

    .line 1447
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v1

    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :cond_9
    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_2
.end method

.method private getCountOfNotDelMsg(Landroid/database/Cursor;Z)I
    .locals 7
    .parameter "cursor"
    .parameter "delLockMsg"

    .prologue
    const/4 v6, 0x1

    .line 2364
    const/4 v3, 0x0

    .line 2366
    .local v3, notDelLockedMsgCount:I
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2368
    :cond_0
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2369
    .local v0, msgId:J
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/mms/ui/BoxListAdapter;->isCheckedMsgId(JLjava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_1

    .line 2370
    const/16 v4, 0xb

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2371
    .local v2, msgLock:I
    if-lez v2, :cond_1

    .line 2372
    if-nez p2, :cond_1

    .line 2373
    add-int/lit8 v3, v3, 0x1

    .line 2376
    .end local v2           #msgLock:I
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2378
    .end local v0           #msgId:J
    :cond_2
    return v3
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1335
    new-instance v0, Lcom/android/mms/ui/BoxListFrame$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$12;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteEventHandler:Landroid/os/Handler;

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "listType"
    .parameter "withCount"

    .prologue
    .line 3953
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3954
    .local v1, stringBuf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 3955
    .local v2, title:Ljava/lang/String;
    const/4 v0, 0x0

    .line 3957
    .local v0, countString:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 3979
    :goto_0
    if-eqz v2, :cond_1

    .line 3980
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3982
    if-eqz p2, :cond_0

    .line 3983
    invoke-static {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->getMessageCountString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3984
    if-eqz v0, :cond_0

    .line 3985
    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3988
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3990
    :goto_1
    return-object v3

    .line 3959
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c022c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3960
    goto :goto_0

    .line 3963
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c022d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3964
    goto :goto_0

    .line 3967
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c022e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3968
    goto :goto_0

    .line 3971
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c022f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3972
    goto :goto_0

    .line 3975
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0161

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3990
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 3957
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    .prologue
    .line 2611
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method private static getMessageCount(Landroid/content/Context;IZ)I
    .locals 17
    .parameter "context"
    .parameter "listType"
    .parameter "getUnreadCount"

    .prologue
    .line 3859
    const/4 v15, 0x0

    .line 3860
    .local v15, count:I
    const/4 v8, 0x0

    .line 3861
    .local v8, smsSelection:Ljava/lang/String;
    const/4 v12, 0x0

    .line 3862
    .local v12, mmsSelection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3863
    .local v4, unreadSelection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "count(*)"

    aput-object v5, v3, v1

    .line 3864
    .local v3, projection:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 3866
    .local v16, cursor:Landroid/database/Cursor;
    if-eqz p2, :cond_0

    .line 3867
    const-string v4, "read = 0"

    .line 3870
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3900
    :goto_0
    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 3901
    const-string v1, "content://mms-sms/wap-push-messages"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3902
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 3903
    if-eqz v16, :cond_2

    .line 3904
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3905
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 3907
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 3937
    .end local v2           #uri:Landroid/net/Uri;
    :cond_2
    :goto_1
    return v15

    .line 3872
    :pswitch_0
    const-string v8, "(sms.type = 1)"

    .line 3873
    const-string v12, "(pdu.msg_box = 1) AND (m_type != 134) AND (m_type != 136)"

    .line 3875
    goto :goto_0

    .line 3878
    :pswitch_1
    const-string v8, "(sms.type = 2)"

    .line 3879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "((hidden = 0) AND ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "))"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3880
    const-string v12, "(pdu.msg_box = 2)"

    .line 3881
    goto :goto_0

    .line 3884
    :pswitch_2
    const-string v8, "(sms.type = 4) OR (sms.type = 5) OR (sms.type = 6)"

    .line 3888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "((hidden = 0) AND ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "))"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3890
    const-string v12, "(pdu.msg_box = 4)"

    .line 3891
    goto :goto_0

    .line 3894
    :pswitch_3
    const-string v8, "(sms.type = 3)"

    .line 3895
    const-string v12, "(pdu.msg_box = 3) AND (pdu.thread_id != 9223372036854775806)"

    goto :goto_0

    .line 3911
    :cond_3
    if-eqz v8, :cond_4

    if-eqz v4, :cond_4

    .line 3912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3915
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 3916
    if-eqz v16, :cond_6

    .line 3917
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3918
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 3920
    :cond_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 3924
    :cond_6
    if-eqz v12, :cond_7

    if-eqz v4, :cond_7

    .line 3925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3928
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v3

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 3929
    if-eqz v16, :cond_2

    .line 3930
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3931
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/2addr v15, v1

    .line 3933
    :cond_8
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 3870
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getMessageCountString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "listType"

    .prologue
    .line 3941
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3943
    .local v0, stringBuf:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 3944
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/android/mms/ui/BoxListFrame;->getMessageCount(Landroid/content/Context;IZ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3947
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/android/mms/ui/BoxListFrame;->getMessageCount(Landroid/content/Context;IZ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3949
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 21
    .parameter "context"
    .parameter "cursor"
    .parameter "isView"

    .prologue
    .line 1741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1742
    .local v4, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1743
    .local v10, res:Landroid/content/res/Resources;
    const-wide/16 v7, 0x0

    .line 1744
    .local v7, id:J
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1745
    sget-object v14, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 1749
    .local v13, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v9

    check-cast v9, Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1757
    .local v9, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    const v14, 0x7f0c007e

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1758
    const v14, 0x7f0c0081

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/mms/ui/BoxListFrame;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v6

    .line 1762
    .local v6, from:Ljava/lang/String;
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1763
    const v14, 0x7f0c0082

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1764
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .end local v6           #from:Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1769
    const v14, 0x7f0c0010

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v10, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1775
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1776
    const v14, 0x7f0c0089

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v12

    .line 1779
    .local v12, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v12, :cond_2

    .line 1780
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1786
    :goto_1
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1787
    const v14, 0x7f0c0239

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1788
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageClass()[B

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/lang/String;-><init>([B)V

    .line 1789
    .local v11, str:Ljava/lang/String;
    const-string v14, "personal"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1790
    const v14, 0x7f0c0234

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    :cond_0
    :goto_2
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1801
    const v14, 0x7f0c008a

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1802
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v14

    const-wide/16 v16, 0x3ff

    add-long v14, v14, v16

    const-wide/16 v16, 0x400

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    const/16 v14, 0x200e

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1804
    const v14, 0x7f0c0011

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .end local v9           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v11           #str:Ljava/lang/String;
    .end local v12           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_3
    return-object v14

    .line 1751
    :catch_0
    move-exception v5

    .line 1752
    .local v5, e:Lcom/google/android/mms/MmsException;
    sget-object v14, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to load the message: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1753
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c007c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 1764
    .end local v5           #e:Lcom/google/android/mms/MmsException;
    .restart local v6       #from:Ljava/lang/String;
    .restart local v9       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_1
    const v14, 0x7f0c004e

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1782
    .end local v6           #from:Ljava/lang/String;
    .restart local v12       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2
    const v14, 0x7f0c014c

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1791
    .restart local v11       #str:Ljava/lang/String;
    :cond_3
    const-string v14, "advertisement"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1792
    const v14, 0x7f0c0235

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1793
    :cond_4
    const-string v14, "informational"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1794
    const v14, 0x7f0c0236

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1795
    :cond_5
    const-string v14, "auto"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1796
    const v14, 0x7f0c0237

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 4

    .prologue
    .line 3576
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 3577
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c017d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 3580
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getTokenFromIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 2433
    const/4 v0, 0x0

    .line 2434
    .local v0, token:I
    packed-switch p1, :pswitch_data_0

    .line 2458
    :goto_0
    return v0

    .line 2436
    :pswitch_0
    const/16 v0, 0x6a5

    .line 2437
    goto :goto_0

    .line 2440
    :pswitch_1
    const/16 v0, 0x6a9

    .line 2441
    goto :goto_0

    .line 2444
    :pswitch_2
    const/16 v0, 0x6a7

    .line 2445
    goto :goto_0

    .line 2448
    :pswitch_3
    const/16 v0, 0x6ab

    .line 2449
    goto :goto_0

    .line 2452
    :pswitch_4
    const/16 v0, 0x6ad

    .line 2453
    goto :goto_0

    .line 2434
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getUriFromIndex(I)Landroid/net/Uri;
    .locals 1
    .parameter "index"

    .prologue
    .line 2402
    const/4 v0, 0x0

    .line 2404
    .local v0, uri:Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 2429
    :goto_0
    return-object v0

    .line 2407
    :pswitch_0
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_MESSAGE_URI:Landroid/net/Uri;

    .line 2408
    goto :goto_0

    .line 2411
    :pswitch_1
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_MESSAGE_URI:Landroid/net/Uri;

    .line 2412
    goto :goto_0

    .line 2415
    :pswitch_2
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_MESSAGE_URI:Landroid/net/Uri;

    .line 2416
    goto :goto_0

    .line 2419
    :pswitch_3
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_DRAFT_MESSAGE_URI:Landroid/net/Uri;

    .line 2420
    goto :goto_0

    .line 2423
    :pswitch_4
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_PUSH_MESSAGE_URI:Landroid/net/Uri;

    .line 2424
    goto :goto_0

    .line 2404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private hideEmptyView()V
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 826
    :cond_0
    return-void
.end method

.method private initActionBarTitle()V
    .locals 2

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->setListTitle()V

    .line 513
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 514
    return-void
.end method

.method private initEmptyView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 829
    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v3, "initEmptyView"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const v2, 0x7f0b0067

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 832
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_1

    .line 833
    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v3, "initEmptyView inflate empty view"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    .line 835
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    const v3, 0x7f0b00ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewPopup:Landroid/widget/TextView;

    .line 836
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c0349

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->applyImages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 837
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewPopup:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mImgGetter:Landroid/text/Html$ImageGetter;

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewPopup:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 840
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewPopup:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 845
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 843
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private invokeStartViewerLatestNewMsg(Landroid/database/Cursor;ZZ)V
    .locals 16
    .parameter "mCursor"
    .parameter "findUnread"
    .parameter "findFailed"

    .prologue
    .line 550
    sget-object v13, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invokeStartViewerLatestNewMsg(), findUnread="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    if-nez p1, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    const/4 v4, 0x1

    .line 556
    .local v4, isRead:I
    const/4 v5, -0x1

    .line 557
    .local v5, msgBox:I
    const/4 v12, 0x0

    .line 559
    .local v12, type:Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 561
    if-eqz p1, :cond_3

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 563
    :cond_2
    const/16 v13, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 564
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "kkahn/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isRead="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    if-lez v4, :cond_3

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_2

    .line 568
    :cond_3
    if-lez v4, :cond_b

    .line 569
    sget-object v13, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invokeStartViewerLatestNewMsg(), isRead="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ***NO UNREAD MESSAGE, SO STOP INVOKING MSG VIEW***"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_4
    if-eqz p3, :cond_a

    .line 575
    const/4 v2, 0x0

    .line 576
    .local v2, foundFailed:Z
    if-eqz p1, :cond_7

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 578
    :cond_5
    const/16 v13, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 579
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 581
    const-string v13, "sms"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 582
    const/4 v13, 0x5

    if-ne v5, v13, :cond_8

    .line 583
    const/4 v2, 0x1

    .line 592
    :cond_6
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "kkahn/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "msgBox="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",type="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",foundFailed="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    if-nez v2, :cond_7

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_5

    .line 595
    :cond_7
    if-nez v2, :cond_b

    .line 596
    sget-object v13, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invokeStartViewerLatestNewMsg(), msgBox="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ***NO FAILED MESSAGE, SO STOP INVOKING MSG VIEW***"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 586
    :cond_8
    const/4 v2, 0x0

    goto :goto_1

    .line 588
    :cond_9
    const-string v13, "mms"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 590
    const/4 v2, 0x0

    goto :goto_1

    .line 600
    .end local v2           #foundFailed:Z
    :cond_a
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 603
    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 604
    .local v8, msgType:Ljava/lang/String;
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 606
    .local v6, msgId:J
    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 610
    .local v10, threadId:J
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v14, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v3, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 611
    .local v3, intent:Landroid/content/Intent;
    const-string v13, "msgId"

    invoke-virtual {v3, v13, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 612
    const-string v13, "thread_id"

    invoke-virtual {v3, v13, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 613
    const-string v13, "fromFolderView"

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 617
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_c

    .line 618
    const-string v13, "isWapPush"

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 623
    :cond_c
    const-string v13, "mms"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 624
    sget-object v13, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    .line 625
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    const-string v14, "mms"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v7, v14}, Lcom/android/mms/ui/BoxListFrame;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 627
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v13, :cond_0

    .line 632
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v13

    sget-object v14, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v9

    .line 634
    .local v9, state:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v13}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v13

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v13, v13, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v14, 0x82

    if-ne v13, v14, :cond_e

    .line 637
    new-instance v1, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v6, v7}, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;-><init>(Lcom/android/mms/ui/BoxListFrame;J)V

    .line 638
    .local v1, RecvMms:Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;
    const/16 v13, 0x81

    if-eq v9, v13, :cond_d

    .line 639
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->confirmRecvMmsDialog(Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;)V

    .line 646
    .end local v1           #RecvMms:Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;
    .end local v9           #state:I
    :cond_d
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/mms/ui/BoxListFrame;->drawMessagePointer(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 641
    .restart local v9       #state:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v13, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v13, v8, v3}, Lcom/android/mms/ui/BoxListViewActivity;->startViewer(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_2

    .line 644
    .end local v9           #state:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v13, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v13, v8, v3}, Lcom/android/mms/ui/BoxListViewActivity;->startViewer(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_2
.end method

.method private isFirstItemChanged()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3055
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3056
    iget-wide v1, p0, Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 3057
    const/4 v0, 0x1

    .line 3060
    :cond_0
    return v0
.end method

.method private lockMessage(Z)V
    .locals 3
    .parameter "locked"

    .prologue
    const/4 v1, 0x1

    .line 1730
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1731
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "locked"

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1733
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/BoxListFrame$17;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/BoxListFrame$17;-><init>(Lcom/android/mms/ui/BoxListFrame;Landroid/content/ContentValues;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1738
    return-void

    .line 1731
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeOutgoingCall(Ljava/lang/String;)V
    .locals 4
    .parameter "num"

    .prologue
    .line 974
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 975
    .local v0, intentTocall:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 976
    return-void
.end method

.method private moveSelectedMessages()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3705
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const v3, 0x7f040061

    invoke-static {v2, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3706
    .local v1, contents:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3707
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0c0327

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/mms/ui/BoxListFrame$25;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/BoxListFrame$25;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3816
    return-void

    .line 3707
    :cond_0
    const v2, 0x7f0c0324

    goto :goto_0
.end method

.method private refreshCheckedList()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3586
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/BoxListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 3588
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 3654
    :cond_0
    :goto_0
    return-void

    .line 3592
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 3594
    .local v3, msgCount:I
    iget-boolean v7, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    if-ne v7, v9, :cond_8

    .line 3595
    iget v7, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    iget v7, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-ne v7, v9, :cond_3

    .line 3598
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/BoxListAdapter;->refreshCheckedList()V

    .line 3601
    :cond_3
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/BoxListAdapter;->getCheckedCount()I

    move-result v0

    .line 3604
    .local v0, checkedCount:I
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v7

    if-ne v0, v7, :cond_4

    .line 3605
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3610
    :goto_1
    if-nez v0, :cond_5

    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_5

    .line 3611
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 3612
    iput-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    .line 3623
    :goto_2
    if-lez v0, :cond_7

    .line 3624
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v7, v9}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_0

    .line 3607
    :cond_4
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 3615
    :cond_5
    if-lez v3, :cond_6

    if-ne v3, v0, :cond_6

    .line 3616
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 3619
    :cond_6
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 3626
    :cond_7
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v7, v10}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 3627
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3628
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->clearFocus()V

    goto :goto_0

    .line 3631
    .end local v0           #checkedCount:I
    :cond_8
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    const-string v8, ""

    invoke-virtual {v7, v12, v13, v8}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->equals(JLjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3632
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3633
    const/4 v2, 0x0

    .line 3638
    .local v2, exist:Z
    :cond_9
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3639
    .local v4, msgId:J
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3641
    .local v6, msgType:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    invoke-virtual {v7, v4, v5, v6}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->equals(JLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3642
    const/4 v2, 0x1

    .line 3647
    :goto_3
    if-nez v2, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_0

    .line 3648
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 3649
    iput-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    .line 3650
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    const-string v8, ""

    invoke-virtual {v7, v12, v13, v8}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->setData(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 3645
    :cond_a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_3
.end method

.method private removeDeleteModeActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1629
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1631
    iput-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    .line 1634
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1635
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1636
    iput-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    .line 1639
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1640
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 1641
    iput-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    .line 1643
    :cond_2
    return-void
.end method

.method private removeRecipientsListener()V
    .locals 0

    .prologue
    .line 4039
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 4040
    return-void
.end method

.method private restoreListOffset()V
    .locals 3

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 2227
    :goto_0
    return-void

    .line 2222
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2223
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 2225
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method private resumeActionBarTitle(I)V
    .locals 2
    .parameter "box"

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->setListTitle()V

    .line 519
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 520
    return-void
.end method

.method private saveListOffset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2195
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v2, :cond_1

    .line 2215
    :cond_0
    :goto_0
    return-void

    .line 2196
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I

    .line 2199
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getSelectedItemPosition()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    .line 2200
    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 2201
    iput v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    .line 2203
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2204
    .local v0, selectedItem:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2205
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    goto :goto_0

    .line 2207
    .end local v0           #selectedItem:Landroid/view/View;
    :cond_2
    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I

    if-ltz v2, :cond_0

    .line 2208
    iput v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    .line 2210
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2211
    .local v1, topChild:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2212
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    goto :goto_0
.end method

.method private setChecked(IZ)V
    .locals 1
    .parameter "position"
    .parameter "isChecked"

    .prologue
    .line 3658
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 3659
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3661
    :cond_0
    return-void
.end method

.method private declared-synchronized setIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setListTitle()V
    .locals 4

    .prologue
    .line 3994
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    .line 3996
    .local v0, title:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3997
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3999
    :cond_0
    return-void
.end method

.method private setSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 3222
    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/SweepHandler$ListCheckInterface;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 3223
    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 3224
    return-void
.end method

.method private setSweepRestriction(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 4060
    const/4 v0, 0x0

    .line 4061
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

    .line 4064
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4067
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepAreaRestrictionStart(F)V

    .line 4068
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

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

    .line 4069
    return-void
.end method

.method private showSelectBoxDialog()V
    .locals 3

    .prologue
    .line 3449
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3451
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/android/mms/ui/SelectBoxTypeAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/SelectBoxTypeAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectorAdapter:Lcom/android/mms/ui/SelectBoxTypeAdapter;

    .line 3452
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectorAdapter:Lcom/android/mms/ui/SelectBoxTypeAdapter;

    new-instance v2, Lcom/android/mms/ui/BoxListFrame$24;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BoxListFrame$24;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3458
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectBoxDialog:Landroid/app/AlertDialog;

    .line 3459
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectBoxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3460
    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 303
    return-void
.end method

.method private startAsyncQuery()V
    .locals 1

    .prologue
    .line 1085
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQueryInternal(Z)V

    .line 1086
    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 1109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/BoxListFrame$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BoxListFrame$9;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1114
    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 13
    .parameter "isFake"

    .prologue
    .line 1090
    :try_start_0
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->getUriFromIndex(I)Landroid/net/Uri;

    move-result-object v3

    .line 1091
    .local v3, uri:Landroid/net/Uri;
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->getTokenFromIndex(I)I

    move-result v1

    .line 1093
    .local v1, token:I
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->cancelOperation(I)V

    .line 1095
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    if-eqz p1, :cond_1

    .line 1098
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    add-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v3

    invoke-virtual/range {v4 .. v11}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    .end local v1           #token:I
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 1100
    .restart local v1       #token:I
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1103
    .end local v1           #token:I
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v12

    .line 1104
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v12}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    .prologue
    .line 1079
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->beforeResult()V

    .line 1080
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQueryInternal(Z)V

    .line 1081
    return-void
.end method

.method private updateActionBarText()V
    .locals 5

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 525
    .local v1, config:Landroid/content/res/Configuration;
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 527
    .local v2, mIsLandscape:Z
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 531
    :goto_1
    return-void

    .line 525
    .end local v2           #mIsLandscape:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 530
    .restart local v2       #mIsLandscape:Z
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 531
    .local v0, attachText:Ljava/lang/StringBuffer;
    goto :goto_1
.end method

.method private updateCheckedMsgCount()V
    .locals 2

    .prologue
    .line 1701
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1702
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1703
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1707
    :cond_1
    :goto_0
    return-void

    .line 1705
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateDeleteModeActionBar()V
    .locals 3

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 1647
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    .line 1648
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    .line 1649
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    .line 1651
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    if-eqz v0, :cond_0

    .line 1652
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarTitle:Landroid/widget/TextView;

    .line 1653
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0324

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1656
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/mms/ui/BoxListFrame$15;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BoxListFrame$15;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1668
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/mms/ui/BoxListFrame$16;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BoxListFrame$16;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1683
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->updateCheckedMsgCount()V

    .line 1684
    return-void
.end method

.method private updateEmptyScreen(I)V
    .locals 4
    .parameter "resultCount"

    .prologue
    .line 979
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEmptyScreen(),resultCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    .line 982
    .local v0, listView:Landroid/view/View;
    if-nez p1, :cond_0

    .line 983
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->initEmptyView()V

    .line 984
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 989
    :goto_0
    return-void

    .line 986
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->hideEmptyView()V

    .line 987
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFolderListActionBar(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kkahn/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFolderListActionBar(), mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    if-ne p1, v4, :cond_1

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kkahn/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateFolderListActionBar()[2]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 494
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 495
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 496
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->onBoxListChanged:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    :cond_1
    if-nez p1, :cond_3

    .line 502
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->initActionBarTitle()V

    .line 509
    :cond_2
    :goto_0
    return-void

    .line 503
    :cond_3
    if-ne p1, v4, :cond_2

    .line 504
    sget v0, Lcom/android/mms/ui/BoxListFrame;->boxId:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->resumeActionBarTitle(I)V

    goto :goto_0
.end method

.method private updateHeaderLayout()V
    .locals 10

    .prologue
    const/high16 v9, 0x42a2

    const/high16 v8, 0x4190

    const/high16 v7, 0x4180

    const/4 v6, 0x2

    .line 3665
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 3667
    .local v2, densityScale:F
    const v5, 0x7f0b005d

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3668
    .local v0, boxButton:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3670
    .local v1, boxButtonLP:Landroid/view/ViewGroup$LayoutParams;
    const v5, 0x7f0b005e

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 3671
    .local v3, newButton:Landroid/widget/ImageButton;
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 3673
    .local v4, newButtonLP:Landroid/view/ViewGroup$LayoutParams;
    const v5, 0x7f0b0059

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListHeaderText:Landroid/widget/TextView;

    .line 3675
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 3676
    const/high16 v5, 0x428e

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3677
    const/high16 v5, 0x4224

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3686
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3689
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v8}, Landroid/widget/Button;->setTextSize(IF)V

    .line 3699
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3700
    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3701
    return-void

    .line 3692
    :cond_0
    mul-float v5, v9, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3693
    mul-float v5, v9, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3695
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3696
    invoke-virtual {v0, v6, v7}, Landroid/widget/Button;->setTextSize(IF)V

    goto :goto_0
.end method

.method private updateList(I)V
    .locals 4
    .parameter "cmd"

    .prologue
    const/4 v3, 0x0

    .line 3463
    const/4 v0, 0x0

    .line 3465
    .local v0, listType:I
    packed-switch p1, :pswitch_data_0

    .line 3487
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-ne v0, v1, :cond_1

    .line 3508
    :cond_0
    :goto_1
    return-void

    .line 3467
    :pswitch_0
    const/4 v0, 0x0

    .line 3468
    goto :goto_0

    .line 3471
    :pswitch_1
    const/4 v0, 0x1

    .line 3472
    goto :goto_0

    .line 3475
    :pswitch_2
    const/4 v0, 0x2

    .line 3476
    goto :goto_0

    .line 3479
    :pswitch_3
    const/4 v0, 0x3

    .line 3480
    goto :goto_0

    .line 3483
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 3492
    :cond_1
    iput v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    .line 3493
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/BoxListViewActivity;->notifyBoxDataChanged(Z)V

    .line 3494
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListAdapter;->setListType(I)V

    .line 3495
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->initListItemSelectedMsg()V

    .line 3496
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->setListTitle()V

    .line 3497
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQuery()V

    .line 3498
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3499
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    .line 3501
    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    if-eqz v1, :cond_2

    .line 3502
    invoke-virtual {p0, v3, v3}, Lcom/android/mms/ui/BoxListFrame;->setDeleteModeLayout(ZZ)V

    .line 3504
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    if-eqz v1, :cond_0

    .line 3505
    invoke-virtual {p0, v3, v3}, Lcom/android/mms/ui/BoxListFrame;->setMoveModeLayout(ZZ)V

    goto :goto_1

    .line 3465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateListWithoutNotify(I)V
    .locals 3
    .parameter "cmd"

    .prologue
    .line 3512
    const/4 v0, 0x0

    .line 3514
    .local v0, listType:I
    packed-switch p1, :pswitch_data_0

    .line 3536
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-ne v0, v1, :cond_0

    .line 3550
    :goto_1
    return-void

    .line 3516
    :pswitch_0
    const/4 v0, 0x0

    .line 3517
    goto :goto_0

    .line 3520
    :pswitch_1
    const/4 v0, 0x1

    .line 3521
    goto :goto_0

    .line 3524
    :pswitch_2
    const/4 v0, 0x2

    .line 3525
    goto :goto_0

    .line 3528
    :pswitch_3
    const/4 v0, 0x3

    .line 3529
    goto :goto_0

    .line 3532
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 3541
    :cond_0
    iput v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    .line 3543
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListAdapter;->setListType(I)V

    .line 3544
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->initListItemSelectedMsg()V

    .line 3545
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->setListTitle()V

    .line 3546
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQuery()V

    .line 3547
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3548
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    goto :goto_1

    .line 3514
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public configurationChanged(Landroid/content/res/Configuration;Z)V
    .locals 5
    .parameter "newConfig"
    .parameter "refreshList"

    .prologue
    .line 1812
    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configurationChanged(),newConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListAdapter;->getSplitMode()Z

    move-result v0

    .line 1817
    .local v0, isSplited:Z
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v1

    .line 1818
    .local v1, splitMode:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 1819
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/BoxListAdapter;->setSplitMode(Z)V

    .line 1829
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListAdapter;->getSplitMode()Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 1830
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->updateHeaderLayout()V

    .line 1834
    :cond_1
    if-eqz p2, :cond_2

    .line 1835
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQuery()V

    .line 1837
    :cond_2
    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    if-eqz v2, :cond_4

    .line 1838
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1840
    :cond_4
    return-void

    .line 1821
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/BoxListAdapter;->setSplitMode(Z)V

    .line 1824
    if-nez v1, :cond_0

    .line 1825
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListAdapter;->initListItemSelectedMsg()V

    goto :goto_0
.end method

.method public confirmDeleteDialog(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;ZZLandroid/content/Context;I)V
    .locals 9
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "hasLockedMessages"
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 2153
    sget-object v6, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "confirmDeleteThreadDialog(),deleteAll="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",hasLockedMessages="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",resourceId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    const v6, 0x7f04002f

    const/4 v7, 0x0

    invoke-static {p4, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2156
    .local v3, contents:Landroid/view/View;
    const v6, 0x7f0b0105

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 2157
    .local v2, checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v6, 0x7f0b0104

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2158
    .local v0, bodyMessage:Landroid/widget/TextView;
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(I)V

    .line 2160
    invoke-virtual {p1, p3}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->setHasLockedMessage(Z)V

    .line 2161
    if-nez p3, :cond_0

    .line 2162
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 2172
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v4

    .line 2174
    .local v4, count:I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2175
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_1

    const v6, 0x7f0c0076

    :goto_1
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    invoke-virtual {v6, v7, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    invoke-virtual {v6, v7, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2183
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 2184
    .local v5, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 2185
    iput-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    .line 2186
    return-void

    .line 2164
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #count:I
    .end local v5           #dlg:Landroid/app/AlertDialog;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 2165
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->setDeleteLockedMessage(Z)V

    .line 2166
    new-instance v6, Lcom/android/mms/ui/BoxListFrame$19;

    invoke-direct {v6, p0, p1, v2}, Lcom/android/mms/ui/BoxListFrame$19;-><init>(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2175
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    .restart local v4       #count:I
    :cond_1
    const v6, 0x7f0c0075

    goto :goto_1
.end method

.method public drawMessagePointer(JLjava/lang/String;)V
    .locals 3
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 3043
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawMessagePointer(),msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "msgType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3046
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter;->setListItemSelected(JLjava/lang/String;)V

    .line 3049
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3050
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidateViews()V

    .line 3052
    :cond_0
    return-void
.end method

.method public drawMessageTouchPointer()V
    .locals 2

    .prologue
    .line 3851
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v1, "drawMessageTouchPointer()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3854
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3855
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidateViews()V

    .line 3856
    :cond_0
    return-void
.end method

.method public getBoxListAdapter()Lcom/android/mms/ui/BoxListAdapter;
    .locals 1

    .prologue
    .line 2615
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    return-object v0
.end method

.method public getEmailAddress(I)Ljava/lang/String;
    .locals 8
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 2588
    sget-object v4, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2589
    sget-object v4, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v6, "getEmailAddress"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2591
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    iput-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    .line 2592
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_1

    move-object v4, v5

    .line 2607
    :goto_0
    return-object v4

    .line 2596
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2597
    .local v2, threadId:J
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 2599
    .local v1, recipients:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 2600
    const-string v4, ";"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2601
    .local v0, dests:[Ljava/lang/String;
    aget-object v4, v0, v7

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2602
    aget-object v4, v0, v7

    goto :goto_0

    .end local v0           #dests:[Ljava/lang/String;
    :cond_2
    move-object v4, v5

    .line 2604
    goto :goto_0

    .restart local v0       #dests:[Ljava/lang/String;
    :cond_3
    move-object v4, v5

    .line 2607
    goto :goto_0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 3439
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    return v0
.end method

.method public getNumber(I)Ljava/lang/String;
    .locals 7
    .parameter "position"

    .prologue
    .line 2514
    sget-object v5, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2515
    sget-object v5, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v6, "getNumber"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v5, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/Cursor;

    iput-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    .line 2517
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_1

    const/4 v1, 0x0

    .line 2548
    :goto_0
    return-object v1

    .line 2520
    :cond_1
    const/4 v0, 0x0

    .line 2521
    .local v0, address:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2522
    .local v4, type:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2523
    .local v2, threadId:J
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 2548
    .local v1, recipients:Ljava/lang/String;
    goto :goto_0
.end method

.method public getNumber_SweepCall(I)Ljava/lang/String;
    .locals 11
    .parameter "position"

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 2553
    sget-object v6, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2554
    sget-object v6, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v8, "getNumber_SweepCall"

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2555
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v6, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    iput-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    .line 2556
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    if-nez v6, :cond_1

    move-object v6, v7

    .line 2584
    :goto_0
    return-object v6

    .line 2559
    :cond_1
    const/4 v0, 0x0

    .line 2560
    .local v0, address:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2561
    .local v5, type:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2562
    .local v3, threadId:J
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 2566
    .local v2, recipients:Ljava/lang/String;
    const-string v6, "sms"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v8, 0x4

    if-eq v6, v8, :cond_3

    .line 2569
    iget v6, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-eq v6, v10, :cond_3

    .line 2570
    if-eqz v2, :cond_3

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2571
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2572
    move-object v2, v0

    .line 2576
    :cond_3
    if-eqz v2, :cond_4

    .line 2577
    const-string v6, ";"

    invoke-static {v2, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2578
    .local v1, dests:[Ljava/lang/String;
    aget-object v6, v1, v9

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2579
    aget-object v6, v1, v9

    goto :goto_0

    .end local v1           #dests:[Ljava/lang/String;
    :cond_4
    move-object v6, v7

    .line 2582
    goto :goto_0

    .restart local v1       #dests:[Ljava/lang/String;
    :cond_5
    move-object v6, v7

    .line 2584
    goto :goto_0
.end method

.method public isCallable(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 4019
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->getNumber_SweepCall(I)Ljava/lang/String;

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
    .locals 3
    .parameter "position"

    .prologue
    .line 4026
    const/4 v0, 0x1

    .line 4027
    .local v0, retVal:Z
    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 4028
    const/4 v0, 0x0

    .line 4030
    :cond_0
    return v0
.end method

.method public isSearchMode()Z
    .locals 3

    .prologue
    .line 3845
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSearchMode() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3846
    sget-boolean v0, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    return v0
.end method

.method protected listItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 18
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2619
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    .line 2620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    .line 2621
    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v3, "list item click : cursor null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2761
    :cond_0
    :goto_0
    return-void

    .line 2625
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2627
    .local v14, msgType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 2628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2629
    .local v12, msgId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 2630
    .local v15, threadId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2632
    .local v10, mType:I
    const/16 v17, 0x0

    .line 2633
    .local v17, uri:Landroid/net/Uri;
    const-string v2, "sms"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2634
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 2639
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    move-wide v0, v15

    invoke-static {v2, v0, v1, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v8

    .line 2640
    .local v8, composeIntent:Landroid/content/Intent;
    const-string v2, "msgUri"

    move-object/from16 v0, v17

    invoke-virtual {v8, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2641
    const-string v2, "msgType"

    invoke-virtual {v8, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2642
    const-string v2, "exit_on_sent"

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2643
    const-string v2, "fromFolderView"

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2644
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    .line 2760
    .end local v8           #composeIntent:Landroid/content/Intent;
    .end local v10           #mType:I
    .end local v17           #uri:Landroid/net/Uri;
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/BoxListFrame;->closeSearchView()V

    goto :goto_0

    .line 2635
    .restart local v10       #mType:I
    .restart local v17       #uri:Landroid/net/Uri;
    :cond_3
    const-string v2, "mms"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2636
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    goto :goto_1

    .line 2646
    .end local v10           #mType:I
    .end local v12           #msgId:J
    .end local v15           #threadId:J
    .end local v17           #uri:Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2648
    .restart local v12       #msgId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 2669
    .restart local v15       #threadId:J
    const-string v2, "mms"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2670
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    .line 2671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    const-string v3, "mms"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12, v13, v3}, Lcom/android/mms/ui/BoxListFrame;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 2673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_0

    .line 2676
    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pduHeaders : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 2679
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v9, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2680
    .local v9, intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v9, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2681
    const-string v2, "thread_id"

    move-wide v0, v15

    invoke-virtual {v9, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2682
    const-string v2, "fromFolderView"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2684
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    .line 2685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    const-string v3, "mms"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12, v13, v3}, Lcom/android/mms/ui/BoxListFrame;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 2687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_0

    .line 2690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v3, 0x82

    if-ne v2, v3, :cond_5

    .line 2691
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/BoxListFrame;->startNotiViewer:Z

    .line 2693
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v2, v14, v9}, Lcom/android/mms/ui/BoxListViewActivity;->startViewer(Ljava/lang/String;Landroid/content/Intent;)V

    .line 2758
    .end local v9           #intent:Landroid/content/Intent;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/android/mms/ui/BoxListFrame;->drawMessagePointer(JLjava/lang/String;)V

    goto/16 :goto_2

    .line 2695
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v3, 0x82

    if-ne v2, v3, :cond_7

    .line 2701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v11

    .line 2704
    .local v11, messageDetails:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/BoxListFrame;->clearNewMessageIconForNoti(J)V

    .line 2706
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c007d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 2715
    .end local v11           #messageDetails:Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2716
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v9, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2723
    .restart local v9       #intent:Landroid/content/Intent;
    :goto_4
    const/high16 v2, 0x2400

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2724
    const-string v2, "msgId"

    invoke-virtual {v9, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2725
    const-string v2, "thread_id"

    move-wide v0, v15

    invoke-virtual {v9, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 2720
    .end local v9           #intent:Landroid/content/Intent;
    :cond_8
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v9, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v9       #intent:Landroid/content/Intent;
    goto :goto_4

    .line 2731
    .end local v9           #intent:Landroid/content/Intent;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 2732
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v9, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2733
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v9, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2734
    const-string v2, "thread_id"

    move-wide v0, v15

    invoke-virtual {v9, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2735
    const-string v2, "fromFolderView"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v2, v14, v9}, Lcom/android/mms/ui/BoxListViewActivity;->startViewer(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 2743
    .end local v9           #intent:Landroid/content/Intent;
    :cond_a
    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2745
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v9, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2746
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v9, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2747
    const-string v2, "thread_id"

    move-wide v0, v15

    invoke-virtual {v9, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2749
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_b

    .line 2750
    const-string v2, "isWapPush"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2754
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3
.end method

.method public declared-synchronized markAsRead(JLjava/lang/Runnable;Z)V
    .locals 10
    .parameter "msgId"
    .parameter "callback"
    .parameter "isExit"

    .prologue
    const/4 v9, 0x1

    .line 2772
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v1, "markAsRead()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2777
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    .line 2778
    if-eqz p4, :cond_1

    .line 2779
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMMSRead:I

    if-ne v0, v9, :cond_2

    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSeen:I

    if-ne v0, v9, :cond_2

    .line 2780
    if-eqz p3, :cond_0

    .line 2781
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2992
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2786
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMMSRead:I

    if-ne v0, v9, :cond_2

    .line 2787
    if-eqz p3, :cond_0

    .line 2788
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2772
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2794
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_10

    :try_start_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2863
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2864
    .local v2, msgUri:Landroid/net/Uri;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2865
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2866
    if-eqz p4, :cond_3

    .line 2867
    const-string v0, "seen"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2869
    :cond_3
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "read"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "seen"

    aput-object v1, v3, v0

    .line 2874
    .local v3, PROJECTION_READ_SEEN:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2876
    .local v7, readCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_6

    .line 2877
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2879
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 2880
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_5

    .line 2881
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v9, :cond_4

    .line 2882
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->update_read:Z

    .line 2883
    :cond_4
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v9, :cond_5

    .line 2884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->update_seen:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2888
    :cond_5
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2892
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2893
    if-eqz p4, :cond_9

    .line 2894
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2895
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2896
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x80

    new-instance v4, Lcom/android/mms/ui/BoxListFrame$21;

    invoke-direct {v4, p0, v2, v8, p3}, Lcom/android/mms/ui/BoxListFrame$21;-><init>(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {v0, p1, p2, v1, v4}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOneForMmsWithoutConfirmDlg(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2888
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2909
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v8, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2910
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-wide/16 v4, -0x2

    const/4 v1, 0x0

    invoke-static {v0, v4, v5, v1}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 2912
    if-eqz p3, :cond_0

    .line 2913
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 2917
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x80

    new-instance v4, Lcom/android/mms/ui/BoxListFrame$22;

    invoke-direct {v4, p0, v2, v8, p3}, Lcom/android/mms/ui/BoxListFrame$22;-><init>(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {v0, p1, p2, v1, v4}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2934
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v8, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2935
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->update_read:Z

    if-eqz v0, :cond_a

    .line 2936
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-wide/16 v4, -0x2

    const/4 v1, 0x0

    invoke-static {v0, v4, v5, v1}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 2939
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->update_read:Z

    .line 2940
    if-eqz p3, :cond_0

    .line 2941
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 2945
    :cond_b
    if-eqz p4, :cond_e

    .line 2946
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2947
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v8, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2948
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->update_seen:Z

    if-eqz v0, :cond_c

    .line 2949
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-wide/16 v4, -0x2

    const/4 v1, 0x0

    invoke-static {v0, v4, v5, v1}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 2952
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->update_seen:Z

    .line 2953
    if-eqz p3, :cond_0

    .line 2954
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 2957
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x80

    new-instance v4, Lcom/android/mms/ui/BoxListFrame$23;

    invoke-direct {v4, p0, v2, v8, p3}, Lcom/android/mms/ui/BoxListFrame$23;-><init>(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {v0, p1, p2, v1, v4}, Lcom/android/mms/ui/MessageUtils;->handleReadReportDataOne(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2974
    :cond_e
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v8, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2975
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->update_read:Z

    if-eqz v0, :cond_f

    .line 2976
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-wide/16 v4, -0x2

    const/4 v1, 0x0

    invoke-static {v0, v4, v5, v1}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 2979
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->update_read:Z

    .line 2980
    if-eqz p3, :cond_0

    .line 2981
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 2987
    .end local v2           #msgUri:Landroid/net/Uri;
    .end local v3           #PROJECTION_READ_SEEN:[Ljava/lang/String;
    .end local v7           #readCursor:Landroid/database/Cursor;
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_10
    if-eqz p3, :cond_0

    .line 2988
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public notifyLocked()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2998
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3003
    .local v3, msgType:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3005
    .local v1, msgId:J
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3009
    .local v4, threadId:J
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v7, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3010
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "msgId"

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3011
    const-string v6, "thread_id"

    invoke-virtual {v0, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3012
    const-string v6, "fromFolderView"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3016
    iget v6, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 3017
    const-string v6, "isWapPush"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3022
    :cond_0
    const-string v6, "mms"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3023
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    .line 3024
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    const-string v7, "mms"

    invoke-direct {p0, v6, v1, v2, v7}, Lcom/android/mms/ui/BoxListFrame;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 3026
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v6, :cond_1

    .line 3040
    :goto_0
    return-void

    .line 3029
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v6, v6, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v7, 0x82

    if-ne v6, v7, :cond_2

    .line 3030
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v6, v0}, Lcom/android/mms/ui/BoxListViewActivity;->startNotiViewer(Landroid/content/Intent;)V

    goto :goto_0

    .line 3032
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v6, v3, v0}, Lcom/android/mms/ui/BoxListViewActivity;->startViewer(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 3036
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v6, v3, v0}, Lcom/android/mms/ui/BoxListViewActivity;->startViewer(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 1255
    const/4 v3, 0x0

    .line 1257
    .local v3, isHandled:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 1259
    .local v1, info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    iget-object v9, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v9}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v9

    if-lt v7, v9, :cond_0

    move v7, v8

    .line 1329
    :goto_0
    return v7

    .line 1263
    :cond_0
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v9, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v9}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/Cursor;

    iput-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    .line 1265
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-ltz v7, :cond_1

    .line 1266
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->saveListOffset()V

    .line 1268
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1269
    .local v6, msgType:Ljava/lang/String;
    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/BoxListFrame;->getNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 1271
    .local v0, address:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 1324
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v7, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    .end local v0           #address:Ljava/lang/String;
    .end local v6           #msgType:Ljava/lang/String;
    :cond_1
    :goto_1
    move v7, v3

    .line 1329
    goto :goto_0

    .line 1273
    .restart local v0       #address:Ljava/lang/String;
    .restart local v6       #msgType:Ljava/lang/String;
    :sswitch_0
    invoke-direct {p0, v8}, Lcom/android/mms/ui/BoxListFrame;->lockMessage(Z)V

    .line 1275
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v7, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v7}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v7

    if-ne v7, v11, :cond_2

    .line 1276
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1277
    .local v4, msgId:J
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v7, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v7}, Lcom/android/mms/ui/BoxListViewActivity;->getCurrentViewMsgId()J

    move-result-wide v7

    cmp-long v7, v7, v4

    if-nez v7, :cond_2

    .line 1278
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->notifyLocked()V

    .line 1280
    .end local v4           #msgId:J
    :cond_2
    const/4 v3, 0x1

    .line 1281
    goto :goto_1

    .line 1284
    :sswitch_1
    invoke-direct {p0, v10}, Lcom/android/mms/ui/BoxListFrame;->lockMessage(Z)V

    .line 1285
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v7, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v7}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v7

    if-ne v7, v11, :cond_3

    .line 1286
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1287
    .restart local v4       #msgId:J
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v7, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v7}, Lcom/android/mms/ui/BoxListViewActivity;->getCurrentViewMsgId()J

    move-result-wide v7

    cmp-long v7, v7, v4

    if-nez v7, :cond_3

    .line 1288
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->notifyLocked()V

    .line 1290
    .end local v4           #msgId:J
    :cond_3
    const/4 v3, 0x1

    .line 1291
    goto :goto_1

    .line 1296
    :sswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v7

    if-ne v7, v8, :cond_4

    .line 1297
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1298
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1299
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1300
    const-string v7, "number"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1301
    const-string v7, "list"

    const-string v8, "blacklist"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1302
    invoke-direct {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    .line 1305
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    const/4 v3, 0x1

    .line 1306
    goto :goto_1

    .line 1310
    :sswitch_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v7

    if-ne v7, v8, :cond_5

    .line 1311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1312
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1313
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v7, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1314
    const-string v7, "number"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1315
    const-string v7, "list"

    const-string v8, "whitelist"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1316
    invoke-direct {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    .line 1319
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    const/4 v3, 0x1

    .line 1320
    goto/16 :goto_1

    .line 1271
    nop

    :sswitch_data_0
    .sparse-switch
        0x1c -> :sswitch_0
        0x1d -> :sswitch_1
        0x35 -> :sswitch_3
        0x36 -> :sswitch_2
        0x37 -> :sswitch_3
        0x38 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 9
    .parameter "savedInstanceState"
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 318
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    .line 321
    invoke-direct {p0, p2}, Lcom/android/mms/ui/BoxListFrame;->setIntent(Landroid/content/Intent;)V

    .line 323
    new-instance v2, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;-><init>(Lcom/android/mms/ui/BoxListFrame;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    .line 324
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    .line 330
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 331
    .local v1, topInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040018

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mTopView:Landroid/widget/FrameLayout;

    .line 332
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 334
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 335
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 336
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->onBoxListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 337
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->setSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 338
    invoke-direct {p0, v7}, Lcom/android/mms/ui/BoxListFrame;->setSweepRestriction(Z)V

    .line 340
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const v3, 0x1090008

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->items:[Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 341
    .local v0, list:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 348
    iput v6, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    .line 350
    const-string v2, "from_noti_multi"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v7, :cond_0

    .line 351
    const-string v2, "from_noti_outbox"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v7, :cond_3

    .line 352
    iput v8, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    .line 359
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    sput v2, Lcom/android/mms/ui/BoxListFrame;->boxId:I

    .line 361
    new-instance v2, Lcom/android/mms/ui/BoxListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/android/mms/ui/BoxListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZI)V

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    .line 362
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mContentChangedListener:Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/BoxListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;)V

    .line 363
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 365
    const v2, 0x7f0b0061

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;

    .line 366
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/mms/ui/BoxListFrame$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/BoxListFrame$1;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    const v2, 0x7f0b0062

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 400
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 401
    const v2, 0x7f0b0063

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 402
    const v2, 0x7f0b0064

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 403
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v3, Lcom/android/mms/ui/BoxListFrame$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/BoxListFrame$2;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    const v2, 0x7f0b0066

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 411
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v3, Lcom/android/mms/ui/BoxListFrame$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/BoxListFrame$3;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    const v2, 0x7f0b0058

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListHeader:Landroid/widget/LinearLayout;

    .line 419
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListHeader:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 421
    const v2, 0x7f0b005f

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListTitle:Landroid/widget/LinearLayout;

    .line 423
    const v2, 0x7f0b0060

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListMoveTitle:Landroid/widget/LinearLayout;

    .line 425
    const v2, 0x7f0b0059

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListHeaderText:Landroid/widget/TextView;

    .line 427
    const v2, 0x7f0b005b

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxButton:Landroid/widget/LinearLayout;

    .line 428
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxButton:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->onBoxListChanged:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    const v2, 0x7f0b005d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxButtonText:Landroid/widget/Button;

    .line 430
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxButtonText:Landroid/widget/Button;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 435
    const v2, 0x7f0b005c

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mNewButton:Landroid/widget/LinearLayout;

    .line 436
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mNewButton:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->onNewMessage:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create Box List Activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v2, "from_noti_outbox"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v7, :cond_1

    .line 440
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxButtonText:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c022e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 452
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    .line 456
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 457
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 458
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 459
    invoke-direct {p0, v6}, Lcom/android/mms/ui/BoxListFrame;->updateFolderListActionBar(I)V

    .line 464
    const-string v2, "StatusBarNoti"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    .line 465
    const-string v2, "notifyFailed"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    .line 466
    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onCreate] mStatusBarNoti="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mNotifyFailed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    sget-boolean v2, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    if-eqz v2, :cond_4

    .line 469
    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v3, "[onCreate : mStatusBarNoti(1)] move to INBOX & query"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-direct {p0, v6}, Lcom/android/mms/ui/BoxListFrame;->updateListWithoutNotify(I)V

    .line 477
    :cond_2
    :goto_1
    return-void

    .line 353
    :cond_3
    const-string v2, "from_noti_wappush"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v7, :cond_0

    .line 354
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    goto/16 :goto_0

    .line 471
    :cond_4
    sget-boolean v2, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    if-eqz v2, :cond_2

    .line 472
    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v3, "[onCreate : mNotifyFailed(2)] move to OUTBOX & query"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-direct {p0, v8}, Lcom/android/mms/ui/BoxListFrame;->updateListWithoutNotify(I)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 1856
    iput p1, p0, Lcom/android/mms/ui/BoxListFrame;->mDialogId:I

    .line 1868
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDeleteCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3564
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3573
    :cond_0
    :goto_0
    return-void

    .line 3566
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 3567
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3568
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3571
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    if-eqz v1, :cond_0

    .line 3572
    invoke-virtual {p0, v2, v2}, Lcom/android/mms/ui/BoxListFrame;->setDeleteModeLayout(ZZ)V

    goto :goto_0
.end method

.method public onDeleteStart()V
    .locals 2

    .prologue
    .line 3557
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 3558
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3559
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 3561
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 821
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 899
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 910
    :goto_0
    return v0

    .line 901
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    if-eqz v2, :cond_1

    .line 902
    invoke-virtual {p0, v1, v1}, Lcom/android/mms/ui/BoxListFrame;->setDeleteModeLayout(ZZ)V

    goto :goto_0

    .line 904
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    if-eqz v2, :cond_0

    .line 905
    invoke-virtual {p0, v1, v1}, Lcom/android/mms/ui/BoxListFrame;->setMoveModeLayout(ZZ)V

    goto :goto_0

    .line 899
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 651
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 652
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 654
    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    sput v1, Lcom/android/mms/ui/BoxListFrame;->boxId:I

    .line 655
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListAdapter;->setListType(I)V

    .line 659
    :cond_0
    const-string v1, "StatusBarNoti"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    .line 660
    const-string v1, "notifyFailed"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    .line 661
    const-string v1, "from_noti_wappush"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNotiPushMessage:Z

    .line 662
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onNewIntent] mStatusBarNoti="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mNotifyFailed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    sget-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    if-eqz v1, :cond_3

    .line 667
    sget-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNotiPushMessage:Z

    if-eqz v1, :cond_2

    .line 669
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v2, "[onNewIntent : mStatusBarNoti(0)] move to PUSH BOX & query"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/mms/ui/BoxListFrame;->updateList(I)V

    .line 682
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    sput v1, Lcom/android/mms/ui/BoxListFrame;->boxId:I

    .line 689
    return-void

    .line 674
    :cond_2
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v2, "[onNewIntent : mStatusBarNoti(1)] move to INBOX & query"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-direct {p0, v4}, Lcom/android/mms/ui/BoxListFrame;->updateList(I)V

    goto :goto_0

    .line 677
    :cond_3
    sget-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    if-eqz v1, :cond_1

    .line 678
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v2, "[onNewIntent : mNotifyFailed(2)] move to OUTBOX & query"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/mms/ui/BoxListFrame;->updateList(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2007
    const/4 v3, 0x0

    .line 2008
    .local v3, result:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 2011
    .local v1, id:I
    sparse-switch v1, :sswitch_data_0

    :goto_0
    :sswitch_0
    move v5, v3

    .line 2130
    :cond_0
    :goto_1
    return v5

    .line 2015
    :sswitch_1
    iget-boolean v7, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    if-eqz v7, :cond_1

    .line 2019
    invoke-virtual {p0, v5, v6}, Lcom/android/mms/ui/BoxListFrame;->setDeleteModeLayout(ZZ)V

    move v5, v6

    .line 2021
    goto :goto_1

    .line 2022
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    if-eqz v7, :cond_0

    .line 2023
    invoke-virtual {p0, v5, v6}, Lcom/android/mms/ui/BoxListFrame;->setMoveModeLayout(ZZ)V

    move v5, v6

    .line 2024
    goto :goto_1

    .line 2034
    :sswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2035
    iput-boolean v5, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    .line 2037
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 2038
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/BoxListViewActivity;->onBoxListDeleteMode()V

    .line 2039
    invoke-virtual {p0, v6, v6}, Lcom/android/mms/ui/BoxListFrame;->setDeleteModeLayout(ZZ)V

    .line 2041
    :cond_3
    const/4 v3, 0x1

    .line 2042
    goto :goto_0

    .line 2045
    :sswitch_3
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-wide/16 v7, 0x0

    invoke-static {v5, v7, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 2046
    .local v0, composeIntent:Landroid/content/Intent;
    const-string v5, "fromFolderView"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2047
    const-string v5, "exit_on_sent"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2048
    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    .line 2049
    const/4 v3, 0x1

    .line 2050
    goto :goto_0

    .line 2054
    .end local v0           #composeIntent:Landroid/content/Intent;
    :sswitch_4
    sput-boolean v6, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    .line 2055
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2057
    const/4 v3, 0x1

    .line 2058
    goto :goto_0

    .line 2069
    :sswitch_5
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v7, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsViewMode(Landroid/content/Context;I)V

    .line 2070
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v7, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v2, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2071
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "conversationList"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2072
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2073
    invoke-direct {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    .line 2074
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 2075
    const/4 v3, 0x1

    .line 2076
    goto :goto_0

    .line 2079
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableTabSetting()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2080
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/android/mms/ui/MessagingPreferenceTabActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2084
    .restart local v2       #intent:Landroid/content/Intent;
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    .line 2085
    const/4 v3, 0x1

    .line 2086
    goto/16 :goto_0

    .line 2082
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 2096
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/util/SecurityMailboxUtils;->showPasswordEntryScreen(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2100
    :sswitch_8
    iput-boolean v6, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    .line 2101
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/BoxListViewActivity;->onBoxListMoveMode()V

    .line 2102
    invoke-virtual {p0, v6, v6}, Lcom/android/mms/ui/BoxListFrame;->setMoveModeLayout(ZZ)V

    .line 2103
    const/4 v3, 0x1

    .line 2104
    goto/16 :goto_0

    .line 2109
    :sswitch_9
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2110
    .local v4, sintent:Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2115
    .end local v4           #sintent:Landroid/content/Intent;
    :sswitch_a
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->deleteSelectedItems()V

    goto/16 :goto_0

    .line 2119
    :sswitch_b
    invoke-virtual {p0, v5, v6}, Lcom/android/mms/ui/BoxListFrame;->setDeleteModeLayout(ZZ)V

    goto/16 :goto_0

    .line 2123
    :sswitch_c
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->moveSelectedMessages()V

    goto/16 :goto_0

    .line 2127
    :sswitch_d
    invoke-virtual {p0, v5, v6}, Lcom/android/mms/ui/BoxListFrame;->setMoveModeLayout(ZZ)V

    goto/16 :goto_0

    .line 2011
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_0
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0xf -> :sswitch_9
        0x10 -> :sswitch_8
        0x11 -> :sswitch_7
        0x39 -> :sswitch_a
        0x3a -> :sswitch_b
        0x3b -> :sswitch_c
        0x3c -> :sswitch_d
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->resetView()V

    .line 790
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->closeSearchView()V

    .line 791
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1843
    iput p1, p0, Lcom/android/mms/ui/BoxListFrame;->mDialogId:I

    .line 1853
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x6

    const/4 v2, 0x0

    .line 1882
    sget-object v4, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v5, "onPrepareOptionsMenu()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mSearchView:Landroid/widget/SearchView;

    if-eqz v4, :cond_0

    .line 1884
    sget-object v3, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v4, "onPrepareOptionsMenu() Already search mode"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    :goto_0
    return v2

    .line 1888
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1889
    iget-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    if-eqz v4, :cond_4

    .line 1890
    const/16 v4, 0x3a

    const v5, 0x7f0c017c

    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuCancel:Landroid/view/MenuItem;

    .line 1891
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1893
    const/16 v4, 0x39

    const v5, 0x7f0c007b

    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    .line 1894
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1896
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v7, :cond_1

    .line 1897
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuCancel:Landroid/view/MenuItem;

    const v5, 0x7f02022c

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1898
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    const v5, 0x7f02022d

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1901
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/BoxListAdapter;->getCheckedCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 1902
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    move v2, v3

    .line 2002
    goto :goto_0

    .line 1904
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1905
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    if-eqz v4, :cond_7

    .line 1906
    const/16 v4, 0x3c

    const v5, 0x7f0c017c

    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuCancel:Landroid/view/MenuItem;

    .line 1907
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1909
    const/16 v4, 0x3b

    const v5, 0x7f0c0324

    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    .line 1910
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1912
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v7, :cond_5

    .line 1913
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuCancel:Landroid/view/MenuItem;

    const v5, 0x7f02022c

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1914
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    const v5, 0x7f02022d

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1917
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/BoxListAdapter;->getCheckedCount()I

    move-result v4

    if-lez v4, :cond_6

    .line 1918
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1920
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1921
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1923
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const/high16 v4, 0x7f0f

    invoke-virtual {v2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1924
    const v2, 0x7f0b02c1

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1925
    .local v0, menuSearch:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1926
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 1927
    new-instance v2, Lcom/android/mms/ui/BoxListFrame$18;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BoxListFrame$18;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 1948
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1952
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-string v4, "search"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 1953
    .local v1, searchManager:Landroid/app/SearchManager;
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSearchView:Landroid/widget/SearchView;

    .line 1954
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSearchView:Landroid/widget/SearchView;

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 1955
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSearchView:Landroid/widget/SearchView;

    const/16 v4, 0x7d0

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setMaxWidth(I)V

    goto/16 :goto_1

    .line 1958
    .end local v0           #menuSearch:Landroid/view/MenuItem;
    .end local v1           #searchManager:Landroid/app/SearchManager;
    :cond_8
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1959
    const v4, 0x7f0c0002

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020233

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1964
    const/4 v4, 0x3

    const v5, 0x104000c

    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0200b7

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x73

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1967
    const/4 v4, 0x5

    const v5, 0x7f0c0232

    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0200be

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1970
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1971
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1972
    const v4, 0x7f0c027f

    invoke-interface {p1, v2, v8, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0200b9

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1981
    :cond_a
    :goto_2
    const v4, 0x7f0c0003

    invoke-interface {p1, v2, v6, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0200ab

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1983
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_b

    .line 1984
    const v4, 0x7f0c0094

    invoke-interface {p1, v2, v7, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020095

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1988
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1989
    const/16 v4, 0x11

    const v5, 0x7f0c0322

    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02009c

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1992
    iget v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-eq v4, v7, :cond_2

    iget v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 1993
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1994
    const/16 v4, 0x10

    const v5, 0x7f0c0323

    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v4, 0x7f0200a6

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1975
    :cond_c
    const v4, 0x7f0c027e

    invoke-interface {p1, v2, v8, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0200b9

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 724
    sget-object v3, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v4, "onResume"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    .line 727
    .local v1, list:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-virtual {v1, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 735
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/BoxListAdapter;->getSplitMode()Z

    move-result v0

    .line 736
    .local v0, isSplited:Z
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v2

    .line 737
    .local v2, splitMode:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 738
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/BoxListAdapter;->setSplitMode(Z)V

    .line 748
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/BoxListAdapter;->getSplitMode()Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 749
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->updateHeaderLayout()V

    .line 752
    :cond_1
    const/16 v3, 0x12c

    invoke-direct {p0, v3}, Lcom/android/mms/ui/BoxListFrame;->checkContactValidityWithDelay(I)V

    .line 754
    iput-boolean v5, p0, Lcom/android/mms/ui/BoxListFrame;->startNotiViewer:Z

    .line 755
    return-void

    .line 740
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/BoxListAdapter;->setSplitMode(Z)V

    .line 743
    if-nez v2, :cond_0

    .line 744
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/BoxListAdapter;->initListItemSelectedMsg()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 797
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->saveListOffset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    :goto_0
    return-void

    .line 803
    :catch_0
    move-exception v0

    .line 805
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xef

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 697
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x378

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 700
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v1, "[onStart] trigger query"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 704
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->addRecipientsListener()V

    .line 705
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->initRecipientlistForCache()V

    .line 708
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->updateHeaderLayout()V

    .line 719
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->startFakeAsyncQuery()V

    .line 720
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->removeRecipientsListener()V

    .line 812
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->startNotiViewer:Z

    if-nez v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 814
    :cond_0
    return-void
.end method

.method public onSweepActionCanceled(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 3306
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3307
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionCanceled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3308
    :cond_0
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 17
    .parameter "itemIndex"
    .parameter "flickDirection"

    .prologue
    .line 3227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 3229
    .local v2, list:Lcom/android/mms/ui/MsgSweepActionListView;
    if-nez p2, :cond_2

    .line 3234
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/BoxListFrame;->getNumber_SweepCall(I)Ljava/lang/String;

    move-result-object v8

    .line 3235
    .local v8, number:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 3236
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 3299
    .end local v8           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 3238
    .restart local v8       #number:Ljava/lang/String;
    :cond_0
    sget-object v12, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 3239
    sget-object v12, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v13, "onSweepActionFired calling(itemIndex:%d, number:%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3241
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v12, v8}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3246
    .end local v8           #number:Ljava/lang/String;
    :cond_2
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v12, v0, :cond_9

    .line 3247
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_3

    .line 3253
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 3257
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/BoxListFrame;->getNumber(I)Ljava/lang/String;

    move-result-object v8

    .line 3258
    .restart local v8       #number:Ljava/lang/String;
    if-nez v8, :cond_4

    .line 3259
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/BoxListFrame;->getEmailAddress(I)Ljava/lang/String;

    move-result-object v8

    .line 3261
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_7

    .line 3262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3263
    .local v7, msgType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3264
    .local v4, msgId:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x2

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3265
    .local v9, threadId:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x8

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 3267
    .local v3, mType:I
    const/4 v11, 0x0

    .line 3268
    .local v11, uri:Landroid/net/Uri;
    const-string v12, "sms"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 3269
    sget-object v12, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 3274
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/4 v13, 0x0

    invoke-static {v12, v9, v10, v13}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v1

    .line 3275
    .local v1, composeIntent:Landroid/content/Intent;
    const-string v12, "msgUri"

    invoke-virtual {v1, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3276
    const-string v12, "msgType"

    invoke-virtual {v1, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3277
    const-string v12, "exit_on_sent"

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3278
    const-string v12, "fromFolderView"

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3279
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3270
    .end local v1           #composeIntent:Landroid/content/Intent;
    :cond_6
    const-string v12, "mms"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3271
    sget-object v12, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    goto :goto_1

    .line 3282
    .end local v3           #mType:I
    .end local v4           #msgId:J
    .end local v7           #msgType:Ljava/lang/String;
    .end local v9           #threadId:J
    .end local v11           #uri:Landroid/net/Uri;
    :cond_7
    if-nez v8, :cond_8

    .line 3284
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-wide/16 v13, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 3285
    .restart local v1       #composeIntent:Landroid/content/Intent;
    const-string v12, "fromFolderView"

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3286
    const-string v12, "exit_on_sent"

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3288
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3290
    .end local v1           #composeIntent:Landroid/content/Intent;
    :cond_8
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.SENDTO"

    const-string v13, "sms"

    const/4 v14, 0x0

    invoke-static {v13, v8, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v6, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3291
    .local v6, msgIntent:Landroid/content/Intent;
    const-string v12, "fromFolderView"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3292
    const-string v12, "exit_on_sent"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3293
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v12, v6}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 3297
    .end local v6           #msgIntent:Landroid/content/Intent;
    .end local v8           #number:Ljava/lang/String;
    :cond_9
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto/16 :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 3302
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionStarted("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3303
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 4043
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v1, "[onUpdate] contact updated"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4044
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/BoxListFrame$27;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BoxListFrame$27;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4056
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    .line 298
    return-void
.end method

.method public setDeleteModeLayout(ZZ)V
    .locals 8
    .parameter "isDeleteMode"
    .parameter "requestLayout"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1470
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeleteModeLayout(),isDeleteMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",requestLayout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    .line 1473
    const/16 v0, 0x50

    .line 1475
    .local v0, heightOfTitle:I
    if-eqz p1, :cond_4

    .line 1476
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1477
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->changeHeaderSizewhenchangeFontSize()I

    move-result v0

    .line 1490
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1494
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1495
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1496
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    .line 1505
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, v7}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1511
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1512
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1516
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/BoxListFrame;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 1517
    invoke-direct {p0, v4}, Lcom/android/mms/ui/BoxListFrame;->setSweepRestriction(Z)V

    .line 1557
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListAdapter;->setDeleteMode(Z)V

    .line 1558
    if-eqz p2, :cond_1

    .line 1559
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->requestLayout()V

    .line 1560
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->notifyDataSetChanged()V

    .line 1563
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1564
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 1565
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1566
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1568
    :cond_2
    iput-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    .line 1570
    :cond_3
    return-void

    .line 1528
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1538
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1550
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1551
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1552
    invoke-direct {p0, v5}, Lcom/android/mms/ui/BoxListFrame;->updateFolderListActionBar(I)V

    .line 1554
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/BoxListFrame;->setSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 1555
    invoke-direct {p0, v5}, Lcom/android/mms/ui/BoxListFrame;->setSweepRestriction(Z)V

    goto :goto_0
.end method

.method public setMoveModeLayout(ZZ)V
    .locals 7
    .parameter "isMoveMode"
    .parameter "requestLayout"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1574
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMoveModeLayout(),isMoveMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",requestLayout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    .line 1577
    const/16 v0, 0x50

    .line 1579
    .local v0, heightOfTitle:I
    if-eqz p1, :cond_2

    .line 1580
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1581
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->changeHeaderSizewhenchangeFontSize()I

    move-result v0

    .line 1583
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1584
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1585
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1586
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    .line 1588
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1594
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1595
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1599
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/BoxListFrame;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 1600
    invoke-direct {p0, v4}, Lcom/android/mms/ui/BoxListFrame;->setSweepRestriction(Z)V

    .line 1601
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1619
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListAdapter;->setMoveMode(Z)V

    .line 1620
    if-eqz p2, :cond_1

    .line 1621
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->requestLayout()V

    .line 1622
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->notifyDataSetChanged()V

    .line 1624
    :cond_1
    return-void

    .line 1603
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1604
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1609
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1612
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1613
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1614
    invoke-direct {p0, v5}, Lcom/android/mms/ui/BoxListFrame;->updateFolderListActionBar(I)V

    .line 1616
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/BoxListFrame;->setSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 1617
    invoke-direct {p0, v5}, Lcom/android/mms/ui/BoxListFrame;->setSweepRestriction(Z)V

    goto :goto_0
.end method

.method public startSearchView()V
    .locals 1

    .prologue
    .line 4002
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    .line 4003
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 4004
    return-void
.end method
