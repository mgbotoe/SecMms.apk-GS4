.class public Lcom/android/mms/ui/BoxListViewActivity;
.super Landroid/app/Activity;
.source "BoxListViewActivity.java"


# static fields
.field public static final FOLDER_VIEW_SPLIT_MODE:Z = false

.field public static final FROM_SEARCH_VIEW:Ljava/lang/String; = "FromSearchView"

.field public static final HISTORY_SEARCHVIEW:Ljava/lang/String; = "history_searchView"

.field private static final LOADING_TASK_LIMIT:I = 0xf

.field private static final MMSVIEWER:I = 0x65

.field protected static final MMS_NOTI_TYPE:I = 0xd

.field protected static final MMS_TYPE:I = 0xc

.field protected static final NONE_TYPE:I = 0x0

.field private static final SMSVIEWER:I = 0x66

.field protected static final SMS_TYPE:I = 0xb

.field private static final TAG:Ljava/lang/String; = "Mms/BoxListViewActivity"

.field public static sisOnPreLaunch:Z


# instance fields
.field private final mActivityStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

.field private mBoxList:Lcom/android/mms/ui/BoxListFrame;

.field private mComposeMessage:Landroid/view/View;

.field private mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mIsComposerOnly:Z

.field private mIsFinish:Z

.field private mIsLandscape:Z

.field private mIsSplitBarTouch:Z

.field private mIsViewerOnly:Z

.field public mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

.field public mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

.field public mMsgType:I

.field private mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mOptionMenuCount:I

.field mOptionSelectResult:Z

.field private mRightScreen:Landroid/widget/FrameLayout;

.field public mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

.field private mSplitBar:Landroid/view/View;

.field private mSplitBarLine:Landroid/view/View;

.field private mSplitManager:Lcom/android/mms/ui/SplitManager;

.field private mSplitShadow:Landroid/widget/ImageView;

.field private mUseMoveTaskToBack:Z

.field private mUseSplitView:Z

.field private mVto:Landroid/view/ViewTreeObserver;

