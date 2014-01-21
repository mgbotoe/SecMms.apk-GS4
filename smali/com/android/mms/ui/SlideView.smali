.class public Lcom/android/mms/ui/SlideView;
.super Landroid/widget/LinearLayout;
.source "SlideView.java"

# interfaces
.implements Lcom/android/mms/ui/AdaptableSlideViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideView$MovieView;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final AUDIO_INFO_HEIGHT:I = 0x0

.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

#the value of this static final field might be set in the static constructor
.field private static final MEDIA_MAXIMUM_LENGTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MEDIA_MAXIMUM_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MEDIA_MINIMUM_LENGTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MEDIA_MINIMUM_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MMS_SUBJECT_HEIGHT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mms/SlideView"

#the value of this static final field might be set in the static constructor
.field private static final VIDEO_WRAPPER_PADDING:I = 0x0

.field private static final VIEW_TITLE_ICON_DEFAULT_MARGIN_RIGHT:F = 16.0f

.field private static final VIEW_TITLE_ICON_WIDTH:F = 25.0f

.field private static saveMode:Z

.field public static staticAttachment:Lcom/android/mms/model/AttachmentModel;

.field public static staticAudioModel:Lcom/android/mms/model/AudioModel;

.field public static staticClickUri:Landroid/net/Uri;

.field public static staticImageModel:Lcom/android/mms/model/ImageModel;

.field public static staticSlideIndex:I

.field public static staticVideoModel:Lcom/android/mms/model/VideoModel;


# instance fields
.field private final MAX_TEXT_COUNT:I

.field private final MEDIA_ERROR_CURRUPT:I

.field private final MEDIA_ERROR_NOTSUPPORT:I

.field RIGHTPADDING:I

.field private SILDESHOW_VIEW_PADDING_BOTTOM:I

.field private VIDEO_MAXIMUM_HEIGHT:I

.field public attachMsgId:J

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

.field private mAgifBitmap:Landroid/graphics/Bitmap;

.field private mAleadyPasued:Z

.field private mAleadyResumed:Z

.field private mAttachViewHeight:I

.field private mAttachmentLayout:Landroid/widget/LinearLayout;

.field private mAttachmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioArea:Landroid/widget/LinearLayout;

.field private mAudioInfoView:Landroid/view/View;

.field private mAudioPlayer:Landroid/media/MediaPlayer;

.field private mAudioViewHeight:I

.field private mCanvas:Landroid/graphics/Canvas;

.field mContentResolver:Landroid/content/ContentResolver;

.field private mDiffTime:J

.field private mDispatchDrawCalled:Z

.field private mEditField:Landroid/widget/EditText;

.field private mEmptyNameToast:Landroid/widget/Toast;

.field private mHasSound:Z

.field private mImageHeight:I

.field private mImageTop:I

.field private mImageView:Landroid/widget/ImageView;

.field private mImageWidth:I

.field private mImageWrapper:Landroid/widget/LinearLayout;

.field private mIsPrepared:Z

.field private mIsTextTop:Z

.field private mMainScrollView:Landroid/widget/ScrollView;

.field private mMediaViewPort:Landroid/widget/LinearLayout;

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieHeight:I

.field private mMovieLeft:I

.field private mMoviePlay:Z

.field private mMovieStart:J

.field private mMovieTop:I

.field private mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

.field private mMovieWidth:I

.field private mNegativeButton:Landroid/widget/Button;

.field private final mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

.field private final mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

.field mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mPageInfoView:Landroid/view/View;

.field private mPause:Z

.field private mPositiveButton:Landroid/widget/Button;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mRecentPausedTime:J

.field private mResume:Z

.field private mSeekWhenPrepared:I

.field private mSelectedText:Ljava/lang/String;

.field private mSelectedUrl:Ljava/lang/String;

.field private mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field private mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field private mStartAgifImage:Z

.field private mStartWhenPrepared:Z

.field private mStopWhenPrepared:Z

.field private mSubject:Ljava/lang/String;

.field private mSubjectHeight:I

.field private mTextHeight:I

.field private mTextTop:I

.field private mTextView:Landroid/widget/TextView;

.field private mTextViewPort:Landroid/widget/LinearLayout;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleIcon:Landroid/widget/ImageView;

.field private mVideoHeight:I

.field private mVideoLeft:I

.field private mVideoStartTime:J

.field private mVideoTop:I

.field private mVideoView:Lcom/android/mms/ui/TestVideoView;

.field private mVideoWidth:I

.field private mVideoWrapper:Landroid/widget/LinearLayout;

.field private mviewpadding:I

