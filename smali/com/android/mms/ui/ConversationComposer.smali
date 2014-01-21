.class public Lcom/android/mms/ui/ConversationComposer;
.super Landroid/app/Activity;
.source "ConversationComposer.java"


# static fields
.field private static final CLASS_COMPOSEMESSAGEACTIVITY:Ljava/lang/String; = "com.android.mms.ui.ComposeMessageActivity"

.field private static final CLASS_FORWARDMESSAGEACTIVITY:Ljava/lang/String; = "com.android.mms.ui.ForwardMessageActivity"

.field private static final CLASS_REPLYMESSAGEACTIVITY:Ljava/lang/String; = "com.android.mms.ui.ReplyMessageActivity"

.field private static final CURRENT_STEP_OF_ACTIVITY_CREATING:I = 0x0

.field private static final CURRENT_STEP_OF_ACTIVITY_ONNEWINTENT:I = 0x1

.field private static final DEBUG_MSG:Z = false

.field public static final FROM_SEARCH_VIEW:Ljava/lang/String; = "FromSearchView"

.field public static final HISTORY_SEARCHVIEW:Ljava/lang/String; = "history_searchView"

.field public static final INTENT_TYPE_DIR_MMS_SMS:Ljava/lang/String; = "vnd.android-dir/mms-sms"

.field private static final LOADING_TASK_LIMIT:I = 0xf

.field public static final NOTI_INTENT_BLOCK_SIP:Ljava/lang/String; = "needBlockSIPforNoti"

.field private static final TAG:Ljava/lang/String; = "Mms/ConversationComposer"

.field private static final URI_CONVERSATIONS:Ljava/lang/String; = "content://mms-sms/conversations/"

.field private static final VERIFICATION_LOG_TAG:Ljava/lang/String; = "VerificationLog"

.field public static mIsFromSplitDiscard:Z

.field private static skeepSipshowing:Z


# instance fields
.field private CloseComposerForThreadsDelete:Z

.field public activityCreated:Z

.field private final mActivityStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

.field private mCmasViewer:Lcom/android/mms/ui/CMASViewer;

.field private mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mConversationList:Lcom/android/mms/ui/ConversationListFragment;

.field private mEasymodeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mEmptyScreen:Landroid/view/View;

.field private mFolderViewInvoked:Z

.field mFolderViewInvoking:Z

.field private mForceShowComposer:Z

.field private mFromFolderView:Z

.field private mFromNestedSearchView:Z

.field private mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsCmasViewer:Z

.field private mIsComposerOnly:Z

.field private mIsFinish:Z

.field private mIsFromSearchView:Z

.field private mIsLandscape:Z

.field private mIsSplitBarTouch:Z

.field private mLeftScreen:Landroid/view/View;

.field private mMenu:Landroid/view/Menu;

.field private mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mRightScreen:Landroid/view/View;

.field public mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

.field public mSipHandler:Lcom/android/mms/ui/SipHandler;

.field private mSplitBar:Landroid/view/View;

.field private mSplitBarLine:Landroid/view/View;

.field private mSplitManager:Lcom/android/mms/ui/SplitManager;

.field private mSplitShadow:Landroid/widget/ImageView;

.field private mUseMoveTaskToBack:Z

.field private mUseSplitView:Z

.field private mVto:Landroid/view/ViewTreeObserver;

.field private onCmasViewStateChanged:Lcom/android/mms/ui/OnEventListener;

.field private onComposerClose:Lcom/android/mms/ui/OnEventListener;

.field private onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

.field private onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;

.field public profileUri:Landroid/net/Uri;

.field private final sContactsLocalProfileObserver:Landroid/database/ContentObserver;

.field private savedSplitMode:I