.field private onViewerClose:Lcom/android/mms/ui/OnEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/BoxListViewActivity;->sisOnPreLaunch:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    .line 72
    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mComposeMessage:Landroid/view/View;

    .line 73
    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    .line 74
    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    .line 75
    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    .line 78
    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    .line 79
    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/view/View;

    .line 82
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsComposerOnly:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsViewerOnly:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseSplitView:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFinish:Z

    .line 89
    iput v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseMoveTaskToBack:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsSplitBarTouch:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mOptionSelectResult:Z

    .line 189
    new-instance v0, Lcom/android/mms/ui/BoxListViewActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListViewActivity$1;-><init>(Lcom/android/mms/ui/BoxListViewActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1278
    new-instance v0, Lcom/android/mms/ui/BoxListViewActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListViewActivity$4;-><init>(Lcom/android/mms/ui/BoxListViewActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mActivityStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    .line 1338
    new-instance v0, Lcom/android/mms/ui/BoxListViewActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListViewActivity$5;-><init>(Lcom/android/mms/ui/BoxListViewActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->onViewerClose:Lcom/android/mms/ui/OnEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/BoxListViewActivity;)Lcom/android/mms/ui/SplitManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/BoxListViewActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/BoxListViewActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsSplitBarTouch:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/BoxListViewActivity;)Lcom/android/mms/ui/BoxListFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/BoxListViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFinish:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/BoxListViewActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/BoxListViewActivity;->showEmptyScreen(IZ)V

    return-void
.end method

.method private calcSplitMode()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1229
    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsViewerOnly:Z

    if-ne v1, v0, :cond_0

    .line 1248
    :goto_0
    return v0

    .line 1232
    :cond_0
    const/4 v0, 0x0

    .line 1233
    .local v0, splitMode:I
    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eqz v1, :cond_2

    .line 1234
    const/4 v0, 0x2

    .line 1241
    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1246
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "calcSplitMode():unknown"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1236
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_1

    .line 1237
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1242
    :pswitch_0
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "calcSplitMode():SPLIT_MODE_NONE"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1243
    :pswitch_1
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "calcSplitMode():SPLIT_MODE_LEFT_ONLY"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1244
    :pswitch_2
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "calcSplitMode():SPLIT_MODE_RIGHT_ONLY"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1245
    :pswitch_3
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "calcSplitMode():SPLIT_MODE_SPLITED"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1241
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createMultiWindowInstance()Z
    .locals 3

    .prologue
    .line 1267
    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 1268
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_0

    .line 1269
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mActivityStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1271
    :catch_0
    move-exception v0

    .line 1272
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 1273
    const/4 v1, 0x0

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
    .line 935
    const/4 v1, 0x0

    .line 936
    .local v1, launcherList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 937
    .local v2, mCheckHomeIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 941
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 945
    :goto_0
    return-object v1

    .line 942
    :catch_0
    move-exception v0

    .line 943
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleMoveTaskToBack()V
    .locals 3

    .prologue
    .line 894
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/BoxListViewActivity;->isIntentFromLauncher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->isLauncherTaskRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 895
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "move to back"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->moveTaskToBack(Z)Z

    .line 907
    :goto_0
    return-void

    .line 900
    :cond_0
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "finish"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 903
    :catch_0
    move-exception v0

    .line 905
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "Exception."

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private initBoxList()Lcom/android/mms/ui/BoxListFrame;
    .locals 2

    .prologue
    .line 309
    const v1, 0x7f0b0075

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BoxListFrame;

    .line 310
    .local v0, boxList:Lcom/android/mms/ui/BoxListFrame;
    invoke-virtual {v0, p0}, Lcom/android/mms/ui/BoxListFrame;->setActivity(Landroid/app/Activity;)V

    .line 312
    return-object v0
.end method

.method private initComposeMessage()V
    .locals 3

    .prologue
    .line 250
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "initComposeMessage"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 262
    .local v0, inflater:Landroid/view/LayoutInflater;
    return-void
.end method

.method private initMmsSingleViewer()Lcom/android/mms/ui/MmsSinglePageFrame;
    .locals 5

    .prologue
    .line 294
    const-string v3, "Mms/BoxListViewActivity"

    const-string v4, "initMmsSingleViewer"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const v3, 0x7f0b0076

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 297
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 299
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f04005f

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b020d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MmsSinglePageFrame;

    .line 300
    .local v1, mmsSingleView:Lcom/android/mms/ui/MmsSinglePageFrame;
    invoke-virtual {v1, p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->setActivity(Landroid/app/Activity;)V

    .line 301
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->onViewerClose:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 302
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->setVisibility(I)V

    .line 303
    const/high16 v3, -0x100

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->setBackgroundColor(I)V

    .line 305
    return-object v1
.end method

.method private initMmsViewer()Lcom/android/mms/ui/SlideshowFrame;
    .locals 5

    .prologue
    .line 280
    const-string v3, "Mms/BoxListViewActivity"

    const-string v4, "initMmsViewer"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const v3, 0x7f0b0076

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 282
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 284
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040080

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0284

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SlideshowFrame;

    .line 285
    .local v1, mmsView:Lcom/android/mms/ui/SlideshowFrame;
    invoke-virtual {v1, p0}, Lcom/android/mms/ui/SlideshowFrame;->setActivity(Landroid/app/Activity;)V

    .line 286
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->onViewerClose:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SlideshowFrame;->setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 287
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SlideshowFrame;->setVisibility(I)V

    .line 288
    const/high16 v3, -0x100

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SlideshowFrame;->setBackgroundColor(I)V

    .line 290
    return-object v1
.end method

.method private initSmsViewer()Lcom/android/mms/ui/SmsViewFrame;
    .locals 5

    .prologue
    .line 265
    const-string v3, "Mms/BoxListViewActivity"

    const-string v4, "initSmsViewer"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const v3, 0x7f0b0076

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 267
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 269
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040083

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0288

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SmsViewFrame;

    .line 270
    .local v1, smsView:Lcom/android/mms/ui/SmsViewFrame;
    invoke-virtual {v1, p0}, Lcom/android/mms/ui/SmsViewFrame;->setActivity(Landroid/app/Activity;)V

    .line 271
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->onViewerClose:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SmsViewFrame;->setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 273
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SmsViewFrame;->setVisibility(I)V

    .line 275
    const/high16 v3, -0x100

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SmsViewFrame;->setBackgroundColor(I)V

    .line 276
    return-object v1
.end method

.method private initSplitManager()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 976
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "initSplitManager()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/view/View;

    .line 979
    const v0, 0x7f0b007b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBarLine:Landroid/view/View;

    .line 980
    const v0, 0x7f0b007c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitShadow:Landroid/widget/ImageView;

    .line 981
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/view/View;

    if-nez v0, :cond_0

    move v0, v9

    .line 1081
    :goto_0
    return v0

    .line 984
    :cond_0
    iput-boolean v9, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsSplitBarTouch:Z

    .line 987
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/view/View;

    new-instance v1, Lcom/android/mms/ui/BoxListViewActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BoxListViewActivity$2;-><init>(Lcom/android/mms/ui/BoxListViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1021
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/view/View;

    new-instance v1, Lcom/android/mms/ui/BoxListViewActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BoxListViewActivity$3;-><init>(Lcom/android/mms/ui/BoxListViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1041
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_2
    const/4 v8, 0x0

    .line 1043
    .local v8, useSplitView:Z
    const-string v0, "FromSearchView"

    invoke-virtual {p0, v0, v9}, Lcom/android/mms/ui/BoxListViewActivity;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1044
    const/4 v8, 0x0

    .line 1046
    :cond_3
    iput-boolean v8, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseSplitView:Z

    .line 1048
    const/4 v7, 0x0

    .line 1053
    .local v7, splitMode:I
    if-eqz v8, :cond_7

    .line 1054
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eqz v0, :cond_6

    .line 1055
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsComposerOnly:Z

    if-eqz v0, :cond_5

    .line 1056
    const/4 v7, 0x1

    .line 1070
    :cond_4
    :goto_1
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 1071
    .local v6, display:Landroid/view/Display;
    const-string v0, "Mms/BoxListViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSplitManager width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    new-instance v0, Lcom/android/mms/ui/SplitManager;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mRightScreen:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/view/View;

    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitShadow:Landroid/widget/ImageView;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/SplitManager;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/mms/ui/BoxListViewActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    .line 1073
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SplitManager;->setWidth(I)V

    .line 1075
    if-nez v10, :cond_9

    .line 1076
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 1079
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0, v7, v9}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move v0, v10

    .line 1081
    goto/16 :goto_0

    .line 1058
    .end local v6           #display:Landroid/view/Display;
    :cond_5
    const/4 v7, 0x2

    goto :goto_1

    .line 1060
    :cond_6
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsComposerOnly:Z

    if-eqz v0, :cond_4

    .line 1061
    const/4 v7, 0x1

    goto :goto_1

    .line 1065
    :cond_7
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsComposerOnly:Z

    if-nez v0, :cond_8

    const-string v0, "FromSearchView"

    invoke-virtual {p0, v0, v9}, Lcom/android/mms/ui/BoxListViewActivity;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1066
    :cond_8
    const/4 v7, 0x1

    goto :goto_1

    .line 1078
    .restart local v6       #display:Landroid/view/Display;
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0, v9}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_2
.end method

.method private isIntentForList(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 217
    .local v1, result:Z
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    const/4 v1, 0x1

    .line 222
    :cond_0
    const-string v2, "Mms/BoxListViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIntentForList(),return="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return v1
.end method

.method private isIntentForViewer(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, action:Ljava/lang/String;
    const/4 v2, 0x0

    .line 230
    .local v2, result:Z
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 231
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, className:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 234
    const/4 v2, 0x1

    .line 245
    .end local v1           #className:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v3, "Mms/BoxListViewActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIntentForViewer(),return="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return v2

    .line 242
    :cond_1
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 243
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isIntentFromLauncher(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 948
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

.method private isLauncherTaskRunning()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 910
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getLauncherList()Ljava/util/List;

    move-result-object v4

    .line 911
    .local v4, launcherList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 912
    :cond_0
    const-string v8, "Mms/BoxListViewActivity"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :goto_0
    return v7

    .line 916
    :cond_1
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/BoxListViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 917
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 919
    .local v6, taskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 920
    .local v3, launcherInfo:Landroid/content/pm/ResolveInfo;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 921
    .local v5, taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 922
    const-string v7, "Mms/BoxListViewActivity"

    const-string v8, "Launcher task Running"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const/4 v7, 0x1

    goto :goto_0

    .line 928
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #launcherInfo:Landroid/content/pm/ResolveInfo;
    .end local v5           #taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    const-string v8, "Mms/BoxListViewActivity"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isSearchMode()Z
    .locals 4

    .prologue
    .line 1525
    const/4 v0, 0x0

    .line 1526
    .local v0, isSearchMode:Z
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_0

    .line 1527
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->isSearchMode()Z

    move-result v0

    .line 1529
    :cond_0
    const-string v1, "Mms/BoxListViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSearchMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    return v0
.end method

.method private refreshSplitManager(Z)V
    .locals 6
    .parameter "ignoreSameSplitView"

    .prologue
    const/4 v5, 0x0

    .line 1304
    const-string v2, "Mms/BoxListViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshSplitManager(),ignoreSameSplitView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v2, :cond_1

    .line 1336
    :cond_0
    :goto_0
    return-void

    .line 1309
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_2
    const/4 v1, 0x0

    .line 1311
    .local v1, useSplitView:Z
    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseSplitView:Z

    if-ne v2, v1, :cond_4

    .line 1312
    if-nez p1, :cond_0

    .line 1315
    if-eqz v1, :cond_3

    .line 1316
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 1317
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->calcSplitMode()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    goto :goto_0

    .line 1319
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 1320
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_0

    .line 1323
    :cond_4
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseSplitView:Z

    .line 1324
    const/4 v0, 0x0

    .line 1325
    .local v0, splitMode:I
    if-eqz v1, :cond_6

    .line 1326
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    .line 1327
    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eqz v2, :cond_5

    .line 1328
    const/4 v0, 0x2

    .line 1333
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v0, v5}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1334
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_0

    .line 1330
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_1
.end method

.method private showEmptyScreen(IZ)V
    .locals 5
    .parameter "type"
    .parameter "show"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1193
    const-string v0, "Mms/BoxListViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEmptyScreen(),show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    packed-switch p1, :pswitch_data_0

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1196
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_0

    .line 1199
    if-eqz p2, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/SlideshowFrame;->setVisibility(I)V

    .line 1204
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_0

    .line 1205
    if-eqz p2, :cond_2

    .line 1206
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MmsSinglePageFrame;->setVisibility(I)V

    goto :goto_0

    .line 1202
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/SlideshowFrame;->setVisibility(I)V

    goto :goto_1

    .line 1208
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->setVisibility(I)V

    goto :goto_0

    .line 1216
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_0

    .line 1219
    if-eqz p2, :cond_3

    .line 1220
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/SmsViewFrame;->setVisibility(I)V

    goto :goto_0

    .line 1222
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/SmsViewFrame;->setVisibility(I)V

    goto :goto_0

    .line 1194
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public canUseSplitMode()Z
    .locals 2

    .prologue
    .line 1253
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->isMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearFocusOfBoxListIfNeeded()V
    .locals 2

    .prologue
    .line 1509
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->clearFocus()V

    .line 1513
    :cond_0
    return-void
.end method

.method protected clearViewer()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 1096
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_0

    .line 1097
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_1

    .line 1101
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 1104
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_2

    .line 1105
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 1107
    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 510
    const/4 v3, 0x0

    .line 512
    .local v3, result:Z
    iget-object v7, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v7}, Lcom/android/mms/ui/SplitManager;->getXpositon()I

    move-result v2

    .line 513
    .local v2, offset:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 514
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 515
    .local v5, y:I
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getStatusBarHeight()I

    move-result v1

    .line 516
    .local v1, mStatusBarHeight:I
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getActionBarHeight()I

    move-result v0

    .line 517
    .local v0, actionBarHeight:I
    const-string v7, "Mms/BoxListViewActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dispatchTouchEvent():SPLIT_MODE_SPLITED (x,y)="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    if-lt v4, v2, :cond_0

    add-int v7, v1, v0

    if-ge v5, v7, :cond_2

    .line 524
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 553
    :cond_1
    :goto_0
    return v6

    .line 527
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 528
    iget-object v7, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v7}, Lcom/android/mms/ui/SmsViewFrame;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    .line 531
    iget-object v7, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v7, p1}, Lcom/android/mms/ui/SmsViewFrame;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eq v7, v6, :cond_1

    .line 553
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 535
    :cond_4
    iget-object v7, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v7}, Lcom/android/mms/ui/MmsSinglePageFrame;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 536
    iget-object v7, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v7, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-ne v7, v6, :cond_3

    goto :goto_0

    .line 541
    :cond_5
    iget-object v7, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v7}, Lcom/android/mms/ui/SmsViewFrame;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6

    .line 544
    iget-object v7, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v7, p1}, Lcom/android/mms/ui/SmsViewFrame;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-ne v7, v6, :cond_3

    goto :goto_0

    .line 548
    :cond_6
    iget-object v7, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v7}, Lcom/android/mms/ui/MmsSinglePageFrame;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 549
    iget-object v7, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v7, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-ne v7, v6, :cond_3

    goto :goto_0
