.class public Lcom/android/mms/ui/MmsSinglePageFrame;
.super Landroid/widget/FrameLayout;
.source "MmsSinglePageFrame.java"

# interfaces
.implements Lcom/android/mms/ui/DirectCallActivityInterface;
.implements Lcom/android/mms/data/Contact$UpdateListener;


# static fields
.field private static final CREATE_MODEL_TOLERANCY:Z = true

.field private static DEBUG_LOG:Z = false

.field private static final FAST_PINCH_ZOOM:Z = true

.field public static final FOLDER_NAVI_COLUMN_MSG_ID:I = 0x1

.field public static final FOLDER_NAVI_COLUMN_MSG_TYPE:I = 0x0

.field public static final FOLDER_NAVI_COLUMN_THREAD_ID:I = 0x2

.field static final LISTEN_AUDIO:I = 0x3

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x1b

.field public static final MENU_PLAY_SLIDESHOW:I = 0x64

.field public static final REQUEST_CODE_ADD_CONTACT:I = 0x1d

.field public static final RESULT_FINISH_ALL:I = 0x2

.field public static final RESULT_NORMAL:I = 0x1

.field public static final SIZE_DOWN:I = 0x1

.field public static final SIZE_UP:I = 0x0

.field private static final START_ACTIVITY_SLIDE_PLAY:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Mms/MmsSinglePageFrame"

.field static final VIEW_IMAGE:I = 0x1

.field static final VIEW_VIDEO:I = 0x2

.field public static bMultiTouch:Z

.field public static bMultiTouchFinished:Z

.field public static staticAttachment:Lcom/android/mms/model/AttachmentModel;

.field public static staticAudioModel:Lcom/android/mms/model/AudioModel;

.field public static staticClickUri:Landroid/net/Uri;

.field public static staticImageModel:Lcom/android/mms/model/ImageModel;

.field public static staticSlideIndex:I

.field public static staticVideoModel:Lcom/android/mms/model/VideoModel;


# instance fields
.field private DEBUG:Z

.field private final DEFAULT_FONT_SIZE_FOR_TEXT:F

.field private final MAX_TEXT_ZOOM_LEVEL:F

.field private final MIN_TEXT_ZOOM_LEVEL:F

.field private final POINTER_COUNT:I

.field private PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

.field private final SCROLL_MODE_KEEP_LATEST_POS:I

.field private final SCROLL_MODE_TOP:I

.field private final ZOOM_STEP:F

.field private attachmentInfoArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private attachmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private bar:Landroid/app/ActionBar;

.field private currentEmailPage:I

.field private currentScrollY:I

.field private endX:I

.field private endY:I

.field firstFingerX:F

.field firstFingerY:F

.field private firstVisibleTextViewId:I

.field private mActivity:Landroid/app/Activity;

.field private mAddContactIntent:Landroid/content/Intent;

.field private mAttachViewHeight:I

.field private mAudioInfoView:Landroid/view/View;

.field private mAudioViewHeight:I

.field mContentResolver:Landroid/content/ContentResolver;

.field private mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

.field private mEmailView:Z

.field private mEndSlideAnim:I

.field mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mIsPreview:Z

.field private mMainLinearLayout:Landroid/widget/LinearLayout;

.field private mMainScrollView:Landroid/widget/ScrollView;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgOptions:Lcom/android/mms/ui/MessageOptions;

.field private mMsgUri:Landroid/net/Uri;

.field private final mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

.field private mPageNo:Landroid/widget/TextView;

.field private mRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollHandler:Landroid/os/Handler;

.field private mSelectedText:Ljava/lang/String;

.field private mSelectedUrl:Ljava/lang/String;

.field private mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSlideShowModelLen:I

.field private mStartSlideAnim:I

.field private mSubject:Landroid/widget/TextView;

.field mTitleIcon01:Landroid/widget/ImageView;

.field mTitleIcon02:Landroid/widget/ImageView;

.field mTitleIcon03:Landroid/widget/ImageView;

.field private mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

.field private mainLinearLayout:Landroid/widget/LinearLayout;

.field private model:Lcom/android/mms/model/SlideshowModel;

.field public msgId:J

.field private scale1:F

.field private scrollY:F

.field secondFingerX_new:F

.field secondFingerX_old:F

.field secondFingerY_new:F

.field secondFingerY_old:F

.field private startX:I

.field private startY:I

.field private final stateChangeObserver:Landroid/database/ContentObserver;

.field private threadId:J

.field private totalEmailPages:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 798
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    .line 802
    sput-boolean v1, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    .line 803
    sput-boolean v1, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouchFinished:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, -0x1

    const/high16 v5, 0x41a0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 212
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 166
    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->model:Lcom/android/mms/model/SlideshowModel;

    .line 167
    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSlideShowModelLen:I

    .line 170
    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    .line 171
    iput-boolean v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mIsPreview:Z

    .line 196
    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    .line 199
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageFrame$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame$1;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->stateChangeObserver:Landroid/database/ContentObserver;

    .line 640
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageFrame$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$3;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mHandler:Landroid/os/Handler;

    .line 797
    iput-boolean v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG:Z

    .line 810
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 952
    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEFAULT_FONT_SIZE_FOR_TEXT:F

    .line 953
    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    .line 955
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerX:F

    .line 956
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerY:F

    .line 958
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_old:F

    .line 959
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_old:F

    .line 961
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_new:F

    .line 962
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_new:F

    .line 1005
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->ZOOM_STEP:F

    .line 1006
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->MAX_TEXT_ZOOM_LEVEL:F

    .line 1007
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->MIN_TEXT_ZOOM_LEVEL:F

    .line 1056
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->POINTER_COUNT:I

    .line 1125
    iput v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    .line 1126
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scrollY:F

    .line 1331
    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    .line 1332
    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->SCROLL_MODE_TOP:I

    .line 1333
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->SCROLL_MODE_KEEP_LATEST_POS:I

    .line 2054
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$12;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 2866
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "m_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

    .line 3099
    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, -0x1

    const/high16 v5, 0x41a0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 216
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 166
    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->model:Lcom/android/mms/model/SlideshowModel;

    .line 167
    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSlideShowModelLen:I

    .line 170
    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    .line 171
    iput-boolean v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mIsPreview:Z

    .line 196
    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    .line 199
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageFrame$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame$1;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->stateChangeObserver:Landroid/database/ContentObserver;

    .line 640
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageFrame$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$3;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mHandler:Landroid/os/Handler;

    .line 797
    iput-boolean v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG:Z

    .line 810
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 952
    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEFAULT_FONT_SIZE_FOR_TEXT:F

    .line 953
    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    .line 955
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerX:F

    .line 956
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerY:F

    .line 958
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_old:F

    .line 959
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_old:F

    .line 961
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_new:F

    .line 962
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_new:F

    .line 1005
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->ZOOM_STEP:F

    .line 1006
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->MAX_TEXT_ZOOM_LEVEL:F

    .line 1007
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->MIN_TEXT_ZOOM_LEVEL:F

    .line 1056
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->POINTER_COUNT:I

    .line 1125
    iput v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    .line 1126
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scrollY:F

    .line 1331
    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    .line 1332
    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->SCROLL_MODE_TOP:I

    .line 1333
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->SCROLL_MODE_KEEP_LATEST_POS:I

    .line 2054
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$12;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 2866
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "m_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

    .line 3099
    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    .line 217
    return-void
.end method