.field public taskMovedToBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ConversationComposer;->mIsFromSplitDiscard:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    .line 151
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mHandler:Landroid/os/Handler;

    .line 162
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mFromFolderView:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoked:Z

    .line 170
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoking:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    .line 180
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->taskMovedToBack:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->activityCreated:Z

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationComposer;->savedSplitMode:I

    .line 189
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->CloseComposerForThreadsDelete:Z

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    .line 200
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mFromNestedSearchView:Z

    .line 205
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->profileUri:Landroid/net/Uri;

    .line 206
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationComposer$1;-><init>(Lcom/android/mms/ui/ConversationComposer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->sContactsLocalProfileObserver:Landroid/database/ContentObserver;

    .line 220
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$2;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mEasymodeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 243
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$3;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mActivityStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    .line 503
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$5;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 2090
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$11;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerClose:Lcom/android/mms/ui/OnEventListener;

    .line 2119
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$12;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

    .line 2309
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$13;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;

    .line 2346
    new-instance v0, Lcom/android/mms/ui/ConversationComposer$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$14;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onCmasViewStateChanged:Lcom/android/mms/ui/OnEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationComposer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBarLine:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/ConversationComposer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->composerRequestsClosing()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationComposer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationComposer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationComposer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/ConversationComposer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    return p1
.end method

.method private addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 6
    .parameter "id"
    .parameter "list"
    .parameter "composer"

    .prologue
    .line 2702
    const-string v4, "Mms/ConversationComposer"

    const-string v5, "addFragmentToActivity"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2703
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 2704
    .local v1, fm:Landroid/app/FragmentManager;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 2706
    .local v2, ft:Landroid/app/FragmentTransaction;
    if-eqz p2, :cond_0

    .line 2708
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0b00e9

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ConversationListFragment;

    .line 2709
    .local v3, listFrag:Lcom/android/mms/ui/ConversationListFragment;
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    .line 2710
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    .line 2711
    invoke-virtual {v2, p1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2712
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2713
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2714
    const-string v4, "Mms/ConversationComposer"

    const-string v5, "addFragmentToActivity - list"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2718
    .end local v3           #listFrag:Lcom/android/mms/ui/ConversationListFragment;
    :cond_0
    if-eqz p3, :cond_1

    .line 2720
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0b00eb

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    .line 2721
    .local v0, composerFrag:Lcom/android/mms/ui/ComposeMessageFragment;
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    .line 2722
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    .line 2723
    invoke-virtual {v2, p1, p3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2724
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2725
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2726
    const-string v4, "Mms/ConversationComposer"

    const-string v5, "addFragmentToActivity - composer"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    .end local v0           #composerFrag:Lcom/android/mms/ui/ComposeMessageFragment;
    :cond_1
    return-void
.end method

.method private calcSplitMode()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 2148
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 2211
    :goto_0
    return v0

    .line 2152
    :cond_0
    const-string v3, "FromSearchView"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 2153
    goto :goto_0

    .line 2156
    :cond_1
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    if-eqz v3, :cond_5

    .line 2158
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2159
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v2, :cond_2

    .line 2160
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->enableSplitMode()V

    .line 2161
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 2163
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v3, :cond_4

    .line 2164
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->disableSplitMode()V

    :cond_4
    move v0, v2

    .line 2165
    goto :goto_0

    .line 2170
    :cond_5
    const/4 v1, -0x1

    .line 2171
    .local v1, state:I
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    .line 2172
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    .line 2174
    :cond_6
    const/4 v0, 0x0

    .line 2175
    .local v0, splitMode:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_8

    .line 2176
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2177
    const/4 v0, 0x2

    .line 2195
    :cond_7
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 2209
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():unknown"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2178
    :cond_8
    if-nez v1, :cond_9

    .line 2179
    const/4 v0, 0x1

    goto :goto_1

    .line 2181
    :cond_9
    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v3

    if-ne v3, v2, :cond_a

    .line 2182
    const/4 v0, 0x1

    goto :goto_1

    .line 2184
    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2185
    const/4 v0, 0x2

    goto :goto_1

    .line 2190
    :cond_b
    const/4 v0, 0x1

    goto :goto_1

    .line 2197
    :pswitch_0
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_NONE"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2200
    :pswitch_1
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_LEFT_ONLY"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2203
    :pswitch_2
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_RIGHT_ONLY"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2206
    :pswitch_3
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_SPLITED"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2195
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private checkFolderViewInvoke(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .locals 11
    .parameter "intent"
    .parameter "action"
    .parameter "savedInstanceState"
    .parameter "currentStepOfActivity"

    .prologue
    const/high16 v10, 0x3400

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 560
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 561
    .local v6, type:Ljava/lang/String;
    const/4 v2, 0x0

    .line 562
    .local v2, isFolderView:Z
    invoke-static {p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromAnotherProcessWithConversationUri(Landroid/content/Intent;)Z

    move-result v5

    .line 563
    .local v5, mIsIntentFromAnotherProcessWithConversationUri:Z
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->isFailedNotiIntent(Landroid/content/Intent;)Z

    move-result v1

    .line 564
    .local v1, isFailedNoti:Z
    const-string v9, "fromWidget"

    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 565
    .local v3, isFromWidget:Z
    const-string v9, "from_noti_wappush"

    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 567
    .local v4, isPushMessageNoti:Z
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v9

    if-ne v9, v7, :cond_0

    .line 568
    const/4 v2, 0x1

    .line 572
    :cond_0
    if-eqz v2, :cond_d

    .line 584
    if-eqz p2, :cond_4

    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 586
    if-nez p4, :cond_1

    .line 589
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v0, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 590
    .local v0, intent_box:Landroid/content/Intent;
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 592
    const-string v9, "vnd.android-dir/mms-sms"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 594
    invoke-direct {p0, v0, v8}, Lcom/android/mms/ui/ConversationComposer;->setExtraDataForIntentBox(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    .line 599
    :cond_2
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 601
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    .line 604
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    .line 703
    .end local v0           #intent_box:Landroid/content/Intent;
    :goto_0
    return v7

    .line 616
    :cond_4
    if-eqz v5, :cond_9

    .line 619
    if-nez p4, :cond_5

    .line 622
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v0, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 623
    .restart local v0       #intent_box:Landroid/content/Intent;
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 624
    if-eqz v1, :cond_7

    .line 625
    if-nez p4, :cond_6

    .line 628
    :cond_6
    invoke-direct {p0, v0, v7}, Lcom/android/mms/ui/ConversationComposer;->setExtraDataForIntentBox(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    .line 630
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    .line 631
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_0

    .line 636
    :cond_7
    invoke-direct {p0, v0, v8}, Lcom/android/mms/ui/ConversationComposer;->setExtraDataForIntentBox(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    .line 640
    if-eqz v4, :cond_8

    .line 641
    const-string v8, "from_noti_wappush"

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 645
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    .line 646
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_0

    .line 658
    .end local v0           #intent_box:Landroid/content/Intent;
    :cond_9
    if-eqz v1, :cond_b

    .line 660
    if-nez p4, :cond_a

    .line 663
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 664
    .restart local v0       #intent_box:Landroid/content/Intent;
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 665
    invoke-direct {p0, v0, v7}, Lcom/android/mms/ui/ConversationComposer;->setExtraDataForIntentBox(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    .line 667
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    .line 668
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_0

    .line 679
    .end local v0           #intent_box:Landroid/content/Intent;
    :cond_b
    if-eqz v3, :cond_e

    .line 680
    if-nez p2, :cond_c

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 681
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 682
    .restart local v0       #intent_box:Landroid/content/Intent;
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 683
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    .line 686
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_0

    .line 689
    .end local v0           #intent_box:Landroid/content/Intent;
    :cond_c
    if-eqz p2, :cond_e

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "vnd.android-dir/mms-sms"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 690
    new-instance v0, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v0, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 691
    .restart local v0       #intent_box:Landroid/content/Intent;
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 692
    invoke-direct {p0, v0, v8}, Lcom/android/mms/ui/ConversationComposer;->setExtraDataForIntentBox(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    .line 693
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    .line 694
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto/16 :goto_0

    .end local v0           #intent_box:Landroid/content/Intent;
    :cond_d
    move v7, v8

    .line 701
    goto/16 :goto_0

    :cond_e
    move v7, v8

    .line 703
    goto/16 :goto_0
.end method

.method private checkNotiIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1353
    const-string v2, "noti"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1354
    const-string v2, "thread_id"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1359
    .local v0, thread_id:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 1361
    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1362
    const-string v2, "needBlockSIPforNoti"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1367
    .end local v0           #thread_id:J
    :cond_0
    :goto_0
    return-void

    .line 1364
    .restart local v0       #thread_id:J
    :cond_1
    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private composerRequestsClosing()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1952
    const-string v3, "Mms/ConversationComposer"

    const-string v4, "composerRequestsClosing()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v2

    .line 1956
    .local v2, splitMode:I
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1957
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "from_other_list"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1959
    .local v0, fromOtherList:Z
    const-string v3, "FromSearchView"

    invoke-virtual {p0, v3, v5}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1961
    :cond_0
    const/4 v2, -0x1

    .line 1964
    :cond_1
    if-ne v2, v8, :cond_6

    .line 1966
    const-string v3, "FromSearchView"

    invoke-virtual {p0, v3, v5}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1967
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->CloseComposerForThreadsDelete:Z

    if-ne v3, v7, :cond_3

    .line 1969
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 1973
    :cond_3
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    if-eqz v3, :cond_5

    .line 1974
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->handleMoveTaskToBack()V

    .line 2034
    :cond_4
    :goto_0
    return-void

    .line 1976
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_0

    .line 1983
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3, v2, v5}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 1984
    if-nez v2, :cond_b

    .line 1986
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1987
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 1989
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 1991
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/mms/ui/ConversationComposer$9;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ConversationComposer$9;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2019
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v3, :cond_a

    .line 2021
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v3

    if-ne v3, v8, :cond_9

    .line 2022
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->initListItemSelectedThreadId()V

    .line 2023
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    .line 2025
    :cond_9
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v3

    if-ne v3, v7, :cond_a

    .line 2026
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversationThreadId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    .line 2031
    :cond_a
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 2032
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    goto :goto_0

    .line 2010
    :cond_b
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v3

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->CloseComposerForThreadsDelete:Z

    if-eq v3, v7, :cond_c

    sget-boolean v3, Lcom/android/mms/ui/ConversationComposer;->mIsFromSplitDiscard:Z

    if-eqz v3, :cond_8

    .line 2013
    :cond_c
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 2014
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 2015
    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->CloseComposerForThreadsDelete:Z

    .line 2016
    sput-boolean v5, Lcom/android/mms/ui/ConversationComposer;->mIsFromSplitDiscard:Z

    goto :goto_1
.end method

.method private static containsOwnBundle(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "bundle"

    .prologue
    .line 770
    if-eqz p0, :cond_0

    const-class v0, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createMultiWindowInstance()Z
    .locals 3

    .prologue
    .line 232
    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 233
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mActivityStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 238
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getComposeMessageStatus()I
    .locals 4

    .prologue
    .line 2130
    const/4 v0, -0x1

    .line 2132
    .local v0, state:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_0

    .line 2133
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getState()I

    move-result v0

    .line 2134
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    .line 2135
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2136
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->enableSplitMode()V

    .line 2143
    :cond_0
    :goto_0
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getComposeMessageStatus(),state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    return v0

    .line 2138
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->disableSplitMode()V

    goto :goto_0
.end method

.method private getIsComposerCombFwdMode()Z
    .locals 1

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsCombFwdMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLauncherList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1750
    const/4 v1, 0x0

    .line 1751
    .local v1, launcherList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1752
    .local v2, mCheckHomeIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1753
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1756
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1760
    :goto_0
    return-object v1

    .line 1757
    :catch_0
    move-exception v0

    .line 1758
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleMoveTaskToBack()V
    .locals 5

    .prologue
    .line 1765
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1766
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v2

    .line 1767
    .local v2, useSplitView:Z
    const-string v3, "FromSearchView"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1768
    const-string v3, "FromSearchView"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/ConversationComposer;->setFromSearchView(Ljava/lang/String;Z)V

    .line 1769
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    .line 1794
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #useSplitView:Z
    :goto_0
    return-void

    .line 1770
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #useSplitView:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromLauncher(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->isLauncherTaskRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1777
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->moveTaskToBack(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1778
    const-string v3, "Mms/ConversationComposer"

    const-string v4, "moving to back"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1790
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #useSplitView:Z
    :catch_0
    move-exception v0

    .line 1792
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Mms/ConversationComposer"

    const-string v4, "Exception."

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1780
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #useSplitView:Z
    :cond_1
    :try_start_1
    const-string v3, "Mms/ConversationComposer"

    const-string v4, "it\'s non root and not moved to back, just finish.."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_0

    .line 1787
    :cond_2
    const-string v3, "Mms/ConversationComposer"

    const-string v4, "finish"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private initCmasViewer()Lcom/android/mms/ui/CMASViewer;
    .locals 5

    .prologue
    .line 944
    const v3, 0x7f0b00ea

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 945
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 947
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f04001f

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0084

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/CMASViewer;

    .line 948
    .local v0, cmasviewer:Lcom/android/mms/ui/CMASViewer;
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/CMASViewer;->setConversationList(Lcom/android/mms/ui/ConversationListFragment;)V

    .line 949
    invoke-virtual {v0, p0}, Lcom/android/mms/ui/CMASViewer;->setActivity(Landroid/app/Activity;)V

    .line 950
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->onCmasViewStateChanged:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/CMASViewer;->setOnStateChangedListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 951
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    .line 952
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    .line 953
    return-object v0
.end method

.method private initSplitManager()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1797
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "initSplitManager()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/view/View;

    .line 1800
    const v0, 0x7f0b007b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBarLine:Landroid/view/View;

    .line 1801
    const v0, 0x7f0b007c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitShadow:Landroid/widget/ImageView;

    .line 1803
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/view/View;

    if-nez v0, :cond_0

    move v0, v12

    .line 1913
    :goto_0
    return v0

    .line 1806
    :cond_0
    iput-boolean v12, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    .line 1809
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/view/View;

    new-instance v1, Lcom/android/mms/ui/ConversationComposer$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationComposer$7;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1845
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1846
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/view/View;

    new-instance v1, Lcom/android/mms/ui/ConversationComposer$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationComposer$8;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1863
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v9

    .line 1864
    .local v9, useSplitView:Z
    const-string v0, "FromSearchView"

    invoke-virtual {p0, v0, v12}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1865
    const/4 v9, 0x0

    .line 1867
    :cond_2
    iput-boolean v9, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    .line 1869
    const/4 v8, 0x0

    .line 1874
    .local v8, splitMode:I
    if-eqz v9, :cond_a

    .line 1875
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1876
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v0, :cond_7

    .line 1877
    :cond_3
    const/4 v8, 0x1

    .line 1891
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 1892
    .local v11, window:Landroid/view/Window;
    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 1893
    .local v6, attr:Landroid/view/WindowManager$LayoutParams;
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1894
    .local v10, width:I
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1896
    .local v7, height:I
    if-gtz v10, :cond_5

    .line 1897
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 1899
    :cond_5
    if-gtz v7, :cond_6

    .line 1900
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 1903
    :cond_6
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSplitManager width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    new-instance v0, Lcom/android/mms/ui/SplitManager;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mLeftScreen:Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/view/View;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitShadow:Landroid/widget/ImageView;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/SplitManager;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    .line 1905
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/SplitManager;->setWidth(I)V

    .line 1907
    if-ne v9, v13, :cond_c

    .line 1908
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 1911
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0, v8, v12}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move v0, v13

    .line 1913
    goto/16 :goto_0

    .line 1879
    .end local v6           #attr:Landroid/view/WindowManager$LayoutParams;
    .end local v7           #height:I
    .end local v10           #width:I
    .end local v11           #window:Landroid/view/Window;
    :cond_7
    const/4 v8, 0x2

    goto :goto_1

    .line 1881
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v0, :cond_4

    .line 1882
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1886
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v0, :cond_4

    .line 1887
    :cond_b
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1910
    .restart local v6       #attr:Landroid/view/WindowManager$LayoutParams;
    .restart local v7       #height:I
    .restart local v10       #width:I
    .restart local v11       #window:Landroid/view/Window;
    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_2
.end method

.method private isFailedNotiIntent(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intentInvokingConversationComposer"

    .prologue
    .line 708
    const-string v1, "isFailedNoti"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 710
    .local v0, isFailedNoti:Z
    return v0
.end method

.method private static isIntentForApplication(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    .line 793
    const/4 v0, 0x0

    .line 794
    .local v0, result:Z
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromLauncher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    const/4 v0, 0x1

    .line 816
    :goto_0
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIntentForApplication(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    return v0

    .line 797
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isItentFromSearch(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 798
    const/4 v0, 0x1

    goto :goto_0

    .line 800
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromSwitcher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 801
    const/4 v0, 0x1

    goto :goto_0

    .line 803
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isSentFailIntentFromNotibar(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 804
    const/4 v0, 0x1

    goto :goto_0

    .line 807
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 808
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromFolderView(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 809
    const/4 v0, 0x1

    .line 813
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIntentForCmas(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 775
    const/4 v0, 0x0

    .line 776
    .local v0, className:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 777
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 779
    :cond_0
    const-string v2, "cmas"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 780
    :cond_1
    const/4 v1, 0x1

    .line 781
    :cond_2
    return v1
.end method

.method private isIntentForComposer(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 908
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, action:Ljava/lang/String;
    const/4 v2, 0x0

    .line 911
    .local v2, result:Z
    if-nez v0, :cond_6

    .line 912
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 914
    .local v1, className:Ljava/lang/String;
    const-string v4, "cmas"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 939
    .end local v1           #className:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 918
    .restart local v1       #className:Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_4

    .line 919
    const/4 v2, 0x1

    .line 928
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 929
    const-string v4, "conversationList"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 930
    const/4 v2, 0x0

    .line 938
    .end local v1           #className:Ljava/lang/String;
    :cond_3
    :goto_2
    const-string v3, "Mms/ConversationComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIntentForComposer(),return="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 939
    goto :goto_0

    .line 920
    .restart local v1       #className:Ljava/lang/String;
    :cond_4
    const-class v4, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-class v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "com.android.mms.ui.ReplyMessageActivity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 925
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    .line 934
    .end local v1           #className:Ljava/lang/String;
    :cond_6
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 935
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private isIntentForContact(Landroid/content/Intent;)Z
    .locals 8
    .parameter "intent"

    .prologue
    .line 883
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 885
    .local v2, intentUri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 886
    .local v4, scheme:Ljava/lang/String;
    const/4 v1, 0x0

    .line 887
    .local v1, className:Ljava/lang/String;
    const/4 v3, 0x0

    .line 889
    .local v3, result:Z
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 890
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 893
    :cond_0
    if-eqz v2, :cond_1

    .line 894
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 897
    :cond_1
    if-eqz v1, :cond_2

    const-class v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    const-string v5, "android.intent.action.SENDTO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    const-string v5, "smsto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 900
    const/4 v3, 0x1

    .line 903
    :cond_2
    const-string v5, "Mms/ConversationComposer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIntentForContact(),return="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    return v3
.end method

.method private static isIntentForConversations(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 754
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 755
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 758
    .local v0, retVal:Z
    if-eqz v1, :cond_0

    .line 759
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 761
    .local v2, uriString:Ljava/lang/String;
    const-string v3, "content://mms-sms/conversations/"

    const-string v4, "content://mms-sms/conversations/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v5, v3, v5, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 762
    const/4 v0, 0x1

    .line 765
    .end local v2           #uriString:Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private static isIntentForList(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 787
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 788
    .local v0, hasMain:Z
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isIntentFromAnotherProcessWithConversationUri(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    .line 729
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 730
    .local v3, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 732
    .local v2, retVal:Z
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentForConversations(Landroid/content/Intent;)Z

    move-result v1

    .line 733
    .local v1, mIsIntentForConversations:Z
    const-string v4, "fromFolderView"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 744
    .local v0, mFromFolderView:Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 745
    const/4 v2, 0x1

    .line 749
    :cond_0
    return v2
.end method

.method private static isIntentFromFolderView(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 823
    const-string v2, "conversationList"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v0, :cond_0

    .line 826
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isIntentFromLauncher(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 873
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isIntentFromRecvNotibar(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 848
    if-nez p0, :cond_1

    .line 862
    :cond_0
    :goto_0
    return v1

    .line 852
    :cond_1
    const-string v3, "isFromRecvNoti"

    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 853
    .local v0, isRecvNoti:Z
    if-ne v0, v2, :cond_0

    .line 854
    const/high16 v3, 0x1000

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/high16 v3, 0x400

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/high16 v3, 0x2000

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    move v1, v2

    .line 857
    goto :goto_0
.end method

.method private static isIntentFromSwitcher(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 868
    const/high16 v0, 0x10

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isItentFromSearch(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 878
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 879
    .local v0, hasMain:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLauncherTaskRunning()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1720
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getLauncherList()Ljava/util/List;

    move-result-object v4

    .line 1721
    .local v4, launcherList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 1722
    :cond_0
    const-string v8, "Mms/ConversationComposer"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    :goto_0
    return v7

    .line 1726
    :cond_1
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1727
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 1729
    .local v6, taskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v6, :cond_2

    .line 1730
    const-string v8, "Mms/ConversationComposer"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1734
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1735
    .local v3, launcherInfo:Landroid/content/pm/ResolveInfo;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1736
    .local v5, taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1737
    const-string v7, "Mms/ConversationComposer"

    const-string v8, "Launcher task Running"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    const/4 v7, 0x1

    goto :goto_0

    .line 1743
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #launcherInfo:Landroid/content/pm/ResolveInfo;
    .end local v5           #taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_5
    const-string v8, "Mms/ConversationComposer"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isSentFailIntentFromNotibar(Landroid/content/Intent;)Z
    .locals 8
    .parameter "intent"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 831
    const-string v5, "thread_id"

    invoke-virtual {p0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 832
    .local v1, tempThread_id:J
    const-string v5, "isFailedNoti"

    invoke-virtual {p0, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 834
    .local v0, isFailedNoti:Z
    if-ne v0, v4, :cond_0

    .line 835
    cmp-long v5, v1, v6

    if-lez v5, :cond_1

    const/high16 v5, 0x1000

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    const/high16 v5, 0x400

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 843
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 840
    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 7
    .parameter "logMsg"

    .prologue
    .line 2855
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2856
    .local v0, current:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    .line 2857
    .local v3, tid:J
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 2858
    .local v2, stack:[Ljava/lang/StackTraceElement;
    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 2860
    .local v1, methodName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2861
    const-string v5, "Mms/ConversationComposer"

    invoke-static {v5, p0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2862
    return-void
.end method

.method private removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 5
    .parameter "list"
    .parameter "composer"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2773
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 2774
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 2776
    .local v1, ft:Landroid/app/FragmentTransaction;
    if-eqz p1, :cond_0

    .line 2777
    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2778
    invoke-virtual {p1, v3}, Lcom/android/mms/ui/ConversationListFragment;->setHasOptionsMenu(Z)V

    .line 2779
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2780
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2781
    iput-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    .line 2783
    :cond_0
    if-eqz p2, :cond_1

    .line 2784
    invoke-virtual {v1, p2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2785
    invoke-virtual {p2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setHasOptionsMenu(Z)V

    .line 2786
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2787
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2788
    iput-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 2790
    :cond_1
    return-void
.end method

.method private setExtraDataForIntentBox(Landroid/content/Intent;Z)Landroid/content/Intent;
    .locals 4
    .parameter "intent_box"
    .parameter "notifyFailed"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 713
    move-object v0, p1

    .line 715
    .local v0, intentRet:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 716
    const-string v1, "notifyFailed"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 717
    const-string v1, "StatusBarNoti"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 724
    :goto_0
    return-object v0

    .line 720
    :cond_0
    const-string v1, "notifyFailed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 721
    const-string v1, "StatusBarNoti"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static setFromSplitDiscard(Z)V
    .locals 0
    .parameter "fromSplitDiscard"

    .prologue
    .line 2933
    sput-boolean p0, Lcom/android/mms/ui/ConversationComposer;->mIsFromSplitDiscard:Z

    .line 2934
    return-void
.end method

.method public static setSipStatus(Z)V
    .locals 0
    .parameter "keepSipShowing"

    .prologue
    .line 2038
    sput-boolean p0, Lcom/android/mms/ui/ConversationComposer;->skeepSipshowing:Z

    .line 2039
    return-void
.end method


# virtual methods
.method public CreateConversationList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 958
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "CreateConversationList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    .line 960
    sget-object v0, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_0

    .line 961
    sget-object v0, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    const v0, 0x7f0b00e9

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/ConversationListFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 969
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "CreateConversationList() Created"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ShowSipOnComposeMessage()V
    .locals 1

    .prologue
    .line 2405
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 2406
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2408
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSip()V

    .line 2410
    :cond_0
    return-void
.end method

.method public canUseSplitMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2238
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeSearchView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2866
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 2867
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->closeSearchView(Z)V

    .line 2869
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    .line 2870
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->closeSearchView(Z)V

    .line 2871
    :cond_1
    return-void
.end method

.method public dataCreateLDU()V
    .locals 4

    .prologue
    .line 2971
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "dataCreateLDU start"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2973
    const-string v2, "content://mms-sms/datacreateldu"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2974
    .local v1, uriContent:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2976
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2977
    return-void
.end method

.method public finishCmasViewer(Z)Z
    .locals 6
    .parameter "isDeleted"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 1686
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "Finish CMAS Viewer"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    .line 1688
    .local v0, useSplitView:Z
    const-string v2, "FromSearchView"

    invoke-virtual {p0, v2, v1}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1689
    const/4 v0, 0x0

    .line 1691
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_1

    .line 1695
    :cond_1
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    .line 1696
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v2, :cond_3

    .line 1697
    if-eqz p1, :cond_4

    .line 1698
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    .line 1699
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v2

    if-ne v2, v4, :cond_2

    if-nez v0, :cond_3

    .line 1700
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v1, v1}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 1714
    :cond_3
    :goto_0
    return v1

    .line 1703
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v2

    if-eq v2, v4, :cond_3

    .line 1706
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    .line 1708
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_6

    .line 1709
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v1, v1}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 1710
    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public flickMessage(Z)Z
    .locals 24
    .parameter "bFlicktoNext"

    .prologue
    .line 2460
    const-string v11, "_id DESC"

    .line 2461
    .local v11, ADDITIONAL_SORT_ORDER:Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "simple"

    const-string v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 2462
    .local v3, sAllThreadsUri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 2463
    .local v12, cur:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 2464
    .local v13, curPos:I
    const/16 v19, 0x0

    .line 2465
    .local v19, mAnimationIn:Landroid/view/animation/Animation;
    const-wide/16 v22, 0x0

    .line 2468
    .local v22, threadId:J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "message_count"

    aput-object v7, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date DESC,_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 2472
    if-nez v12, :cond_1

    .line 2473
    const/4 v2, 0x0

    .line 2525
    if-eqz v12, :cond_0

    .line 2526
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2527
    const/4 v12, 0x0

    .line 2581
    :cond_0
    :goto_0
    return v2

    .line 2476
    :cond_1
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v21

    .line 2477
    .local v21, msgCount:I
    const/4 v2, 0x1

    move/from16 v0, v21

    if-gt v0, v2, :cond_2

    .line 2478
    const/4 v2, 0x0

    .line 2525
    if-eqz v12, :cond_0

    .line 2526
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2527
    const/4 v12, 0x0

    goto :goto_0

    .line 2482
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    if-nez v2, :cond_4

    .line 2483
    :cond_3
    const/4 v2, 0x0

    .line 2525
    if-eqz v12, :cond_0

    .line 2526
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2527
    const/4 v12, 0x0

    goto :goto_0

    .line 2486
    :cond_4
    const/4 v13, 0x0

    .line 2487
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v14

    .line 2488
    .local v14, currentThreadId:J
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2489
    :goto_1
    move/from16 v0, v21

    if-ge v13, v0, :cond_5

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v2, v4, v14

    if-eqz v2, :cond_5

    .line 2490
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 2491
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2495
    :cond_5
    const/16 v19, 0x0

    .line 2496
    const/16 v20, 0x0

    .line 2498
    .local v20, mAnimationOut:Landroid/view/animation/Animation;
    if-eqz p1, :cond_8

    .line 2499
    if-nez v13, :cond_7

    .line 2500
    invoke-interface {v12}, Landroid/database/Cursor;->moveToLast()Z

    .line 2501
    move/from16 v13, v21

    .line 2506
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f050005

    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v19

    .line 2507
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f050006

    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v20

    .line 2520
    :goto_3
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v22

    .line 2525
    if-eqz v12, :cond_6

    .line 2526
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2527
    const/4 v12, 0x0

    .line 2531
    .end local v14           #currentThreadId:J
    .end local v20           #mAnimationOut:Landroid/view/animation/Animation;
    .end local v21           #msgCount:I
    :cond_6
    :goto_4
    const-wide/16 v4, 0x0

    cmp-long v2, v22, v4

    if-nez v2, :cond_b

    .line 2532
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2503
    .restart local v14       #currentThreadId:J
    .restart local v20       #mAnimationOut:Landroid/view/animation/Animation;
    .restart local v21       #msgCount:I
    :cond_7
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 2521
    .end local v14           #currentThreadId:J
    .end local v20           #mAnimationOut:Landroid/view/animation/Animation;
    .end local v21           #msgCount:I
    :catch_0
    move-exception v17

    .line 2522
    .local v17, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_5
    const-string v2, "Mms/ConversationComposer"

    const-string v4, "flickMessage exception "

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2525
    if-eqz v12, :cond_6

    .line 2526
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2527
    const/4 v12, 0x0

    goto :goto_4

    .line 2509
    .end local v17           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v14       #currentThreadId:J
    .restart local v20       #mAnimationOut:Landroid/view/animation/Animation;
    .restart local v21       #msgCount:I
    :cond_8
    add-int/lit8 v2, v21, -0x1

    if-lt v13, v2, :cond_9

    .line 2510
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2511
    const/4 v13, 0x0

    .line 2516
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f050003

    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v19

    .line 2517
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f050004

    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v20

    goto :goto_3

    .line 2513
    :cond_9
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    .line 2525
    .end local v14           #currentThreadId:J
    .end local v20           #mAnimationOut:Landroid/view/animation/Animation;
    .end local v21           #msgCount:I
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_a

    .line 2526
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2527
    const/4 v12, 0x0

    :cond_a
    throw v2

    .line 2537
    :cond_b
    const/16 v16, 0x0

    .line 2539
    .local v16, cursorThreadId:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 2540
    .local v6, uriConversation:Landroid/net/Uri;
    :try_start_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2541
    const-string v2, "content://mms-sms/complete-conversations-including-drafts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 2547
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v8, "_id"

    aput-object v8, v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 2551
    if-eqz v16, :cond_c

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_e

    .line 2552
    :cond_c
    const/4 v2, 0x0

    .line 2558
    if-eqz v16, :cond_0

    .line 2559
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2560
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2544
    :cond_d
    :try_start_8
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v6

    goto :goto_6

    .line 2558
    :cond_e
    if-eqz v16, :cond_f

    .line 2559
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2560
    const/16 v16, 0x0

    .line 2566
    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraftAndReset(Z)Z

    .line 2570
    :cond_10
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 2571
    .local v18, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v18

    .line 2572
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    .line 2574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v2, :cond_11

    .line 2575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1, v13}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(JI)V

    .line 2577
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_12

    .line 2578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MessageListAdapter;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2581
    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2554
    .end local v18           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v17

    .line 2555
    .local v17, e:Ljava/lang/Exception;
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2556
    const/4 v2, 0x0

    .line 2558
    if-eqz v16, :cond_0

    .line 2559
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2560
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2558
    .end local v17           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v16, :cond_13

    .line 2559
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2560
    const/16 v16, 0x0

    :cond_13
    throw v2
.end method

.method public getCMASViewerIsVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2834
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v1, :cond_0

    .line 2835
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASViewer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2837
    :cond_0
    return v0
.end method

.method public getComposeMessageFragment()Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1

    .prologue
    .line 2962
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method public getComposerFocusStates()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2413
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_0

    .line 2414
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2415
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mHasFocus:Z

    .line 2419
    :cond_0
    return v0
.end method

.method public getConversationListFragment()Lcom/android/mms/ui/ConversationListFragment;
    .locals 1

    .prologue
    .line 2967
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    return-object v0
.end method

.method public getFromSearchView(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "prefKey"
    .parameter "defaultValue"

    .prologue
    const/4 v1, 0x0

    .line 2909
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    .line 2911
    .local v0, useSplitView:Z
    const-string v2, "Mms/ConversationComposer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFromSearchView() entered, useSplitView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2913
    if-nez v0, :cond_0

    .line 2914
    const-string v2, "history_searchView"

    invoke-virtual {p0, v2, v1}, Lcom/android/mms/ui/ConversationComposer;->setFromSearchView(Ljava/lang/String;Z)V

    .line 2921
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFromSearchView:Z

    goto :goto_0
.end method

.method public getIsSplitViewMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2228
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v2, :cond_1

    .line 2233
    :cond_0
    :goto_0
    return v1

    .line 2231
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 2233
    .local v0, splitMode:I
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getNextSplitMode()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1921
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    if-eqz v1, :cond_1

    .line 1942
    :cond_0
    :goto_0
    return v0

    .line 1925
    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-eqz v1, :cond_2

    .line 1927
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1939
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1940
    const/4 v0, 0x2

    goto :goto_0

    .line 1942
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSplitMode()I
    .locals 4

    .prologue
    .line 2399
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 2400
    .local v0, result:I
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSplitMode,return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    return v0
.end method

.method public isComposerOnly()Z
    .locals 1

    .prologue
    .line 1947
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    return v0
.end method

.method public isMultiWindowMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 276
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRightScreenVisible()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2887
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v3, :cond_1

    .line 2904
    :cond_0
    :goto_0
    return v1

    .line 2890
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 2891
    .local v0, splitMode:I
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2892
    if-ne v0, v2, :cond_0

    .line 2895
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeSearchView()V

    .line 2898
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getState()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getState()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    :cond_3
    if-eqz v0, :cond_0

    move v1, v2

    .line 2902
    goto :goto_0
.end method

.method public isSearchMode()Z
    .locals 3

    .prologue
    .line 2874
    const/4 v0, 0x0

    .line 2875
    .local v0, ComposeSearchMode:Z
    const/4 v1, 0x0

    .line 2876
    .local v1, ConversationSearchMode:Z
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_0

    .line 2877
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isSearchMode()Z

    move-result v0

    .line 2879
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v2, :cond_1

    .line 2880
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v1

    .line 2882
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSplitBarTouch()Z
    .locals 1

    .prologue
    .line 1917
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    return v0
.end method

.method public isSplitModeActive()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 2666
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 2667
    const/4 v0, 0x1

    .line 2668
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3
    .parameter "fragment"

    .prologue
    .line 2680
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "========== onAttachFragment(Fragment fragment) =========="

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2681
    if-nez p1, :cond_1

    .line 2682
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "========== onAttachFragment(Fragment is null) =========="

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 2685
    .restart local p1
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 2687
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    instance-of v0, p1, Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_2

    .line 2690
    check-cast p1, Lcom/android/mms/ui/ConversationListFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    .line 2691
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->setAnimationEnable(Z)V

    goto :goto_0

    .line 2692
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 2693
    check-cast p1, Lcom/android/mms/ui/ComposeMessageFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 2694
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setOnStateChangedListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 2695
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerClose:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 2696
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 2697
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setAnimationEnable(Z)V

    goto :goto_0
.end method

.method public onCMASViewerContextItemSelected(Landroid/view/MenuItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 2841
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v0, :cond_0

    .line 2842
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/CMASViewer;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 2843
    :cond_0
    return-void
.end method

.method public onComposeMessageFlicking(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2585
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 2586
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onFlickingTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2588
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 1371
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1372
    const-string v4, "Mms/ConversationComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConfigurationChanged(),newConfig="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const/4 v1, 0x1

    .line 1376
    .local v1, isLandscape:Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eq v4, v1, :cond_2

    .line 1377
    const-string v4, "Mms/ConversationComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConfigurationChanged():Landscape changed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    .line 1379
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1383
    .local v0, actionbar:Landroid/app/ActionBar;
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    .line 1385
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v3, :cond_0

    .line 1386
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    .line 1389
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v2

    .line 1390
    .local v2, useSplitView:Z
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    if-eqz v3, :cond_1

    .line 1397
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1400
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1406
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    if-eqz v3, :cond_2

    .line 1407
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1408
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_2

    .line 1409
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->reInitComposerActionbar()V

    .line 1418
    .end local v0           #actionbar:Landroid/app/ActionBar;
    .end local v2           #useSplitView:Z
    :cond_2
    return-void

    .end local v1           #isLandscape:Z
    :cond_3
    move v1, v3

    .line 1374
    goto :goto_0

    .line 1402
    .restart local v0       #actionbar:Landroid/app/ActionBar;
    .restart local v1       #isLandscape:Z
    .restart local v2       #useSplitView:Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    goto :goto_1
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 2847
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 2848
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 2850
    :cond_0
    return-void
.end method

.method public onConversationDeleteMode()V
    .locals 2

    .prologue
    .line 2379
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onConversationDeleteMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2382
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 2383
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 2385
    :cond_0
    return-void
.end method

.method public onConversationDeleteStart()V
    .locals 1

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 2674
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onDeleteStarting()V

    .line 2676
    :cond_0
    return-void
.end method

.method public onConversationMoveMode()V
    .locals 2

    .prologue
    .line 2389
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onConversationMoveMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2391
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2392
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 2393
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 2395
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 286
    const/4 v10, 0x0

    invoke-super {p0, v10}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 287
    const-string v10, "Mms/ConversationComposer"

    const-string v11, "onCreate"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v10, "VerificationLog"

    const-string v11, "onCreate"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v10, "Mms/ConversationComposer"

    const-string v11, "onCreate start"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 292
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, action:Ljava/lang/String;
    const-string v10, "Mms/ConversationComposer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/4 v1, 0x0

    .line 296
    .local v1, ConversationListOn:Z
    const/4 v0, 0x0

    .line 297
    .local v0, ComposeMessageOn:Z
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v9

    .line 300
    .local v9, useSplitView:Z
    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 302
    .local v8, salesCode:Ljava/lang/String;
    const-string v10, "PAP"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "need_demo_message_events"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 305
    .local v4, demoImport:I
    if-lez v4, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "need_demo_message_events"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 307
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->dataCreateLDU()V

    .line 312
    .end local v4           #demoImport:I
    :cond_0
    const v10, 0x7f040028

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ConversationComposer;->setContentView(I)V

    .line 314
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    .line 316
    invoke-static {v6}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromRecvNotibar(Landroid/content/Intent;)Z

    move-result v5

    .line 317
    .local v5, fromRecvNotibar:Z
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ConversationComposer;->checkNotiIntent(Landroid/content/Intent;)V

    .line 320
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 322
    const/4 v10, 0x0

    invoke-direct {p0, v6, v2, p1, v10}, Lcom/android/mms/ui/ConversationComposer;->checkFolderViewInvoke(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoking:Z

    .line 323
    iget-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoking:Z

    if-eqz v10, :cond_2

    .line 324
    const-string v10, "kkahn/Mms/ConversationComposer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[Invoking Folder View by : checkFolderViewInvoke] mFolderViewInvoking="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoking:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :goto_1
    return-void

    .line 314
    .end local v5           #fromRecvNotibar:Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 329
    .restart local v5       #fromRecvNotibar:Z
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 330
    if-eqz v2, :cond_4

    const-string v10, "android.intent.action.SENDTO"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "android.intent.action.SEND"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 333
    :cond_3
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    .line 334
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mFromFolderView:Z

    .line 335
    const-string v10, "fromFolderView"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 336
    const-string v10, "exit_on_sent"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    :cond_4
    const v10, 0x7f0b00e8

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mLeftScreen:Landroid/view/View;

    .line 343
    const v10, 0x7f0b00ea

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    .line 344
    const v10, 0x7f0b0077

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/view/View;

    .line 346
    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/view/View;

    new-instance v11, Lcom/android/mms/ui/ConversationComposer$4;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ConversationComposer$4;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 392
    invoke-static {p1}, Lcom/android/mms/ui/ConversationComposer;->containsOwnBundle(Landroid/os/Bundle;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    .line 395
    invoke-static {v6}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v10

    if-nez v10, :cond_5

    if-eqz v5, :cond_6

    .line 396
    :cond_5
    const-string v10, "Mms/ConversationComposer"

    const-string v11, "ConversationListOn true"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const v10, 0x7f0b00e9

    new-instance v11, Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {v11, v6}, Lcom/android/mms/ui/ConversationListFragment;-><init>(Landroid/content/Intent;)V

    const/4 v12, 0x0

    invoke-direct {p0, v10, v11, v12}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 398
    const/4 v1, 0x1

    .line 399
    if-eqz v5, :cond_6

    .line 400
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    .line 404
    :cond_6
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ConversationComposer;->isIntentForComposer(Landroid/content/Intent;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v10, :cond_10

    .line 405
    :cond_7
    const-string v10, "Mms/ConversationComposer"

    const-string v11, "ComposeMessageOn true"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const v10, 0x7f0b00eb

    const/4 v11, 0x0

    new-instance v12, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v12, v6}, Lcom/android/mms/ui/ComposeMessageFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v10, v11, v12}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 407
    const/4 v0, 0x1

    .line 412
    :cond_8
    :goto_2
    if-eqz v9, :cond_a

    .line 413
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ConversationComposer;->isIntentForContact(Landroid/content/Intent;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "FromSearchActivity"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_11

    .line 415
    :cond_9
    const-string v10, "FromSearchView"

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/mms/ui/ConversationComposer;->setFromSearchView(Ljava/lang/String;Z)V

    .line 416
    const/4 v9, 0x0

    .line 426
    :cond_a
    :goto_3
    if-nez v1, :cond_13

    if-eqz v0, :cond_13

    const/4 v10, 0x1

    :goto_4
    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    .line 428
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 430
    const-string v10, "fromFolderView"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    .line 431
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    .line 432
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mFromFolderView:Z

    .line 437
    :cond_b
    if-eqz v1, :cond_c

    .line 438
    const/4 v3, 0x0

    .line 439
    .local v3, bundle:Landroid/os/Bundle;
    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 440
    .local v7, key:Ljava/lang/String;
    if-eqz p1, :cond_c

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 441
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 444
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v7           #key:Ljava/lang/String;
    :cond_c
    if-eqz v0, :cond_14

    .line 445
    const/4 v3, 0x0

    .line 446
    .restart local v3       #bundle:Landroid/os/Bundle;
    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 447
    .restart local v7       #key:Ljava/lang/String;
    if-eqz p1, :cond_d

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 448
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 449
    const/4 v10, 0x1

    invoke-static {v3, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->setBundle(Landroid/os/Bundle;Z)V

    .line 451
    :cond_d
    if-eqz v3, :cond_e

    .line 452
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 454
    .restart local v6       #intent:Landroid/content/Intent;
    :cond_e
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 473
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v7           #key:Ljava/lang/String;
    :goto_5
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initSplitManager()Z

    .line 474
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->activityCreated:Z

    .line 477
    new-instance v10, Lcom/android/mms/ui/SipHandler;

    iget-object v11, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v10, p0, v11}, Lcom/android/mms/ui/SipHandler;-><init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    .line 478
    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v10}, Lcom/android/mms/ui/SipHandler;->registerReceiver()V

    .line 481
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 482
    new-instance v10, Lcom/android/mms/ui/SecretModeHandler;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/SecretModeHandler;-><init>(Landroid/app/Activity;)V

    iput-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

    .line 483
    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

    invoke-virtual {v10}, Lcom/android/mms/ui/SecretModeHandler;->registerSecretModeReceiver()V

    .line 487
    :cond_f
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->createMultiWindowInstance()Z

    .line 489
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mVto:Landroid/view/ViewTreeObserver;

    .line 490
    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v11, p0, Lcom/android/mms/ui/ConversationComposer;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v10, v11}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 493
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/ConversationComposer;->profileUri:Landroid/net/Uri;

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/mms/ui/ConversationComposer;->sContactsLocalProfileObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 496
    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mEasymodeChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10, v11}, Lcom/android/mms/ui/ConversationComposer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 499
    const-string v10, "Mms/ConversationComposer"

    const-string v11, "onCreate end"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 408
    :cond_10
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ConversationComposer;->isIntentForCmas(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 409
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initCmasViewer()Lcom/android/mms/ui/CMASViewer;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    goto/16 :goto_2

    .line 417
    :cond_11
    const-string v10, "FromNestedSearchActivity"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_12

    .line 418
    const-string v10, "FromSearchView"

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/mms/ui/ConversationComposer;->setFromSearchView(Ljava/lang/String;Z)V

    .line 419
    const/4 v9, 0x0

    .line 420
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationComposer;->mFromNestedSearchView:Z

    goto/16 :goto_3

    .line 422
    :cond_12
    const-string v10, "FromSearchView"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/mms/ui/ConversationComposer;->setFromSearchView(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 426
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 457
    :cond_14
    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v10, :cond_17

    .line 459
    const/4 v3, 0x0

    .line 460
    .restart local v3       #bundle:Landroid/os/Bundle;
    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 461
    .restart local v7       #key:Ljava/lang/String;
    if-eqz p1, :cond_15

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 462
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 464
    :cond_15
    if-eqz v3, :cond_16

    .line 465
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 467
    .restart local v6       #intent:Landroid/content/Intent;
    :cond_16
    iget-object v10, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v6}, Lcom/android/mms/ui/CMASViewer;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 468
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    goto/16 :goto_5

    .line 471
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v7           #key:Ljava/lang/String;
    :cond_17
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1106
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1107
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    .line 1110
    iput-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    .line 1111
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_1

    .line 1112
    iput-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 1113
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    if-eqz v1, :cond_2

    .line 1114
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v1}, Lcom/android/mms/ui/SipHandler;->unregisterReceiver()V

    .line 1117
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

    if-eqz v1, :cond_3

    .line 1118
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

    invoke-virtual {v1}, Lcom/android/mms/ui/SecretModeHandler;->unregisterSecretModeReceiver()V

    .line 1121
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_4

    .line 1122
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 1123
    iput-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 1126
    :cond_4
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mFromNestedSearchView:Z

    if-nez v1, :cond_5

    .line 1127
    const-string v1, "FromSearchView"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ConversationComposer;->setFromSearchView(Ljava/lang/String;Z)V

    .line 1129
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mVto:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mVto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1132
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1136
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->sContactsLocalProfileObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mEasymodeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_7

    .line 1144
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mEasymodeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationComposer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1150
    :cond_7
    :goto_1
    return-void

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "sContactsLocalProfileObserver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1146
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1147
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "mEasymodeChangedReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x1

    .line 1527
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1528
    const v1, 0x7f0b00ea

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    .line 1535
    :cond_0
    const/16 v1, 0x18

    if-eq v1, p1, :cond_1

    const/16 v1, 0x19

    if-eq v1, p1, :cond_1

    const/16 v1, 0xa8

    if-eq v1, p1, :cond_1

    const/16 v1, 0xa9

    if-eq v1, p1, :cond_1

    const/16 v1, 0xf1

    if-eq v1, p1, :cond_1

    const/16 v1, 0xf2

    if-ne v1, p1, :cond_3

    .line 1541
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-ne v1, v0, :cond_3

    .line 1565
    :cond_2
    :goto_0
    return v0

    .line 1547
    :cond_3
    if-ne p1, v2, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1551
    :cond_4
    if-eq p1, v2, :cond_5

    const/16 v1, 0x14

    if-ne p1, v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1565
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1573
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    .line 1677
    :cond_0
    :goto_0
    return v2

    .line 1584
    :cond_1
    if-ne p1, v7, :cond_11

    .line 1585
    const-string v3, "Mms/ConversationComposer"

    const-string v4, "onKeyUp():KEYCODE_BACK"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1590
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 1591
    .local v0, splitMode:I
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v3

    if-eq v3, v2, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v3

    if-eq v3, v2, :cond_4

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListFragment;->isSaveMode()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getIsComposerCombFwdMode()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v0, :cond_9

    .line 1603
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1604
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3, v2, v5, v2, v5}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    goto :goto_0

    .line 1605
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1606
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v5, v2, v5}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    goto :goto_0

    .line 1607
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListFragment;->isSaveMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1608
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v5, v2, v5}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    goto/16 :goto_0

    .line 1609
    :cond_8
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getIsComposerCombFwdMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1610
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v6, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelectionModeLayout(IZ)V

    goto/16 :goto_0

    .line 1616
    :cond_9
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isCopyToSimMode()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsCombFwdMode()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1621
    :cond_a
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1622
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z

    .line 1624
    :cond_b
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getIsComposerCombFwdMode()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1625
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v6, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelectionModeLayout(IZ)V

    .line 1627
    :cond_c
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isCopyToSimMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1628
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v5, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setCopyToSimModeLayout(ZZ)V

    goto/16 :goto_0

    .line 1634
    :cond_d
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v3, :cond_f

    if-ne v0, v2, :cond_f

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v3}, Lcom/android/mms/ui/CMASViewer;->getVisibility()I

    move-result v3

    if-nez v3, :cond_f

    .line 1635
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v3}, Lcom/android/mms/ui/CMASViewer;->isCMASMoreInfoVisible()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1636
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->finishCmasViewer(Z)Z

    .line 1640
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 1638
    :cond_e
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v3}, Lcom/android/mms/ui/CMASViewer;->destroyCMASMoreInfo()V

    goto :goto_1

    .line 1645
    :cond_f
    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    .line 1646
    const-string v3, "FromSearchView"

    invoke-virtual {p0, v3, v5}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_10

    if-eq v0, v2, :cond_12

    .line 1647
    :cond_10
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    .line 1659
    .end local v0           #splitMode:I
    :cond_11
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-ne v3, v2, :cond_15

    .line 1662
    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    goto/16 :goto_0

    .line 1648
    .restart local v0       #splitMode:I
    :cond_12
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isForwardedMessage()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1649
    :cond_13
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    .line 1651
    .local v1, useSplitView:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v3

    if-eqz v3, :cond_14

    if-eqz v1, :cond_14

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1653
    :cond_14
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    goto :goto_2

    .line 1668
    .end local v0           #splitMode:I
    .end local v1           #useSplitView:Z
    :cond_15
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    if-eqz v3, :cond_16

    if-ne p1, v7, :cond_16

    .line 1669
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    if-eqz v3, :cond_16

    .line 1670
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->taskMovedToBack:Z

    .line 1671
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->handleMoveTaskToBack()V

    goto/16 :goto_0

    .line 1677
    :cond_16
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 18
    .parameter "intent"

    .prologue
    .line 1160
    const-string v13, "Mms/ConversationComposer"

    const-string v14, "\tonNewIntent()"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1174
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1175
    sget-boolean v13, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-nez v13, :cond_0

    .line 1176
    const-string v13, "thread_id"

    const-wide/16 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 1177
    .local v10, threadid:J
    const-string v13, "address_SecretMode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1178
    .local v3, address:Ljava/lang/String;
    const-string v13, "secretThreadId_in_multiThreadNoti"

    const-wide/16 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 1181
    .local v7, secretThreadIdinMultiNoti:J
    const-string v13, "android.intent.action.MAIN"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

    invoke-virtual {v13, v7, v8}, Lcom/android/mms/ui/SecretModeHandler;->isSecret(J)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1183
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/mms/ui/SecretModeHandler;->requestIdentifyFingerPrint(JLandroid/content/Intent;)V

    .line 1197
    .end local v3           #address:Ljava/lang/String;
    .end local v7           #secretThreadIdinMultiNoti:J
    .end local v10           #threadid:J
    :cond_0
    :goto_0
    const-string v13, "Mms/ConversationComposer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v12

    .line 1199
    .local v12, useSplitView:Z
    const-string v13, "FromSearchView"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1200
    const/4 v12, 0x0

    .line 1202
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ConversationComposer;->checkNotiIntent(Landroid/content/Intent;)V

    .line 1205
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->closeOptionsMenu()V

    .line 1209
    const-string v13, "android.intent.action.MAIN"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1210
    const-string v13, "QuickSearch"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1211
    .local v5, from:Ljava/lang/String;
    const-string v13, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1213
    .local v6, mSearchWord:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 1215
    if-eqz v5, :cond_5

    const-string v13, "QuickCommand"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    if-eqz v6, :cond_5

    .line 1217
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v13, :cond_5

    .line 1220
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ConversationListFragment;->startSearchMenu()V

    .line 1350
    .end local v5           #from:Ljava/lang/String;
    .end local v6           #mSearchWord:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 1184
    .end local v12           #useSplitView:Z
    .restart local v3       #address:Ljava/lang/String;
    .restart local v7       #secretThreadIdinMultiNoti:J
    .restart local v10       #threadid:J
    :cond_3
    const-wide/16 v13, -0x1

    cmp-long v13, v10, v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

    invoke-virtual {v13, v10, v11}, Lcom/android/mms/ui/SecretModeHandler;->isSecret(J)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1185
    const-string v13, "com.samsung.android.intent.action.SECRET_OPEN_MESSAGE_THREAD"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/mms/ui/SecretModeHandler;->updateSecretMode(ZZ)V

    goto/16 :goto_0

    .line 1188
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mSecretModeHandler:Lcom/android/mms/ui/SecretModeHandler;

    move-object/from16 v0, p1

    invoke-virtual {v13, v10, v11, v0}, Lcom/android/mms/ui/SecretModeHandler;->requestIdentifyFingerPrint(JLandroid/content/Intent;)V

    .line 1189
    const-string v13, "android.intent.action.MAIN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1190
    const-string v13, "thread_id"

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1191
    const-string v13, "vnd.android-dir/mms-sms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1228
    .end local v3           #address:Ljava/lang/String;
    .end local v7           #secretThreadIdinMultiNoti:J
    .end local v10           #threadid:J
    .restart local v12       #useSplitView:Z
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1229
    const-string v13, "Mms/ConversationComposer"

    const-string v14, "isIntentForApplication(), just bring to front"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1234
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1237
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoked:Z

    if-eqz v13, :cond_7

    .line 1238
    const-string v13, "Mms/ConversationComposer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onNewIntent(), mFolderViewInvoked="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoked:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",so return"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1244
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1245
    .local v2, action:Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v13, v14}, Lcom/android/mms/ui/ConversationComposer;->checkFolderViewInvoke(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoked:Z

    .line 1246
    const-string v13, "kkahn/Mms/ConversationComposer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mFolderViewInvoked="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoked:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoked:Z

    if-nez v13, :cond_2

    .line 1254
    .end local v2           #action:Ljava/lang/String;
    :cond_8
    const/4 v4, 0x0

    .line 1257
    .local v4, forList:Z
    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForList(Landroid/content/Intent;)Z

    move-result v13

    if-nez v13, :cond_9

    if-eqz v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1258
    :cond_9
    const/4 v4, 0x1

    .line 1260
    :cond_a
    if-eqz v4, :cond_c

    .line 1261
    const-string v13, "Mms/ConversationComposer"

    const-string v14, "isIntentForList(), show list"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v13, :cond_13

    const-string v13, "start_search"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 1273
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v13, :cond_b

    .line 1274
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/ConversationComposer;->CloseComposerForThreadsDelete:Z

    .line 1275
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    .line 1277
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ConversationListFragment;->startSearchMenu()V

    .line 1283
    :goto_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    .line 1286
    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForComposer(Landroid/content/Intent;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 1288
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v13}, Lcom/android/mms/ui/SplitManager;->getAnimationEnable()Z

    move-result v9

    .line 1290
    .local v9, tempAnimationEnabled:Z
    if-nez v4, :cond_d

    .line 1291
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    .line 1294
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_e

    .line 1295
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    .line 1298
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_f

    .line 1299
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    .line 1302
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ConversationListFragment;->isSaveMode()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10

    .line 1303
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    .line 1306
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v13, :cond_15

    .line 1307
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 1313
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v13, :cond_11

    .line 1314
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ConversationListFragment;->dismissDeleteConfirmDialog()V

    .line 1315
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 1316
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ConversationListFragment;->dismissMoveAlertDialog()V

    .line 1321
    :cond_11
    if-nez v4, :cond_12

    .line 1322
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    .line 1349
    .end local v9           #tempAnimationEnabled:Z
    :cond_12
    :goto_4
    const-string v13, "Mms/ConversationComposer"

    const-string v14, "onNewIntent()"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1278
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v13, :cond_14

    .line 1279
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/mms/ui/ConversationListFragment;->onNewIntent(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1281
    :cond_14
    const v13, 0x7f0b00e9

    new-instance v14, Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/android/mms/ui/ConversationListFragment;-><init>(Landroid/content/Intent;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto/16 :goto_2

    .line 1309
    .restart local v9       #tempAnimationEnabled:Z
    :cond_15
    const v13, 0x7f0b00eb

    const/4 v14, 0x0

    new-instance v15, Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/android/mms/ui/ComposeMessageFragment;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_3

    .line 1324
    .end local v9           #tempAnimationEnabled:Z
    :cond_16
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForCmas(Landroid/content/Intent;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 1325
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    .line 1326
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v13, :cond_17

    .line 1327
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/mms/ui/CMASViewer;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_4

    .line 1329
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ConversationComposer;->initCmasViewer()Lcom/android/mms/ui/CMASViewer;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    .line 1330
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/android/mms/ui/CMASViewer;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v13}, Lcom/android/mms/ui/CMASViewer;->onStart()V

    .line 1332
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v13}, Lcom/android/mms/ui/CMASViewer;->onResume()V

    goto :goto_4

    .line 1335
    :cond_18
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v13

    if-eqz v13, :cond_19

    .line 1336
    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v13, :cond_19

    .line 1337
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraftAndReset(Z)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1345
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v13, :cond_12

    .line 1346
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto/16 :goto_4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2938
    const-string v3, "Mms/ConversationComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOptionsItemSelected(),item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 2958
    :goto_0
    return v1

    .line 2942
    :pswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 2944
    .local v0, splitMode:I
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v3, :cond_1

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v3}, Lcom/android/mms/ui/CMASViewer;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 2945
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v3}, Lcom/android/mms/ui/CMASViewer;->isCMASMoreInfoVisible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2946
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationComposer;->finishCmasViewer(Z)Z

    .line 2950
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    goto :goto_0

    .line 2948
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v2}, Lcom/android/mms/ui/CMASViewer;->destroyCMASMoreInfo()V

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2954
    goto :goto_0

    .line 2940
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1082
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "\t\tonPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1084
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    .line 1087
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeContextMenu()V

    .line 1090
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 2599
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "onPrepareOptionsMenu()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    const/4 v0, -0x1

    .line 2602
    .local v0, splitMode:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v1, :cond_0

    .line 2603
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 2605
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2606
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 2609
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->isAnyKindOfSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2613
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeSearchView()V

    .line 2617
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->isRightScreenVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2618
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onPrepareComposerOptionsMenu(Landroid/view/Menu;)V

    .line 2621
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 2622
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ConversationListFragment;->onPrepareListOptionsMenu(Landroid/view/Menu;)V

    .line 2624
    :cond_4
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    .line 2625
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 548
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mFolderViewInvoking:Z

    if-eqz v0, :cond_0

    .line 549
    const/4 v0, 0x1

    .line 551
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 2981
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2982
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 2983
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->closeEmptycompose()V

    .line 2984
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2662
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1048
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "\t\tonResume()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string v1, "VerificationLog"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1060
    sput-boolean v3, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    .line 1066
    const/4 v0, 0x0

    .line 1067
    .local v0, isAnimationEnable:Z
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v1, :cond_0

    .line 1068
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    .line 1070
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_1

    .line 1072
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListFragment;->setAnimationEnable(Z)V

    .line 1074
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_2

    .line 1075
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setAnimationEnable(Z)V

    .line 1078
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 1013
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "\t\tonSaveInstanceState()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1017
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    .line 1018
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1019
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1020
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1023
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_1

    .line 1024
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1025
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1027
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1029
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public onSearchRequested()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1445
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 1450
    .local v0, splitMode:I
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeOptionsMenu()V

    .line 1452
    if-ne v0, v3, :cond_1

    .line 1482
    :cond_0
    :goto_0
    return v3

    .line 1461
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v1

    if-eq v1, v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v1

    if-eq v1, v3, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isSaveMode()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_5

    .line 1469
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1470
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, v3, v4, v3, v4}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    .line 1478
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    .line 1479
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->startSearchMenu()V

    goto :goto_0

    .line 1471
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1472
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4, v3, v4}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    goto :goto_1

    .line 1473
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isSaveMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1474
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4, v3, v4}, Lcom/android/mms/ui/ConversationListFragment;->setMultiModeLayout(IZZZ)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 975
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "\tonStart()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 977
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    .line 978
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    .line 980
    .local v0, useSplitView:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 982
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mFromFolderView:Z

    if-ne v1, v4, :cond_1

    .line 983
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    .line 996
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v1, :cond_0

    .line 997
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASViewer;->onStart()V

    .line 1002
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/mms/ui/ConversationComposer$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationComposer$6;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1009
    return-void

    .line 985
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    goto :goto_0

    .line 989
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 990
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    goto :goto_0

    .line 992
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1094
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "\tonStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1096
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setRemoveComposer(Z)V

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationComposer;->savedSplitMode:I

    .line 1102
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onUserInteraction()V

    .line 1156
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 9
    .parameter "hasFocus"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2794
    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2795
    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onWindowFocusChanged(Z)V

    .line 2826
    :goto_0
    return-void

    .line 2799
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    .line 2800
    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2801
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 2802
    .local v2, focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v2, :cond_2

    .line 2803
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v6, :cond_2

    .line 2804
    const/4 v4, 0x1

    .line 2805
    .local v4, setFocus:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v8, "activity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2806
    .local v0, activityManager:Landroid/app/ActivityManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2807
    const-string v3, "com.diotek.ime.implement.input.umlaut.HwUmlautPopup"

    .line 2808
    .local v3, secInputClassName:Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 2809
    .local v1, className:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v4, v6

    .line 2812
    .end local v1           #className:Ljava/lang/String;
    .end local v3           #secInputClassName:Ljava/lang/String;
    :cond_1
    :goto_1
    if-ne v4, v6, :cond_2

    .line 2813
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 2820
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v2           #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4           #setFocus:Z
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v5, :cond_4

    .line 2821
    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v5, p1}, Lcom/android/mms/ui/ConversationListFragment;->onWindowFocusChanged(Z)V

    goto :goto_0

    .restart local v0       #activityManager:Landroid/app/ActivityManager;
    .restart local v1       #className:Ljava/lang/String;
    .restart local v2       #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v3       #secInputClassName:Ljava/lang/String;
    .restart local v4       #setFocus:Z
    :cond_3
    move v4, v7

    .line 2809
    goto :goto_1

    .line 2825
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #secInputClassName:Ljava/lang/String;
    .end local v4           #setFocus:Z
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method public openThread(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2424
    const-string v1, "cmas"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2425
    .local v0, isCmas:Ljava/lang/Boolean;
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of isCmas: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2428
    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    .line 2430
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2431
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 2432
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 2435
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v1, :cond_1

    .line 2436
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/CMASViewer;->onNewIntent(Landroid/content/Intent;)V

    .line 2444
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    .line 2457
    :goto_1
    return-void

    .line 2438
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initCmasViewer()Lcom/android/mms/ui/CMASViewer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    .line 2439
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1, v6, p1}, Lcom/android/mms/ui/CMASViewer;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 2440
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASViewer;->onStart()V

    .line 2441
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASViewer;->onResume()V

    goto :goto_0

    .line 2447
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    if-eqz v1, :cond_3

    .line 2448
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mCmasViewer:Lcom/android/mms/ui/CMASViewer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    .line 2449
    iput-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsCmasViewer:Z

    .line 2451
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_4

    .line 2452
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 2454
    :cond_4
    const v1, 0x7f0b00eb

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v2, p1}, Lcom/android/mms/ui/ComposeMessageFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v1, v6, v2}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_1
.end method

.method public refreshSplitManager(Z)V
    .locals 8
    .parameter "ignoreSameSplitView"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 2243
    const-string v3, "Mms/ConversationComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshSplitManager(),ignoreSameSplitView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v3, :cond_1

    .line 2307
    :cond_0
    :goto_0
    return-void

    .line 2248
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v2

    .line 2249
    .local v2, useSplitView:Z
    const-string v3, "FromSearchView"

    invoke-virtual {p0, v3, v6}, Lcom/android/mms/ui/ConversationComposer;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2250
    const/4 v2, 0x0

    .line 2255
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListFragment;->getListCount()I

    move-result v3

    if-gtz v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v3

    if-eq v3, v7, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v3

    if-nez v3, :cond_5

    .line 2259
    :cond_3
    const/4 v0, 0x0

    .line 2260
    .local v0, isNewCompose:Z
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v3

    if-ne v3, v7, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_4

    .line 2261
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v0

    .line 2262
    :cond_4
    if-nez v0, :cond_5

    .line 2263
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 2264
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3, v6, v6}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2265
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_0

    .line 2270
    .end local v0           #isNewCompose:Z
    :cond_5
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    if-ne v3, v2, :cond_7

    .line 2272
    if-nez p1, :cond_0

    .line 2276
    if-eqz v2, :cond_6

    .line 2277
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 2278
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->calcSplitMode()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 2282
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_0

    .line 2280
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_1

    .line 2284
    :cond_7
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    .line 2285
    const/4 v1, 0x0

    .line 2286
    .local v1, splitMode:I
    if-eqz v2, :cond_a

    .line 2287
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 2288
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2289
    const/4 v1, 0x2

    .line 2295
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_9

    if-nez v2, :cond_9

    if-nez v1, :cond_9

    .line 2297
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2298
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->closeWithSaveDraft()V

    .line 2304
    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3, v1, v6}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2305
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto/16 :goto_0

    .line 2291
    :cond_a
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->canUseSplitMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_2

    .line 2300
    :cond_b
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_3
.end method

.method public removeComposeDraftMessage()V
    .locals 2

    .prologue
    .line 2732
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_0

    .line 2733
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "mComposeMessage is null return"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2737
    :goto_0
    return-void

    .line 2736
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->removeDraftMessage()V

    goto :goto_0
.end method

.method public removeComposeFragmentWithoutPreProcess(J)V
    .locals 8
    .parameter "threadId"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0b00eb

    const/4 v5, 0x1

    .line 2740
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v3, :cond_1

    .line 2766
    :cond_0
    :goto_0
    return-void

    .line 2743
    :cond_1
    const-wide/16 v3, -0x1

    cmp-long v3, p1, v3

    if-nez v3, :cond_2

    .line 2744
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 2745
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    .line 2746
    .local v0, details:Lcom/android/mms/ui/ComposeMessageFragment;
    if-eqz v0, :cond_0

    .line 2747
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 2749
    invoke-direct {p0, v7, v0}, Lcom/android/mms/ui/ConversationComposer;->removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0

    .line 2754
    .end local v0           #details:Lcom/android/mms/ui/ComposeMessageFragment;
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversationThreadId()J

    move-result-wide v1

    .line 2756
    .local v1, targetId:J
    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 2757
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 2758
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    .line 2759
    .restart local v0       #details:Lcom/android/mms/ui/ComposeMessageFragment;
    if-eqz v0, :cond_0

    .line 2760
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 2761
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposeDraftMessage()V

    .line 2762
    invoke-direct {p0, v7, v0}, Lcom/android/mms/ui/ConversationComposer;->removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0
.end method

.method public removeComposer()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2042
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "removeComposer()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v1, :cond_1

    .line 2071
    :cond_0
    :goto_0
    return-void

    .line 2047
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0b00eb

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    .line 2049
    .local v0, details:Lcom/android/mms/ui/ComposeMessageFragment;
    if-eqz v0, :cond_0

    .line 2050
    sget-boolean v1, Lcom/android/mms/ui/ConversationComposer;->skeepSipshowing:Z

    if-nez v1, :cond_2

    .line 2051
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/ConversationComposer$10;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationComposer$10;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2061
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 2062
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->clearEditorInputType()V

    .line 2064
    :cond_2
    sput-boolean v5, Lcom/android/mms/ui/ConversationComposer;->skeepSipshowing:Z

    .line 2065
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeContextMenu()V

    .line 2066
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setRemoveComposer(Z)V

    .line 2067
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ConversationComposer;->removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 2069
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    goto :goto_0
.end method

.method public removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0
    .parameter "list"
    .parameter "composer"
    .parameter "value"

    .prologue
    .line 2769
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationComposer;->removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 2770
    return-void
.end method

.method public requestDrawPointerOnConverationList(J)Z
    .locals 1
    .parameter "threadId"

    .prologue
    .line 2637
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    .line 2638
    const/4 v0, 0x0

    .line 2640
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->requestDrawPointerOnConverationList(J)Z

    move-result v0

    goto :goto_0
.end method

.method public requestFocusOnComposer()Z
    .locals 1

    .prologue
    .line 2651
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_0

    .line 2652
    const/4 v0, 0x0

    .line 2654
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestFocusOnComposer()Z

    move-result v0

    goto :goto_0
.end method

.method public requestSplitModeOnConverationList(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 2644
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    .line 2648
    :goto_0
    return-void

    .line 2647
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationListAdapter;->setSplitModePreference(Z)V

    goto :goto_0
.end method

.method public requsetFocusOnConversationList(J)Z
    .locals 1
    .parameter "threadId"

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    .line 2630
    const/4 v0, 0x0

    .line 2632
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->requestFocusOnConversationList(J)Z

    move-result v0

    goto :goto_0
.end method

.method public setActionBarHomeAsUp(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 2215
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2218
    .local v0, actionbar:Landroid/app/ActionBar;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2219
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2223
    :goto_0
    return-void

    .line 2220
    :catch_0
    move-exception v1

    .line 2221
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "CalledFromWrongThreadException"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setConversationSelectAll(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 2361
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConversationSelectAll(),checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    .line 2367
    :goto_0
    return-void

    .line 2366
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setSelectAll(Z)V

    goto :goto_0
.end method

.method public setFromSearchView(Ljava/lang/String;Z)V
    .locals 2
    .parameter "prefKey"
    .parameter "value"

    .prologue
    .line 2925
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "setFromSearchView() entered"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2929
    iput-boolean p2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFromSearchView:Z

    .line 2930
    return-void
.end method

.method public setMessageSelectAll(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 2370
    const-string v0, "Mms/ConversationComposer"

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

    .line 2372
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_0

    .line 2376
    :goto_0
    return-void

    .line 2375
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelectAll(Z)V

    goto :goto_0
.end method

.method public showEmptyScreen(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 2074
    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEmptyScreen(),show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_1

    .line 2088
    :cond_0
    :goto_0
    return-void

    .line 2079
    :cond_1
    if-eqz p1, :cond_2

    .line 2080
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2082
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2083
    const-string v0, "GATE"

    const-string v1, "<GATE-M>NO_MESSAGES</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2086
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateList()V
    .locals 3

    .prologue
    .line 2987
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    .line 2992
    :goto_0
    return-void

    .line 2991
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryDelayed(J)V

    goto :goto_0
.end method