.end method

.method public getActionBarHeight()I
    .locals 4

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, mActionBarHeight:I
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    .line 501
    const-string v1, "Mms/BoxListViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action bar height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return v0
.end method

.method public getCurrentViewMsgId()J
    .locals 2

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    iget-wide v0, v0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    .line 1496
    :goto_0
    return-wide v0

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_1

    .line 1493
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    iget-wide v0, v0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    goto :goto_0

    .line 1494
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_2

    .line 1495
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    iget-wide v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    goto :goto_0

    .line 1496
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getFromSearchView(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "prefKey"
    .parameter "defaultValue"

    .prologue
    const/4 v1, 0x0

    .line 1516
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    const-string v3, "history_searchView"

    invoke-virtual {v2, v3, v1}, Lcom/android/mms/MmsApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1517
    .local v0, mFromSearchView:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1518
    const/4 v1, 0x1

    .line 1520
    :cond_0
    return v1
.end method

.method public getNextSplitMode()I
    .locals 1

    .prologue
    .line 1089
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    const/4 v0, 0x2

    .line 1092
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSplitMode()I
    .locals 4

    .prologue
    .line 1447
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v1, :cond_0

    .line 1448
    const/4 v0, -0x1

    .line 1452
    :goto_0
    return v0

    .line 1450
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 1451
    .local v0, result:I
    const-string v1, "Mms/BoxListViewActivity"

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

    goto :goto_0
.end method

.method public getStatusBarHeight()I
    .locals 5

    .prologue
    .line 489
    const/4 v0, 0x0

    .line 490
    .local v0, mStatusBarHeight:I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 491
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 492
    const-string v2, "Mms/BoxListViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status bar height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 495
    return v0
.end method

.method public getXpositon()I
    .locals 4

    .prologue
    .line 1457
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v1, :cond_0

    .line 1458
    const/4 v0, 0x0

    .line 1462
    :goto_0
    return v0

    .line 1460
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getXpositon()I

    move-result v0

    .line 1461
    .local v0, result:I
    const-string v1, "Mms/BoxListViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXpositon,return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isMultiWindowMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1257
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSplitBarTouch()Z
    .locals 1

    .prologue
    .line 1085
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsSplitBarTouch:Z

    return v0
.end method

.method public notifyBoxDataChanged(Z)V
    .locals 2
    .parameter "deleteMode"

    .prologue
    const/4 v1, 0x2

    .line 1466
    if-eqz p1, :cond_3

    .line 1467
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_1

    .line 1469
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewFrame;->splitListChanged()V

    .line 1487
    :cond_0
    :goto_0
    return-void

    .line 1470
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_2

    .line 1471
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowFrame;->splitListChanged()V

    goto :goto_0

    .line 1472
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->splitListChanged()V

    goto :goto_0

    .line 1476
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 1477
    iget v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    goto :goto_0

    .line 1479
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_5

    .line 1480
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewFrame;->close()V

    goto :goto_0

    .line 1481
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_6

    .line 1482
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowFrame;->close()V

    goto :goto_0

    .line 1483
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->close()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 732
    const-string v0, "Mms/BoxListViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 736
    iget v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    sparse-switch v0, :sswitch_data_0

    .line 752
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 743
    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/SmsViewFrame;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 747
    :sswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/SlideshowFrame;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/MmsSinglePageFrame;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 736
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public onBoxListDeleteMode()V
    .locals 2

    .prologue
    .line 953
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onBoxListDeleteMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 956
    iget v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->showEmptyScreen(IZ)V

    .line 957
    iget v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 959
    :cond_0
    return-void
.end method

.method public onBoxListMoveMode()V
    .locals 2

    .prologue
    .line 963
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onBoxListMoveMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 966
    iget v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->showEmptyScreen(IZ)V

    .line 967
    iget v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 969
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "newConfig"

    .prologue
    const/16 v9, 0xc

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 592
    const-string v4, "Mms/BoxListViewActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onConfigurationChanged(),newConfig="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_8

    move v1, v5

    .line 595
    .local v1, isLandscape:Z
    :goto_0
    const/4 v2, 0x0

    .line 596
    .local v2, refreshList:Z
    iget-boolean v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eq v4, v1, :cond_7

    .line 597
    const-string v4, "Mms/BoxListViewActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onConfigurationChanged():Landscape changed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    .line 601
    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v4, :cond_0

    .line 602
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BoxListViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 603
    .local v0, display:Landroid/view/Display;
    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/mms/ui/SplitManager;->setWidth(I)V

    .line 606
    .end local v0           #display:Landroid/view/Display;
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/mms/ui/BoxListViewActivity;->refreshSplitManager(Z)V

    .line 609
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v3

    .line 610
    .local v3, splitMode:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v4, :cond_1

    .line 611
    if-ne v3, v5, :cond_9

    .line 612
    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/BoxListFrame;->setVisibility(I)V

    .line 619
    :cond_1
    :goto_1
    if-ne v1, v5, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v4, :cond_3

    .line 620
    :cond_2
    const/4 v2, 0x1

    .line 622
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v4, :cond_4

    .line 623
    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v4, p1, v2}, Lcom/android/mms/ui/BoxListFrame;->configurationChanged(Landroid/content/res/Configuration;Z)V

    .line 625
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v4

    if-nez v4, :cond_7

    .line 626
    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v4, :cond_5

    .line 627
    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 628
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v4, :cond_6

    .line 629
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 630
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v4, :cond_7

    .line 631
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 635
    .end local v3           #splitMode:I
    :cond_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 638
    return-void

    .end local v1           #isLandscape:Z
    .end local v2           #refreshList:Z
    :cond_8
    move v1, v6

    .line 594
    goto/16 :goto_0

    .line 614
    .restart local v1       #isLandscape:Z
    .restart local v2       #refreshList:Z
    .restart local v3       #splitMode:I
    :cond_9
    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/BoxListFrame;->setVisibility(I)V

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 757
    const-string v0, "Mms/BoxListViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContextItemSelected,item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/BoxListFrame;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    const/4 v0, 0x1

    .line 764
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 111
    const-string v3, "Mms/BoxListViewActivity"

    const-string v5, "onCreate()"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const v3, 0x7f04001b

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/BoxListViewActivity;->setContentView(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    .line 125
    const v3, 0x7f0b0076

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mRightScreen:Landroid/widget/FrameLayout;

    .line 127
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 128
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "Mms/BoxListViewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "folder view : intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->initBoxList()Lcom/android/mms/ui/BoxListFrame;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    .line 130
    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsViewerOnly:Z

    .line 135
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v3, :cond_1

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, key:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 142
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/BoxListFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 143
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v3}, Lcom/android/mms/ui/BoxListFrame;->getBoxListAdapter()Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/BoxListAdapter;->setSplitMode(Z)V

    .line 146
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v3, :cond_5

    .line 148
    const/4 v0, 0x0

    .line 149
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 150
    .restart local v2       #key:Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 153
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/mms/ui/SmsViewFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Z)V

    .line 174
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #key:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->initSplitManager()Z

    .line 178
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->createMultiWindowInstance()Z

    .line 179
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mVto:Landroid/view/ViewTreeObserver;

    .line 180
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 183
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 184
    const-string v3, "Mms/BoxListViewActivity"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void

    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    move v3, v4

    .line 123
    goto/16 :goto_0

    .line 155
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v3, :cond_7

    .line 157
    const/4 v0, 0x0

    .line 158
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 159
    .restart local v2       #key:Ljava/lang/String;
    if-eqz p1, :cond_6

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 160
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 162
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/SlideshowFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    goto :goto_1

    .line 164
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #key:Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v3, :cond_3

    .line 165
    const/4 v0, 0x0

    .line 166
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 167
    .restart local v2       #key:Ljava/lang/String;
    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 168
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 170
    :cond_8
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 441
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 443
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->onDestroy()V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewFrame;->onDestroy()V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowFrame;->onDestroy()V

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->onDestroy()V

    .line 450
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_4

    .line 451
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 452
    iput-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 456
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mVto:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mVto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 459
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 463
    :cond_5
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 794
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/SlideshowFrame;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 808
    :cond_0
    :goto_0
    return v0

    .line 797
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 803
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/SmsViewFrame;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 808
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 814
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    .line 888
    :cond_0
    :goto_0
    return v1

    .line 818
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-nez v3, :cond_4

    .line 819
    if-ne p1, v5, :cond_3

    .line 820
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v3}, Lcom/android/mms/ui/SlideshowFrame;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    move v1, v2

    .line 821
    goto :goto_0

    :cond_3
    move v1, v2

    .line 824
    goto :goto_0

    .line 829
    :cond_4
    if-ne p1, v5, :cond_5

    .line 830
    const-string v3, "Mms/BoxListViewActivity"

    const-string v4, "onKeyUp():KEYCODE_BACK"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 835
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    .line 847
    .local v0, splitMode:I
    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFinish:Z

    .line 848
    if-eq v0, v1, :cond_5

    .line 849
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFinish:Z

    .line 858
    .end local v0           #splitMode:I
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v2}, Lcom/android/mms/ui/SmsViewFrame;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v2, p1, p2}, Lcom/android/mms/ui/SmsViewFrame;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 863
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowFrame;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v2, p1, p2}, Lcom/android/mms/ui/SlideshowFrame;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 866
    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v2, p1, p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 870
    :cond_8
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListFrame;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v2, p1, p2}, Lcom/android/mms/ui/BoxListFrame;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 878
    :cond_9
    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFinish:Z

    if-eqz v2, :cond_a

    if-ne p1, v5, :cond_a

    .line 879
    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseMoveTaskToBack:Z

    if-eqz v2, :cond_a

    .line 881
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->handleMoveTaskToBack()V

    goto/16 :goto_0

    .line 888
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 558
    const-string v2, "Mms/BoxListViewActivity"

    const-string v3, "onNewIntent()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 562
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListViewActivity;->isIntentForList(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    :cond_0
    const-string v2, "StatusBarNoti"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 576
    .local v0, mStatusBarNoti:Z
    const-string v2, "notifyFailed"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 577
    .local v1, notifyFailed:Z
    const-string v2, "Mms/BoxListViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onNewIntent] mStatusBarNoti="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",notifyFailed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    if-eqz v0, :cond_2

    .line 580
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/BoxListFrame;->onNewIntent(Landroid/content/Intent;)V

    .line 587
    :cond_1
    :goto_0
    const-string v2, "Mms/BoxListViewActivity"

    const-string v3, "onNewIntent()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-void

    .line 581
    :cond_2
    if-eqz v1, :cond_1

    .line 582
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/BoxListFrame;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 705
    const-string v1, "Mms/BoxListViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOptionsItemSelected(),item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    sparse-switch v1, :sswitch_data_0

    .line 727
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 708
    :sswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/BoxListFrame;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 714
    :sswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/SmsViewFrame;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 719
    :sswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v1, :cond_1

    .line 720
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/SlideshowFrame;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 721
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_0

    .line 722
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 706
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 697
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 698
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mOptionMenuCount:I

    .line 700
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onOptionsMenuClosed()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 413
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "\t\tonPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 416
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->onPause()V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewFrame;->onPause()V

    .line 426
    :cond_1
    :goto_0
    return-void

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowFrame;->onPause()V

    goto :goto_0

    .line 423
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->onPause()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 642
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "onPrepareOptionsMenu()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 646
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 648
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mOptionSelectResult:Z

    .line 655
    const/4 v0, -0x1

    .line 657
    .local v0, splitMode:I
    iget v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    sparse-switch v1, :sswitch_data_0

    .line 687
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mOptionMenuCount:I

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 688
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->closeOptionsMenu()V

    .line 690
    :cond_2
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mOptionMenuCount:I

    .line 692
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 659
    :sswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 660
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/BoxListFrame;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0

    .line 665
    :sswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 667
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/SmsViewFrame;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0

    .line 671
    :sswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 673
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/SlideshowFrame;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0

    .line 674
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 676
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0

    .line 657
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x1

    .line 372
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 377
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 378
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 379
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "conversationList"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 380
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->finish()V

    .line 409
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onResume()V

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v1

    if-nez v1, :cond_5

    .line 390
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_2

    .line 391
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 392
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v1, :cond_3

    .line 393
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 394
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_4

    .line 395
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 408
    :cond_4
    :goto_1
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_6

    .line 399
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onResume()V

    goto :goto_1

    .line 400
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v1, :cond_7

    .line 402
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowFrame;->onResume()V

    goto :goto_1

    .line 403
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_4

    .line 405
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onResume()V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 336
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "onSaveInstanceState()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 340
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_0

    .line 341
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 342
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/BoxListFrame;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 343
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 346
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_1

    .line 347
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 352
    :cond_1
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "onSaveInstanceState()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 781
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onSearchRequested()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onSearchRequested(), invoke search mode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->closeOptionsMenu()V

    .line 785
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->startSearchView()V

    .line 788
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 318
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFinish:Z

    .line 324
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->refreshSplitManager(Z)V

    .line 327
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->onStart()V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewFrame;->onStart()V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->onStart()V

    .line 331
    :cond_2
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 430
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 432
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->onStop()V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewFrame;->onStop()V

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->onStop()V

    .line 436
    :cond_2
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 469
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 470
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 471
    .local v3, y:I
    const/4 v1, 0x0

    .line 473
    .local v1, result:Z
    iget-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v5}, Lcom/android/mms/ui/SmsViewFrame;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 474
    iget-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v5, p1}, Lcom/android/mms/ui/SmsViewFrame;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-ne v5, v4, :cond_1

    .line 483
    :cond_0
    :goto_0
    return v4

    .line 478
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v5}, Lcom/android/mms/ui/MmsSinglePageFrame;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 479
    iget-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v5, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eq v5, v4, :cond_0

    .line 483
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 769
    const-string v0, "Mms/BoxListViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged(),hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 772
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/SlideshowFrame;->onWindowFocusChanged(Z)V

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method protected removeViewer(I)V
    .locals 6
    .parameter "msgType"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0b0076

    const/4 v3, 0x0

    .line 1379
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "removeComposer()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    packed-switch p1, :pswitch_data_0

    .line 1429
    :cond_0
    :goto_0
    return-void

    .line 1386
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_0

    .line 1389
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1390
    .local v0, vg:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onPause()V

    .line 1391
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onStop()V

    .line 1392
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onDestroy()V

    .line 1393
    if-eqz v0, :cond_1

    .line 1394
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1396
    :cond_1
    iput-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    .line 1397
    iput v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    goto :goto_0

    .line 1401
    .end local v0           #vg:Landroid/view/ViewGroup;
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v1, :cond_0

    .line 1404
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1405
    .restart local v0       #vg:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowFrame;->onPause()V

    .line 1406
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowFrame;->onStop()V

    .line 1408
    if-eqz v0, :cond_2

    .line 1409
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1411
    :cond_2
    iput-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    .line 1412
    iput v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    .line 1414
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_0

    .line 1415
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #vg:Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 1416
    .restart local v0       #vg:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onPause()V

    .line 1417
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onStop()V

    .line 1419
    if-eqz v0, :cond_3

    .line 1420
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1422
    :cond_3
    iput-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    .line 1423
    iput v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    goto :goto_0

    .line 1383
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestFocusOnViewer()Z
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-nez v0, :cond_0

    .line 1502
    const/4 v0, 0x1

    .line 1504
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startNotiViewer(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1160
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_0

    .line 1161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1162
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/BoxListFrame;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1165
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_1

    .line 1166
    iget v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    .line 1168
    :cond_1
    const/16 v1, 0xd

    iput v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    .line 1169
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->initSmsViewer()Lcom/android/mms/ui/SmsViewFrame;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    .line 1170
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/mms/ui/SmsViewFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Z)V

    .line 1171
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onStart()V

    .line 1172
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onResume()V

    .line 1174
    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1175
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 1176
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1, v3, v4}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 1179
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_4

    .line 1180
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onPause()V

    .line 1181
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onStop()V

    .line 1184
    :cond_4
    const/16 v1, 0x66

    invoke-direct {p0, v1, v4}, Lcom/android/mms/ui/BoxListViewActivity;->showEmptyScreen(IZ)V

    .line 1187
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 1188
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListFrame;->setVisibility(I)V

    .line 1190
    :cond_5
    return-void
