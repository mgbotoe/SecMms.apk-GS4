.class public Lcom/android/mms/ui/ConversationListFragment;
.super Landroid/app/Fragment;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;
.implements Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;
.implements Lcom/android/mms/ui/SweepHandler$ListCheckInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;,
        Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
    }
.end annotation


# static fields
.field private static final ACTION_CONFIG_DIALOG:Ljava/lang/String; = "com.sec.android.app.firewall.action.CONFIG_DIALOG"

.field public static final BIND_COMPLETE_COUNT:I = 0x12

.field private static final BLACK_LIST:Ljava/lang/String; = "blacklist"

.field private static final CHECKED_MESSAGE_LIMITS:Ljava/lang/String; = "checked_message_limits"

.field public static final DELETE_ALL_CONVERSATION_TOKEN:I = 0x709

.field public static final DELETE_CONVERSATION_TOKEN:I = 0x70a

.field public static final FLAG_DELETE_COMPLETE:I = 0xc9

.field public static final FLAG_DELETE_START:I = 0xc8

.field private static final HANDLER_MSG_MOVE_OK:I = 0x3e8

.field public static final HAVE_LOCKED_MESSAGES_IN_SELECTED_TOKEN:I = 0x70d

.field public static final HAVE_LOCKED_MESSAGES_TOKEN:I = 0x70b

.field public static final HAVE_SMS_IN_THREAD:I = 0x70e

.field private static final ICON_HTML_END:Ljava/lang/String; = "\" align=\"middle\"/>"

.field private static final ICON_HTML_START:Ljava/lang/String; = "<img src=\"@drawable/"

.field public static final MENU_ADD_TO_BLACK_LIST:I = 0xe6

.field public static final MENU_ADD_TO_CONTACTS:I = 0xcb

.field public static final MENU_ADD_TO_SECRET_THREAD:I = 0xea

.field public static final MENU_ADD_TO_WHITE_LIST:I = 0xe7

.field public static final MENU_BLOCK_NUMBER_SETTING:I = 0xcc

.field public static final MENU_COMPOSE_NEW:I = 0xc8

.field public static final MENU_CP_MESSAGES:I = 0xcc

.field public static final MENU_DELETE:I = 0xc8

.field public static final MENU_DELETE_ALL:I = 0xcb

.field public static final MENU_DELETE_CANCEL:I = 0xcf

.field public static final MENU_DELETE_OK:I = 0xce

.field public static final MENU_DRAFT_MESSAGES:I = 0xd9

.field public static final MENU_GOTO_MAILBOX:I = 0xd6

.field public static final MENU_LOCKED_MSG_MANAGER:I = 0xd3

.field public static final MENU_MOVE_CANCEL:I = 0xd8

.field public static final MENU_MOVE_MSG:I = 0xd5

.field public static final MENU_MOVE_OK:I = 0xd7

.field public static final MENU_PREFERENCES:I = 0xcd

.field public static final MENU_REMOVE_FROM_BLACK_LIST:I = 0xe8

.field public static final MENU_REMOVE_FROM_SECRET_THREAD:I = 0xeb

.field public static final MENU_REMOVE_FROM_WHITE_LIST:I = 0xe9

.field public static final MENU_SAVE_CANCEL:I = 0xdc

.field public static final MENU_SAVE_CONV:I = 0xce

.field public static final MENU_SAVE_OK:I = 0xdb

.field public static final MENU_SAVE_RESTORE_SDCARD:I = 0xdd

.field public static final MENU_SCHEDULED_MSG_MANAGER:I = 0xda

.field public static final MENU_SEARCH:I = 0xc9

.field public static final MENU_SPAM_MSG_MANAGER:I = 0xd4

.field public static final MENU_TEMPLATES:I = 0xd0

.field public static final MENU_UNBLOCK_NUMBER_SETTING:I = 0xcd

.field public static final MENU_VIEW:I = 0xc9

.field public static final MENU_VIEW_BOX:I = 0xd2

.field public static final MENU_VIEW_CONTACT:I = 0xca

.field public static final MULTIMODE_DELETE:I = 0x1

.field public static final MULTIMODE_MOVE:I = 0x2

.field public static final MULTIMODE_NONE:I = 0x0

.field public static final MULTIMODE_SAVE:I = 0x3

.field private static final OFFSET:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "Mms/ConversationListFragment"

.field private static final THREAD_LIST_FAKE_VIEW_QUERY_LIMIT:I = 0xb

.field private static final THREAD_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a4

.field private static final THREAD_LIST_QUERY_NO_LIMIT:I = -0x1

.field private static final THREAD_LIST_QUERY_TOKEN:I = 0x6a5

.field private static final VERIFICATION_LOG_TAG:Ljava/lang/String; = "VerificationLog"

.field private static final WHITE_LIST:Ljava/lang/String; = "whitelist"

.field public static badge:Landroid/widget/QuickContactBadge;

.field private static deleteComplete:Z

.field public static heightOfTitle:I

.field public static isOmacpChanged:Z

.field public static isOmacpCount:I

.field public static mIsEmptyThread:Z

.field private static mIsSearchMode:Z

.field private static mQueryHint:Ljava/lang/CharSequence;

.field private static mSelected_spinner_item:I

.field private static final sWsomaCPObserver:Landroid/database/ContentObserver;


# instance fields
.field private CheckInitSpinner:Z

.field public checkAnim:Z

.field conversationComposerActivity:Lcom/android/mms/ui/ConversationComposer;

.field public cpUri:Landroid/net/Uri;

.field immConv:Landroid/view/inputmethod/InputMethodManager;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActivity:Landroid/app/Activity;

.field private mAnimationListenerToLeft:Landroid/view/animation/Animation$AnimationListener;

.field private mAnimationListenerToRight:Landroid/view/animation/Animation$AnimationListener;

.field private final mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private mContextMenu:Landroid/view/ContextMenu;

.field private mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

.field private final mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mConvlist:Landroid/view/View;

.field private mCountToDelete:I

.field private mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mDeleteEventHandler:Landroid/os/Handler;

.field private mDeletedCount:J

.field private mEasyModeCompose:Landroid/widget/LinearLayout;

.field private mEasyModeComposeLayout:Landroid/widget/LinearLayout;

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewPopup:Landroid/widget/TextView;

.field private mFirstItemId:J

.field private mHandler:Landroid/os/Handler;

.field private final mImgGetter:Landroid/text/Html$ImageGetter;

.field private mIsAnimationEnable:Z

.field private mIsDelayForSearch:Z

.field private mIsDeleteMode:Z

.field private mIsDeleteMsgAnimating:Z

.field private mIsDeleting:Z

.field private mIsEasyMode:Z

.field private mIsLandscape:Z

.field private mIsMoveMode:Z

.field private mIsSaveMode:Z

.field private mLinearLayout_search:Landroid/widget/LinearLayout;

.field private mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mListAdapterCount:I

.field private mListQueryOnStart:Z

.field private mListView:Lcom/android/mms/ui/MsgSweepActionListView;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMenuMoveCancel:Landroid/view/MenuItem;

.field private mMenuMoveDone:Landroid/view/MenuItem;

.field private mMenuSaveCancel:Landroid/view/MenuItem;

.field private mMenuSaveDone:Landroid/view/MenuItem;

.field private mMoveAlertDialog:Landroid/app/AlertDialog;

.field private mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

.field private mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

.field private mSearchMenu:Landroid/view/MenuItem;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectedPosition:I

.field private mSelectedThreadIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSpiner_item:[Ljava/lang/CharSequence;

.field private mSpinner:Landroid/widget/Spinner;

.field private final mThreadListKeyListener:Landroid/view/View$OnKeyListener;

.field private mTotalConversations:Landroid/widget/TextView;

.field private mTotalConversationsLayout:Landroid/widget/LinearLayout;

.field private mVisibleOffset:I

.field private messageHandler:Landroid/os/Handler;

.field private moveMsgCount:I

.field private moveProgressDialog:Landroid/app/ProgressDialog;

.field private onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

.field searchPlate:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 233
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    .line 243
    sput v3, Lcom/android/mms/ui/ConversationListFragment;->mSelected_spinner_item:I

    .line 278
    sput-boolean v3, Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z

    .line 307
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->isOmacpChanged:Z

    .line 308
    sput v3, Lcom/android/mms/ui/ConversationListFragment;->isOmacpCount:I

    .line 309
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ConversationListFragment$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/mms/ui/ConversationListFragment;->sWsomaCPObserver:Landroid/database/ContentObserver;

    .line 331
    sput-boolean v3, Lcom/android/mms/ui/ConversationListFragment;->mIsSearchMode:Z

    .line 338
    sput v3, Lcom/android/mms/ui/ConversationListFragment;->heightOfTitle:I

    .line 2422
    sput-boolean v3, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 321
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 244
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListFragment;->CheckInitSpinner:Z

    .line 250
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    .line 251
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    .line 259
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    .line 260
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleting:Z

    .line 261
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeletedCount:J

    .line 263
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsSaveMode:Z

    .line 265
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    .line 266
    iput v3, p0, Lcom/android/mms/ui/ConversationListFragment;->moveMsgCount:I

    .line 275
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    .line 282
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    .line 286
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMsgAnimating:Z

    .line 290
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    .line 293
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuCancel:Landroid/view/MenuItem;

    .line 294
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    .line 295
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveCancel:Landroid/view/MenuItem;

    .line 296
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveDone:Landroid/view/MenuItem;

    .line 298
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveCancel:Landroid/view/MenuItem;

    .line 299
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveDone:Landroid/view/MenuItem;

    .line 306
    const-string v0, "content://com.wsomacp.messagelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->cpUri:Landroid/net/Uri;

    .line 318
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    .line 319
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeCompose:Landroid/widget/LinearLayout;

    .line 330
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDelayForSearch:Z

    .line 335
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    .line 336
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    .line 339
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListFragment;->checkAnim:Z

    .line 340
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListQueryOnStart:Z

    .line 342
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->conversationComposerActivity:Lcom/android/mms/ui/ConversationComposer;

    .line 343
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->immConv:Landroid/view/inputmethod/InputMethodManager;

    .line 344
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->searchPlate:Landroid/widget/EditText;

    .line 564
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$5;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    .line 1754
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$22;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$22;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 1926
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$23;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$23;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 2367
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$25;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$25;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    .line 3607
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$28;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$28;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->messageHandler:Landroid/os/Handler;

    .line 3995
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$32;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$32;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mImgGetter:Landroid/text/Html$ImageGetter;

    .line 322
    if-eqz p1, :cond_0

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setIntent(Landroid/content/Intent;)V

    .line 324
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsSaveMode:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ConversationListFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    sput-boolean p0, Lcom/android/mms/ui/ConversationListFragment;->mIsSearchMode:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->CheckInitSpinner:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/ConversationListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->CheckInitSpinner:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    sput p0, Lcom/android/mms/ui/ConversationListFragment;->mSelected_spinner_item:I

    return p0
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/ConversationListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDelayForSearch:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ConversationListFragment;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->updateCheckedMsgCount()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->handle_focus_on_Select_All()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ConversationListFragment;JI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationListFragment;->openThread(JI)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ConversationListFragment;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/ConversationListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/Conversation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/android/mms/ui/ConversationListFragment;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ConversationListFragment;I)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/mms/ui/ConversationListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMsgAnimating:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/mms/ui/ConversationListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMsgAnimating:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/mms/ui/ConversationListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleting:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/android/mms/ui/ConversationListFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeletedCount:J

    return-wide p1