.field private removeBorder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide v4, 0x3feccccccccccccdL

    const-wide v2, 0x3fe883126e978d50L

    .line 95
    const/high16 v0, 0x41f0

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/ui/SlideView;->AUDIO_INFO_HEIGHT:I

    .line 96
    const/high16 v0, 0x41c8

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/ui/SlideView;->MMS_SUBJECT_HEIGHT:I

    .line 97
    const v0, 0x40533333

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/ui/SlideView;->VIDEO_WRAPPER_PADDING:I

    .line 99
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    :goto_0
    sput v0, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    .line 102
    sget v0, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    .line 104
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    :goto_1
    sput v0, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_WIDTH:I

    .line 107
    sget v0, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_WIDTH:I

    .line 177
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/SlideView;->saveMode:Z

    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    .line 104
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 109
    const/4 v0, -0x4

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_NOTSUPPORT:I

    .line 110
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_CURRUPT:I

    .line 111
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MAX_TEXT_COUNT:I

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMainScrollView:Landroid/widget/ScrollView;

    .line 184
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 211
    const/high16 v0, 0x40c0

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideView;->SILDESHOW_VIEW_PADDING_BOTTOM:I

    .line 213
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideView;->removeBorder:Z

    .line 215
    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 239
    new-instance v0, Lcom/android/mms/ui/SlideView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$2;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 245
    new-instance v0, Lcom/android/mms/ui/SlideView$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$3;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1247
    new-instance v0, Lcom/android/mms/ui/SlideView$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$4;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 1329
    new-instance v0, Lcom/android/mms/ui/SlideView$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$5;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

    .line 1681
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mHasSound:Z

    .line 1699
    iput v2, p0, Lcom/android/mms/ui/SlideView;->RIGHTPADDING:I

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    .line 284
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mContentResolver:Landroid/content/ContentResolver;

    .line 285
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mAttachViewHeight:I

    .line 286
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v1, -0x100

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 288
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 291
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    const/4 v1, -0x4

    iput v1, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_NOTSUPPORT:I

    .line 110
    const/16 v1, -0xa

    iput v1, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_CURRUPT:I

    .line 111
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/android/mms/ui/SlideView;->MAX_TEXT_COUNT:I

    .line 176
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMainScrollView:Landroid/widget/ScrollView;

    .line 184
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 211
    const/high16 v1, 0x40c0

    invoke-static {v1}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SlideView;->SILDESHOW_VIEW_PADDING_BOTTOM:I

    .line 213
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideView;->removeBorder:Z

    .line 215
    new-instance v1, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 239
    new-instance v1, Lcom/android/mms/ui/SlideView$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideView$2;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 245
    new-instance v1, Lcom/android/mms/ui/SlideView$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideView$3;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1247
    new-instance v1, Lcom/android/mms/ui/SlideView$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideView$4;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 1329
    new-instance v1, Lcom/android/mms/ui/SlideView$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideView$5;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

    .line 1681
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideView;->mHasSound:Z

    .line 1699
    iput v3, p0, Lcom/android/mms/ui/SlideView;->RIGHTPADDING:I

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    .line 295
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mContentResolver:Landroid/content/ContentResolver;

    .line 296
    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/mms/ui/SlideView;->mAttachViewHeight:I

    .line 299
    sget v1, Lcom/android/mms/ui/SlideView;->MMS_SUBJECT_HEIGHT:I

    iput v1, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    .line 300
    sget v1, Lcom/android/mms/ui/SlideView;->AUDIO_INFO_HEIGHT:I

    iput v1, p0, Lcom/android/mms/ui/SlideView;->mAudioViewHeight:I

    .line 301
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 302
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a00ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/ui/SlideView;->VIDEO_MAXIMUM_HEIGHT:I

    .line 303
    iget v1, p0, Lcom/android/mms/ui/SlideView;->SILDESHOW_VIEW_PADDING_BOTTOM:I

    iput v1, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    .line 304
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/high16 v2, -0x100

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 306
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/SlideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/SlideView;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mCanvas:Landroid/graphics/Canvas;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mDispatchDrawCalled:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SlideView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/mms/ui/SlideView;->mMovieStart:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/SlideView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/android/mms/ui/SlideView;->mMovieStart:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/SlideView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/mms/ui/SlideView;->mRecentPausedTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SlideView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/SlideView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/mms/ui/SlideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mMovieWidth:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/SlideView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mMovieLeft:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/SlideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mMovieLeft:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/SlideView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mMovieTop:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/mms/ui/SlideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mMovieTop:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/SlideView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/mms/ui/SlideView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSelectedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/SlideView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/mms/ui/SlideView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/SlideView;)Landroid/text/style/ForegroundColorSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAttachmentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/SlideView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideView;->saveAttachFiles(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/SlideView;Lcom/android/mms/model/AttachmentModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideView;->saveAttachFile(Lcom/android/mms/model/AttachmentModel;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/ui/TestVideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private adjustSubjectWidth()V
    .locals 2

    .prologue
    .line 1702
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getVisibleIconCount()I

    move-result v0

    .line 1703
    .local v0, visibleIconNum:I
    iget v1, p0, Lcom/android/mms/ui/SlideView;->RIGHTPADDING:I

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideView;->adjustSubjectWidth(II)V

    .line 1704
    return-void
.end method

.method private displayAudioInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 604
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 608
    :cond_0
    return-void
.end method

.method private hideAudioInfo()V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->removeView(Landroid/view/View;)V

    .line 614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    .line 616
    :cond_0
    return-void
.end method

.method private initAudioInfoView(Ljava/lang/String;)V
    .locals 8
    .parameter "name"

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 555
    .local v2, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f040063

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    .line 556
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 557
    .local v3, height:I
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const v7, 0x7f0b001a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 560
    .local v0, audioName:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 561
    .local v1, extension:Ljava/lang/String;
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 562
    .local v4, index:I
    if-ltz v4, :cond_0

    .line 563
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 565
    :cond_0
    const-string v6, "dm"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 566
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dcf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 570
    :cond_1
    const-string v6, "cid:"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Cid:"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 571
    :cond_2
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 574
    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    const v6, -0x7d7d7e

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 584
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioArea:Landroid/widget/LinearLayout;

    if-nez v6, :cond_4

    .line 585
    const v6, 0x7f0b0283

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioArea:Landroid/widget/LinearLayout;

    .line 586
    :cond_4
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 587
    .local v5, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x10

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 588
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioArea:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v6, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    .line 601
    return-void
.end method

.method private makeSmiley(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "text"

    .prologue
    .line 706
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 708
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v1

    .line 710
    .local v1, parser:Lcom/android/mms/util/SmileyParser;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 711
    invoke-virtual {v1, p1}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 713
    :cond_0
    return-object v0
.end method

.method private saveAttachFile(Lcom/android/mms/model/AttachmentModel;)V
    .locals 4
    .parameter "attachment"

    .prologue
    .line 1585
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/mms/ui/SlideView;->attachMsgId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1586
    .local v0, msgUri:Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/mms/content/MmsPartExport;->savePart(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 1587
    return-void
.end method

.method private saveAttachFiles(Ljava/util/ArrayList;)V
    .locals 7
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
    .line 1590
    .local p1, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1591
    .local v3, partsUriList:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/AttachmentModel;

    .line 1592
    .local v1, model:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1594
    .end local v1           #model:Lcom/android/mms/model/AttachmentModel;
    :cond_0
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/mms/ui/SlideView;->attachMsgId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1595
    .local v2, msgUri:Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/samsung/mms/content/MmsPartExport;->saveParts(Landroid/net/Uri;Ljava/util/List;)V

    .line 1596
    return-void
.end method

.method public static setAttachment(Lcom/android/mms/model/AttachmentModel;)V
    .locals 0
    .parameter "attachmentModel"

    .prologue
    .line 1355
    sput-object p0, Lcom/android/mms/ui/SlideView;->staticAttachment:Lcom/android/mms/model/AttachmentModel;

    .line 1356
    return-void
.end method

.method public static setAudioModel(Lcom/android/mms/model/AudioModel;)V
    .locals 2
    .parameter "audioModel"

    .prologue
    .line 1351
    const-string v0, "Mms/SlideView"

    const-string v1, "setAudioModel"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    sput-object p0, Lcom/android/mms/ui/SlideView;->staticAudioModel:Lcom/android/mms/model/AudioModel;

    .line 1353
    return-void
.end method

.method public static setClickUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 1336
    const-string v0, "Mms/SlideView"

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

    .line 1337
    sput-object p0, Lcom/android/mms/ui/SlideView;->staticClickUri:Landroid/net/Uri;

    .line 1338
    return-void
.end method

.method public static setImageModel(Lcom/android/mms/model/ImageModel;)V
    .locals 0
    .parameter "imageModel"

    .prologue
    .line 1359
    sput-object p0, Lcom/android/mms/ui/SlideView;->staticImageModel:Lcom/android/mms/model/ImageModel;

    .line 1360
    return-void
.end method

.method public static setSlideIndex(I)V
    .locals 3
    .parameter "slideindex"

    .prologue
    .line 1341
    const-string v0, "Mms/SlideView"

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

    .line 1342
    sput p0, Lcom/android/mms/ui/SlideView;->staticSlideIndex:I

    .line 1343
    return-void
.end method

.method public static setVideoModel(Lcom/android/mms/model/VideoModel;)V
    .locals 2
    .parameter "videoModel"

    .prologue
    .line 1346
    const-string v0, "Mms/SlideView"

    const-string v1, "setVideoModel"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    sput-object p0, Lcom/android/mms/ui/SlideView;->staticVideoModel:Lcom/android/mms/model/VideoModel;

    .line 1348
    return-void
.end method

.method private setVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1600
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1601
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1602
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1604
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 1607
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1608
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1610
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v0}, Lcom/android/mms/ui/TestVideoView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1611
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/TestVideoView;->setVisibility(I)V

    .line 1614
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/SlideView$11;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideView$11;-><init>(Lcom/android/mms/ui/SlideView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1621
    return-void
.end method


# virtual methods
.method public addAttachmentListView(Ljava/util/ArrayList;J)V
    .locals 5
    .parameter
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1381
    .local p1, attachmentListSaved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const-string v3, "Mms/SlideView"

    const-string v4, "addAttachmentListView"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    if-nez p1, :cond_1

    .line 1403
    :cond_0
    return-void

    .line 1387
    :cond_1
    iput-wide p2, p0, Lcom/android/mms/ui/SlideView;->attachMsgId:J

    .line 1388
    move-object v0, p1

    .line 1389
    .local v0, attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mAttachmentList:Ljava/util/ArrayList;

    .line 1390
    const/4 v1, 0x0

    .line 1391
    .local v1, index:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1394
    .local v2, size:I
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1396
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->addAttachmentTitleView()V

    .line 1397
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1398
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {p0, v3, v2}, Lcom/android/mms/ui/SlideView;->addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;I)V

    .line 1397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;I)V
    .locals 19
    .parameter "attachmentSaved"
    .parameter "position"

    .prologue
    .line 1463
    const-string v14, "Mms/SlideView"

    const-string v15, "addAttachmentOneView"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    move-object/from16 v5, p1

    .line 1467
    .local v5, attachment:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 1468
    .local v9, factory:Landroid/view/LayoutInflater;
    new-instance v6, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v14}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1469
    .local v6, attachmentInfo:Landroid/view/View;
    const v14, 0x7f040013

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1473
    const v14, 0x7f0b0036

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1474
    .local v4, attachName:Landroid/widget/TextView;
    const v14, 0x7f0b0035

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1475
    .local v2, attachImage:Landroid/widget/ImageView;
    const v14, 0x7f0b0034

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1476
    .local v3, attachList:Landroid/widget/LinearLayout;
    const v14, 0x7f0b0039

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1477
    .local v1, attachDivider:Landroid/widget/LinearLayout;
    const v14, 0x7f0b0038

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    .line 1479
    .local v13, saveButton:Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1480
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v11, v14, -0x1

    .line 1481
    .local v11, lastIndex_attachmentInfoArr:I
    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 1482
    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1486
    :cond_0
    invoke-virtual {v5}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v12

    .line 1489
    .local v12, name:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1490
    .local v8, extension:Ljava/lang/String;
    const/16 v14, 0x2e

    invoke-virtual {v12, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 1491
    .local v10, index:I
    if-ltz v10, :cond_1

    .line 1492
    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1494
    :cond_1
    const-string v14, "dm"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1495
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".dcf"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1499
    :cond_2
    const-string v14, "cid:"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "Cid:"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1500
    :cond_3
    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1503
    :cond_4
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1506
    invoke-virtual {v5}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v7

    .line 1507
    .local v7, contentType:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 1508
    const-string v14, "text/x-vCard"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "text/x-vcard"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1509
    :cond_5
    const v14, 0x7f0200e5

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1521
    :cond_6
    :goto_0
    const v14, 0x7f0b0282

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/SlideView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    .line 1522
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/SlideView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1529
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1531
    invoke-static {v5}, Lcom/android/mms/ui/SlideView;->setAttachment(Lcom/android/mms/model/AttachmentModel;)V

    .line 1533
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    new-instance v15, Lcom/android/mms/ui/SlideView$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/mms/ui/SlideView$8;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1557
    new-instance v14, Lcom/android/mms/ui/SlideView$9;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/mms/ui/SlideView$9;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1576
    new-instance v14, Lcom/android/mms/ui/SlideView$10;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/mms/ui/SlideView$10;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1582
    return-void

    .line 1510
    :cond_7
    const-string v14, "text/x-vCalendar"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1511
    const v14, 0x7f0200e4

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1512
    :cond_8
    const-string v14, "text/x-vNote"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1513
    const v14, 0x7f0200e6

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1514
    :cond_9
    const-string v14, "text/x-vtodo"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1515
    const v14, 0x7f0200e8

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1517
    :cond_a
    const v14, 0x7f0200e3

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public addAttachmentTitleView()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1406
    const-string v7, "Mms/SlideView"

    const-string v8, "addAttachmentTitleView"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1409
    .local v4, factory:Landroid/view/LayoutInflater;
    new-instance v3, Landroid/view/View;

    iget-object v7, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1410
    .local v3, attachmentInfo:Landroid/view/View;
    const v7, 0x7f040013

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1412
    const v7, 0x7f0b0036

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1413
    .local v2, attachName:Landroid/widget/TextView;
    const v7, 0x7f0b0038

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 1414
    .local v6, saveButton:Landroid/widget/ImageButton;
    const v7, 0x7f0b0035

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1415
    .local v0, attachImage:Landroid/widget/ImageView;
    const v7, 0x7f0b0034

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1417
    .local v1, attachList:Landroid/widget/LinearLayout;
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1419
    iget-object v7, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1420
    iget-object v7, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .line 1422
    .local v5, lastIndex_attachmentInfoArr:I
    const/high16 v7, 0x4110

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v7

    invoke-virtual {v2, v7, v12, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1426
    const v7, 0x7f0c0226

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1427
    const v7, 0x7f0b0282

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/mms/ui/SlideView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    .line 1428
    iget-object v7, p0, Lcom/android/mms/ui/SlideView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1429
    iget-object v8, p0, Lcom/android/mms/ui/SlideView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1435
    iget-object v7, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1437
    new-instance v7, Lcom/android/mms/ui/SlideView$6;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/SlideView$6;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1455
    new-instance v7, Lcom/android/mms/ui/SlideView$7;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/SlideView$7;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1460
    return-void
.end method

.method public adjustSlideBodyDisplay()V
    .locals 3

    .prologue
    .line 1666
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v0

    .line 1667
    .local v0, nSize:F
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1668
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1679
    :cond_0
    return-void
.end method

.method public adjustSubjectWidth(II)V
    .locals 9
    .parameter "visibleIconNum"
    .parameter "RIGHTPADDING"

    .prologue
    .line 1707
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    if-nez v6, :cond_0

    .line 1726
    :goto_0
    return-void

    .line 1710
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    const v7, 0x7f0b0207

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1713
    .local v4, pageNumber:Landroid/widget/TextView;
    move v5, p2

    .line 1714
    .local v5, rightPaddingCur:I
    if-lez p1, :cond_1

    .line 1715
    const/high16 v6, 0x41c8

    invoke-static {v6}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    mul-int/2addr v6, p1

    const/high16 v7, 0x4180

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v7

    add-int v5, v6, v7

    .line 1719
    :goto_1
    const-string v6, "Mms/SlideView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjustSubjectWidth(),visibleIconNum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", rightPaddingCur="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    .line 1721
    .local v1, originPaddingLeft:I
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 1722
    .local v3, originPaddingTop:I
    move v2, v5

    .line 1723
    .local v2, originPaddingRight:I
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    .line 1725
    .local v0, originPaddingBottom:I
    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 1717
    .end local v0           #originPaddingBottom:I
    .end local v1           #originPaddingLeft:I
    .end local v2           #originPaddingRight:I
    .end local v3           #originPaddingTop:I
    :cond_1
    move v5, p2

    goto :goto_1
.end method

.method public calculate(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 310
    int-to-float v2, p1

    int-to-float v3, p2

    div-float v1, v2, v3

    .line 311
    .local v1, ratio:F
    if-ge p1, p2, :cond_4

    .line 312
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    if-ge p2, v2, :cond_1

    .line 313
    sget p2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    .line 314
    int-to-float v2, p2

    mul-float/2addr v2, v1

    float-to-int p1, v2

    .line 351
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 352
    .local v0, mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    return-object v0

    .line 315
    .end local v0           #mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    if-le p2, v2, :cond_2

    .line 316
    sget p2, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    .line 317
    int-to-float v2, p2

    mul-float/2addr v2, v1

    float-to-int p1, v2

    goto :goto_0

    .line 319
    :cond_2
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_WIDTH:I

    if-ge p1, v2, :cond_0

    .line 320
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    sget v3, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_WIDTH:I

    if-ge v2, v3, :cond_3

    .line 321
    sget p1, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_WIDTH:I

    .line 322
    int-to-float v2, p1

    div-float/2addr v2, v1

    float-to-int p2, v2

    goto :goto_0

    .line 323
    :cond_3
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    if-le p2, v2, :cond_0

    .line 324
    sget p2, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    .line 325
    int-to-float v2, p2

    mul-float/2addr v2, v1

    float-to-int p1, v2

    goto :goto_0

    .line 330
    :cond_4
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_WIDTH:I

    if-ge p1, v2, :cond_5

    .line 331
    sget p1, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_WIDTH:I

    .line 332
    int-to-float v2, p1

    div-float/2addr v2, v1

    float-to-int p2, v2

    goto :goto_0

    .line 333
    :cond_5
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_WIDTH:I

    if-le p1, v2, :cond_6

    .line 334
    sget p1, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_WIDTH:I

    .line 335
    int-to-float v2, p1

    div-float/2addr v2, v1

    float-to-int p2, v2

    goto :goto_0

    .line 337
    :cond_6
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    if-ge p2, v2, :cond_8

    .line 338
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sget v3, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    if-ge v2, v3, :cond_7

    .line 339
    sget p2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    .line 340
    int-to-float v2, p2

    mul-float/2addr v2, v1

    float-to-int p1, v2

    goto :goto_0

    .line 341
    :cond_7
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_WIDTH:I

    if-le p1, v2, :cond_0

    .line 342
    sget p1, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_WIDTH:I

    .line 343
    int-to-float v2, p1

    div-float/2addr v2, v1

    float-to-int p2, v2

    goto :goto_0

    .line 345
    :cond_8
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_WIDTH:I

    if-le p1, v2, :cond_0

    .line 346
    sget p1, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_WIDTH:I

    .line 347
    int-to-float v2, p1

    div-float/2addr v2, v1

    float-to-int p2, v2

    goto :goto_0
.end method

.method public calculateVideo(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 358
    sget v5, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_WIDTH:I

    .line 359
    .local v5, videoMaxWidth:I
    iget v4, p0, Lcom/android/mms/ui/SlideView;->VIDEO_MAXIMUM_HEIGHT:I

    .line 360
    .local v4, videoMaxHeight:I
    invoke-static {p1, p2, v5, v4}, Lcom/android/mms/ui/MessageUtils;->getScaleFactor(IIII)F

    move-result v3

    .line 362
    .local v3, scaleFactor:F
    int-to-float v6, p1

    mul-float/2addr v6, v3

    float-to-int v1, v6

    .line 363
    .local v1, inputWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, v3

    float-to-int v0, v6

    .line 365
    .local v0, inputHeight:I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 366
    .local v2, mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    return-object v2
.end method

.method public getVisibleIconCount()I
    .locals 5

    .prologue
    .line 1729
    const v4, 0x7f0b02ae

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1730
    .local v0, mTitleIcon01:Landroid/widget/ImageView;
    const v4, 0x7f0b02af

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1731
    .local v1, mTitleIcon02:Landroid/widget/ImageView;
    const v4, 0x7f0b02b0

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1735
    .local v2, mTitleIcon03:Landroid/widget/ImageView;
    const/4 v3, 0x0

    .line 1736
    .local v3, visibleIconNum:I
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1737
    add-int/lit8 v3, v3, 0x1

    .line 1739
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 1740
    add-int/lit8 v3, v3, 0x1

    .line 1742
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 1743
    add-int/lit8 v3, v3, 0x1

    .line 1746
    :cond_2
    return v3
.end method

.method public hasSound()Z
    .locals 1

    .prologue
    .line 1684
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mHasSound:Z

    return v0
.end method

.method public initAttachmentListView()V
    .locals 5

    .prologue
    .line 1363
    const-string v2, "Mms/SlideView"

    const-string v3, "initAttachmentListView()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    const v2, 0x7f0b0282

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    .line 1366
    const/4 v0, 0x0

    .line 1367
    .local v0, index:I
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1369
    .local v1, numOfAttach:I
    const-string v2, "Mms/SlideView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numOfAttach="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1371
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1374
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1376
    return-void
.end method

.method public isSoundMediaPlaying()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1647
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v1, :cond_1

    .line 1648
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v1}, Lcom/android/mms/ui/TestVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1656
    :cond_0
    :goto_0
    return v0

    .line 1651
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 1652
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1656
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 951
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 952
    const v0, 0x7f0b020c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMainScrollView:Landroid/widget/ScrollView;

    .line 953
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 957
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 959
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mAudioViewHeight:I

    sub-int v1, p2, v1

    invoke-interface {v0, p1, v1}, Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;->onSizeChanged(II)V

    .line 965
    :cond_0
    return-void
.end method

.method public pauseAudio()V
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 811
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 812
    return-void
.end method

.method public pauseMovie()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1057
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    .line 1058
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    .line 1059
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    if-eqz v2, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1063
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1064
    .local v0, pauseTime:J
    iget-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    .line 1065
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    .line 1066
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    .line 1068
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    .line 1070
    iget-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    iput-wide v2, p0, Lcom/android/mms/ui/SlideView;->mRecentPausedTime:J

    .line 1071
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_0

    .line 1075
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v2, :cond_0

    .line 1076
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideView$MovieView;->invalidate()V

    goto :goto_0
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v0}, Lcom/android/mms/ui/TestVideoView;->pause()V

    .line 864
    :cond_0
    return-void
.end method

.method public pauseVideo(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const/16 v2, 0x8

    .line 1624
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v1, :cond_2

    .line 1626
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v1}, Lcom/android/mms/ui/TestVideoView;->getWidth()I

    move-result v0

    .line 1627
    .local v0, videoWidth:I
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v1}, Lcom/android/mms/ui/TestVideoView;->pause()V

    .line 1629
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1630
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1632
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v1, :cond_1

    .line 1633
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/TestVideoView;->setVisibility(I)V

    .line 1635
    :cond_1
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/mms/ui/SlideView;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 1636
    iget v1, p0, Lcom/android/mms/ui/SlideView;->mVideoLeft:I

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mVideoTop:I

    iget v3, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/mms/ui/SlideView;->setImageRegionForVideostop(IIII)V

    .line 1638
    .end local v0           #videoWidth:I
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 880
    iput v4, p0, Lcom/android/mms/ui/SlideView;->mTextHeight:I

    .line 881
    iput v4, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    .line 882
    iput v4, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    .line 884
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 886
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 887
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 891
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 892
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 893
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 897
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 898
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 899
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    .line 900
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 903
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 904
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->stopAudio()V

    .line 907
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 908
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 909
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 910
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    .line 911
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    .line 915
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_5

    .line 916
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAgifBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->stopMovie(Landroid/graphics/Bitmap;)V

    .line 919
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v0, :cond_6

    .line 920
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/SlideView$MovieView;->setVisibility(I)V

    .line 921
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 922
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    .line 926
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->hideAudioInfo()V

    .line 928
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 929
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 932
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMainScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_8

    .line 933
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 936
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 937
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioArea:Landroid/widget/LinearLayout;

    .line 940
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    .line 941
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 943
    :cond_a
    return-void
.end method

.method public resetAgifState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1096
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    .line 1097
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    .line 1098
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    .line 1099
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    .line 1101
    return-void
.end method

.method public seekAudio(I)V
    .locals 1
    .parameter "seekTo"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 820
    :goto_0
    return-void

    .line 818
    :cond_0
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public seekVideo(I)V
    .locals 1
    .parameter "seekTo"

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v0, :cond_0

    .line 868
    if-lez p1, :cond_0

    .line 872
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/TestVideoView;->seekTo(I)V

    .line 875
    :cond_0
    return-void
.end method

.method public setAgifStopImage(Landroid/graphics/Bitmap;Z)V
    .locals 7
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 435
    iput-boolean p2, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    .line 436
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    .line 437
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 438
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 439
    if-eqz p2, :cond_2

    .line 440
    const v1, 0x7f0b0281

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    .line 444
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 451
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    iget v3, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    invoke-virtual {v1, v6, v2, v6, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 454
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f040043

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 460
    :cond_0
    if-nez p1, :cond_1

    .line 461
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003d

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :goto_1
    return-void

    .line 442
    :cond_2
    const v1, 0x7f0b0280

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "Mms/SlideView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setAgifStopImageRegion(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 472
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    .line 473
    iput p3, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    .line 474
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageTop:I

    .line 475
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    :cond_0
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .parameter "audio"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p3, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 619
    if-nez p1, :cond_0

    .line 620
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Audio URI may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 627
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 628
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 629
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 630
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 632
    :cond_1
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    .line 635
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 636
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 637
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 638
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 639
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 640
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/mms/ui/SlideView;->initAudioInfoView(Ljava/lang/String;)V

    .line 652
    return-void

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Mms/SlideView"

    const-string v2, "Unexpected IOException."

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 643
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 644
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 647
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    const v3, 0x7f0c00f5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public setHasSound(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1688
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mHasSound:Z

    .line 1689
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 7
    .parameter "name"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    const/4 v6, 0x0

    .line 370
    iput-boolean p3, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    .line 371
    if-eqz p3, :cond_2

    .line 372
    const v1, 0x7f0b0281

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    .line 378
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 379
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 380
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    iget v3, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    invoke-virtual {v1, v6, v2, v6, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 387
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideView;->removeBorder:Z

    if-nez v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f040043

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 391
    :cond_0
    if-nez p2, :cond_1

    .line 392
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003d

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_1
    return-void

    .line 374
    :cond_2
    const v1, 0x7f0b0280

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "Mms/SlideView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setImageRegion(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 403
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    .line 404
    iput p3, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    .line 405
    iget v1, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/android/mms/ui/SlideView;->mImageTop:I

    .line 407
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    .line 409
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p4

    .line 410
    invoke-virtual {p0, p3, p4}, Lcom/android/mms/ui/SlideView;->calculate(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 411
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 412
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 413
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 484
    return-void
.end method

.method public setImageRegionForVideostop(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 420
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    .line 421
    iput p3, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    .line 422
    iget v1, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/android/mms/ui/SlideView;->mImageTop:I

    .line 424
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 425
    iget p4, p0, Lcom/android/mms/ui/SlideView;->VIDEO_MAXIMUM_HEIGHT:I

    .line 426
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 427
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 428
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 429
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 757
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 759
    :cond_0
    return-void

    .line 757
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setLocation(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "location"
    .parameter "locationName"
    .parameter "locationAddr"
    .parameter "Phone"

    .prologue
    .line 1694
    return-void
.end method

.method public setMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;Z)V
    .locals 8
    .parameter "movie"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 974
    iput-boolean p3, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    .line 975
    if-eqz p3, :cond_2

    .line 976
    const v0, 0x7f0b0281

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    .line 982
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-nez v0, :cond_0

    .line 983
    new-instance v0, Lcom/android/mms/ui/SlideView$MovieView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideView$MovieView;-><init>(Lcom/android/mms/ui/SlideView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    .line 986
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {p1}, Landroid/graphics/Movie;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Movie;->height()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/SlideView;->calculate(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 987
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 988
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    const v1, 0x7f040043

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideView$MovieView;->setBackgroundResource(I)V

    .line 993
    :cond_0
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    .line 994
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    .line 995
    iput-wide v6, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    .line 996
    iput-wide v6, p0, Lcom/android/mms/ui/SlideView;->mMovieStart:J

    .line 997
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    .line 998
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    .line 999
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->resetAgifState()V

    .line 1001
    :cond_1
    return-void

    .line 978
    :cond_2
    const v0, 0x7f0b0280

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public setMovieRegion(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1007
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageTop:I

    .line 1008
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    .line 1009
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    .line 1010
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/SlideView;->calculate(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideView$MovieView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1016
    :cond_0
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 968
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 969
    return-void
.end method

.method public setPageNumber(II)V
    .locals 6
    .parameter "current"
    .parameter "total"

    .prologue
    .line 1107
    const v4, 0x7f0b0206

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    .line 1108
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    const v5, 0x7f0b020e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1109
    .local v0, pageNumber:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    const v5, 0x7f0b0207

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1110
    .local v1, subject:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1111
    .local v2, subjectSB:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1113
    .local v3, textToSpannify:Ljava/lang/StringBuilder;
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1116
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->formatMessage_smiley(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1125
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1129
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/SlideView;->RIGHTPADDING:I

    .line 1130
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->adjustSubjectWidth()V

    .line 1132
    return-void
.end method

.method public setSlideViewSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "subject"

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSubject:Ljava/lang/String;

    .line 1136
    return-void
.end method

.method public setSmilPlayer(Lcom/android/mms/dom/smil/SmilPlayer;)V
    .locals 0
    .parameter "sPlayer"

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    .line 1140
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .parameter "name"
    .parameter "text"
    .parameter "isAttachment"
    .parameter "toptext"

    .prologue
    const/16 v5, 0x4e20

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 655
    iput-boolean p4, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    .line 656
    if-eqz p4, :cond_2

    .line 657
    const v0, 0x7f0b0280

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    .line 663
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 664
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    .line 667
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 668
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 672
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 675
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 678
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v5, :cond_3

    .line 680
    :goto_1
    if-nez p3, :cond_1

    .line 681
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 689
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 691
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x4000

    invoke-static {v1}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 692
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const-string v1, "#00AEEF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 698
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/mms/ui/SlideView;->makeSmiley(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 701
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 703
    return-void

    .line 659
    :cond_2
    const v0, 0x7f0b0281

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 678
    :cond_3
    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public setTextRegion(IIIIZ)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "hasaudio"

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 721
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mTextHeight:I

    .line 722
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mTextTop:I

    .line 723
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    sub-int/2addr p4, v0

    .line 725
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    if-lez v0, :cond_3

    .line 726
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    add-int/2addr v0, p4

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    sub-int p4, v0, v1

    .line 734
    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    .line 735
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mAudioViewHeight:I

    sub-int/2addr p4, v0

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    :cond_2
    return-void

    .line 729
    :cond_3
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    if-lez v0, :cond_0

    .line 730
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    add-int/2addr v0, p4

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    sub-int p4, v0, v1

    goto :goto_0
.end method

.method public setTextVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 763
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 765
    :cond_0
    return-void

    .line 763
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 9
    .parameter "name"
    .parameter "video"
    .parameter "toptext"

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 492
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    .line 493
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 494
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 495
    iput-boolean p3, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    .line 496
    if-eqz p3, :cond_0

    .line 497
    const v3, 0x7f0b0281

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    .line 501
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    iget v5, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    invoke-virtual {v3, v6, v4, v6, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 508
    new-instance v3, Lcom/android/mms/ui/TestVideoView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/mms/ui/TestVideoView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    .line 522
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 523
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 524
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 525
    .local v2, videoWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 526
    .local v1, videoHeight:I
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {p0, v2, v1}, Lcom/android/mms/ui/SlideView;->calculateVideo(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    .end local v1           #videoHeight:I
    .end local v2           #videoWidth:I
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    sget v4, Lcom/android/mms/ui/SlideView;->VIDEO_WRAPPER_PADDING:I

    invoke-virtual {v3, v6, v6, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 541
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteTheme()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 542
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    const v4, -0x19191a

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/TestVideoView;->setBackgroundColor(I)V

    .line 550
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v3, p2}, Lcom/android/mms/ui/TestVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 551
    return-void

    .line 499
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    const v3, 0x7f0b0280

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 528
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 544
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/TestVideoView;->setBackgroundColor(I)V

    goto :goto_2
.end method

.method public setVideoRegion(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 743
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    .line 744
    iput p2, p0, Lcom/android/mms/ui/SlideView;->mVideoTop:I

    .line 745
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mVideoLeft:I

    .line 746
    iput p3, p0, Lcom/android/mms/ui/SlideView;->mVideoWidth:I

    .line 747
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 749
    iget p4, p0, Lcom/android/mms/ui/SlideView;->VIDEO_MAXIMUM_HEIGHT:I

    .line 750
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    .line 753
    :cond_0
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v0, :cond_0

    .line 770
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/mms/ui/TestVideoView;->setVisibility(I)V

    .line 772
    :cond_0
    return-void

    .line 770
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 947
    return-void
.end method

.method public startAudio()V
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 777
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 778
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    .line 782
    :goto_0
    return-void

    .line 780
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    goto :goto_0
.end method

.method public startMovie()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1020
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 1021
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1022
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1023
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 1026
    :cond_0
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    .line 1027
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    .line 1028
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/mms/ui/SlideView;->mRecentPausedTime:J

    .line 1029
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mDispatchDrawCalled:Z

    if-eqz v2, :cond_1

    .line 1053
    :goto_0
    return-void

    .line 1033
    :cond_1
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    if-eqz v2, :cond_2

    .line 1035
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    .line 1036
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    .line 1037
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    .line 1039
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1040
    .local v0, resumeTime:J
    iget-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    .line 1043
    .end local v0           #resumeTime:J
    :cond_2
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mDispatchDrawCalled:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v2, :cond_4

    .line 1044
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_3

    .line 1047
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideView$MovieView;->invalidate()V

    goto :goto_0

    .line 1049
    :cond_3
    const-string v2, "Mms/SlideView"

    const-string v3, "mCanvas is null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1052
    :cond_4
    const-string v2, "Mms/SlideView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMovieView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startVideo()V
    .locals 2

    .prologue
    .line 823
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->setVideoView()V

    .line 824
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v0, :cond_0

    .line 829
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/SlideView;->mVideoStartTime:J

    .line 831
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v0}, Lcom/android/mms/ui/TestVideoView;->start()V

    .line 833
    :cond_0
    return-void
.end method

.method public stopAudio()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 785
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 787
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 788
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-nez v0, :cond_2

    .line 793
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    goto :goto_0

    .line 795
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 797
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    .line 798
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 799
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 800
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 801
    const-string v0, "Mms/SlideView"

    const-string v1, "Stop the audio player"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopMovie(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 1082
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    .line 1083
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    .line 1084
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mAgifBitmap:Landroid/graphics/Bitmap;

    .line 1086
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideView$MovieView;->setVisibility(I)V

    .line 1088
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1089
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    .line 1090
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/mms/ui/SlideView;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 1091
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mMovieLeft:I

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mMovieTop:I

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mMovieWidth:I

    iget v3, p0, Lcom/android/mms/ui/SlideView;->mMovieHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/mms/ui/SlideView;->setImageRegion(IIII)V

    .line 1093
    :cond_0
    return-void
.end method

.method public stopVideo(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x0

    .line 836
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v2, :cond_0

    .line 840
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v2}, Lcom/android/mms/ui/TestVideoView;->stopPlayback()V

    .line 841
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v2}, Lcom/android/mms/ui/TestVideoView;->getWidth()I

    move-result v1

    .line 842
    .local v1, videoWidth:I
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v2}, Lcom/android/mms/ui/TestVideoView;->getHeight()I

    move-result v0

    .line 843
    .local v0, videoHeight:I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/ui/SlideView;->removeBorder:Z

    .line 845
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 846
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 847
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 848
    iput-object v4, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    .line 849
    iput-object v4, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    .line 850
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/mms/ui/SlideView;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 852
    iget v2, p0, Lcom/android/mms/ui/SlideView;->mVideoLeft:I

    iget v3, p0, Lcom/android/mms/ui/SlideView;->mVideoTop:I

    iget v4, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/android/mms/ui/SlideView;->setImageRegionForVideostop(IIII)V

    .line 855
    .end local v0           #videoHeight:I
    .end local v1           #videoWidth:I
    :cond_0
    return-void
.end method