.method private LogForMotionEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 943
    const/4 v1, 0x0

    .line 944
    .local v1, size:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 946
    const/4 v0, 0x0

    .line 947
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 948
    const-string v2, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogForMotionEvent ev["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 950
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsSinglePageFrame;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsSinglePageFrame;)Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MmsSinglePageFrame;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/MmsSinglePageFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MmsSinglePageFrame;)Landroid/text/style/ForegroundColorSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MmsSinglePageFrame;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->saveAttachFile(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MmsSinglePageFrame;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MmsSinglePageFrame;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mStartSlideAnim:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MmsSinglePageFrame;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mEndSlideAnim:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MmsSinglePageFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->drawTitle_Subject()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsSinglePageFrame;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->dumpLogs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsSinglePageFrame;Lcom/android/mms/model/MediaModel;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->getContentType(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->getTypeIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->handlerIfNoActivityFound(Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MmsSinglePageFrame;Lcom/android/mms/model/MediaModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->saveAttachFile(Lcom/android/mms/model/MediaModel;)V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MmsSinglePageFrame;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/MmsSinglePageFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method private addRecipientsListener()V
    .locals 0

    .prologue
    .line 3128
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 3129
    return-void
.end method

.method private clearArrayListsForSinglePage()V
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1328
    return-void
.end method

.method private createDirectCallingManager()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/android/mms/util/DirectCallingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/mms/util/DirectCallingManager;-><init>(ILcom/android/mms/ui/DirectCallActivityInterface;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    goto :goto_0
.end method

.method private createModel()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 332
    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createModel(), msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSlideShowModelLen:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 342
    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "createModel(), [1] use mMsgItem.mSlideshow"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->model:Lcom/android/mms/model/SlideshowModel;

    .line 348
    :goto_0
    return-void

    .line 345
    :cond_0
    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "createModel(), [2] load from createFromMessageUri"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->model:Lcom/android/mms/model/SlideshowModel;

    goto :goto_0
.end method

.method public static createVideoThumbnailForManualPlay(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 1696
    const/4 v0, 0x0

    .line 1697
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1699
    .local v7, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v7, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1700
    const-wide/16 v1, -0x1

    invoke-virtual {v7, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1704
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1705
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1706
    .local v5, m:Landroid/graphics/Matrix;
    const/high16 v1, 0x4387

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1707
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1715
    .end local v5           #m:Landroid/graphics/Matrix;
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1720
    :goto_0
    return-object v0

    .line 1711
    :catch_0
    move-exception v1

    .line 1715
    :try_start_2
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1716
    :catch_1
    move-exception v1

    goto :goto_0

    .line 1714
    :catchall_0
    move-exception v1

    .line 1715
    :try_start_3
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1718
    :goto_1
    throw v1

    .line 1716
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method private createViewTitleHeader()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 420
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "createViewTitleHeader"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_0
    const v0, 0x7f0b0209

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon01:Landroid/widget/ImageView;

    .line 423
    const v0, 0x7f0b020a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon02:Landroid/widget/ImageView;

    .line 424
    const v0, 0x7f0b020b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon03:Landroid/widget/ImageView;

    .line 426
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon03:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 433
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->setTitleIcon()V

    .line 435
    :cond_1
    return-void
.end method

.method private decideModeForZoom()I
    .locals 8

    .prologue
    .line 1060
    const/4 v4, -0x1

    .line 1062
    .local v4, retVal:I
    const/4 v3, 0x0

    .line 1063
    .local v3, distancePrevious:F
    const/4 v2, 0x0

    .line 1065
    .local v2, distanceCurrent:F
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerX:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_old:F

    sub-float v0, v5, v6

    .line 1066
    .local v0, dis_x:F
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerY:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_old:F

    sub-float v1, v5, v6

    .line 1068
    .local v1, dis_y:F
    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    .line 1070
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerX:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_new:F

    sub-float v0, v5, v6

    .line 1071
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerY:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_new:F

    sub-float v1, v5, v6

    .line 1073
    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    .line 1075
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "distancePrevious="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",distanceCurrent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    :cond_0
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_old:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 1078
    const/4 v4, -0x1

    .line 1089
    :goto_0
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_1

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decideModeForZoom, retVal ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :cond_1
    return v4

    .line 1080
    :cond_2
    cmpg-float v5, v3, v2

    if-gez v5, :cond_3

    .line 1081
    const/4 v4, 0x0

    goto :goto_0

    .line 1082
    :cond_3
    cmpl-float v5, v3, v2

    if-lez v5, :cond_4

    .line 1083
    const/4 v4, 0x1

    goto :goto_0

    .line 1085
    :cond_4
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private drawTitle_Subject()V
    .locals 6

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-string v5, "mms"

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ViewTitleHeader;->ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ViewTitleHeader;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    invoke-virtual {v0}, Lcom/android/mms/ui/ViewTitleHeader;->getSenderString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->updateActionBarTitle(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSubject:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->formatMessage_smiley(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    return-void
.end method

.method private dumpLogs(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 774
    const-string v0, "Mms/MmsSinglePageFrame"

    invoke-static {v0, p1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    return-void
.end method

.method private enqueueMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 979
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->checkTextSelectorState()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 980
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageFrame"

    const-string v1, "invokeDispatchTouchEventAllChildTextArea: checkTextSelectorState()=true [RETURN]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    :cond_0
    sput-boolean v2, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    .line 1002
    :cond_1
    :goto_0
    return-void

    .line 985
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 987
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerX:F

    .line 988
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerY:F

    .line 991
    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_new:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_old:F

    .line 992
    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_new:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_old:F

    .line 995
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_new:F

    .line 996
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_new:F

    .line 999
    :cond_3
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_4

    const-string v0, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueMotionEvent() firstFingerX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",firstFingerY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :cond_4
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_5

    const-string v0, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueMotionEvent() secondFingerX_old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_old:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",secondFingerY_old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_old:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    :cond_5
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueMotionEvent() secondFingerX_new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_new:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",secondFingerY_new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_new:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private exitMmsSinglePageFrame()V
    .locals 4

    .prologue
    .line 2829
    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2830
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageFrame$16;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$16;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->markAsRead(Ljava/lang/Runnable;)V

    .line 2838
    :goto_0
    return-void

    .line 2836
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private findCurrentScrollPos()V
    .locals 3

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    .line 934
    const v0, 0x7f0b020c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->currentScrollY:I

    .line 938
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findCurrentScrollPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->currentScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :cond_1
    return-void
.end method

.method private findFirstVisibleTextView()V
    .locals 8

    .prologue
    .line 1132
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v5, :cond_0

    .line 1133
    const v5, 0x7f0b020c

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    .line 1135
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scrollY:F

    .line 1137
    const v5, 0x7f0b0043

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1138
    .local v3, mainLinear:Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1139
    .local v0, childCount:I
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_1

    const-string v5, "FAST_PINCH_ZOOM/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstVisibleTextView: childCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", scrollY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scrollY:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    :cond_1
    const/4 v2, 0x0

    .line 1142
    .local v2, i:I
    const/4 v1, 0x0

    .line 1144
    .local v1, heightSum:F
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    .line 1145
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1150
    .local v4, viewObject:Landroid/view/View;
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    if-lez v2, :cond_4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scrollY:F

    cmpl-float v5, v1, v5

    if-lez v5, :cond_4

    .line 1151
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_2

    const-string v5, "FAST_PINCH_ZOOM/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstVisibleTextView: [found case #1 ^_^] valid firstVisibleTextViewId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    :cond_2
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    .line 1167
    .end local v4           #viewObject:Landroid/view/View;
    :cond_3
    :goto_1
    return-void

    .line 1155
    .restart local v4       #viewObject:Landroid/view/View;
    :cond_4
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_5

    const-string v5, "FAST_PINCH_ZOOM/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstVisibleTextView<LOOP>, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", viewObject.getHeight()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    .line 1157
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_7

    if-lez v2, :cond_7

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scrollY:F

    cmpl-float v5, v1, v5

    if-lez v5, :cond_7

    .line 1158
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_6

    const-string v5, "FAST_PINCH_ZOOM/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstVisibleTextView: [found case #2 ^_^] valid firstVisibleTextViewId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    :cond_6
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    goto :goto_1

    .line 1162
    :cond_7
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_8

    const-string v5, "FAST_PINCH_ZOOM/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstVisibleTextView<LOOP>, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", heightSum"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1165
    .end local v4           #viewObject:Landroid/view/View;
    :cond_9
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    .line 1166
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_3

    const-string v5, "FAST_PINCH_ZOOM/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstVisibleTextView: [not found T_T] valid firstVisibleTextViewId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private getBoxUriFromBoxId(I)Landroid/net/Uri;
    .locals 4
    .parameter "boxId"

    .prologue
    .line 3010
    const-string v1, "Mms/MmsSinglePageFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBoxUriFromBoxId, boxId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3011
    const/4 v0, 0x0

    .line 3013
    .local v0, uri:Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 3039
    :goto_0
    return-object v0

    .line 3016
    :pswitch_0
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_MESSAGE_URI:Landroid/net/Uri;

    .line 3017
    goto :goto_0

    .line 3020
    :pswitch_1
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_MESSAGE_URI:Landroid/net/Uri;

    .line 3021
    goto :goto_0

    .line 3024
    :pswitch_2
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_MESSAGE_URI:Landroid/net/Uri;

    .line 3025
    goto :goto_0

    .line 3028
    :pswitch_3
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_DRAFT_MESSAGE_URI:Landroid/net/Uri;

    .line 3029
    goto :goto_0

    .line 3032
    :pswitch_4
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_PUSH_MESSAGE_URI:Landroid/net/Uri;

    .line 3033
    goto :goto_0

    .line 3013
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 591
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 592
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 594
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    if-nez v3, :cond_1

    .line 621
    if-eqz v3, :cond_0

    .line 622
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 625
    :cond_0
    :goto_0
    return-object v2

    .line 597
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 600
    new-instance v10, Lcom/android/mms/ui/MmsSinglePageFrame$2;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v10, p0, v1, v2, v5}, Lcom/android/mms/ui/MmsSinglePageFrame$2;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;IFZ)V

    .line 609
    .local v10, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 610
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 613
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_2
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 621
    :goto_1
    if-eqz v3, :cond_2

    .line 622
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v2, v0

    .line 625
    goto :goto_0

    .line 614
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 615
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Landroid/database/CursorIndexOutOfBoundsException;
    :goto_2
    :try_start_3
    const-string v1, "Mms/MmsSinglePageFrame"

    const-string v2, "CursorIndexOutOfBoundsException in getCachedMessageItem !"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 616
    const/4 v0, 0x0

    .line 618
    goto :goto_1

    .line 621
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v8           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .end local v10           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v3, :cond_3

    .line 622
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 621
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

    .line 617
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_1
    move-exception v1

    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    .line 614
    :catch_3
    move-exception v8

    goto :goto_2
.end method

.method private getContentType(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;
    .locals 3
    .parameter "model"

    .prologue
    .line 717
    const/4 v0, 0x0

    .line 719
    .local v0, contentType:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 720
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 725
    :goto_0
    return-object v0

    .line 722
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 724
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->dumpLogs(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getMessageInformationFromIntent()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 471
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 472
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    .line 473
    const-string v2, "thread_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->threadId:J

    .line 475
    const-string v2, "preview"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, previewing:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "previewLaunch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mIsPreview:Z

    .line 481
    :goto_0
    iget-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 482
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    .line 486
    :goto_1
    return-void

    .line 479
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mIsPreview:Z

    goto :goto_0

    .line 484
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method private getSubject()Ljava/lang/String;
    .locals 6

    .prologue
    .line 502
    const/4 v2, 0x0

    .line 504
    .local v2, subject:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c015e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, preSubject:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/mms/model/SlideshowModel;->getSubject(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 506
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 507
    if-eqz v2, :cond_2

    .line 508
    const-string v3, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>MMSSUBJECT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</GATE-M>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 522
    .end local v1           #preSubject:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v2

    .line 510
    .restart local v1       #preSubject:Ljava/lang/String;
    :cond_2
    const-string v3, "GATE"

    const-string v4, "<GATE-M>MMSSUBJECT:NULL</GATE-M>"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    .end local v1           #preSubject:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 520
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/MmsSinglePageFrame"

    const-string v4, "Cannot display the slide title."

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getTypeIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 735
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 736
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 737
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    return-object v0
.end method

.method private handlerIfNoActivityFound(Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V
    .locals 3
    .parameter "e"
    .parameter "intent"

    .prologue
    .line 3047
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "ActivityNotFoundException"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3056
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c011a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3059
    return-void
.end method

.method private hasTopText(Lcom/android/mms/model/SlideshowModel;)Z
    .locals 2
    .parameter "model"

    .prologue
    const/4 v0, 0x1

    .line 361
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 364
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateTitleHeader_Subject()V
    .locals 2

    .prologue
    .line 489
    const v1, 0x7f0b0205

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 490
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    .line 496
    :goto_0
    const v1, 0x7f0b0207

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSubject:Landroid/widget/TextView;

    .line 497
    const v1, 0x7f0b020e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mPageNo:Landroid/widget/TextView;

    .line 499
    return-void

    .line 493
    :cond_0
    const v1, 0x7f0b02ad

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 353
    const/16 v0, 0x5b

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAttachViewHeight:I

    .line 354
    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAttachViewHeight:I

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioViewHeight:I

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentInfoArr:Ljava/util/ArrayList;

    .line 358
    return-void
.end method

.method private initMotionEventForPinchZoom()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 966
    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerX:F

    .line 967
    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerY:F

    .line 969
    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_old:F

    .line 970
    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_old:F

    .line 972
    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_new:F

    .line 973
    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_new:F

    .line 974
    return-void
.end method

.method private invokeRefreshTextArea()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1211
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->checkTextSelectorState()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1212
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_0

    const-string v4, "kkahn/Mms/MmsSinglePageFrame"

    const-string v5, "invokeDispatchTouchEventAllChildTextArea: checkTextSelectorState()=true [RETURN]"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    :cond_0
    sput-boolean v7, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    .line 1260
    :goto_0
    return-void

    .line 1217
    :cond_1
    const v4, 0x7f0b0043

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1218
    .local v2, mainLinear:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1219
    .local v0, childCount:I
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_2

    const-string v4, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invokeRefreshTextArea: childCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    :cond_2
    const/4 v1, 0x0

    .line 1238
    .local v1, i:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    .line 1240
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1243
    .local v3, viewObject:Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    if-lez v1, :cond_4

    .line 1246
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_3

    const-string v4, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hit TextView, i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", viewObject.isFocused="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1238
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1256
    .end local v3           #viewObject:Landroid/view/View;
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v4, :cond_6

    .line 1257
    const v4, 0x7f0b020c

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    .line 1259
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scrollY:F

    float-to-int v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method private invokeResizeTextArea()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x4234

    const/high16 v9, 0x4120

    const/high16 v8, 0x3f80

    .line 1012
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->checkTextSelectorState()Z

    move-result v5

    if-ne v5, v11, :cond_2

    .line 1013
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    const-string v6, "invokeDispatchTouchEventAllChildTextArea: checkTextSelectorState()=true [RETURN]"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    :cond_0
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    .line 1054
    :cond_1
    return-void

    .line 1018
    :cond_2
    const v5, 0x7f0b0043

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1019
    .local v2, mainLinear:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1020
    .local v0, childCount:I
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_3

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invokeResizeTextArea: childCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :cond_3
    const/4 v1, 0x0

    .line 1023
    .local v1, i:I
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->decideModeForZoom()I

    move-result v4

    .line 1025
    .local v4, zoomMode:I
    if-nez v4, :cond_8

    .line 1026
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    add-float/2addr v5, v8

    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    .line 1027
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    cmpl-float v5, v5, v10

    if-lez v5, :cond_4

    .line 1028
    iput v10, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    .line 1029
    :cond_4
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_5

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIZE_UP:scale1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :cond_5
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 1041
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1044
    .local v3, viewObject:Landroid/view/View;
    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_7

    if-lez v1, :cond_7

    .line 1047
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_6

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hit TextView, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", viewObject.isFocused="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    :cond_6
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1039
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1030
    .end local v3           #viewObject:Landroid/view/View;
    :cond_8
    if-ne v4, v11, :cond_1

    .line 1031
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    sub-float/2addr v5, v8

    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    .line 1032
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    cmpg-float v5, v5, v9

    if-gez v5, :cond_9

    .line 1033
    iput v9, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    .line 1034
    :cond_9
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_5

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIZE_DOWN:scale1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private invokeResizeTextAreaOnlySelectedItem()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x4234

    const/high16 v8, 0x4120

    const/high16 v7, 0x3f80

    .line 1170
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->checkTextSelectorState()Z

    move-result v4

    if-ne v4, v10, :cond_2

    .line 1171
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_0

    const-string v4, "kkahn/Mms/MmsSinglePageFrame"

    const-string v5, "invokeResizeTextAreaOnlySelectedItem: checkTextSelectorState()=true [RETURN]"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    :cond_0
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    .line 1208
    :cond_1
    :goto_0
    return-void

    .line 1176
    :cond_2
    const v4, 0x7f0b0043

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1177
    .local v1, mainLinear:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1178
    .local v0, childCount:I
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_3

    const-string v4, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invokeResizeTextAreaOnlySelectedItem: childCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", firstVisibleTextViewId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :cond_3
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    if-ltz v4, :cond_1

    .line 1183
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->decideModeForZoom()I

    move-result v3

    .line 1185
    .local v3, zoomMode:I
    if-nez v3, :cond_7

    .line 1186
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    add-float/2addr v4, v7

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    .line 1187
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_4

    .line 1188
    iput v9, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    .line 1189
    :cond_4
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_5

    const-string v4, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIZE_UP:scale1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    :cond_5
    :goto_1
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1202
    .local v2, viewObject:Landroid/view/View;
    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    if-lez v4, :cond_1

    .line 1205
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_6

    const-string v4, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invokeResizeTextAreaOnlySelectedItem: firstVisibleTextViewId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", scale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :cond_6
    check-cast v2, Landroid/widget/TextView;

    .end local v2           #viewObject:Landroid/view/View;
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 1190
    :cond_7
    if-ne v3, v10, :cond_1

    .line 1191
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    sub-float/2addr v4, v7

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    .line 1192
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_8

    .line 1193
    iput v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    .line 1194
    :cond_8
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_5

    const-string v4, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIZE_DOWN:scale1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isValidSlideShow()Z
    .locals 4

    .prologue
    .line 319
    const/4 v0, 0x1

    .line 320
    .local v0, retVal:Z
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v1, :cond_3

    .line 321
    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "Mms/MmsSinglePageFrame"

    const-string v2, "isValidSlideShow(),[1] mMsgItem=null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_0
    const/4 v0, 0x0

    .line 327
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v1, :cond_2

    const-string v1, "Mms/MmsSinglePageFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidSlideShow(),[3] retVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_2
    return v0

    .line 323
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v1, :cond_1

    .line 324
    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v1, :cond_4

    const-string v1, "Mms/MmsSinglePageFrame"

    const-string v2, "isValidSlideShow(),[2] mMsgItem.mSlideshow=null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveSmsView(Z)V
    .locals 19
    .parameter "bFlicktoNext"

    .prologue
    .line 2702
    const/4 v12, 0x0

    .line 2703
    .local v12, msgCount:I
    const/16 v17, 0x0

    .line 2704
    .local v17, notiIndMmsCount:I
    const/4 v9, 0x0

    .line 2705
    .local v9, curPos:I
    const/16 v16, 0x0

    .line 2710
    .local v16, nextPos:I
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->threadId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2711
    .local v3, contentThreadUri:Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 2824
    :cond_0
    :goto_0
    return-void

    .line 2714
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2716
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 2719
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 2721
    const/4 v2, 0x1

    if-ne v12, v2, :cond_2

    .line 2722
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2726
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2727
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    if-ge v9, v12, :cond_3

    .line 2728
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2737
    :cond_3
    move/from16 v16, v9

    .line 2739
    if-eqz p1, :cond_6

    .line 2740
    if-nez v9, :cond_5

    .line 2741
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    .line 2742
    add-int/lit8 v16, v12, -0x1

    .line 2747
    :goto_2
    const v18, 0x7f050005

    .line 2748
    .local v18, startSlideAnim:I
    const v10, 0x7f050006

    .line 2761
    .local v10, endSlideAnim:I
    :goto_3
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2762
    .local v15, nextMsgType:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2768
    .local v13, nextMsgId:J
    :goto_4
    const-string v2, "mms"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2769
    const/16 v2, 0xf

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v4, 0x82

    if-ne v2, v4, :cond_b

    .line 2770
    if-eqz p1, :cond_9

    .line 2771
    if-nez v16, :cond_8

    .line 2772
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    .line 2773
    add-int/lit8 v16, v12, -0x1

    .line 2787
    :goto_5
    add-int/lit8 v17, v17, 0x1

    .line 2788
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2789
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    goto :goto_4

    .line 2731
    .end local v10           #endSlideAnim:I
    .end local v13           #nextMsgId:J
    .end local v15           #nextMsgType:Ljava/lang/String;
    .end local v18           #startSlideAnim:I
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 2732
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2744
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 2745
    add-int/lit8 v16, v16, -0x1

    goto :goto_2

    .line 2750
    :cond_6
    add-int/lit8 v2, v12, -0x1

    if-ne v9, v2, :cond_7

    .line 2751
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2752
    const/16 v16, 0x0

    .line 2757
    :goto_6
    const v18, 0x7f050003

    .line 2758
    .restart local v18       #startSlideAnim:I
    const v10, 0x7f050004

    .restart local v10       #endSlideAnim:I
    goto :goto_3

    .line 2754
    .end local v10           #endSlideAnim:I
    .end local v18           #startSlideAnim:I
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 2755
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 2775
    .restart local v10       #endSlideAnim:I
    .restart local v13       #nextMsgId:J
    .restart local v15       #nextMsgType:Ljava/lang/String;
    .restart local v18       #startSlideAnim:I
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 2776
    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    .line 2779
    :cond_9
    add-int/lit8 v2, v12, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_a

    .line 2780
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2781
    const/16 v16, 0x0

    goto :goto_5

    .line 2783
    :cond_a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 2784
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 2794
    :cond_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2796
    add-int/lit8 v2, v12, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_0

    .line 2798
    const/4 v11, 0x0

    .line 2799
    .local v11, intent:Landroid/content/Intent;
    const-string v2, "sms"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2800
    new-instance v11, Landroid/content/Intent;

    .end local v11           #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v11, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2801
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v11, v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2802
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->threadId:J

    invoke-virtual {v11, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2809
    :cond_c
    :goto_7
    move/from16 v0, v16

    if-eq v0, v9, :cond_e

    .line 2810
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mIntent:Landroid/content/Intent;

    .line 2811
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MmsSinglePageFrame;->mStartSlideAnim:I

    .line 2812
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mEndSlideAnim:I

    .line 2813
    new-instance v2, Lcom/android/mms/ui/MmsSinglePageFrame$15;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mms/ui/MmsSinglePageFrame$15;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->markAsRead(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2803
    :cond_d
    const-string v2, "mms"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2804
    new-instance v11, Landroid/content/Intent;

    .end local v11           #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-direct {v11, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2805
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v11, v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2806
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->threadId:J

    invoke-virtual {v11, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    .line 2820
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 2822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    move/from16 v0, v18

    invoke-virtual {v2, v0, v10}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method

.method private navigateMsgFolderViewMode(Z)V
    .locals 21
    .parameter "bFlicktoNext"

    .prologue
    .line 2874
    const/4 v14, 0x0

    .line 2875
    .local v14, msgCount:I
    const/16 v19, 0x0

    .line 2876
    .local v19, notiIndMmsCount:I
    const/4 v10, 0x0

    .line 2877
    .local v10, curPos:I
    const/16 v18, 0x0

    .line 2882
    .local v18, nextPos:I
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->getBoxId()I

    move-result v8

    .line 2883
    .local v8, boxId:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/MmsSinglePageFrame;->getBoxUriFromBoxId(I)Landroid/net/Uri;

    move-result-object v3

    .line 2884
    .local v3, contentThreadUri:Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 3007
    :cond_0
    :goto_0
    return-void

    .line 2887
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2889
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 2892
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 2894
    const/4 v2, 0x1

    if-ge v14, v2, :cond_2

    .line 2895
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2899
    :cond_2
    const/4 v2, 0x1

    if-ne v14, v2, :cond_3

    .line 2900
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2904
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2905
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    if-ge v10, v14, :cond_4

    .line 2907
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_5

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2917
    :cond_4
    move/from16 v18, v10

    .line 2919
    if-eqz p1, :cond_7

    .line 2920
    if-nez v10, :cond_6

    .line 2921
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 2922
    add-int/lit8 v18, v14, -0x1

    .line 2927
    :goto_2
    const v20, 0x7f050005

    .line 2928
    .local v20, startSlideAnim:I
    const v11, 0x7f050006

    .line 2941
    .local v11, endSlideAnim:I
    :goto_3
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2942
    .local v17, nextMsgType:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 2948
    .local v15, nextMsgId:J
    const/4 v13, -0x1

    .line 2949
    .local v13, mmsMsgType:I
    :goto_4
    const-string v2, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2950
    const-string v2, "m_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2951
    const-string v2, "Mms/MmsSinglePageFrame"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mmsMsgType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " /MESSAGE_TYPE_NOTIFICATION_IND:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x82

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    const/16 v2, 0x82

    if-ne v13, v2, :cond_c

    .line 2953
    if-eqz p1, :cond_a

    .line 2954
    if-nez v18, :cond_9

    .line 2955
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 2956
    add-int/lit8 v18, v14, -0x1

    .line 2970
    :goto_5
    add-int/lit8 v19, v19, 0x1

    .line 2971
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2972
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    goto :goto_4

    .line 2911
    .end local v11           #endSlideAnim:I
    .end local v13           #mmsMsgType:I
    .end local v15           #nextMsgId:J
    .end local v17           #nextMsgType:Ljava/lang/String;
    .end local v20           #startSlideAnim:I
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 2912
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 2924
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 2925
    add-int/lit8 v18, v18, -0x1

    goto :goto_2

    .line 2930
    :cond_7
    add-int/lit8 v2, v14, -0x1

    if-ne v10, v2, :cond_8

    .line 2931
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2932
    const/16 v18, 0x0

    .line 2937
    :goto_6
    const v20, 0x7f050003

    .line 2938
    .restart local v20       #startSlideAnim:I
    const v11, 0x7f050004

    .restart local v11       #endSlideAnim:I
    goto :goto_3

    .line 2934
    .end local v11           #endSlideAnim:I
    .end local v20           #startSlideAnim:I
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 2935
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 2958
    .restart local v11       #endSlideAnim:I
    .restart local v13       #mmsMsgType:I
    .restart local v15       #nextMsgId:J
    .restart local v17       #nextMsgType:Ljava/lang/String;
    .restart local v20       #startSlideAnim:I
    :cond_9
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 2959
    add-int/lit8 v18, v18, -0x1

    goto :goto_5

    .line 2962
    :cond_a
    add-int/lit8 v2, v14, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_b

    .line 2963
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2964
    const/16 v18, 0x0

    goto :goto_5

    .line 2966
    :cond_b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 2967
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 2977
    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2979
    add-int/lit8 v2, v14, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_0

    .line 2981
    const/4 v12, 0x0

    .line 2982
    .local v12, intent:Landroid/content/Intent;
    const-string v2, "sms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2983
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v12, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2984
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2985
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2992
    :cond_d
    :goto_7
    move/from16 v0, v18

    if-eq v0, v10, :cond_f

    .line 2993
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mIntent:Landroid/content/Intent;

    .line 2994
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MmsSinglePageFrame;->mStartSlideAnim:I

    .line 2995
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mEndSlideAnim:I

    .line 2996
    new-instance v2, Lcom/android/mms/ui/MmsSinglePageFrame$18;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mms/ui/MmsSinglePageFrame$18;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->markAsRead(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2986
    :cond_e
    const-string v2, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2987
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-direct {v12, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2988
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2989
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    .line 3003
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 3005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    move/from16 v0, v20

    invoke-virtual {v2, v0, v11}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method

.method private presentAttachmentList()V
    .locals 4

    .prologue
    .line 1521
    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->findAttachmentList(J)Ljava/util/ArrayList;

    .line 1524
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1525
    .local v0, lenOfAttah:I
    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presentAttachmentList:lenOfAttah="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    :cond_0
    if-lez v0, :cond_1

    .line 1528
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->addAttachmentListView(Ljava/util/ArrayList;)V

    .line 1530
    :cond_1
    return-void
.end method

.method private presentModel(Lcom/android/mms/model/SlideshowModel;)V
    .locals 12
    .parameter "mSlideShowModel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1363
    const/4 v7, 0x0

    .line 1364
    .local v7, slidePageIndex:I
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v8

    .line 1365
    .local v8, slideTotalNum:I
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v9, :cond_0

    const-string v9, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:presentModel() slideTotalNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_e

    .line 1369
    invoke-virtual {p1, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    .line 1370
    .local v6, slideModel:Lcom/android/mms/model/SlideModel;
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v9, :cond_1

    const-string v9, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:[1]slideModel:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    :cond_1
    const/4 v3, 0x0

    .line 1379
    .local v3, mTextModel:Lcom/android/mms/model/TextModel;
    const/4 v2, 0x0

    .line 1380
    .local v2, mImageModel:Lcom/android/mms/model/ImageModel;
    const/4 v4, 0x0

    .line 1381
    .local v4, mVideoModel:Lcom/android/mms/model/VideoModel;
    const/4 v1, 0x0

    .line 1383
    .local v1, mAudioModel:Lcom/android/mms/model/AudioModel;
    if-eqz v6, :cond_6

    .line 1384
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/MediaModel;

    .line 1385
    .local v5, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v3, v5

    .line 1386
    check-cast v3, Lcom/android/mms/model/TextModel;

    goto :goto_1

    .line 1387
    :cond_3
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v2, v5

    .line 1388
    check-cast v2, Lcom/android/mms/model/ImageModel;

    goto :goto_1

    .line 1389
    :cond_4
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v4, v5

    .line 1390
    check-cast v4, Lcom/android/mms/model/VideoModel;

    goto :goto_1

    .line 1391
    :cond_5
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v1, v5

    .line 1392
    check-cast v1, Lcom/android/mms/model/AudioModel;

    goto :goto_1

    .line 1398
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_6
    if-eqz v2, :cond_8

    .line 1399
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v9, :cond_7

    const-string v9, "kkahn/Mms/MmsSinglePageFrame"

    const-string v10, "mImageModel"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    :cond_7
    invoke-virtual {p0, v2, v7}, Lcom/android/mms/ui/MmsSinglePageFrame;->presentImage(Lcom/android/mms/model/ImageModel;I)V

    .line 1402
    :cond_8
    if-eqz v4, :cond_a

    .line 1403
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v9, :cond_9

    const-string v9, "kkahn/Mms/MmsSinglePageFrame"

    const-string v10, "mVideoModel"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    :cond_9
    invoke-virtual {p0, v4, v7}, Lcom/android/mms/ui/MmsSinglePageFrame;->presentVideo(Lcom/android/mms/model/VideoModel;I)V

    .line 1406
    :cond_a
    if-eqz v3, :cond_c

    .line 1407
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v9, :cond_b

    const-string v9, "kkahn/Mms/MmsSinglePageFrame"

    const-string v10, "mTextModel"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    :cond_b
    invoke-virtual {p0, v3, v7}, Lcom/android/mms/ui/MmsSinglePageFrame;->presentText(Lcom/android/mms/model/TextModel;I)V

    .line 1411
    :cond_c
    if-eqz v1, :cond_d

    .line 1412
    const/4 v9, 0x1

    invoke-virtual {p0, v1, v9}, Lcom/android/mms/ui/MmsSinglePageFrame;->presentAudioInfoOnly(Lcom/android/mms/model/AudioModel;Z)V

    .line 1368
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1415
    .end local v1           #mAudioModel:Lcom/android/mms/model/AudioModel;
    .end local v2           #mImageModel:Lcom/android/mms/model/ImageModel;
    .end local v3           #mTextModel:Lcom/android/mms/model/TextModel;
    .end local v4           #mVideoModel:Lcom/android/mms/model/VideoModel;
    .end local v6           #slideModel:Lcom/android/mms/model/SlideModel;
    :cond_e
    return-void
.end method

.method private presentSlide_inOnePage(Lcom/android/mms/model/SlideshowModel;I)V
    .locals 5
    .parameter "mSlideShowModel"
    .parameter "len"

    .prologue
    .line 1272
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->clearArrayListsForSinglePage()V

    .line 1275
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->addMmsDetailInfoToSlidePresenter()V

    .line 1281
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->presentModel(Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->presentAttachmentList()V

    .line 1293
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mScrollHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/MmsSinglePageFrame$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$4;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1300
    return-void

    .line 1282
    :catch_0
    move-exception v0

    .line 1284
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Mms/MmsSinglePageFrame"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1285
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c001b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private removeRecipientsListener()V
    .locals 0

    .prologue
    .line 3132
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 3133
    return-void
.end method

.method private saveAttachFile(Landroid/net/Uri;)V
    .locals 1
    .parameter "partUri"

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/samsung/mms/content/MmsPartExport;->savePart(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 2318
    return-void
.end method

.method private saveAttachFile(Lcom/android/mms/model/MediaModel;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 2322
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2323
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/drm/DrmWrapper;->getOriginalUri()Landroid/net/Uri;

    move-result-object v0

    .line 2327
    .local v0, partUri:Landroid/net/Uri;
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->saveAttachFile(Landroid/net/Uri;)V

    .line 2328
    return-void

    .line 2325
    .end local v0           #partUri:Landroid/net/Uri;
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #partUri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public static setAttachment(Lcom/android/mms/model/AttachmentModel;)V
    .locals 0
    .parameter "attachmentModel"

    .prologue
    .line 1580
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticAttachment:Lcom/android/mms/model/AttachmentModel;

    .line 1581
    return-void
.end method

.method public static setAudioModel(Lcom/android/mms/model/AudioModel;)V
    .locals 2
    .parameter "audioModel"

    .prologue
    .line 1575
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageFrame"

    const-string v1, "setAudioModel"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    :cond_0
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticAudioModel:Lcom/android/mms/model/AudioModel;

    .line 1577
    return-void
.end method

.method public static setClickUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 1560
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClickUri:uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    :cond_0
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticClickUri:Landroid/net/Uri;

    .line 1562
    return-void
.end method

.method public static setImageModel(Lcom/android/mms/model/ImageModel;)V
    .locals 0
    .parameter "imageModel"

    .prologue
    .line 1584
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticImageModel:Lcom/android/mms/model/ImageModel;

    .line 1585
    return-void
.end method

.method private declared-synchronized setIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "setIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static setSlideIndex(I)V
    .locals 3
    .parameter "slideindex"

    .prologue
    .line 1565
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlideIndex:slideindex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    :cond_0
    sput p0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticSlideIndex:I

    .line 1567
    return-void
.end method

.method public static setVideoModel(Lcom/android/mms/model/VideoModel;)V
    .locals 2
    .parameter "videoModel"

    .prologue
    .line 1570
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageFrame"

    const-string v1, "setVideoModel"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    :cond_0
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticVideoModel:Lcom/android/mms/model/VideoModel;

    .line 1572
    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 226
    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivity(),intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 228
    return-void
.end method

.method private touchListener(IIII)V
    .locals 7
    .parameter "startTouchX"
    .parameter "endTouchX"
    .parameter "startTouchY"
    .parameter "endTouchY"

    .prologue
    const-wide/16 v5, 0x0

    .line 2647
    const/4 v0, 0x0

    .line 2648
    .local v0, bFlicktoNext:Z
    sub-int v1, p1, p2

    .line 2649
    .local v1, movedX:I
    sub-int v2, p3, p4

    .line 2651
    .local v2, movedY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x96

    if-le v3, v4, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_2

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    if-nez v3, :cond_2

    .line 2655
    if-gez v1, :cond_1

    .line 2658
    const/4 v0, 0x1

    .line 2674
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsViewer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2675
    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->threadId:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 2677
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2678
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 2680
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->navigateMsgFolderViewMode(Z)V

    .line 2699
    :cond_0
    :goto_1
    return-void

    .line 2661
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2669
    :cond_2
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    goto :goto_1

    .line 2683
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->moveSmsView(Z)V

    goto :goto_1

    .line 2687
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->moveSmsView(Z)V

    goto :goto_1
.end method

.method private updateActionBarTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->bar:Landroid/app/ActionBar;

    .line 403
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->bar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->bar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 407
    :cond_0
    return-void
.end method

.method private updateFontsizeForTextAreaVolumeKey()V
    .locals 8

    .prologue
    .line 2617
    const v5, 0x7f0b0043

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 2618
    .local v3, mainLinear:Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 2619
    .local v0, childCount:I
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshFontsizeForTextAreaVolumeKey: childCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2620
    :cond_0
    const/4 v2, 0x0

    .line 2623
    .local v2, i:I
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v5

    float-to-int v1, v5

    .line 2626
    .local v1, fontSize:I
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2628
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2631
    .local v4, viewObject:Landroid/view/View;
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    if-lez v2, :cond_2

    .line 2634
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_1

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hit TextView, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    :cond_1
    check-cast v4, Landroid/widget/TextView;

    .end local v4           #viewObject:Landroid/view/View;
    const/4 v5, 0x1

    int-to-float v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2626
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2642
    :cond_3
    return-void
.end method

.method private updatePageNo()V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mPageNo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->currentEmailPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->totalEmailPages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    return-void
.end method

.method private updateTitleIcon()V
    .locals 2

    .prologue
    .line 465
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "updateTitleIcon"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->createViewTitleHeader()V

    .line 467
    return-void
.end method


# virtual methods
.method public addAttachmentListView(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2141
    .local p1, attachmentListSaved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "kkahn/Mms/MmsSinglePageFrame"

    const-string v4, "addAttachmentListView"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    :cond_0
    if-eqz p1, :cond_1

    .line 2146
    move-object v0, p1

    .line 2147
    .local v0, attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const/4 v1, 0x0

    .line 2148
    .local v1, index:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2149
    .local v2, size:I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2150
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;)V

    .line 2149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2153
    .end local v0           #attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    .end local v1           #index:I
    .end local v2           #size:I
    :cond_1
    return-void
.end method

.method public addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;)V
    .locals 18
    .parameter "attachmentSaved"

    .prologue
    .line 2156
    sget-boolean v13, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v13, :cond_0

    const-string v13, "kkahn/Mms/MmsSinglePageFrame"

    const-string v14, "addAttachmentOneView"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    :cond_0
    move-object/from16 v3, p1

    .line 2160
    .local v3, attachment:Lcom/android/mms/model/AttachmentModel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 2161
    .local v7, factory:Landroid/view/LayoutInflater;
    new-instance v4, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2162
    .local v4, attachmentInfo:Landroid/view/View;
    const v13, 0x7f040014

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2166
    const v13, 0x7f0b0036

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2167
    .local v2, attachName:Landroid/widget/TextView;
    const v13, 0x7f0b0035

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2171
    .local v1, attachImage:Landroid/widget/ImageView;
    const v13, 0x7f0b0038

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    .line 2175
    .local v12, saveButton:Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2176
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v10, v13, -0x1

    .line 2177
    .local v10, lastIndex_attachmentInfoArr:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 2180
    .local v8, height:I
    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v11

    .line 2183
    .local v11, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2184
    .local v6, extension:Ljava/lang/String;
    const/16 v13, 0x2e

    invoke-virtual {v11, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 2185
    .local v9, index:I
    if-ltz v9, :cond_1

    .line 2186
    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 2188
    :cond_1
    const-string v13, "dm"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2189
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    invoke-virtual {v11, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".dcf"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2193
    :cond_2
    const-string v13, "cid:"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "Cid:"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2194
    :cond_3
    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 2197
    :cond_4
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2200
    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 2201
    .local v5, contentType:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    .line 2202
    const-string v13, "text/x-vCard"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "text/x-vcard"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2203
    :cond_5
    const v13, 0x7f0200e5

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2217
    :cond_6
    :goto_0
    const v13, 0x7f0b0043

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 2219
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAttachViewHeight:I

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2223
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG:Z

    if-eqz v13, :cond_7

    .line 2224
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    const/high16 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2227
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 2230
    invoke-static {v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->setAttachment(Lcom/android/mms/model/AttachmentModel;)V

    .line 2236
    new-instance v13, Lcom/android/mms/ui/MmsSinglePageFrame$13;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/mms/ui/MmsSinglePageFrame$13;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2305
    new-instance v13, Lcom/android/mms/ui/MmsSinglePageFrame$14;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/mms/ui/MmsSinglePageFrame$14;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2314
    return-void

    .line 2204
    :cond_8
    const-string v13, "text/x-vCalendar"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2205
    const v13, 0x7f0200e4

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2206
    :cond_9
    const-string v13, "text/x-vNote"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 2207
    const v13, 0x7f0200e6

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 2208
    :cond_a
    const-string v13, "text/x-vtodo"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 2209
    const v13, 0x7f0200e8

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 2211
    :cond_b
    const v13, 0x7f0200e3

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public addAudioInfo(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;Lcom/android/mms/model/AudioModel;)V
    .locals 13
    .parameter "audio"
    .parameter "name"
    .parameter
    .parameter "audioModel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/android/mms/model/AudioModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1824
    .local p3, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1828
    .local v3, factory:Landroid/view/LayoutInflater;
    const v8, 0x7f040014

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    .line 1829
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1833
    .local v4, height:I
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    const v9, 0x7f0b0036

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1834
    .local v1, audioName:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    const v9, 0x7f0b0035

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1835
    .local v0, audioImage:Landroid/widget/ImageView;
    const v8, 0x7f0200d8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1843
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    const v9, 0x7f0b0038

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 1849
    .local v7, saveButton:Landroid/widget/ImageButton;
    const/4 v2, 0x0

    .line 1850
    .local v2, extension:Ljava/lang/String;
    const/16 v8, 0x2e

    invoke-virtual {p2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 1851
    .local v5, index:I
    if-ltz v5, :cond_0

    .line 1852
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1854
    :cond_0
    const-string v8, "dm"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1855
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {p2, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".dcf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1859
    :cond_1
    const-string v8, "cid:"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "Cid:"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1860
    :cond_2
    const/4 v8, 0x4

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 1863
    :cond_3
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1865
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v8, :cond_4

    .line 1866
    const v8, 0x7f0b0043

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 1868
    :cond_4
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainLinearLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    iget v12, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioViewHeight:I

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1870
    iget-boolean v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG:Z

    if-eqz v8, :cond_5

    .line 1871
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    const/high16 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1874
    :cond_5
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 1876
    .local v6, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x3f80

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1877
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1878
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1880
    invoke-static {p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->setClickUri(Landroid/net/Uri;)V

    .line 1883
    invoke-static/range {p4 .. p4}, Lcom/android/mms/ui/MmsSinglePageFrame;->setAudioModel(Lcom/android/mms/model/AudioModel;)V

    .line 1886
    new-instance v8, Lcom/android/mms/ui/MmsSinglePageFrame$10;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$10;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1993
    new-instance v8, Lcom/android/mms/ui/MmsSinglePageFrame$11;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$11;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2003
    return-void
.end method

.method public addMmsDetailInfoToSlidePresenter()V
    .locals 5

    .prologue
    .line 1441
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "kkahn/Mms/MmsSinglePageFrame"

    const-string v4, "addMmsDetailInfoToSlidePresenter"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    :cond_0
    const-string v0, ""

    .line 1444
    .local v0, displayText:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageFrame;->viewMessageDetail(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1445
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1448
    .local v1, mTextViewDetail:Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1460
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1470
    const v3, 0x7f0b0043

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1471
    .local v2, mainLinear:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1473
    return-void
.end method

.method public checkTextSelectorState()Z
    .locals 8

    .prologue
    .line 1095
    const/4 v3, 0x0

    .line 1097
    .local v3, retVal:Z
    const v5, 0x7f0b0043

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1098
    .local v2, mainLinear:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1099
    .local v0, childCount:I
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkTextSelectorState: childCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    :cond_0
    const/4 v1, 0x0

    .line 1102
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 1104
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1107
    .local v4, viewObject:Landroid/view/View;
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    if-lez v1, :cond_3

    .line 1110
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_1

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hit TextView, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1115
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_2

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hit TextView, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "isSelected() TRUE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :cond_2
    const/4 v3, 0x1

    .line 1102
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1120
    .end local v4           #viewObject:Landroid/view/View;
    :cond_4
    return v3
.end method

.method public close()V
    .locals 1

    .prologue
    .line 3105
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v0, :cond_0

    .line 3106
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 3107
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 847
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v3, v4

    .line 848
    .local v3, xPos:I
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v4

    if-ne v4, v10, :cond_6

    move v1, v5

    .line 850
    .local v1, isSplit:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 851
    const/high16 v4, -0x3d10

    invoke-virtual {p1, v9, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 852
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/BoxListViewActivity;->getXpositon()I

    move-result v2

    .line 853
    .local v2, offset:I
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_0

    const-string v4, "Mms/MmsSinglePageFrame"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[dispatchTouchEvent], offset="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", xPos ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :cond_0
    sub-int v4, v3, v2

    if-lez v4, :cond_1

    .line 855
    int-to-float v4, v2

    sub-float v4, v9, v4

    invoke-virtual {p1, v4, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 859
    .end local v2           #offset:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 861
    .local v0, action:I
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_2

    const-string v4, "Mms/MmsSinglePageFrame"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchTouchEvent(),action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_2
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    .line 921
    :cond_3
    :goto_1
    :pswitch_0
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_4

    const-string v4, "Mms/MmsSinglePageFrame"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchTouchEvent(), bMultiTouch="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bMultiTouchFinished="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouchFinished:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :cond_4
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    if-eq v4, v5, :cond_5

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouchFinished:Z

    if-ne v4, v5, :cond_10

    .line 923
    :cond_5
    sput-boolean v6, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouchFinished:Z

    move v4, v5

    .line 928
    :goto_2
    return v4

    .end local v0           #action:I
    .end local v1           #isSplit:Z
    :cond_6
    move v1, v6

    .line 848
    goto/16 :goto_0

    .line 866
    .restart local v0       #action:I
    .restart local v1       #isSplit:Z
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->startX:I

    .line 867
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->startY:I

    goto :goto_1

    .line 872
    :pswitch_2
    sput-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    .line 873
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_7

    const-string v4, "Mms/MmsSinglePageFrame"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ACTION_POINTER_DOWN], bMultiTouch="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :cond_7
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_8

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    .line 875
    :cond_8
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->initMotionEventForPinchZoom()V

    .line 878
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->findFirstVisibleTextView()V

    goto :goto_1

    .line 884
    :pswitch_3
    sput-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouchFinished:Z

    .line 885
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_9

    const-string v4, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ACTION_POINTER_UP], bMultiTouch="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    :cond_9
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_a

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    .line 888
    :cond_a
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->invokeRefreshTextArea()V

    goto/16 :goto_1

    .line 892
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->endX:I

    .line 893
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->endY:I

    .line 894
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_b

    const-string v4, "Mms/MmsSinglePageFrame"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ACTION_UP]startY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->startY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :cond_b
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_c

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    .line 897
    :cond_c
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-eq v4, v5, :cond_d

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-ne v4, v10, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    if-nez v4, :cond_3

    .line 899
    :cond_d
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->startX:I

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->endX:I

    iget v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->startY:I

    iget v9, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->endY:I

    invoke-direct {p0, v4, v7, v8, v9}, Lcom/android/mms/ui/MmsSinglePageFrame;->touchListener(IIII)V

    goto/16 :goto_1

    .line 905
    :pswitch_5
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_e

    const-string v4, "Mms/MmsSinglePageFrame"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ACTION_MOVE],bMultiTouch="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :cond_e
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_f

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    .line 907
    :cond_f
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    if-ne v4, v5, :cond_3

    .line 908
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->enqueueMotionEvent(Landroid/view/MotionEvent;)V

    .line 910
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->invokeResizeTextAreaOnlySelectedItem()V

    goto/16 :goto_1

    .line 928
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto/16 :goto_2

    .line 864
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public findAttachmentList(J)Ljava/util/ArrayList;
    .locals 3
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/mms/content/MmsPartExport;->getMmsAttachmentsAsModelList(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentList:Ljava/util/ArrayList;

    .line 1536
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1539
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageFrame"

    const-string v1, "findAttachmentList > No Attachment"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3075
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 3076
    .local v2, phoneNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 3078
    .local v1, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3079
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 3080
    .local v0, contact:Lcom/android/mms/data/Contact;
    if-eqz v0, :cond_0

    .line 3081
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3084
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    return-object v1
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3067
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->isAvailableDirectCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3068
    const/4 v0, 0x0

    .line 3070
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mRecipients:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hideSipForDirectCall()V
    .locals 0

    .prologue
    .line 3156
    return-void
.end method

.method public isAvailableDirectCall()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3089
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3096
    :cond_0
    :goto_0
    return v0

    .line 3092
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3096
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized markAsRead(Ljava/lang/Runnable;)V
    .locals 7
    .parameter "callback"

    .prologue
    .line 2841
    monitor-enter p0

    :try_start_0
    const-string v2, "Mms/MmsSinglePageFrame"

    const-string v3, "markAsRead()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_0

    .line 2843
    iget-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2844
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2845
    .local v0, msgUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 2846
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "read"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2847
    const-string v2, "seen"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2849
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const/16 v5, 0x80

    new-instance v6, Lcom/android/mms/ui/MmsSinglePageFrame$17;

    invoke-direct {v6, p0, v0, v1, p1}, Lcom/android/mms/ui/MmsSinglePageFrame$17;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2863
    .end local v0           #msgUri:Landroid/net/Uri;
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2861
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2841
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2430
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 2432
    packed-switch p2, :pswitch_data_0

    .line 2439
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->updateFontsizeForTextAreaVolumeKey()V

    .line 2444
    :cond_0
    :goto_0
    return-void

    .line 2436
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 1305
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->findCurrentScrollPos()V

    .line 1309
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mScrollHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/MmsSinglePageFrame$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$5;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1315
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1316
    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> SlideShowActivity -- OnConfiguration Changed to LANDSCAPE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    :cond_0
    :goto_0
    return-void

    .line 1318
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1319
    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> SlideShowActivity -- OnConfiguration Changed to PORTRAIT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 9
    .parameter "icicle"
    .parameter "intent"

    .prologue
    .line 231
    const-string v0, "onCreate()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->dumpLogs(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->setIntent(Landroid/content/Intent;)V

    .line 238
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 239
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mScrollHandler:Landroid/os/Handler;

    .line 243
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->getMessageInformationFromIntent()V

    .line 244
    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-string v3, "mms"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 246
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 299
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 253
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-string v6, "mms"

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    .line 259
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->updateFailedFlag()V

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mContentResolver:Landroid/content/ContentResolver;

    .line 264
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->isValidSlideShow()Z

    move-result v0

    if-nez v0, :cond_4

    .line 265
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 255
    :cond_2
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-string v6, "mms"

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_1

    .line 257
    :cond_3
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-string v6, "mms"

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_1

    .line 270
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->inflateTitleHeader_Subject()V

    .line 271
    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mainLinearLayout:Landroid/widget/LinearLayout;

    .line 272
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSlideShowModelLen:I

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no of slides "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSlideShowModelLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->dumpLogs(Ljava/lang/String;)V

    .line 282
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->createModel()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->init()V

    .line 294
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->model:Lcom/android/mms/model/SlideshowModel;

    iget v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSlideShowModelLen:I

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->presentSlide_inOnePage(Lcom/android/mms/model/SlideshowModel;I)V

    .line 295
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    .line 297
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getMmsRecipients(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mRecipients:Ljava/util/ArrayList;

    .line 298
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->createDirectCallingManager()V

    goto/16 :goto_0

    .line 283
    :catch_0
    move-exception v8

    .line 284
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "Cannot present the slide show."

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 3110
    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 3112
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2333
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    const-string v5, "Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onKeyDown(),keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2392
    :goto_0
    return v3

    .line 2339
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2343
    :pswitch_0
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2349
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2350
    .local v2, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2352
    .local v1, idxMsgPreferFontSize:I
    add-int/lit8 v1, v1, 0x1

    .line 2354
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2355
    .local v0, editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2356
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2359
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->updateFontsizeForTextAreaVolumeKey()V

    move v3, v4

    .line 2360
    goto :goto_0

    .end local v0           #editprefs:Landroid/content/SharedPreferences$Editor;
    .end local v1           #idxMsgPreferFontSize:I
    .end local v2           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_2
    move v3, v4

    .line 2363
    goto :goto_0

    .line 2368
    :pswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2374
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2375
    .restart local v2       #sharedPrefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2377
    .restart local v1       #idxMsgPreferFontSize:I
    add-int/lit8 v1, v1, -0x1

    .line 2379
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2380
    .restart local v0       #editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2381
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2384
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->updateFontsizeForTextAreaVolumeKey()V

    move v3, v4

    .line 2385
    goto :goto_0

    .end local v0           #editprefs:Landroid/content/SharedPreferences$Editor;
    .end local v1           #idxMsgPreferFontSize:I
    .end local v2           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_3
    move v3, v4

    .line 2388
    goto :goto_0

    .line 2339
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 2397
    const-string v1, "Mms/MmsSinglePageFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp(),keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    sparse-switch p1, :sswitch_data_0

    .line 2426
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2402
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->exitMmsSinglePageFrame()V

    goto :goto_0

    .line 2405
    :sswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2414
    :sswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2398
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 554
    const-string v1, "Mms/MmsSinglePageFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOptionsItemSelected(),item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 563
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v1, :cond_2

    .line 564
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_0

    .line 565
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAddContactIntent:Landroid/content/Intent;

    .line 566
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAddContactIntent:Landroid/content/Intent;

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 571
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 572
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 575
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 576
    const-string v1, "msgId"

    iget-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 577
    const-string v1, "thread_id"

    iget-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->threadId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 579
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 585
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 587
    :goto_0
    return v1

    .line 559
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->exitMmsSinglePageFrame()V

    .line 560
    const/4 v1, 0x1

    goto :goto_0

    .line 587
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 754
    const-string v0, "onPause()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->dumpLogs(Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/mms/util/DirectCallingManager;->pause(Landroid/content/Context;)V

    .line 759
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 535
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    .line 541
    :cond_0
    const/16 v0, 0x64

    const v1, 0x7f0c0051

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200a9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 545
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 744
    const-string v0, "onResume()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->dumpLogs(Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/mms/util/DirectCallingManager;->resume(Landroid/content/Context;)V

    .line 751
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 368
    const-string v0, "onStart()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->dumpLogs(Ljava/lang/String;)V

    .line 370
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->drawTitle_Subject()V

    .line 371
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->updateTitleIcon()V

    .line 380
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->addRecipientsListener()V

    .line 384
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mRecipients:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    .line 385
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 762
    const-string v0, "onStop()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->dumpLogs(Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 770
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->removeRecipientsListener()V

    .line 771
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 3137
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3150
    :goto_0
    return-void

    .line 3140
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/MmsSinglePageFrame$19;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$19;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected presentAudioInfoOnly(Lcom/android/mms/model/AudioModel;Z)V
    .locals 3
    .parameter "audio"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1437
    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->addAudioInfo(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;Lcom/android/mms/model/AudioModel;)V

    .line 1438
    return-void
.end method

.method protected presentImage(Lcom/android/mms/model/ImageModel;I)V
    .locals 2
    .parameter "image"
    .parameter "slideIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1418
    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1419
    .local v0, contentType:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1420
    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1423
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->setImageWithFrame(Ljava/lang/String;Lcom/android/mms/model/ImageModel;I)V

    .line 1424
    return-void
.end method

.method protected presentText(Lcom/android/mms/model/TextModel;I)V
    .locals 6
    .parameter "text"
    .parameter "slideIndex"

    .prologue
    .line 1547
    const/4 v3, 0x0

    .line 1548
    .local v3, showAttachment:Z
    invoke-virtual {p1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1549
    .local v0, msgText:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0c0132

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1550
    .local v2, notShownStrOne:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0c0133

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1552
    .local v1, notShownStrMore:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0, v3, p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->setTextWithTextView(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1553
    return-void
.end method

.method protected presentVideo(Lcom/android/mms/model/VideoModel;I)V
    .locals 3
    .parameter "video"
    .parameter "slideIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1427
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->createVideoThumbnailForManualPlay(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1429
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1430
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020222

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1433
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p2, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/mms/model/VideoModel;)V

    .line 1434
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 220
    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "setActivity()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    .line 223
    return-void
.end method

.method public setImageWithFrame(Ljava/lang/String;Lcom/android/mms/model/ImageModel;I)V
    .locals 11
    .parameter "name"
    .parameter "imageModel"
    .parameter "slideIndex"

    .prologue
    .line 1588
    sget-boolean v8, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v8, :cond_0

    const-string v8, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:setImageWithFrame/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",index="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    :cond_0
    const v8, 0x7f0b0043

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1592
    .local v5, mainLinear:Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1593
    .local v2, factory:Landroid/view/LayoutInflater;
    new-instance v3, Landroid/view/View;

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1594
    .local v3, imageArea:Landroid/view/View;
    const v8, 0x7f04005c

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1595
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1598
    const v8, 0x7f0b0200

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1600
    .local v4, mImageView:Landroid/widget/ImageView;
    const v8, 0x7f0b0202

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 1602
    .local v6, saveButton:Landroid/widget/ImageButton;
    const v8, 0x7f0b0201

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1603
    .local v7, videoPlayButton:Landroid/widget/ImageView;
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1608
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1609
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 1610
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02003d

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1613
    :cond_1
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1620
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1625
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/ui/MmsSinglePageFrame;->setClickUri(Landroid/net/Uri;)V

    .line 1626
    invoke-static {p3}, Lcom/android/mms/ui/MmsSinglePageFrame;->setSlideIndex(I)V

    .line 1628
    invoke-static {p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->setImageModel(Lcom/android/mms/model/ImageModel;)V

    .line 1631
    new-instance v8, Lcom/android/mms/ui/MmsSinglePageFrame$6;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$6;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1682
    new-instance v8, Lcom/android/mms/ui/MmsSinglePageFrame$7;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$7;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1691
    return-void

    .line 1614
    :catch_0
    move-exception v1

    .line 1615
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v8, "Mms/MmsSinglePageFrame"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OutOfMemoryError"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1616
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 1617
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLockIcon(Z)V
    .locals 3
    .parameter "islock"

    .prologue
    .line 456
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLockIcon(), islock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_0
    if-eqz p1, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon02:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon02:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0
    .parameter "onEventListener"

    .prologue
    .line 3101
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    .line 3102
    return-void
.end method

.method public setScrollPosition(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    .line 1336
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    .line 1337
    const v0, 0x7f0b020c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    .line 1339
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1357
    :cond_1
    :goto_0
    return-void

    .line 1341
    :pswitch_0
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setScrollPosition**SCROLL_MODE_TOP]mMainScrollView.getScrollY() (1)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1343
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_3

    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "[setScrollPosition]mMainScrollView.scrollTo(0, 0)"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    :cond_3
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setScrollPosition]mMainScrollView.getScrollY() (2)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1348
    :pswitch_1
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_4

    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setScrollPosition**SCROLL_MODE_KEEP_LATEST_POS]mMainScrollView.getScrollY() (1)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    iget v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->currentScrollY:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 1350
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_5

    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setScrollPosition]mMainScrollView.scrollTo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->currentScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    :cond_5
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setScrollPosition]mMainScrollView.getScrollY() (2)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTextWithTextView(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 7
    .parameter "name"
    .parameter "text"
    .parameter "isAttachment"
    .parameter "slideIndex"

    .prologue
    const/16 v6, 0xe

    const/4 v5, 0x1

    .line 2007
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:setTextWithTextView(),slideIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\ntext***start***\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\ntext***end***\n,isAttachment="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    :cond_0
    const v2, 0x7f0b0043

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2012
    .local v1, mainLinear:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2014
    .local v0, mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2016
    if-nez p3, :cond_1

    .line 2017
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2018
    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    .line 2022
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2023
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2027
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2028
    const/high16 v2, 0x4000

    invoke-static {v2}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2029
    const-string v2, "#00AEEF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 2031
    const/16 v2, 0xc

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2032
    iget-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG:Z

    if-eqz v2, :cond_2

    const v2, -0xffff01

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 2036
    :cond_2
    invoke-static {p2}, Lcom/android/mms/ui/MessageUtils;->formatMessage_smiley(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2041
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 2044
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2045
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 2048
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2049
    return-void

    .line 2025
    :cond_3
    const/high16 v2, 0x41a0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method public setTitleIcon()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 439
    const-string v2, "mms"

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->isLockmessage(Ljava/lang/String;JLandroid/content/ContentResolver;)J

    move-result-wide v0

    .line 440
    .local v0, isMsgLock:J
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "Mms/MmsSinglePageFrame"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTitleIcon, isMsgLock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon02:Landroid/widget/ImageView;

    const v3, 0x7f0201e4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 442
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 443
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon01:Landroid/widget/ImageView;

    const v3, 0x7f020217

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 450
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    :cond_1
    return-void

    .line 445
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon02:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/mms/model/VideoModel;)V
    .locals 11
    .parameter "name"
    .parameter "bitmap"
    .parameter "slideIndex"
    .parameter "videoModel"

    .prologue
    const/4 v10, 0x0

    .line 1724
    sget-boolean v7, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v7, :cond_0

    const-string v7, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:setImage/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",index="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    :cond_0
    const v7, 0x7f0b0043

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1728
    .local v3, mainLinear:Landroid/widget/LinearLayout;
    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1729
    .local v1, factory:Landroid/view/LayoutInflater;
    new-instance v5, Landroid/view/View;

    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1730
    .local v5, videoArea:Landroid/view/View;
    const v7, 0x7f04005c

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1731
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1734
    const v7, 0x7f0b0200

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1736
    .local v2, mImageView:Landroid/widget/ImageView;
    const v7, 0x7f0b0202

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 1738
    .local v4, saveButton:Landroid/widget/ImageButton;
    const v7, 0x7f0b0201

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1739
    .local v6, videoPlayButton:Landroid/widget/ImageView;
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1742
    if-nez p2, :cond_1

    .line 1743
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02003e

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1746
    :cond_1
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1755
    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1759
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/ui/MmsSinglePageFrame;->setClickUri(Landroid/net/Uri;)V

    .line 1760
    invoke-static {p3}, Lcom/android/mms/ui/MmsSinglePageFrame;->setSlideIndex(I)V

    .line 1761
    invoke-static {p4}, Lcom/android/mms/ui/MmsSinglePageFrame;->setVideoModel(Lcom/android/mms/model/VideoModel;)V

    .line 1764
    new-instance v7, Lcom/android/mms/ui/MmsSinglePageFrame$8;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$8;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1812
    new-instance v7, Lcom/android/mms/ui/MmsSinglePageFrame$9;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$9;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1821
    return-void

    .line 1747
    :catch_0
    move-exception v0

    .line 1748
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v7, "Mms/MmsSinglePageFrame"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OutOfMemoryError"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public splitListChanged()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3115
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3118
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 3119
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3122
    :cond_1
    if-eqz v6, :cond_2

    .line 3123
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3125
    :cond_2
    return-void

    .line 3122
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3123
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public viewMessageDetail(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 12
    .parameter "msgItem"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1476
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const/4 v0, 0x1

    const-string v5, "m_type"

    aput-object v5, v2, v0

    const/4 v0, 0x2

    const-string v5, "msg_box"

    aput-object v5, v2, v0

    .line 1484
    .local v2, PROJECTION_Mms:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1486
    .local v9, address:Ljava/lang/String;
    const-string v11, ""

    .line 1492
    .local v11, messageDetails:Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1493
    .local v1, messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1498
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_0

    .line 1500
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1501
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v5, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v8

    invoke-static/range {v3 .. v8}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1512
    if-eqz v4, :cond_0

    .line 1513
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1517
    :cond_0
    :goto_0
    return-object v11

    .line 1509
    :catch_0
    move-exception v10

    .line 1510
    .local v10, e:Landroid/view/WindowManager$BadTokenException;
    :try_start_1
    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v3, "Failed view message details"

    invoke-static {v0, v3, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1512
    if-eqz v4, :cond_0

    .line 1513
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1512
    .end local v10           #e:Landroid/view/WindowManager$BadTokenException;
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_1

    .line 1513
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method