.end method

.method static synthetic access$3714(Lcom/android/mms/ui/ConversationListFragment;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeletedCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeletedCount:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/mms/ui/ConversationListFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->updateEmptyScreen(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/ConversationListFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setTotalQuantityTextView(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startedFromLaundher()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    return v0
.end method

.method static synthetic access$4902(Lcom/android/mms/ui/ConversationListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->notifyDeleteStart()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedThreadIds:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedThreadIds:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/android/mms/ui/ConversationListFragment;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->threadHasUnmoveableMessages(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->moveMsgCount:I

    return v0
.end method

.method static synthetic access$5802(Lcom/android/mms/ui/ConversationListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/mms/ui/ConversationListFragment;->moveMsgCount:I

    return p1
.end method

.method static synthetic access$5808(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->moveMsgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/ConversationListFragment;->moveMsgCount:I

    return v0
.end method

.method static synthetic access$5900(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->moveProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/android/mms/ui/ConversationListFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->moveProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startFakeAsyncQuery()V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->createNewMessage()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->markCheckedMessageLimit()V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 145
    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    sput-boolean p0, Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z

    return p0
.end method

.method private applyImages(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "text"

    .prologue
    .line 4007
    const-string v6, "Mms/ConversationListFragment"

    const-string v7, "applyImages()"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4009
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 4011
    .local v5, sb:Ljava/lang/StringBuffer;
    const-string v6, "%s"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 4012
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 4013
    .local v1, m:Ljava/util/regex/Matcher;
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 4014
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    .line 4015
    .local v4, result:Z
    :goto_0
    if-eqz v4, :cond_0

    .line 4016
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

    .line 4019
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    goto :goto_0

    .line 4021
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 4022
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4023
    .local v0, finalString:Ljava/lang/String;
    return-object v0
.end method

.method private beforeQuery()V
    .locals 2

    .prologue
    .line 943
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "beforeQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->hideEmptyView()V

    .line 947
    return-void
.end method

.method private changeHeaderSizewhenchangeFontSize()I
    .locals 2

    .prologue
    .line 3435
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3436
    .local v0, selectAllLP:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v1
.end method

.method public static confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V
    .locals 3
    .parameter "threadId"
    .parameter "handler"

    .prologue
    .line 2268
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmDeleteThread(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    const/16 v0, 0x70b

    invoke-static {p2, p0, p1, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    .line 2270
    return-void
.end method

.method public static confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 8
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "hasLockedMessages"
    .parameter "context"
    .parameter "resourceId"

    .prologue
    const/4 v7, 0x0

    .line 2285
    const-string v4, "Mms/ConversationListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "confirmDeleteThreadDialog(),deleteAll="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",hasLockedMessages="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",resourceId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    const v4, 0x7f04002f

    invoke-static {p3, v4, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2289
    .local v3, contents:Landroid/view/View;
    const v4, 0x7f0b0105

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 2290
    .local v2, checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v4, 0x7f0b0104

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2291
    .local v0, bodyMessage:Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 2293
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setHasLockedMessage(Z)V

    .line 2294
    if-nez p2, :cond_0

    .line 2295
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 2306
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2307
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_1

    const v4, 0x7f0c0076

    :goto_1
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 2297
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 2298
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 2299
    new-instance v4, Lcom/android/mms/ui/ConversationListFragment$24;

    invoke-direct {v4, p0, v2}, Lcom/android/mms/ui/ConversationListFragment$24;-><init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2307
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    const v4, 0x7f0c0075

    goto :goto_1
.end method

.method private createNewMessage()V
    .locals 2

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->doBoost(Landroid/content/Context;I)V

    .line 1804
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    .line 1813
    return-void
.end method

.method private deleteSelectedConversations()V
    .locals 3

    .prologue
    .line 3464
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "deleteSelectedConversations()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3466
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    .line 3467
    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3468
    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    .line 3473
    :goto_0
    return-void

    .line 3470
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    const/16 v1, 0x70d

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedThread(Landroid/content/AsyncQueryHandler;I)V

    goto :goto_0
.end method

.method private disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 549
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 550
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 551
    return-void
.end method

.method private getConversation(I)Lcom/android/mms/data/Conversation;
    .locals 4
    .parameter "position"

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    return-object v0
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 514
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$4;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 4

    .prologue
    .line 3667
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 3668
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c017d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 3671
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 5
    .parameter "count"
    .parameter "zeroResourceId"
    .parameter "pluralResourceId"

    .prologue
    .line 2686
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2687
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "getQuantityText This fragment was detached from it\'s activity."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2688
    const-string v0, ""

    .line 2694
    :goto_0
    return-object v0

    .line 2690
    :cond_0
    if-nez p1, :cond_1

    .line 2691
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2693
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2694
    .local v0, str:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getSpinnerItem()I
    .locals 1

    .prologue
    .line 1404
    sget v0, Lcom/android/mms/ui/ConversationListFragment;->mSelected_spinner_item:I

    return v0
.end method

.method private handle_focus_on_Select_All()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1446
    const/4 v10, 0x0

    .line 1447
    .local v10, view_done:Landroid/view/View;
    const/4 v9, 0x0

    .line 1449
    .local v9, view_cancel:Landroid/view/View;
    const/4 v6, -0x1

    .line 1450
    .local v6, indexOf_ActionmenuView:I
    const/4 v5, -0x1

    .line 1451
    .local v5, indexOf_ActionBarView:I
    const/4 v4, -0x1

    .line 1452
    .local v4, indexOf_ActionBarContainer:I
    iget-object v11, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 1453
    .local v8, rView:Landroid/view/ViewGroup;
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1455
    .local v7, ll:Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ge v3, v11, :cond_0

    .line 1456
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    instance-of v11, v11, Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v11, :cond_6

    .line 1457
    move v4, v3

    .line 1462
    :cond_0
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarContainer;

    .line 1463
    .local v2, action_bar:Lcom/android/internal/widget/ActionBarContainer;
    if-eqz v2, :cond_3

    .line 1464
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v11

    if-ge v3, v11, :cond_1

    .line 1465
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    instance-of v11, v11, Lcom/android/internal/widget/ActionBarView;

    if-eqz v11, :cond_7

    .line 1466
    move v5, v3

    .line 1471
    :cond_1
    invoke-virtual {v2, v5}, Lcom/android/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ActionBarView;

    .line 1472
    .local v1, Aview:Lcom/android/internal/widget/ActionBarView;
    if-eqz v1, :cond_2

    .line 1473
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->getChildCount()I

    move-result v11

    if-ge v3, v11, :cond_2

    .line 1474
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    instance-of v11, v11, Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v11, :cond_8

    .line 1475
    move v6, v3

    .line 1481
    :cond_2
    const/4 v11, -0x1

    if-eq v6, v11, :cond_3

    .line 1482
    invoke-virtual {v1, v6}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView;

    .line 1483
    .local v0, AmView:Lcom/android/internal/view/menu/ActionMenuView;
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #view_done:Landroid/view/View;
    check-cast v10, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 1484
    .restart local v10       #view_done:Landroid/view/View;
    invoke-virtual {v0, v12}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #view_cancel:Landroid/view/View;
    check-cast v9, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 1488
    .end local v0           #AmView:Lcom/android/internal/view/menu/ActionMenuView;
    .end local v1           #Aview:Lcom/android/internal/widget/ActionBarView;
    .restart local v9       #view_cancel:Landroid/view/View;
    :cond_3
    if-eqz v10, :cond_4

    .line 1489
    new-instance v11, Lcom/android/mms/ui/ConversationListFragment$15;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ConversationListFragment$15;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1507
    :cond_4
    if-eqz v9, :cond_5

    .line 1508
    new-instance v11, Lcom/android/mms/ui/ConversationListFragment$16;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ConversationListFragment$16;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1527
    :cond_5
    return-void

    .line 1455
    .end local v2           #action_bar:Lcom/android/internal/widget/ActionBarContainer;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1464
    .restart local v2       #action_bar:Lcom/android/internal/widget/ActionBarContainer;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1473
    .restart local v1       #Aview:Lcom/android/internal/widget/ActionBarView;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private hideEasyMode()V
    .locals 2

    .prologue
    .line 3916
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "hideEasyMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3918
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 3919
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3921
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3922
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3924
    :cond_1
    return-void
.end method

.method private hideEmptyView()V
    .locals 2

    .prologue
    .line 3927
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3928
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3929
    :cond_0
    return-void
.end method

.method private hideSoftInputKeyboard()V
    .locals 3

    .prologue
    .line 1055
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 1056
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 1058
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1059
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 1060
    return-void
.end method

.method private initEasyMode()V
    .locals 3

    .prologue
    .line 3890
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "initEasyMode"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3891
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v2, 0x7f0b00f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 3893
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_2

    .line 3894
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "initEasyMode inflate easy mode"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3895
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    .line 3897
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b010d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeCompose:Landroid/widget/LinearLayout;

    .line 3898
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeCompose:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$30;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$30;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3910
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 3911
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3913
    :cond_1
    return-void

    .line 3906
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 3907
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initEmptyView()V
    .locals 5

    .prologue
    .line 3932
    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "initEmptyView"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3933
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v3, 0x7f0b0067

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 3935
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_1

    .line 3936
    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "initEmptyView inflate empty view"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3937
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    .line 3938
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    new-instance v3, Lcom/android/mms/ui/ConversationListFragment$31;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationListFragment$31;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 3980
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    const v3, 0x7f0b00ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    .line 3981
    const v2, 0x7f0c0349

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ConversationListFragment;->applyImages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3982
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mImgGetter:Landroid/text/Html$ImageGetter;

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3984
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 3985
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3992
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->updateEmptyView()V

    .line 3993
    return-void

    .line 3988
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3989
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initListAdapter()V
    .locals 4

    .prologue
    .line 578
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "initListAdapter()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    new-instance v1, Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    .line 581
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 582
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 583
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setRecyclerListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;)V

    .line 586
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    .line 587
    .local v0, useSplitView:Z
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListAdapter;->setSplitModePreference(Z)V

    .line 588
    return-void
.end method

.method private initListAnimation()V
    .locals 2

    .prologue
    .line 474
    new-instance v0, Lcom/android/mms/animation/MsgListAnimation;

    invoke-direct {v0}, Lcom/android/mms/animation/MsgListAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 475
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$3;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgListAnimation;->setOnDeleteAnimation(Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;)V

    .line 506
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V

    .line 508
    return-void
.end method

.method private isFirstItemChanged()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 2709
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startedFromLaundher()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount(Landroid/content/ContentResolver;)I

    move-result v3

    if-lez v3, :cond_0

    .line 2722
    :goto_0
    return v2

    .line 2713
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lez v3, :cond_1

    .line 2715
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 2716
    .local v0, newId:J
    iget-wide v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_1

    .line 2717
    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    goto :goto_0

    .line 2722
    .end local v0           #newId:J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadToDeleteMode(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 797
    const-string v0, "conversationDeleteMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    .line 798
    return-void
.end method

.method private markCheckedMessageLimit()V
    .locals 3

    .prologue
    .line 645
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 646
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "checked_message_limits"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 647
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 649
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "markCheckedMessageLimit()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method private moveSelectedConversations()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3477
    const-string v3, "Mms/ConversationListFragment"

    const-string v4, "moveSelectedConversations()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3478
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    .line 3479
    .local v0, allSelected:Z
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f040061

    invoke-static {v3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3480
    .local v2, contents:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3481
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz v0, :cond_0

    const v3, 0x7f0c0327

    :goto_0
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/mms/ui/ConversationListFragment$27;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ConversationListFragment$27;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3595
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mMoveAlertDialog:Landroid/app/AlertDialog;

    .line 3596
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mMoveAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 3597
    return-void

    .line 3481
    :cond_0
    const v3, 0x7f0c0324

    goto :goto_0
.end method

.method private notifyDeleteStart()V
    .locals 1

    .prologue
    .line 3649
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->onConversationDeleteStart()V

    .line 3650
    return-void
.end method

.method private openThread(J)V
    .locals 9
    .parameter "threadId"

    .prologue
    .line 1816
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V

    .line 1817
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ConversationListFragment;->closeSearchView(Z)V

    .line 1823
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const/4 v7, 0x0

    invoke-static {v6, p1, p2, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 1825
    .local v1, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v3

    .line 1826
    .local v3, isCmas:Z
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/mms/data/Conversation;->isCmasPresidential(I)Z

    move-result v4

    .line 1828
    .local v4, isCmasPresidentialType:Z
    const-string v6, "Mms/ConversationListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openThread startActivity for threadId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , CMAS= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , isPresidential = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_1

    if-eqz v4, :cond_1

    .line 1832
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v5

    .line 1833
    .local v5, useSplitView:Z
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v6, p1, p2}, Lcom/android/mms/ui/CMASViewer;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 1834
    .local v0, cmasintent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    .line 1835
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v5}, Lcom/android/mms/ui/ConversationComposer;->requestSplitModeOnConverationList(Z)V

    .line 1836
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v0}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    .line 1837
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    .line 1851
    .end local v0           #cmasintent:Landroid/content/Intent;
    .end local v5           #useSplitView:Z
    :cond_0
    :goto_0
    return-void

    .line 1840
    :cond_1
    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    if-eqz v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1844
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    iget-boolean v7, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    invoke-static {v6, p1, p2, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v2

    .line 1845
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v2}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    .line 1848
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    goto :goto_0
.end method

.method private openThread(JI)V
    .locals 9
    .parameter "threadId"
    .parameter "reply_all"

    .prologue
    .line 1855
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V

    .line 1856
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ConversationListFragment;->closeSearchView(Z)V

    .line 1862
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const/4 v7, 0x0

    invoke-static {v6, p1, p2, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 1864
    .local v1, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v3

    .line 1865
    .local v3, isCmas:Z
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/mms/data/Conversation;->isCmasPresidential(I)Z

    move-result v4

    .line 1867
    .local v4, isCmasPresidentialType:Z
    const-string v6, "Mms/ConversationListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openThread startActivity for threadId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , CMAS= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , isPresidential = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_1

    if-eqz v4, :cond_1

    .line 1871
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v5

    .line 1872
    .local v5, useSplitView:Z
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v6, p1, p2}, Lcom/android/mms/ui/CMASViewer;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 1873
    .local v0, cmasintent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    .line 1874
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v5}, Lcom/android/mms/ui/ConversationComposer;->requestSplitModeOnConverationList(Z)V

    .line 1875
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v0}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    .line 1876
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1890
    .end local v0           #cmasintent:Landroid/content/Intent;
    .end local v5           #useSplitView:Z
    :cond_0
    :goto_0
    return-void

    .line 1879
    :cond_1
    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    if-eqz v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1883
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    iget-boolean v7, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    invoke-static {v6, p1, p2, v7, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZI)Landroid/content/Intent;

    move-result-object v2

    .line 1884
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v2}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    .line 1887
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    goto :goto_0
.end method

.method private restoreListOffset()V
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 811
    :goto_0
    return-void

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    goto :goto_0
.end method

.method private saveListOffset()V
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 805
    :goto_0
    return-void

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    goto :goto_0
.end method

.method private saveToDeleteMode(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 793
    const-string v0, "conversationDeleteMode"

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 794
    return-void
.end method

.method public static setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "queryhint"

    .prologue
    .line 3847
    sput-object p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHint:Ljava/lang/CharSequence;

    .line 3848
    return-void
.end method

.method private setSpinnerItem(I)V
    .locals 0
    .parameter "item"

    .prologue
    .line 1400
    sput p1, Lcom/android/mms/ui/ConversationListFragment;->mSelected_spinner_item:I

    .line 1401
    return-void
.end method

.method private setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 544
    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/SweepHandler$ListCheckInterface;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 545
    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 546
    return-void
.end method

.method private setSweepRestriction(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 4027
    const/4 v0, 0x0

    .line 4028
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

    .line 4031
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4034
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepAreaRestrictionStart(F)V

    .line 4035
    const-string v1, "Mms/ConversationListFragment"

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

    .line 4036
    return-void
.end method

.method private setTotalQuantityTextView(I)V
    .locals 4
    .parameter "count"

    .prologue
    .line 2699
    const v1, 0x7f0c00ed

    const v2, 0x7f0d0002

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    .line 2701
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2703
    const-string v1, "Mms/ConversationListFragment"

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

    .line 2704
    return-void
.end method

.method private startAsyncQuery()V
    .locals 1

    .prologue
    .line 1020
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryInternal(Z)V

    .line 1021
    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 4
    .parameter "isFake"

    .prologue
    .line 1039
    if-eqz p1, :cond_0

    .line 1040
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    const/16 v2, 0x6a4

    const/16 v3, 0xb

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;II)V

    .line 1048
    :goto_0
    return-void

    .line 1042
    :cond_0
    const-string v1, "VerificationLog"

    const-string v2, "Executed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    const/16 v2, 0x6a5

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;II)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1045
    :catch_0
    move-exception v0

    .line 1046
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    .prologue
    .line 1013
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->beforeQuery()V

    .line 1014
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryInternal(Z)V

    .line 1015
    return-void
.end method

.method private startedFromLaundher()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2726
    const/4 v0, 0x0

    .line 2727
    .local v0, ret:Z
    const-string v3, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startedFromLaundher(),taskMovedToBack="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    iget-boolean v1, v1, Lcom/android/mms/ui/ConversationComposer;->taskMovedToBack:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", activityCreated="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    iget-boolean v1, v1, Lcom/android/mms/ui/ConversationComposer;->activityCreated:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    iget-boolean v1, v1, Lcom/android/mms/ui/ConversationComposer;->taskMovedToBack:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    iget-boolean v1, v1, Lcom/android/mms/ui/ConversationComposer;->activityCreated:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2733
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    iput-boolean v2, v1, Lcom/android/mms/ui/ConversationComposer;->taskMovedToBack:Z

    .line 2734
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    iput-boolean v2, v1, Lcom/android/mms/ui/ConversationComposer;->activityCreated:Z

    .line 2736
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startedFromLaundher(), ret ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2737
    return v0

    :cond_1
    move v0, v2

    .line 2730
    goto :goto_0
.end method

.method private threadHasUnmoveableMessages(J)Z
    .locals 13
    .parameter "threadId"

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 3753
    const/4 v10, 0x0

    .line 3754
    .local v10, unMoveableNum:I
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3755
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p1, p2, v12}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v8

    .line 3756
    .local v8, mConversation:Lcom/android/mms/data/Conversation;
    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->isAnonymousMsg()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v3, v11

    .line 3814
    :goto_0
    return v3

    .line 3759
    :cond_1
    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-nez v6, :cond_2

    move v3, v11

    .line 3760
    goto :goto_0

    .line 3762
    :cond_2
    const-string v4, "(thread_id = ? AND (type = 4 OR type = 5 OR type = 6))"

    .line 3763
    .local v4, whereSql:Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    .line 3766
    .local v5, whereArgs:[Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 3767
    .local v2, tableUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/MmsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, resolver:Landroid/content/ContentResolver;
    move-object v6, v3

    .line 3768
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3770
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 3773
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 3777
    :cond_3
    if-eqz v7, :cond_4

    .line 3778
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3784
    :cond_4
    const-string v4, "(thread_id = ? and ((m_type = ?) or (msg_box = 4) or (msg_box = 200)))"

    .line 3785
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/String;

    .end local v5           #whereArgs:[Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const/16 v6, 0x82

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 3788
    .restart local v5       #whereArgs:[Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object v6, v3

    .line 3789
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3792
    .local v9, mms_cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_5

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 3796
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    add-int/2addr v10, v3

    .line 3799
    :cond_5
    if-eqz v9, :cond_6

    .line 3800
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3803
    :cond_6
    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v3

    if-ne v10, v3, :cond_9

    .line 3804
    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v11

    .line 3808
    goto :goto_0

    .line 3777
    .end local v9           #mms_cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v7, :cond_7

    .line 3778
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3

    .line 3799
    .restart local v9       #mms_cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    if-eqz v9, :cond_8

    .line 3800
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    .line 3810
    :cond_9
    const-string v3, "Mms/ConversationListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "threadHasUnmoveableMessages(): unMoveableNum="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ", mConversation.getMessageCount()="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3812
    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3813
    :cond_a
    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_b
    move v3, v12

    .line 3814
    goto/16 :goto_0
.end method

.method private updateCheckedMsgCount()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3415
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 3416
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 3417
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3431
    :cond_0
    :goto_0
    return-void

    .line 3419
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 3420
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    .line 3421
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 3422
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 3424
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveDone:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 3425
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 3426
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 3427
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 3429
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveDone:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private static updateCmasExpiry(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 929
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 930
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 931
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "expired"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 933
    const-string v3, "Mms/ConversationListFragment"

    const-string v4, "calling updateCMASExpiry"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expired!=1 AND expires<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 937
    .local v1, selection:Ljava/lang/String;
    sget-object v3, Landroid/provider/Telephony$Threads;->CMAS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 939
    return-void
.end method

.method private updateEmptyScreen(I)V
    .locals 8
    .parameter "resultCount"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 963
    const-string v1, "Mms/ConversationListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEmptyScreen(), resultCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsDeleteMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    .line 965
    .local v0, listView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    .line 968
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    if-eqz v1, :cond_3

    .line 969
    if-nez p1, :cond_2

    .line 970
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v1, :cond_0

    .line 971
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 972
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->initEmptyView()V

    .line 973
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 974
    invoke-virtual {p0, v2, v3, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    .line 1010
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 965
    goto :goto_0

    .line 977
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->hideEmptyView()V

    .line 978
    invoke-virtual {p0, v2, v2, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    goto :goto_1

    .line 983
    :cond_3
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    if-eqz v1, :cond_4

    .line 984
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->hideEmptyView()V

    .line 985
    invoke-virtual {p0, v6, v2, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    goto :goto_1

    .line 986
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsSaveMode:Z

    if-eqz v1, :cond_5

    .line 987
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->hideEmptyView()V

    .line 988
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v2, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    goto :goto_1

    .line 992
    :cond_5
    if-nez p1, :cond_8

    .line 994
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v1, :cond_6

    .line 995
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 996
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->initEmptyView()V

    .line 999
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1000
    const-string v1, "GATE"

    const-string v2, "<GATE-M>NO_MESSAGES</GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_7
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1005
    :cond_8
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->hideEmptyView()V

    .line 1007
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public FindThread(Landroid/database/Cursor;J)Landroid/database/Cursor;
    .locals 4
    .parameter "cursor"
    .parameter "threadId"

    .prologue
    const/4 v1, 0x0

    .line 3676
    if-nez p1, :cond_1

    move-object p1, v1

    .line 3687
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 3679
    .restart local p1
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3681
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3682
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_0

    .line 3685
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 3681
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object p1, v1

    .line 3687
    goto :goto_0
.end method

.method closeSearchView(Z)V
    .locals 1
    .parameter "invalidate"

    .prologue
    .line 3843
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/ConversationListFragment;->closeSearchView(ZZ)V

    .line 3844
    return-void
.end method

.method closeSearchView(ZZ)V
    .locals 5
    .parameter "invalidate"
    .parameter "animation"

    .prologue
    const/4 v4, 0x0

    .line 3819
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSearchView invalidate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3821
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3822
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->mIsSearchMode:Z

    .line 3823
    iput-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    .line 3826
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ConversationListFragment;->onCloseSearchView(Z)V

    .line 3828
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    .line 3829
    .local v0, useSplitView:Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3830
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->requestFocusOnComposer()Z

    .line 3832
    :cond_0
    if-eqz p1, :cond_1

    .line 3833
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3835
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->hideSoftInputKeyboard()V

    .line 3838
    .end local v0           #useSplitView:Z
    :cond_2
    sget-object v1, Lcom/android/mms/ui/ConversationListFragment;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 3839
    sput-object v4, Lcom/android/mms/ui/ConversationListFragment;->mQueryHint:Ljava/lang/CharSequence;

    .line 3840
    :cond_3
    return-void
.end method

.method public confirmRegisterAsSpamNumber()V
    .locals 3

    .prologue
    .line 3856
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3857
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0405

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3859
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3860
    const v1, 0x7f0c0407

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3861
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$29;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$29;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3873
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3875
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 3876
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3877
    return-void
.end method

.method public deleteSelectedConversationsRemote(J)V
    .locals 2
    .parameter "mthreadId"

    .prologue
    .line 3457
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "deleteSelectedConversationsRemote()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3458
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 3459
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    invoke-static {p1, p2, v0}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    .line 3461
    :cond_0
    return-void
.end method

.method public dismissDeleteConfirmDialog()V
    .locals 1

    .prologue
    .line 3851
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 3852
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 3853
    :cond_0
    return-void
.end method

.method public dismissMoveAlertDialog()V
    .locals 1

    .prologue
    .line 3600
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMoveAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3601
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMoveAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMoveAlertDialog:Landroid/app/AlertDialog;

    .line 3604
    :cond_0
    return-void
.end method

.method public drawMessagePointer(J)V
    .locals 3
    .parameter "threadId"

    .prologue
    .line 1895
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawMessagePointer(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListAdapter;->setListItemSelected(J)V

    .line 1901
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1902
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidateViews()V

    .line 1904
    :cond_0
    return-void
.end method

.method public drawMessagePointer(JI)V
    .locals 1
    .parameter "threadId"
    .parameter "position"

    .prologue
    .line 1907
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    .line 1909
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    .line 1910
    return-void
.end method

.method public drawMessageTouchPointer()V
    .locals 2

    .prologue
    .line 1913
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "drawMessageTouchPointer()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1917
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidateViews()V

    .line 1918
    :cond_0
    return-void
.end method

.method public getAnimationEnable()Z
    .locals 1

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    return v0
.end method

.method public getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method public getFirstItemId()J
    .locals 2

    .prologue
    .line 896
    iget-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    return-wide v0
.end method

.method public getListCount()I
    .locals 2

    .prologue
    .line 4040
    const/4 v0, 0x0

    .line 4042
    .local v0, listCount:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v1, :cond_0

    .line 4043
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v0

    .line 4046
    :cond_0
    return v0
.end method

.method public getNumber(I)Ljava/lang/String;
    .locals 8
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 3172
    const-string v5, "Mms/ConversationListFragment"

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

    .line 3175
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 3176
    .local v1, conv:Lcom/android/mms/data/Conversation;
    if-nez v1, :cond_1

    .line 3213
    .end local v1           #conv:Lcom/android/mms/data/Conversation;
    :cond_0
    :goto_0
    return-object v4

    .line 3179
    .restart local v1       #conv:Lcom/android/mms/data/Conversation;
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 3180
    .local v0, contactList:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 3183
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v3

    .line 3184
    .local v3, numbers:[Ljava/lang/String;
    array-length v5, v3

    if-eqz v5, :cond_0

    .line 3187
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 3188
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3191
    const/4 v5, 0x0

    aget-object v5, v3, v5

    const-string v6, "#CMAS#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3194
    const/4 v5, 0x0

    aget-object v4, v3, v5

    goto :goto_0

    .line 3205
    :cond_2
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3206
    const/4 v5, 0x0

    aget-object v4, v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3209
    .end local v0           #contactList:Lcom/android/mms/data/ContactList;
    .end local v1           #conv:Lcom/android/mms/data/Conversation;
    .end local v3           #numbers:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3210
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public hidecheckbox()V
    .locals 1

    .prologue
    .line 3739
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v0, :cond_0

    .line 3740
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v0}, Lcom/android/mms/animation/MsgListAnimation;->hidecheckbox()V

    .line 3741
    :cond_0
    return-void
.end method

.method public isCallable(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 3881
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getNumber(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConversationIndex(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 554
    if-gez p1, :cond_1

    .line 561
    :cond_0
    :goto_0
    return v3

    .line 557
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    .line 558
    .local v0, cnt:I
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    .line 559
    .local v2, cntHeader:I
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v1

    .line 561
    .local v1, cntFooter:I
    add-int/lit8 v4, v2, -0x1

    if-le p1, v4, :cond_0

    sub-int v4, v0, v1

    if-ge p1, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isDeleteMode()Z
    .locals 1

    .prologue
    .line 3440
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    return v0
.end method

.method public isListIndex(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 3886
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->isConversationIndex(I)Z

    move-result v0

    return v0
.end method

.method public isMoveMode()Z
    .locals 1

    .prologue
    .line 3445
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    return v0
.end method

.method public isSaveMode()Z
    .locals 1

    .prologue
    .line 3450
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3451
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsSaveMode:Z

    .line 3453
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearchMode()Z
    .locals 3

    .prologue
    .line 3746
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSearchMode() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/ConversationListFragment;->mIsSearchMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3747
    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->mIsSearchMode:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 385
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 386
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onActivityCreated()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onActivityCreated start"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 391
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 393
    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    .line 394
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    .line 396
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 399
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 400
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 401
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 403
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->initListAdapter()V

    .line 405
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startFakeAsyncQuery()V

    .line 406
    iput-boolean v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListQueryOnStart:Z

    .line 408
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ConversationListFragment;->setSweepRestriction(Z)V

    .line 411
    if-eqz p1, :cond_0

    .line 412
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->loadToDeleteMode(Landroid/os/Bundle;)V

    .line 416
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/mms/util/SaveRestoreOperation;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    .line 428
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->initListAnimation()V

    .line 431
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    .line 432
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 433
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "checked_message_limits"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 435
    .local v0, checkedMessageLimits:Z
    if-nez v0, :cond_2

    .line 436
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->runOneTimeStorageLimitCheckForLegacyMessages()V

    .line 439
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$2;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v1, :cond_3

    .line 458
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/animation/MsgListAnimation;->setLayout(Landroid/widget/LinearLayout;Lcom/sec/android/touchwiz/widget/TwCheckBox;Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 461
    :cond_3
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 462
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    .line 466
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->cpUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/ConversationListFragment;->sWsomaCPObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 468
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onActivityCreated end"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 353
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 355
    return-void
.end method

.method public onCloseSearchView(Z)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 1438
    if-eqz p1, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mLinearLayout_search:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1440
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mLinearLayout_search:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mLinearLayout_search:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->setLayoutAnim_slideSideToSide(Landroid/view/ViewGroup;Z)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1442
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2212
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    .line 2213
    .local v0, SplitModefrom:I
    const-string v2, "Mms/ConversationListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configurationChanged(),newConfig="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v7, :cond_7

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    .line 2216
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    .line 2217
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->updateEmptyView()V

    .line 2219
    if-ne v0, v3, :cond_0

    .line 2220
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    if-eqz v2, :cond_0

    .line 2221
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    invoke-interface {v2}, Landroid/view/ContextMenu;->close()V

    .line 2222
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    .line 2227
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    .line 2228
    .local v1, useSplitView:Z
    if-eqz v1, :cond_1

    .line 2229
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    if-eqz v2, :cond_8

    if-eq v0, v7, :cond_8

    .line 2231
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarPadding(Z)V

    .line 2232
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarPaddingPosition(I)V

    .line 2239
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_2

    .line 2240
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/ConversationListFragment;->mQueryHint:Ljava/lang/CharSequence;

    .line 2243
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSaveMode()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2246
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2248
    :cond_6
    return-void

    .end local v1           #useSplitView:Z
    :cond_7
    move v2, v4

    .line 2214
    goto :goto_0

    .line 2235
    .restart local v1       #useSplitView:Z
    :cond_8
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarPadding(Z)V

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 17
    .parameter "item"

    .prologue
    .line 2076
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v13, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v13}, Lcom/android/mms/ui/ConversationComposer;->getCMASViewerIsVisible()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2077
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v13, Lcom/android/mms/ui/ConversationComposer;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/mms/ui/ConversationComposer;->onCMASViewerContextItemSelected(Landroid/view/MenuItem;)V

    .line 2078
    const/4 v13, 0x0

    .line 2197
    :goto_0
    return v13

    .line 2081
    :cond_0
    const-string v13, "Mms/ConversationListFragment"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onContextItemSelected(),itemId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 2085
    .local v7, info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v14, v7, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v13, v14}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v9

    .line 2086
    .local v9, itemObject:Ljava/lang/Object;
    instance-of v13, v9, Landroid/database/Cursor;

    if-nez v13, :cond_1

    .line 2087
    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    move-object v5, v9

    .line 2088
    check-cast v5, Landroid/database/Cursor;

    .line 2090
    .local v5, cursor:Landroid/database/Cursor;
    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    if-ltz v13, :cond_2

    .line 2093
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    .line 2094
    .local v4, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v10

    .line 2095
    .local v10, threadId:J
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    .line 2197
    .end local v4           #conv:Lcom/android/mms/data/Conversation;
    .end local v10           #threadId:J
    :cond_2
    :goto_1
    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v13

    goto :goto_0

    .line 2097
    .restart local v4       #conv:Lcom/android/mms/data/Conversation;
    .restart local v10       #threadId:J
    :sswitch_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    .line 2098
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    invoke-static {v10, v11, v13}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto :goto_1

    .line 2103
    :sswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2104
    iget v13, v4, Lcom/android/mms/data/Conversation;->mReplyAllDraftFlag:I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v13}, Lcom/android/mms/ui/ConversationListFragment;->openThread(JI)V

    goto :goto_1

    .line 2106
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    goto :goto_1

    .line 2112
    :sswitch_2
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    .line 2113
    .local v3, contact:Lcom/android/mms/data/Contact;
    new-instance v8, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v8, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2114
    .local v8, intent:Landroid/content/Intent;
    const/high16 v13, 0x8

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2115
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactReplacePackageAs()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.android.jcontacts"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2116
    const-string v13, "com.android.jcontacts"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2118
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2123
    .end local v3           #contact:Lcom/android/mms/data/Contact;
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_3
    :try_start_0
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/data/Contact;

    invoke-virtual {v13}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 2124
    .local v1, address:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2125
    .end local v1           #address:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 2126
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2132
    .end local v6           #e:Ljava/lang/Exception;
    :sswitch_4
    const/4 v2, 0x0

    .line 2134
    .local v2, blockContact:Lcom/android/mms/data/Contact;
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/data/ContactList;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 2135
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #blockContact:Lcom/android/mms/data/Contact;
    check-cast v2, Lcom/android/mms/data/Contact;

    .line 2137
    .restart local v2       #blockContact:Lcom/android/mms/data/Contact;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v13, v2}, Lcom/android/mms/ui/MessageUtils;->createblockNumberSettingDialog(Landroid/content/Context;Lcom/android/mms/data/Contact;)V

    goto/16 :goto_1

    .line 2140
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListFragment;->confirmRegisterAsSpamNumber()V

    goto/16 :goto_1

    .line 2146
    .end local v2           #blockContact:Lcom/android/mms/data/Contact;
    :sswitch_5
    const/4 v12, 0x0

    .line 2147
    .local v12, unblockContact:Lcom/android/mms/data/Contact;
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/data/ContactList;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 2148
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #unblockContact:Lcom/android/mms/data/Contact;
    check-cast v12, Lcom/android/mms/data/Contact;

    .line 2149
    .restart local v12       #unblockContact:Lcom/android/mms/data/Contact;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageUtils;->unregisterSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0c0409

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2157
    .end local v12           #unblockContact:Lcom/android/mms/data/Contact;
    :sswitch_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 2158
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/data/Contact;

    invoke-virtual {v13}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 2159
    .restart local v1       #address:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 2160
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v13, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2161
    const-string v13, "number"

    invoke-virtual {v8, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2162
    const-string v13, "list"

    const-string v14, "blacklist"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2163
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2169
    .end local v1           #address:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 2170
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/data/Contact;

    invoke-virtual {v13}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 2171
    .restart local v1       #address:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 2172
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v13, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2173
    const-string v13, "number"

    invoke-virtual {v8, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2174
    const-string v13, "list"

    const-string v14, "whitelist"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2175
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2181
    .end local v1           #address:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2182
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    const/4 v14, 0x1

    new-array v14, v14, [J

    const/4 v15, 0x0

    aput-wide v10, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/mms/util/SaveRestoreOperation;->startSaveOperation([JZZ)V

    goto/16 :goto_1

    .line 2187
    :sswitch_9
    const/4 v13, 0x1

    invoke-static {v10, v11, v13}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->updateDbSecretThread(JZ)V

    goto/16 :goto_1

    .line 2190
    :sswitch_a
    const/4 v13, 0x0

    invoke-static {v10, v11, v13}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->updateDbSecretThread(JZ)V

    goto/16 :goto_1

    .line 2095
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xca -> :sswitch_2
        0xcb -> :sswitch_3
        0xcc -> :sswitch_4
        0xcd -> :sswitch_5
        0xce -> :sswitch_8
        0xe6 -> :sswitch_6
        0xe7 -> :sswitch_7
        0xe8 -> :sswitch_6
        0xe9 -> :sswitch_7
        0xea -> :sswitch_9
        0xeb -> :sswitch_a
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 359
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 361
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->setHasOptionsMenu(Z)V

    .line 362
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 367
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onCreateView()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onCreateView start"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const v0, 0x7f04002d

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    .line 371
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 373
    const v0, 0x7f040029

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    .line 374
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b00ec

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    .line 376
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f0b003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    .line 377
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f0b003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 379
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onCreateView end"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    return-object v0
.end method

.method public onDeleteCompleted()V
    .locals 5

    .prologue
    .line 3653
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3664
    :cond_0
    :goto_0
    return-void

    .line 3657
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 3658
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3659
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3661
    :cond_2
    iget-wide v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeletedCount:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 3662
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c029a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onDeleteStart()V
    .locals 2

    .prologue
    .line 3642
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 3643
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3644
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 3646
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 875
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 878
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 882
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/ConversationListFragment;->sWsomaCPObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 886
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    if-eqz v0, :cond_2

    .line 887
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-virtual {v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->OnDestroy()V

    .line 888
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    .line 891
    :cond_2
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 892
    return-void
.end method

.method public onDraftChanged(JZZ)V
    .locals 2
    .parameter "threadId"
    .parameter "hasDraft"
    .parameter "isRebuildCache"

    .prologue
    .line 900
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "post onDraftChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationListFragment$7;-><init>(Lcom/android/mms/ui/ConversationListFragment;JZ)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 912
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v7, 0x82

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2318
    sparse-switch p1, :sswitch_data_0

    .line 2364
    :cond_0
    :goto_0
    return v3

    .line 2320
    :sswitch_0
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2324
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v5}, Lcom/android/mms/ui/MsgSweepActionListView;->getSelectedItemPosition()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/ConversationListFragment;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 2325
    .local v0, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 2327
    .local v2, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-lt v5, v4, :cond_0

    .line 2329
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-eq v5, v4, :cond_1

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-le v5, v4, :cond_0

    .line 2330
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/mms/ui/MsgSweepActionListView;

    if-eqz v5, :cond_0

    .line 2334
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    move v3, v4

    .line 2335
    goto :goto_0

    .line 2341
    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    .end local v2           #recipients:Lcom/android/mms/data/ContactList;
    :sswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v5, :cond_2

    .line 2342
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 2344
    .local v1, currentMenuItem:Lcom/android/internal/view/menu/ActionMenuItemView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->getId()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v5}, Lcom/android/mms/ui/MsgSweepActionListView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 2345
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-static {v7}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/MsgSweepActionListView;->playSoundEffect(I)V

    .line 2346
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v5, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    .line 2347
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->requestFocus()Z

    move v3, v4

    .line 2348
    goto :goto_0

    .line 2352
    .end local v1           #currentMenuItem:Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_2
    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeCompose:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeCompose:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2353
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-static {v7}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/MsgSweepActionListView;->playSoundEffect(I)V

    .line 2354
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v5, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    .line 2355
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->requestFocus()Z

    move v3, v4

    .line 2356
    goto/16 :goto_0

    .line 2318
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 653
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->updateCmasExpiry(Landroid/content/Context;)V

    .line 661
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQuery()V

    .line 662
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    .line 1531
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    .line 1532
    .local v6, itemId:I
    const-string v10, "Mms/ConversationListFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onOptionsItemSelected(),item="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    sparse-switch v6, :sswitch_data_0

    .line 1751
    const/4 v10, 0x0

    :goto_0
    return v10

    .line 1537
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1542
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    .line 1544
    const/4 v10, 0x1

    goto :goto_0

    .line 1545
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1550
    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    .line 1552
    const/4 v10, 0x1

    goto :goto_0

    .line 1553
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSaveMode()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1559
    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    .line 1561
    const/4 v10, 0x1

    goto :goto_0

    .line 1563
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 1566
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->createNewMessage()V

    .line 1567
    const/4 v10, 0x1

    goto :goto_0

    .line 1569
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->startSearchMenu()V

    .line 1570
    const/4 v10, 0x1

    goto :goto_0

    .line 1572
    :sswitch_3
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v10}, Lcom/android/mms/animation/MsgListAnimation;->resetAnimationFlag()V

    .line 1575
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1576
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    .line 1579
    :cond_3
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v10, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v10}, Lcom/android/mms/ui/ConversationComposer;->onConversationDeleteMode()V

    .line 1580
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/mms/ui/ConversationListFragment$17;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ConversationListFragment$17;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    const-wide/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1590
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/mms/ui/ConversationListFragment$18;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ConversationListFragment$18;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    const-wide/16 v12, 0x96

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1599
    const/4 v10, 0x1

    goto :goto_0

    .line 1601
    :sswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1602
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v10, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v10}, Lcom/android/mms/ui/ConversationComposer;->onConversationDeleteMode()V

    .line 1603
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/mms/ui/ConversationListFragment$19;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ConversationListFragment$19;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    const-wide/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1612
    :cond_4
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1614
    :sswitch_5
    const/4 v4, 0x0

    .line 1615
    .local v4, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableTabSetting()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1616
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v11, Lcom/android/mms/ui/MessagingPreferenceTabActivity;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1622
    .restart local v4       #intent:Landroid/content/Intent;
    :goto_1
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    .line 1623
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1624
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1618
    :cond_5
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v11, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v4       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 1627
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_6
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->deleteSelectedConversations()V

    .line 1628
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1635
    :sswitch_7
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    .line 1636
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1641
    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.intent.action.SET_CP"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1642
    .local v0, cpIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1651
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1654
    .end local v0           #cpIntent:Landroid/content/Intent;
    :sswitch_9
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsViewMode(Landroid/content/Context;I)V

    .line 1655
    new-instance v5, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v11, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1656
    .local v5, intent_box:Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1657
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1658
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    .line 1659
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1664
    .end local v5           #intent_box:Landroid/content/Intent;
    :sswitch_a
    new-instance v1, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v11, Lcom/android/mms/template/TextTemplateListActivity;

    invoke-direct {v1, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1665
    .local v1, fintent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1666
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1669
    .end local v1           #fintent:Landroid/content/Intent;
    :sswitch_b
    new-instance v7, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v11, Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {v7, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1670
    .local v7, lintent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1671
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1674
    .end local v7           #lintent:Landroid/content/Intent;
    :sswitch_c
    new-instance v9, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v11, Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1675
    .local v9, sintent:Landroid/content/Intent;
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1676
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1680
    .end local v9           #sintent:Landroid/content/Intent;
    :sswitch_d
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    .line 1681
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v10, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v10}, Lcom/android/mms/ui/ConversationComposer;->onConversationMoveMode()V

    .line 1682
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/mms/ui/ConversationListFragment$20;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ConversationListFragment$20;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    const-wide/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1692
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/mms/ui/ConversationListFragment$21;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ConversationListFragment$21;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    const-wide/16 v12, 0x96

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1702
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1705
    :sswitch_e
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/mms/util/SecurityMailboxUtils;->showPasswordEntryScreen(Landroid/content/Context;)V

    .line 1706
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1709
    :sswitch_f
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->moveSelectedConversations()V

    .line 1710
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1717
    :sswitch_10
    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    .line 1718
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1722
    :sswitch_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1723
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v10}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedConvList()Ljava/util/ArrayList;

    move-result-object v8

    .line 1724
    .local v8, selectedIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    new-array v3, v10, [J

    .line 1725
    .local v3, ids:[J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_6

    .line 1726
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    aput-wide v10, v3, v2

    .line 1725
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1729
    :cond_6
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v3, v11, v12}, Lcom/samsung/mms/util/SaveRestoreOperation;->startSaveOperation([JZZ)V

    .line 1731
    .end local v2           #i:I
    .end local v3           #ids:[J
    .end local v8           #selectedIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1734
    :sswitch_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1739
    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    .line 1741
    :cond_8
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1744
    :sswitch_13
    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v12, Lcom/android/mms/ui/DraftMessageManager;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1745
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1748
    :sswitch_14
    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v12, Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1749
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1534
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_2
        0xcb -> :sswitch_3
        0xcc -> :sswitch_8
        0xcd -> :sswitch_5
        0xce -> :sswitch_6
        0xcf -> :sswitch_7
        0xd0 -> :sswitch_a
        0xd2 -> :sswitch_9
        0xd3 -> :sswitch_b
        0xd4 -> :sswitch_c
        0xd5 -> :sswitch_d
        0xd6 -> :sswitch_e
        0xd7 -> :sswitch_f
        0xd8 -> :sswitch_10
        0xd9 -> :sswitch_13
        0xda -> :sswitch_14
        0xdb -> :sswitch_11
        0xdc -> :sswitch_12
        0xdd -> :sswitch_4
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 815
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 816
    const-string v5, "Mms/ConversationListFragment"

    const-string v6, "onPause()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 820
    .local v0, activityManager:Landroid/app/ActivityManager;
    const-string v2, "com.sec.android.app.ocr"

    .line 821
    .local v2, ocrPackageName:Ljava/lang/String;
    const-string v4, "com.diotek.ime.implement.input.umlaut.HwUmlautPopup"

    .line 822
    .local v4, secInputClassName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 824
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 825
    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 827
    .local v1, className:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 828
    invoke-virtual {p0, v7, v8}, Lcom/android/mms/ui/ConversationListFragment;->closeSearchView(ZZ)V

    .line 831
    .end local v1           #className:Ljava/lang/String;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onPrepareListOptionsMenu(Landroid/view/Menu;)V
    .locals 13
    .parameter "menu"

    .prologue
    .line 1063
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onPrepareOptionsMenu()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    .line 1066
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onPrepareOptionsMenu() Already search mode"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    :goto_0
    return-void

    .line 1070
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 1071
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 1074
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageFragment()Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v7

    .line 1075
    .local v7, composeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->isCopyToSimMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsCombFwdMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1080
    :cond_2
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onPrepareOptionsMenu() Already mode-delete,move,lock,save,,,"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1091
    :cond_3
    const/4 v12, 0x0

    .line 1093
    .local v12, showEasyMode:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1094
    const/4 v1, 0x0

    const/16 v2, 0xcf

    const/4 v3, 0x0

    const v4, 0x7f0c017c

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuCancel:Landroid/view/MenuItem;

    .line 1095
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuCancel:Landroid/view/MenuItem;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1097
    const/4 v1, 0x0

    const/16 v2, 0xce

    const/4 v3, 0x0

    const v4, 0x7f0c007b

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    .line 1098
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1100
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    if-eqz v1, :cond_4

    .line 1101
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuCancel:Landroid/view/MenuItem;

    const v2, 0x7f02022c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1102
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    const v2, 0x7f02022d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1105
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 1106
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1110
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_5

    .line 1111
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1372
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportEasyMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1373
    if-eqz v12, :cond_28

    .line 1374
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->initEasyMode()V

    .line 1380
    :cond_6
    :goto_3
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto/16 :goto_0

    .line 1108
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1112
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1113
    const/4 v1, 0x0

    const/16 v2, 0xd8

    const/4 v3, 0x0

    const v4, 0x7f0c017c

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveCancel:Landroid/view/MenuItem;

    .line 1114
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveCancel:Landroid/view/MenuItem;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1116
    const/4 v1, 0x0

    const/16 v2, 0xd7

    const/4 v3, 0x0

    const v4, 0x7f0c0324

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveDone:Landroid/view/MenuItem;

    .line 1117
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveDone:Landroid/view/MenuItem;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1119
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    if-eqz v1, :cond_9

    .line 1120
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveCancel:Landroid/view/MenuItem;

    const v2, 0x7f02022c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1121
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveDone:Landroid/view/MenuItem;

    const v2, 0x7f02022d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1124
    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v1

    if-lez v1, :cond_a

    .line 1125
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveDone:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1129
    :goto_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_5

    .line 1130
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_2

    .line 1127
    :cond_a
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveDone:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 1131
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSaveMode()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1132
    const/4 v1, 0x0

    const/16 v2, 0xdc

    const/4 v3, 0x0

    const v4, 0x7f0c017c

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveCancel:Landroid/view/MenuItem;

    .line 1133
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveCancel:Landroid/view/MenuItem;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1135
    const/4 v1, 0x0

    const/16 v2, 0xdb

    const/4 v3, 0x0

    const v4, 0x7f0c00dd

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveDone:Landroid/view/MenuItem;

    .line 1136
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveDone:Landroid/view/MenuItem;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1138
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    if-eqz v1, :cond_c

    .line 1139
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveCancel:Landroid/view/MenuItem;

    const v2, 0x7f02022c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1140
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveDone:Landroid/view/MenuItem;

    const v2, 0x7f02022d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1143
    :cond_c
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v1

    if-lez v1, :cond_d

    .line 1144
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveDone:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1147
    :goto_5
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_5

    .line 1148
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_2

    .line 1146
    :cond_d
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveDone:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_5

    .line 1149
    :cond_e
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDelayForSearch:Z

    if-eqz v1, :cond_f

    .line 1150
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onPrepareOptionsMenu() Delay for search mode"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1151
    :cond_f
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1152
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0f0001

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1154
    const v1, 0x7f0b02c2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    .line 1155
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 1157
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0246

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    .line 1158
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "search"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/SearchManager;

    .line 1160
    .local v10, searchManager:Landroid/app/SearchManager;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android:id/search_src_text"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 1161
    .local v11, searchTextId:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->conversationComposerActivity:Lcom/android/mms/ui/ConversationComposer;

    .line 1162
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->conversationComposerActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v1}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->immConv:Landroid/view/inputmethod/InputMethodManager;

    .line 1163
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v11}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->searchPlate:Landroid/widget/EditText;

    .line 1164
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->searchPlate:Landroid/widget/EditText;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$10;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$10;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1175
    if-eqz v10, :cond_10

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_10

    .line 1176
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 1177
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 1181
    :cond_10
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0244

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mLinearLayout_search:Landroid/widget/LinearLayout;

    .line 1182
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mLinearLayout_search:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mLinearLayout_search:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->setLayoutAnim_slideSideToSide(Landroid/view/ViewGroup;Z)Landroid/view/animation/AnimationSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1185
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$11;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$11;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 1205
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1207
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSpiner_item:[Ljava/lang/CharSequence;

    .line 1208
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0245

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSpinner:Landroid/widget/Spinner;

    .line 1209
    new-instance v6, Lcom/android/mms/ui/SPinnerArrayAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x1090008

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mSpiner_item:[Ljava/lang/CharSequence;

    invoke-direct {v6, v1, v2, v3}, Lcom/android/mms/ui/SPinnerArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    .line 1210
    .local v6, adapter:Lcom/android/mms/ui/SPinnerArrayAdapter;
    const v1, 0x1090009

    invoke-virtual {v6, v1}, Lcom/android/mms/ui/SPinnerArrayAdapter;->setDropDownViewResource(I)V

    .line 1211
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1212
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->CheckInitSpinner:Z

    .line 1213
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->getSpinnerItem()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1214
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$12;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$12;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1223
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$13;

    invoke-direct {v2, p0, v6}, Lcom/android/mms/ui/ConversationListFragment$13;-><init>(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/SPinnerArrayAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1248
    sget-object v1, Lcom/android/mms/ui/ConversationListFragment;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_11

    .line 1249
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    sget-object v2, Lcom/android/mms/ui/ConversationListFragment;->mQueryHint:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1251
    :cond_11
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 1252
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1256
    .end local v6           #adapter:Lcom/android/mms/ui/SPinnerArrayAdapter;
    .end local v10           #searchManager:Landroid/app/SearchManager;
    .end local v11           #searchTextId:I
    :cond_12
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_13

    .line 1257
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 1259
    :cond_13
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    if-eqz v1, :cond_24

    .line 1260
    const/4 v12, 0x1

    .line 1275
    :cond_14
    :goto_6
    sget-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->isOmacpChanged:Z

    if-eqz v1, :cond_18

    .line 1276
    const/4 v8, 0x0

    .line 1278
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->cpUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 1279
    .local v0, resolver:Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_16

    .line 1280
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->cpUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1282
    if-eqz v8, :cond_15

    .line 1283
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sput v1, Lcom/android/mms/ui/ConversationListFragment;->isOmacpCount:I

    .line 1285
    :cond_15
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    :cond_16
    if-eqz v8, :cond_17

    .line 1291
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1293
    .end local v0           #resolver:Landroid/content/ContentProviderClient;
    :cond_17
    :goto_7
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->isOmacpChanged:Z

    .line 1296
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_18
    sget v1, Lcom/android/mms/ui/ConversationListFragment;->isOmacpCount:I

    if-lez v1, :cond_19

    .line 1297
    const/4 v1, 0x0

    const/16 v2, 0xcc

    const/4 v3, 0x0

    const v4, 0x7f0c0004

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02008f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1302
    :cond_19
    const/4 v1, 0x0

    const/16 v2, 0xc9

    const/4 v3, 0x0

    const v4, 0x7f0c0171

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200b7

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x73

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1307
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1a

    .line 1308
    const/4 v1, 0x0

    const/16 v2, 0xcb

    const/4 v3, 0x0

    const v4, 0x7f0c0007

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020095

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1312
    :cond_1a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1314
    const/4 v1, 0x0

    const/16 v2, 0xd2

    const/4 v3, 0x0

    const v4, 0x7f0c0231

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200bf

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1319
    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDraftMessageBox()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1320
    const/4 v1, 0x0

    const/16 v2, 0xd9

    const/4 v3, 0x0

    const v4, 0x7f0c0380

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020098

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1323
    :cond_1c
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    if-nez v1, :cond_1d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1324
    const/4 v1, 0x0

    const/16 v2, 0xd3

    const/4 v3, 0x0

    const v4, 0x7f0c02ca

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200a5

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1328
    :cond_1d
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    if-nez v1, :cond_1e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1329
    const/4 v1, 0x0

    const/16 v2, 0xda

    const/4 v3, 0x0

    const v4, 0x7f0c02cc

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200b3

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1333
    :cond_1e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1334
    :cond_1f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1335
    const/4 v1, 0x0

    const/16 v2, 0xd4

    const/4 v3, 0x0

    const v4, 0x7f0c027f

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200b9

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1342
    :cond_20
    :goto_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_21

    .line 1343
    const/4 v1, 0x0

    const/16 v2, 0xdd

    const/4 v3, 0x0

    const v4, 0x7f0c03a3

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200b5

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1346
    :cond_21
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1347
    const/4 v1, 0x0

    const/16 v2, 0xd6

    const/4 v3, 0x0

    const v4, 0x7f0c0322

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02009c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1350
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_22

    .line 1351
    const/4 v1, 0x0

    const/16 v2, 0xd5

    const/4 v3, 0x0

    const v4, 0x7f0c0323

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200a6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1358
    :cond_22
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTexttemplatTMOMenu()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1359
    const/4 v1, 0x0

    const/16 v2, 0xd0

    const/4 v3, 0x0

    const v4, 0x7f0c0209

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200ba

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1364
    :cond_23
    const/4 v1, 0x0

    const/16 v2, 0xcd

    const/4 v3, 0x0

    const v4, 0x7f0c0003

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200ab

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1367
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 1368
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1263
    :cond_24
    const/4 v1, 0x0

    const/16 v2, 0xc8

    const/4 v3, 0x0

    const v4, 0x7f0c0002

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020233

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1266
    if-eqz v7, :cond_14

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->isCopyToSimMode()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsCombFwdMode()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1270
    :cond_25
    const/16 v1, 0xc8

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    goto/16 :goto_6

    .line 1287
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 1288
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "com.wsomacp.messagelist provider error"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1290
    if-eqz v8, :cond_17

    .line 1291
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7

    .line 1290
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_26

    .line 1291
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_26
    throw v1

    .line 1338
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_27
    const/4 v1, 0x0

    const/16 v2, 0xd4

    const/4 v3, 0x0

    const v4, 0x7f0c027e

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200b9

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_8

    .line 1376
    :cond_28
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->hideEasyMode()V

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 3139
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 3143
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->updateCountryIso()V

    .line 3145
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$26;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$26;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3163
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    .line 3164
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 3165
    return-void
.end method

.method public onSaveCompleted()V
    .locals 2

    .prologue
    .line 915
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$8;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 925
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 767
    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V

    .line 771
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->saveToDeleteMode(Landroid/os/Bundle;)V

    .line 773
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMsgAnimating:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    if-eqz v2, :cond_0

    .line 774
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->userRelease()V

    .line 775
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->userCancelAnimationEffectForDeleteItems()V

    .line 780
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    .line 781
    .local v1, headerCount:I
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v2, :cond_1

    .line 782
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    .line 789
    .end local v1           #headerCount:I
    :goto_0
    return-void

    .line 784
    .restart local v1       #headerCount:I
    :cond_1
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 786
    .end local v1           #headerCount:I
    :catch_0
    move-exception v0

    .line 787
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/16 v4, 0x378

    const/16 v3, 0xef

    .line 680
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 681
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onStart()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageFragment()Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    .line 685
    .local v0, composeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 686
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    const/high16 v2, 0x7f0c

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 689
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->refreshFontSize()V

    .line 691
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 692
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotificationOnly(Landroid/content/Context;I)V

    .line 695
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotificationOnly(Landroid/content/Context;I)V

    .line 704
    :goto_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 706
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 707
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    if-eqz v1, :cond_2

    .line 708
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-virtual {v1, p0}, Lcom/samsung/mms/util/SaveRestoreOperation;->SetOnSaveCompleteListener(Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;)V

    .line 711
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    .line 714
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 715
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->updateCmasExpiry(Landroid/content/Context;)V

    .line 720
    :cond_3
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListQueryOnStart:Z

    if-eqz v1, :cond_7

    .line 723
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 725
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQuery()V

    .line 743
    :goto_1
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v1

    if-nez v1, :cond_4

    .line 744
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 751
    :cond_4
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleting:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    if-nez v1, :cond_5

    .line 752
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 763
    :cond_5
    return-void

    .line 698
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 701
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto :goto_0

    .line 727
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListQueryOnStart:Z

    goto :goto_1
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 835
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 836
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onStop()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 843
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v1, :cond_0

    .line 844
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapterCount:I

    .line 848
    :cond_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 850
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 851
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    if-eqz v1, :cond_1

    .line 852
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-virtual {v1, v3}, Lcom/samsung/mms/util/SaveRestoreOperation;->SetOnSaveCompleteListener(Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;)V

    .line 860
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 862
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 863
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 867
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 871
    return-void
.end method

.method public onSweepActionCanceled(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 3087
    const-string v0, "Mms/ConversationListFragment"

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

    .line 3088
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 8
    .parameter "itemIndex"
    .parameter "flickDirection"

    .prologue
    const/4 v7, 0x1

    .line 3091
    const-string v4, "Mms/ConversationListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSweepActionFired(),itemIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",flickDirection="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3094
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 3095
    .local v2, list:Lcom/android/mms/ui/MsgSweepActionListView;
    const/4 v0, 0x0

    .line 3097
    .local v0, conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 3099
    if-nez v0, :cond_0

    .line 3100
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3131
    :goto_0
    return-void

    .line 3103
    :catch_0
    move-exception v1

    .line 3104
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3105
    invoke-virtual {v2, v7}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 3109
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    if-nez p2, :cond_2

    .line 3110
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getNumber(I)Ljava/lang/String;

    move-result-object v3

    .line 3112
    .local v3, number:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 3113
    invoke-virtual {v2, v7}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 3115
    :cond_1
    const-string v4, "Mms/ConversationListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSweepActionFired calling(),itemIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3117
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v3}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3119
    .end local v3           #number:Ljava/lang/String;
    :cond_2
    if-ne v7, p2, :cond_4

    .line 3121
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3122
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    iget v6, v0, Lcom/android/mms/data/Conversation;->mReplyAllDraftFlag:I

    invoke-direct {p0, v4, v5, v6}, Lcom/android/mms/ui/ConversationListFragment;->openThread(JI)V

    .line 3127
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 3124
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    goto :goto_1

    .line 3129
    :cond_4
    invoke-virtual {v2, v7}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 3168
    const-string v0, "Mms/ConversationListFragment"

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

    .line 3169
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 3713
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3714
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    .line 3715
    .local v0, activity:Lcom/android/mms/ui/ConversationComposer;
    iget-object v1, v0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDelayForSearch:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3716
    iget-object v1, v0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v1}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 3720
    .end local v0           #activity:Lcom/android/mms/ui/ConversationComposer;
    :cond_0
    if-nez p1, :cond_2

    .line 3721
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportQwertKeypad()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3722
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3736
    :cond_1
    :goto_0
    return-void

    .line 3727
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3728
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->hideSoftInputKeyboard()V

    goto :goto_0

    .line 3731
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    .line 3732
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->requestFocus()Z

    goto :goto_0
.end method

.method public refreshSplitMode()V
    .locals 2

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2253
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->enableSplitMode()V

    .line 2256
    :goto_0
    return-void

    .line 2255
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->disableSplitMode()V

    goto :goto_0
.end method

.method public requestDrawPointerOnConverationList(J)Z
    .locals 2
    .parameter "threadId"

    .prologue
    .line 3703
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 3704
    const/4 v0, 0x0

    .line 3708
    :goto_0
    return v0

    .line 3707
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    .line 3708
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestFocusOnConversationList(J)Z
    .locals 3
    .parameter "threadId"

    .prologue
    .line 3691
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->FindThread(Landroid/database/Cursor;J)Landroid/database/Cursor;

    move-result-object v0

    .line 3693
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 3694
    const/4 v1, 0x0

    .line 3698
    :goto_0
    return v1

    .line 3696
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    .line 3698
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->requestFocus()Z

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized runOneTimeStorageLimitCheckForLegacyMessages()V
    .locals 4

    .prologue
    .line 597
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 598
    .local v0, autoDeleteEnabled:Z
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runOneTimeStorageLimitCheckForLegacyMessages(),autoDeleteEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    if-eqz v0, :cond_0

    .line 604
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->markCheckedMessageLimit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    :goto_0
    monitor-exit p0

    return-void

    .line 607
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$6;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 597
    .end local v0           #autoDeleteEnabled:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setAnimationEnable(Z)V
    .locals 2
    .parameter "isAnimationEnable"

    .prologue
    .line 665
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    .line 667
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGUITunningForSysPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setAnimationEnable(Z)V

    .line 672
    :cond_1
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 3218
    return-void
.end method

.method public setLayoutAnim_slideSideToSide(Landroid/view/ViewGroup;Z)Landroid/view/animation/AnimationSet;
    .locals 13
    .parameter "panel"
    .parameter "directionToLeft"

    .prologue
    const/high16 v2, 0x3f80

    const v6, 0x3f4ccccd

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1409
    new-instance v12, Landroid/view/animation/AnimationSet;

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1411
    .local v12, set:Landroid/view/animation/AnimationSet;
    if-eqz p2, :cond_0

    .line 1412
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1414
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1415
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #animation:Landroid/view/animation/Animation;
    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1418
    .restart local v0       #animation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mAnimationListenerToLeft:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1419
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1420
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1432
    :goto_0
    new-instance v11, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v11, v12, v4}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 1433
    .local v11, controller:Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1434
    return-object v12

    .line 1422
    .end local v0           #animation:Landroid/view/animation/Animation;
    .end local v11           #controller:Landroid/view/animation/LayoutAnimationController;
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1424
    .restart local v0       #animation:Landroid/view/animation/Animation;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1425
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #animation:Landroid/view/animation/Animation;
    move-object v2, v0

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    move v9, v1

    move v10, v4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1428
    .restart local v0       #animation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mAnimationListenerToRight:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1429
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1430
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setMultiModeLayout(IZZZ)V
    .locals 8
    .parameter "mode"
    .parameter "modeOn"
    .parameter "requestLayout"
    .parameter "startAnimation"

    .prologue
    const/16 v3, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3227
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMultiModeLayout(), mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isModeOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3230
    packed-switch p1, :pswitch_data_0

    .line 3339
    :cond_0
    :goto_0
    return-void

    .line 3232
    :pswitch_0
    iput-boolean p2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    .line 3247
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->changeHeaderSizewhenchangeFontSize()I

    move-result v0

    sput v0, Lcom/android/mms/ui/ConversationListFragment;->heightOfTitle:I

    .line 3250
    if-eqz p2, :cond_4

    .line 3253
    if-ne p1, v7, :cond_1

    .line 3254
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapterCount:I

    if-eq v0, v1, :cond_1

    .line 3255
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 3260
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 3261
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ConversationListFragment;->setSweepRestriction(Z)V

    .line 3263
    if-ne p1, v7, :cond_2

    .line 3264
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->initListItemSelectedThreadId()V

    .line 3280
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3290
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3291
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3295
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 3331
    :goto_2
    iput-boolean v6, p0, Lcom/android/mms/ui/ConversationListFragment;->checkAnim:Z

    .line 3332
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListAdapter;->setMultiMode(IZ)V

    .line 3334
    if-eqz p3, :cond_3

    .line 3335
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->requestLayout()V

    .line 3338
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 3235
    :pswitch_1
    iput-boolean p2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    goto :goto_1

    .line 3238
    :pswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3241
    iput-boolean p2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsSaveMode:Z

    goto :goto_1

    .line 3297
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->clearCheckedList()V

    .line 3298
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->clearHasLockedMsg()V

    .line 3300
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->checkAnim:Z

    if-nez v0, :cond_6

    .line 3301
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    if-nez v0, :cond_5

    .line 3302
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    const-wide/16 v1, 0x12c

    new-instance v3, Lcom/android/mms/animation/easing/SineInOut50;

    invoke-direct {v3}, Lcom/android/mms/animation/easing/SineInOut50;-><init>()V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v5}, Lcom/android/mms/animation/MsgListAnimation;->getTitleHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgListAnimation;->setNormalModeLayout(Landroid/view/animation/Animation;)V

    .line 3309
    :goto_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->hidecheckbox()V

    .line 3314
    :goto_4
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 3315
    invoke-direct {p0, v7}, Lcom/android/mms/ui/ConversationListFragment;->setSweepRestriction(Z)V

    .line 3322
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3324
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 3325
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3326
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 3329
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    goto :goto_2

    .line 3307
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 3311
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 3230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSelectAll(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 3635
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 3636
    return-void
.end method

.method public startAsyncQueryDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 1024
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$9;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1029
    return-void
.end method

.method public startSearchMenu()V
    .locals 4

    .prologue
    .line 1384
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDelayForSearch:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->mIsSearchMode:Z

    if-eqz v0, :cond_1

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1387
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDelayForSearch:Z

    .line 1388
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$14;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$14;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public updateEmptyView()V
    .locals 2

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 954
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "updateEmptyView Multi"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 955
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    if-eqz v0, :cond_3

    .line 956
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "updateEmptyView landscape"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 958
    :cond_3
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "updateEmptyView portrait"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