.end method

.method protected startViewer(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 5
    .parameter "msgType"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1110
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_0

    .line 1111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1112
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/BoxListFrame;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1115
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    const-string v1, "sms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1116
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->clearViewer()V

    .line 1117
    const/16 v1, 0xb

    iput v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    .line 1118
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->initSmsViewer()Lcom/android/mms/ui/SmsViewFrame;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    .line 1119
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1, v4, p2, v2}, Lcom/android/mms/ui/SmsViewFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Z)V

    .line 1120
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onStart()V

    .line 1121
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onResume()V

    .line 1123
    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1124
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 1125
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1, v3, v2}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 1127
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_3

    .line 1128
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onPause()V

    .line 1129
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onStop()V

    .line 1132
    :cond_3
    const/16 v1, 0x66

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/BoxListViewActivity;->showEmptyScreen(IZ)V

    .line 1154
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 1155
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListFrame;->setVisibility(I)V

    .line 1157
    :cond_5
    return-void

    .line 1133
    :cond_6
    const-string v1, "mms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1134
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->clearViewer()V

    .line 1135
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    .line 1136
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->initMmsSingleViewer()Lcom/android/mms/ui/MmsSinglePageFrame;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    .line 1137
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1, v4, p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 1138
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onStart()V

    .line 1139
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onResume()V

    .line 1141
    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1142
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v1

    if-eq v1, v3, :cond_8

    .line 1143
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1, v3, v2}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 1145
    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_9

    .line 1146
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onPause()V

    .line 1147
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onStop()V

    .line 1150
    :cond_9
    const/16 v1, 0x65

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/BoxListViewActivity;->showEmptyScreen(IZ)V

    goto :goto_0
.end method
