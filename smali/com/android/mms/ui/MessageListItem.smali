.class public Lcom/android/mms/ui/MessageListItem;
.super Landroid/widget/LinearLayout;
.source "MessageListItem.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListItem$SendNowListener;,
        Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;,
        Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;,
        Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;,
        Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;
    }
.end annotation


# static fields
.field public static final BG_INBOX:[I = null

.field private static final BG_INBOX_FOCUS:[I = null

.field private static final BG_INBOX_FOCUS_PRESS:[I = null

.field public static final BG_SENT:[I = null

.field public static final BG_SENTFAILED:[I = null

.field private static final BG_SENTFAILED2:[I = null

.field private static final BG_SENTFAILED_FOCUS:[I = null

.field private static final BG_SENTFAILED_FOCUS_PRESS:[I = null

.field private static final BG_SENT_FOCUS:[I = null

.field private static final BG_SENT_FOCUS_PRESS:[I = null

#the value of this static final field might be set in the static constructor
.field public static final BUBBLE_MIN_HEIGHT_PX:I = 0x0

.field public static final BUBBLE_TEXT_PER_PAGE:I = 0x8c

.field private static final CHAR_TEXTVIEW_NEW_LINE:C = '\n'

.field public static final EXTRA_URLS:Ljava/lang/String; = "com.android.mms.ExtraUrls"

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_PRESS:I = 0x3e8

.field public static final MSG_LIST_CLICK_LINK:I = 0x3

.field public static final MSG_LIST_DELETE_DRAFT_MMS:I = 0xe

.field public static final MSG_LIST_DELETE_DRAFT_SMS:I = 0xf

.field public static final MSG_LIST_EDIT_DRAFT_MMS:I = 0xc

.field public static final MSG_LIST_EDIT_DRAFT_SMS:I = 0xd

.field public static final MSG_LIST_EDIT_MMS:I = 0x1

.field public static final MSG_LIST_EDIT_SMS:I = 0x2

.field private static final SMS_BUBBLE_MAX_CHARS:I = 0xa0

.field public static final SMS_PRIORITY_HIGH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Mms/MessageListItem"

#the value of this static final field might be set in the static constructor
.field private static final TAP_TIMEOUT:I = 0x0

.field private static final TEXT_COLOR_FAILED:I = -0xcdcdce

.field private static final VATTACHMENT_SEPERATOR:[I

.field private static isAnimationPlaying:Z

.field private static lastFailedMsgIdAnimationPlayed:J

.field public static mBubbleClicked:Z

.field private static sTextColorLink:I

.field private static sTextColorNormal:I


# instance fields
.field private DEBUG_ONLY:Z

.field private mActiveMoreButton:Landroid/widget/TextView;

.field private mAddressTextView:Landroid/widget/TextView;

.field protected mAttachView:Landroid/widget/ImageView;

.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mAvatarViewMe:Landroid/widget/QuickContactBadge;

.field private mBodyTextView:Landroid/widget/TextView;

.field private mBubbleIconContainer:Landroid/widget/LinearLayout;

.field private mBubbleLayout:Landroid/widget/LinearLayout;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mCursor:Landroid/database/Cursor;

.field private mDateSeperator:Landroid/widget/TextView;

.field private mDateSeperatorContainer:Landroid/widget/LinearLayout;

.field private mDeliveryReportIcon:Landroid/widget/ImageView;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadingContainer:Landroid/widget/LinearLayout;

.field private mDownloding:Z

.field private mDraftedIcon:Landroid/widget/Button;

.field private final mDraftedIconClickListener:Landroid/view/View$OnClickListener;

.field private mFailedIcon:Landroid/widget/Button;

.field private final mFailedIconClickListener:Landroid/view/View$OnClickListener;

.field protected mGroupView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field protected mIndicatorContainer:Landroid/view/View;

.field protected mIndicatorDraftedTextView:Landroid/widget/TextView;

.field protected mIndicatorFailedTextView:Landroid/widget/TextView;

.field protected mIndicatorLockMsg:Landroid/widget/ImageView;

.field private mIndicatorMarginLeftPx:I

.field private mIndicatorMarginRightPx:I

.field protected mIndicatorScheuldedTexView:Landroid/widget/TextView;

.field protected mIndicatorTextView:Landroid/widget/TextView;

.field private mIsAlignLeft:Z

.field private final mLongClickHandler:Landroid/os/Handler;

.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field private mMmsSlideContainer:Landroid/widget/LinearLayout;

.field private mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

.field private mMsgListItemContents:Landroid/widget/LinearLayout;

.field private mMsgListItemLayout:Landroid/widget/LinearLayout;

.field private final mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private final mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPriorityIndicator:Landroid/widget/ImageView;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field private mReadReportIcon:Landroid/widget/ImageView;

.field protected mSafeMMSLogo:Landroid/widget/ImageView;

.field private mScheduledIcon:Landroid/widget/Button;

.field private final mScheduledIconClickListener:Landroid/view/View$OnClickListener;

.field private mSelectedText:Ljava/lang/String;

.field private mSelectedUrl:Ljava/lang/String;

.field private mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSendNowAddr:Ljava/lang/String;

.field private mSendNowBody:Ljava/lang/String;

.field private mSendNowConfirmDialog:Landroid/app/AlertDialog;

.field private mSendNowDeliveryReport:Z

.field private mSendNowLocked:Z

.field private mSendNowReadReport:Z

.field private mSendNowSize:J

.field private mSendNowThreadId:J

.field private mSendNowType:Ljava/lang/String;

.field private mSendNowUri:Landroid/net/Uri;

.field private mSenderInfo:Landroid/widget/TextView;

.field private mSubjectContentSeperator:Landroid/view/View;

.field private mSubjectTextView:Landroid/widget/TextView;

.field private mTranslateIcon:Landroid/widget/Button;

.field private final mTranslateIconClickListener:Landroid/view/View$OnClickListener;

.field private mTruncateLongMessages:Z

.field protected mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

.field protected mVAttachmentSeparator:Landroid/view/View;

.field private mVattachmentClickListener:Landroid/view/View$OnClickListener;

.field private onAvataClick:Landroid/view/View$OnClickListener;

.field private onAvataMeClick:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x6

    .line 135
    sput-boolean v3, Lcom/android/mms/ui/MessageListItem;->mBubbleClicked:Z

    .line 139
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_INBOX:[I

    .line 148
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_INBOX_FOCUS:[I

    .line 157
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_INBOX_FOCUS_PRESS:[I

    .line 166
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENT:[I

    .line 175
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->VATTACHMENT_SEPERATOR:[I

    .line 183
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENT_FOCUS:[I

    .line 192
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENT_FOCUS_PRESS:[I

    .line 201
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    .line 210
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED_FOCUS:[I

    .line 219
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED_FOCUS_PRESS:[I

    .line 228
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED2:[I

    .line 247
    const/high16 v0, 0x422c

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->BUBBLE_MIN_HEIGHT_PX:I

    .line 288
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/mms/ui/MessageListItem;->lastFailedMsgIdAnimationPlayed:J

    .line 289
    sput-boolean v3, Lcom/android/mms/ui/MessageListItem;->isAnimationPlaying:Z

    .line 335
    sput v2, Lcom/android/mms/ui/MessageListItem;->sTextColorNormal:I

    .line 336
    sput v2, Lcom/android/mms/ui/MessageListItem;->sTextColorLink:I

    .line 2395
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->LONGPRESS_TIMEOUT:I

    .line 2396
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->TAP_TIMEOUT:I

    return-void

    .line 139
    :array_0
    .array-data 0x4
        0xeet 0x0t 0x2t 0x7ft
        0xeft 0x0t 0x2t 0x7ft
        0xf0t 0x0t 0x2t 0x7ft
        0xf1t 0x0t 0x2t 0x7ft
        0xf2t 0x0t 0x2t 0x7ft
        0xeet 0x0t 0x2t 0x7ft
    .end array-data

    .line 148
    :array_1
    .array-data 0x4
        0x63t 0x1t 0x2t 0x7ft
        0x66t 0x1t 0x2t 0x7ft
        0x69t 0x1t 0x2t 0x7ft
        0x6ct 0x1t 0x2t 0x7ft
        0x6ft 0x1t 0x2t 0x7ft
        0x63t 0x1t 0x2t 0x7ft
    .end array-data

    .line 157
    :array_2
    .array-data 0x4
        0xe9t 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
        0xebt 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
        0xedt 0x0t 0x2t 0x7ft
        0xe9t 0x0t 0x2t 0x7ft
    .end array-data

    .line 166
    :array_3
    .array-data 0x4
        0x2t 0x1t 0x2t 0x7ft
        0x3t 0x1t 0x2t 0x7ft
        0x4t 0x1t 0x2t 0x7ft
        0x5t 0x1t 0x2t 0x7ft
        0x6t 0x1t 0x2t 0x7ft
        0x3t 0x1t 0x2t 0x7ft
    .end array-data

    .line 175
    :array_4
    .array-data 0x4
        0x1bt 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 183
    :array_5
    .array-data 0x4
        0x72t 0x1t 0x2t 0x7ft
        0x75t 0x1t 0x2t 0x7ft
        0x78t 0x1t 0x2t 0x7ft
        0x7bt 0x1t 0x2t 0x7ft
        0x7et 0x1t 0x2t 0x7ft
        0x72t 0x1t 0x2t 0x7ft
    .end array-data

    .line 192
    :array_6
    .array-data 0x4
        0xfdt 0x0t 0x2t 0x7ft
        0xfet 0x0t 0x2t 0x7ft
        0xfft 0x0t 0x2t 0x7ft
        0x0t 0x1t 0x2t 0x7ft
        0x1t 0x1t 0x2t 0x7ft
        0xfdt 0x0t 0x2t 0x7ft
    .end array-data

    .line 201
    :array_7
    .array-data 0x4
        0xf8t 0x0t 0x2t 0x7ft
        0xf9t 0x0t 0x2t 0x7ft
        0xfat 0x0t 0x2t 0x7ft
        0xfbt 0x0t 0x2t 0x7ft
        0xfct 0x0t 0x2t 0x7ft
        0xf8t 0x0t 0x2t 0x7ft
    .end array-data

    .line 210
    :array_8
    .array-data 0x4
        0x53t 0x1t 0x2t 0x7ft
        0x56t 0x1t 0x2t 0x7ft
        0x59t 0x1t 0x2t 0x7ft
        0x5ct 0x1t 0x2t 0x7ft
        0x5ft 0x1t 0x2t 0x7ft
        0x53t 0x1t 0x2t 0x7ft
    .end array-data

    .line 219
    :array_9
    .array-data 0x4
        0xf3t 0x0t 0x2t 0x7ft
        0xf4t 0x0t 0x2t 0x7ft
        0xf5t 0x0t 0x2t 0x7ft
        0xf6t 0x0t 0x2t 0x7ft
        0xf7t 0x0t 0x2t 0x7ft
        0xf3t 0x0t 0x2t 0x7ft
    .end array-data

    .line 228
    :array_a
    .array-data 0x4
        0x52t 0x1t 0x2t 0x7ft
        0x55t 0x1t 0x2t 0x7ft
        0x58t 0x1t 0x2t 0x7ft
        0x5bt 0x1t 0x2t 0x7ft
        0x5et 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 350
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 254
    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    .line 256
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    .line 257
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->DEBUG_ONLY:Z

    .line 304
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    .line 307
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 318
    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;

    .line 319
    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;

    .line 320
    iput-wide v4, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J

    .line 321
    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;

    .line 322
    iput-wide v4, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J

    .line 323
    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;

    .line 324
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z

    .line 326
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowDeliveryReport:Z

    .line 327
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowReadReport:Z

    .line 1421
    new-instance v0, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVattachmentClickListener:Landroid/view/View$OnClickListener;

    .line 2374
    new-instance v0, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 2386
    new-instance v0, Lcom/android/mms/ui/MessageListItem$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$9;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2399
    new-instance v0, Lcom/android/mms/ui/MessageListItem$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$10;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;

    .line 2411
    new-instance v0, Lcom/android/mms/ui/MessageListItem$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$11;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 2549
    new-instance v0, Lcom/android/mms/ui/MessageListItem$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$12;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    .line 2555
    new-instance v0, Lcom/android/mms/ui/MessageListItem$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$13;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTranslateIconClickListener:Landroid/view/View$OnClickListener;

    .line 2568
    new-instance v0, Lcom/android/mms/ui/MessageListItem$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$14;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIconClickListener:Landroid/view/View$OnClickListener;

    .line 2725
    new-instance v0, Lcom/android/mms/ui/MessageListItem$15;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$15;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDraftedIconClickListener:Landroid/view/View$OnClickListener;

    .line 2873
    new-instance v0, Lcom/android/mms/ui/MessageListItem$16;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$16;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->onAvataClick:Landroid/view/View$OnClickListener;

    .line 2900
    new-instance v0, Lcom/android/mms/ui/MessageListItem$17;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$17;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->onAvataMeClick:Landroid/view/View$OnClickListener;

    .line 351
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->initComposerVariable()V

    .line 352
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 355
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 254
    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    .line 256
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    .line 257
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->DEBUG_ONLY:Z

    .line 304
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    .line 307
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 318
    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;

    .line 319
    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;

    .line 320
    iput-wide v4, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J

    .line 321
    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;

    .line 322
    iput-wide v4, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J

    .line 323
    iput-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;

    .line 324
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z

    .line 326
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowDeliveryReport:Z

    .line 327
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowReadReport:Z

    .line 1421
    new-instance v0, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVattachmentClickListener:Landroid/view/View$OnClickListener;

    .line 2374
    new-instance v0, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 2386
    new-instance v0, Lcom/android/mms/ui/MessageListItem$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$9;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2399
    new-instance v0, Lcom/android/mms/ui/MessageListItem$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$10;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;

    .line 2411
    new-instance v0, Lcom/android/mms/ui/MessageListItem$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$11;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 2549
    new-instance v0, Lcom/android/mms/ui/MessageListItem$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$12;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    .line 2555
    new-instance v0, Lcom/android/mms/ui/MessageListItem$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$13;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTranslateIconClickListener:Landroid/view/View$OnClickListener;

    .line 2568
    new-instance v0, Lcom/android/mms/ui/MessageListItem$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$14;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIconClickListener:Landroid/view/View$OnClickListener;

    .line 2725
    new-instance v0, Lcom/android/mms/ui/MessageListItem$15;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$15;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDraftedIconClickListener:Landroid/view/View$OnClickListener;

    .line 2873
    new-instance v0, Lcom/android/mms/ui/MessageListItem$16;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$16;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->onAvataClick:Landroid/view/View$OnClickListener;

    .line 2900
    new-instance v0, Lcom/android/mms/ui/MessageListItem$17;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$17;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->onAvataMeClick:Landroid/view/View$OnClickListener;

    .line 357
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->initComposerVariable()V

    .line 358
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->startAnimation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/mms/ui/MessageListItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;ZLcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->presentMms(Lcom/android/mms/ui/MessageItem;ZLcom/android/mms/ui/MessageListItem;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindBodyTextView(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsView()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/MessageListItem;)Landroid/text/style/ForegroundColorSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    sput-boolean p0, Lcom/android/mms/ui/MessageListItem;->isAnimationPlaying:Z

    return p0
.end method

.method static synthetic access$3100()I
    .locals 1

    .prologue
    .line 127
    sget v0, Lcom/android/mms/ui/MessageListItem;->TAP_TIMEOUT:I

    return v0
.end method

.method static synthetic access$3200()I
    .locals 1

    .prologue
    .line 127
    sget v0, Lcom/android/mms/ui/MessageListItem;->LONGPRESS_TIMEOUT:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/MessageListItem;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/MessageListItem;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/mms/ui/MessageListItem;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/mms/ui/MessageListItem;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/MessageListItem;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J

    return-wide v0
.end method

.method static synthetic access$4502(Lcom/android/mms/ui/MessageListItem;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J

    return-wide p1
.end method

.method static synthetic access$4600(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/MessageListItem;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J

    return-wide v0
.end method

.method static synthetic access$4702(Lcom/android/mms/ui/MessageListItem;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J

    return-wide p1
.end method

.method static synthetic access$4800(Lcom/android/mms/ui/MessageListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/android/mms/ui/MessageListItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/MessageListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowDeliveryReport:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/mms/ui/MessageListItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowDeliveryReport:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/MessageListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowReadReport:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/android/mms/ui/MessageListItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListItem;->mSendNowReadReport:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->deleteDraftMessage()V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->editDraftMessage()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static appendMoreText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)V
    .locals 7
    .parameter "context"
    .parameter "buf"

    .prologue
    const/16 v6, 0x21

    .line 1795
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1796
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0c013e

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1797
    .local v3, strMore:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 1798
    .local v2, startMore:I
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v1, v2, v4

    .line 1800
    .local v1, endMore:I
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1802
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x205000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1803
    .local v0, color:I
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1805
    new-instance v4, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct {v4, v5}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {p1, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1807
    return-void
.end method

.method public static applyBodyTextViewColor(Landroid/widget/TextView;Z)V
    .locals 1
    .parameter "tv"
    .parameter "isFailedOrScheduled"

    .prologue
    .line 2250
    if-eqz p1, :cond_0

    const v0, -0xcdcdce

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2251
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->getLinkTextColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 2252
    return-void

    .line 2250
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->getNormalTextColor(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private bindBodyTextView(Lcom/android/mms/ui/MessageItem;)V
    .locals 9
    .parameter "msgItem"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1448
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1449
    .local v0, formattedMessage:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1450
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {p1, v4, v3, v3}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1451
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    .line 1456
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1457
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1458
    .local v1, text:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    if-eqz v4, :cond_1

    .line 1462
    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->getBytesForDisplayFolding()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/mms/util/TelephonyUtils;->substringByByteSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1464
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1469
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1470
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1471
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v5

    if-nez v5, :cond_2

    iget-wide v5, p1, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    invoke-static {v4, v2}, Lcom/android/mms/ui/MessageListItem;->applyBodyTextViewColor(Landroid/widget/TextView;Z)V

    .line 1472
    return-void
.end method

.method private bindCmasSmsAddressTextView(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;)V
    .locals 3
    .parameter "msgItem"
    .parameter "context"

    .prologue
    .line 1432
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1433
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;->formatCmasSmsAddress(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1434
    .local v0, address:Ljava/lang/String;
    iget-boolean v1, p1, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1437
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1439
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1444
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1441
    .restart local v0       #address:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindCommonMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "msgItem"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v5, 0x8

    .line 1187
    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    .line 1190
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 1191
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 1194
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 1195
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindSubjectTextView(Lcom/android/mms/ui/MessageItem;)V

    .line 1196
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;->bindCmasSmsAddressTextView(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;)V

    .line 1199
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindVAttachmentList(Lcom/android/mms/ui/MessageItem;)V

    .line 1200
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    .line 1203
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mPriorityIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p1}, Lcom/android/mms/ui/MessageListItem;->getPriorityType(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)I

    move-result v0

    const/16 v4, 0x82

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 1210
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1211
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->checkLongText(Lcom/android/mms/ui/MessageItem;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->truncateLongMessagePref:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    .line 1212
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    if-eqz v0, :cond_6

    .line 1213
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1214
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    new-instance v3, Lcom/android/mms/ui/MessageListItem$6;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$6;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1236
    :cond_1
    :goto_3
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1237
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v0

    invoke-direct {p0, p1, v0, p0}, Lcom/android/mms/ui/MessageListItem;->presentMms(Lcom/android/mms/ui/MessageItem;ZLcom/android/mms/ui/MessageListItem;)V

    .line 1244
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1245
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1246
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1247
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1248
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    if-eq v0, v1, :cond_a

    .line 1249
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v0, v1, :cond_8

    .line 1250
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1254
    :goto_5
    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    if-eqz v0, :cond_9

    .line 1255
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1292
    :cond_2
    :goto_6
    return-void

    :cond_3
    move v0, v2

    .line 1194
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 1204
    goto :goto_1

    :cond_5
    move v0, v2

    .line 1211
    goto :goto_2

    .line 1231
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1240
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindBodyTextView(Lcom/android/mms/ui/MessageItem;)V

    .line 1241
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsView()V

    goto :goto_4

    .line 1252
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 1257
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 1260
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1261
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 1264
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1265
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 1267
    :cond_c
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1268
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1269
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    if-eq v0, v1, :cond_f

    .line 1270
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v0, v1, :cond_d

    .line 1272
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1276
    :goto_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    if-eqz v0, :cond_e

    .line 1277
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 1274
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 1279
    :cond_e
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 1282
    :cond_f
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1283
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 1286
    :cond_10
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1287
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private bindDateViewTextAndColor(Ljava/lang/String;ZZZLjava/lang/String;ZZ)V
    .locals 2
    .parameter "timestamp"
    .parameter "isFailed"
    .parameter "isOutgoing"
    .parameter "isInbox"
    .parameter "messageType"
    .parameter "isQueued"
    .parameter "isReserved"

    .prologue
    .line 2257
    const/4 v0, 0x0

    .line 2261
    .local v0, progressBarVisible:Z
    if-eqz p2, :cond_1

    .line 2310
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 2311
    return-void

    .line 2266
    :cond_1
    if-nez p7, :cond_0

    .line 2273
    if-eqz p3, :cond_0

    goto :goto_0
.end method

.method private bindDateViewTextAndColor(Ljava/lang/String;ZZZLjava/lang/String;ZZZ)V
    .locals 2
    .parameter "timestamp"
    .parameter "isFailed"
    .parameter "isOutgoing"
    .parameter "isInbox"
    .parameter "messageType"
    .parameter "isQueued"
    .parameter "isReserved"
    .parameter "isDrafted"

    .prologue
    .line 2317
    const/4 v0, 0x0

    .line 2321
    .local v0, progressBarVisible:Z
    if-eqz p2, :cond_1

    .line 2370
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 2371
    return-void

    .line 2324
    :cond_1
    if-nez p3, :cond_2

    if-nez p8, :cond_0

    .line 2328
    :cond_2
    if-nez p7, :cond_0

    .line 2333
    if-eqz p3, :cond_0

    goto :goto_0
.end method

.method private bindIndicator(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 11
    .parameter "msgItem"
    .parameter "isAlignLeft"

    .prologue
    .line 1312
    iget-object v8, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    if-nez v8, :cond_7

    const-string v5, ""

    .line 1313
    .local v5, time:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c002e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1314
    .local v2, mms:Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1316
    .local v4, sb:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorTextView:Landroid/widget/TextView;

    .line 1318
    .local v6, tv:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isUseCustomBg()Z

    move-result v7

    .line 1320
    .local v7, useCustomBg:Z
    if-eqz v7, :cond_0

    .line 1321
    const/16 v8, 0xeb

    const/16 v9, 0xeb

    const/16 v10, 0xeb

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1323
    :cond_0
    if-eqz p2, :cond_9

    .line 1324
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1325
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1326
    :cond_2
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1327
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x3

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1328
    iget v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorMarginLeftPx:I

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1329
    const/4 v8, 0x0

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1341
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_3

    .line 1342
    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1345
    :cond_3
    iget-boolean v8, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v8, :cond_4

    .line 1347
    if-eqz v7, :cond_c

    .line 1348
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020017

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1352
    .local v1, lockIcon:Landroid/graphics/drawable/Drawable;
    :goto_3
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorLockMsg:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1356
    .end local v1           #lockIcon:Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1358
    if-eqz v7, :cond_d

    .line 1359
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020016

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1363
    .local v0, GroupIndicator:Landroid/graphics/drawable/Drawable;
    :goto_4
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mGroupView:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1364
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mGroupView:Landroid/widget/ImageView;

    iget-boolean v9, p1, Lcom/android/mms/ui/MessageItem;->mGroupMessage:Z

    invoke-static {v8, v9}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 1367
    .end local v0           #GroupIndicator:Landroid/graphics/drawable/Drawable;
    :cond_5
    if-eqz v7, :cond_e

    .line 1368
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorScheuldedTexView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090035

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1369
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorFailedTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090035

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1370
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorDraftedTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090035

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1377
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1378
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isQueuedMessage()Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x1

    :goto_6
    invoke-static {v9, v8}, Lcom/android/mms/util/NetworkConnectionUtils;->isMsgNetworkAvailable(Landroid/content/Context;Z)Z

    move-result v8

    if-nez v8, :cond_10

    .line 1379
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 1380
    const/16 v8, 0x20

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c009d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    :goto_7
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1390
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1391
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isQueuedMessage()Z

    move-result v8

    if-eqz v8, :cond_15

    :cond_6
    const/4 v8, 0x1

    :goto_8
    invoke-static {v9, v8}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 1395
    :goto_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1396
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorDraftedTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 1397
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_18

    .line 1398
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorScheuldedTexView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 1402
    :goto_a
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorFailedTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 1408
    :goto_b
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorLockMsg:Landroid/widget/ImageView;

    iget-boolean v9, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-static {v8, v9}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 1409
    return-void

    .line 1312
    .end local v2           #mms:Ljava/lang/String;
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    .end local v5           #time:Ljava/lang/String;
    .end local v6           #tv:Landroid/widget/TextView;
    .end local v7           #useCustomBg:Z
    :cond_7
    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_0

    .line 1313
    .restart local v5       #time:Ljava/lang/String;
    :cond_8
    const-string v2, ""

    goto/16 :goto_1

    .line 1331
    .restart local v2       #mms:Ljava/lang/String;
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    .restart local v6       #tv:Landroid/widget/TextView;
    .restart local v7       #useCustomBg:Z
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1332
    :cond_a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1333
    :cond_b
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1334
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x5

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1335
    const/4 v8, 0x0

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1336
    iget v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorMarginRightPx:I

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1337
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x5

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_2

    .line 1350
    :cond_c
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0201e3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1       #lockIcon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 1361
    .end local v1           #lockIcon:Landroid/graphics/drawable/Drawable;
    :cond_d
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #GroupIndicator:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_4

    .line 1372
    .end local v0           #GroupIndicator:Landroid/graphics/drawable/Drawable;
    :cond_e
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorScheuldedTexView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090034

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1373
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorFailedTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090008

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1374
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorDraftedTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090008

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 1378
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 1382
    :cond_10
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v8

    if-eqz v8, :cond_11

    const/4 v8, 0x1

    :goto_c
    invoke-static {v10, v8}, Lcom/android/mms/util/NetworkConnectionUtils;->isMsgNetworkAvailable(Landroid/content/Context;Z)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v8

    if-nez v8, :cond_12

    const/4 v8, 0x1

    :goto_d
    invoke-static {v9, v8}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_11
    const/4 v8, 0x0

    goto :goto_c

    :cond_12
    const/4 v8, 0x0

    goto :goto_d

    .line 1386
    :cond_13
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v8

    if-nez v8, :cond_14

    const/4 v8, 0x1

    :goto_e
    invoke-static {v9, v8}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_14
    const/4 v8, 0x0

    goto :goto_e

    .line 1391
    :cond_15
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 1393
    :cond_16
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v8

    if-nez v8, :cond_17

    const/4 v8, 0x1

    :goto_f
    invoke-static {v9, v8}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_9

    :cond_17
    const/4 v8, 0x0

    goto :goto_f

    .line 1400
    :cond_18
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorScheuldedTexView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReservedMessage()Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_a

    .line 1404
    :cond_19
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorDraftedTextView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 1405
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorScheuldedTexView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReservedMessage()Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 1406
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorFailedTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_b
.end method

.method private bindNotifInd(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "msgItem"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1013
    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    .line 1014
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsView()V

    .line 1016
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindSubjectTextView(Lcom/android/mms/ui/MessageItem;)V

    .line 1019
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1020
    sget-object v4, Lcom/android/mms/ui/FontSizeController;->BUBBLE_FONT_SIZE_7_STEP:[F

    const/4 v5, 0x1

    aget v0, v4, v5

    .line 1028
    .local v0, fontSize:F
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1030
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v6, 0x7f0c008a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    add-int/lit16 v5, v5, 0x3ff

    div-int/lit16 v5, v5, 0x400

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x200e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0011

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1036
    .local v2, msgSizeText:Ljava/lang/String;
    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1037
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1038
    .local v1, formattedMessage:Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 1040
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p1, v4, v5, v6}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;ZZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1041
    invoke-virtual {p1, v1}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    .line 1044
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1045
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    .end local v1           #formattedMessage:Ljava/lang/CharSequence;
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mExpireDate:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1051
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1052
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mExpireDate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v4

    if-nez v4, :cond_2

    iget-wide v6, p1, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v8, 0x1

    cmp-long v4, v6, v8

    if-nez v4, :cond_7

    :cond_2
    const/4 v4, 0x1

    :goto_3
    invoke-static {v5, v4}, Lcom/android/mms/ui/MessageListItem;->applyBodyTextViewColor(Landroid/widget/TextView;Z)V

    .line 1060
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1063
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentSeparator:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/VAttachmentListView;->setVisibility(I)V

    .line 1067
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v3

    .line 1068
    .local v3, state:I
    packed-switch v3, :pswitch_data_0

    .line 1079
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 1080
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1083
    iget-boolean v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    if-eqz v4, :cond_8

    .line 1084
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1085
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    .line 1091
    :goto_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1092
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1093
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 1094
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v5, 0x7f020011

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1095
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-static {p2}, Lcom/android/mms/ui/MessageListItem;->getNormalTextColor(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1096
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 1097
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    .line 1182
    :goto_5
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    .line 1183
    return-void

    .line 1022
    .end local v0           #fontSize:F
    .end local v2           #msgSizeText:Ljava/lang/String;
    .end local v3           #state:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 1023
    sget-object v4, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_FONT_SIZE_WVGA:[F

    const/4 v5, 0x1

    aget v0, v4, v5

    .restart local v0       #fontSize:F
    goto/16 :goto_0

    .line 1025
    .end local v0           #fontSize:F
    :cond_4
    sget-object v4, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_FONT_SIZE:[F

    const/4 v5, 0x1

    aget v0, v4, v5

    .restart local v0       #fontSize:F
    goto/16 :goto_0

    .line 1047
    .restart local v2       #msgSizeText:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1054
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1058
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1070
    .restart local v3       #state:I
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 1071
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1072
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    .line 1087
    :cond_8
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 1099
    :cond_9
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v5, 0x7f0201d1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1100
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2050085

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1102
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 1103
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    .line 1104
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/mms/ui/MessageListItem$5;

    invoke-direct {v5, p0, p1}, Lcom/android/mms/ui/MessageListItem$5;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 1068
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
    .end packed-switch
.end method

.method private bindSenderTextView(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter "msgItem"

    .prologue
    const v3, 0x7f090036

    const/4 v6, 0x0

    .line 1498
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedSender()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1499
    .local v0, formattedSender:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1500
    invoke-static {p1}, Lcom/android/mms/ui/MessageListItem;->formatSenderInfo(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1501
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedSender(Ljava/lang/CharSequence;)V

    .line 1503
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v1

    invoke-static {v1}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/android/mms/ui/MessageItem;->mIsGroupMessage:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1505
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1506
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isUseCustomBg()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1507
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1508
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    const/high16 v2, 0x4000

    const/high16 v3, 0x3f80

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1513
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1517
    :goto_1
    return-void

    .line 1510
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1511
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v6, v6, v6, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 1515
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private bindSeperators(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter "msgItem"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1296
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    move v1, v3

    .line 1297
    .local v1, showingSubject:Z
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->hasVisibleContent()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    :cond_1
    move v0, v3

    .line 1300
    .local v0, showingContents:Z
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    invoke-virtual {v5}, Lcom/android/mms/ui/VAttachmentListView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_6

    move v2, v3

    .line 1302
    .local v2, showingVAttachments:Z
    :goto_2
    if-nez v0, :cond_2

    .line 1303
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsView()V

    .line 1306
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectContentSeperator:Landroid/view/View;

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    move v5, v3

    :goto_3
    invoke-static {v6, v5}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 1307
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentSeparator:Landroid/view/View;

    if-eqz v2, :cond_8

    if-nez v1, :cond_3

    if-eqz v0, :cond_8

    :cond_3
    :goto_4
    invoke-static {v5, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 1308
    return-void

    .end local v0           #showingContents:Z
    .end local v1           #showingSubject:Z
    .end local v2           #showingVAttachments:Z
    :cond_4
    move v1, v4

    .line 1296
    goto :goto_0

    .restart local v1       #showingSubject:Z
    :cond_5
    move v0, v4

    .line 1297
    goto :goto_1

    .restart local v0       #showingContents:Z
    :cond_6
    move v2, v4

    .line 1300
    goto :goto_2

    .restart local v2       #showingVAttachments:Z
    :cond_7
    move v5, v4

    .line 1306
    goto :goto_3

    :cond_8
    move v3, v4

    .line 1307
    goto :goto_4
.end method

.method private bindSubjectTextView(Lcom/android/mms/ui/MessageItem;)V
    .locals 8
    .parameter "msgItem"

    .prologue
    const/4 v2, 0x0

    .line 1475
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedSubject()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1476
    .local v0, formattedSubject:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1477
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v2, v2}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1478
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedSubject(Ljava/lang/CharSequence;)V

    .line 1481
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1482
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1494
    :goto_0
    return-void

    .line 1484
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1485
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1487
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isTextRTL(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1488
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1489
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x5

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1490
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1492
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v4

    if-nez v4, :cond_3

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    invoke-static {v3, v2}, Lcom/android/mms/ui/MessageListItem;->applyBodyTextViewColor(Landroid/widget/TextView;Z)V

    goto :goto_0
.end method

.method private checkLongText(Lcom/android/mms/ui/MessageItem;)Z
    .locals 7
    .parameter "pMsgItem"

    .prologue
    const/4 v6, 0x1

    .line 2928
    const/4 v2, 0x0

    .line 2930
    .local v2, retVal:Z
    move-object v1, p1

    .line 2931
    .local v1, msgItem:Lcom/android/mms/ui/MessageItem;
    const/4 v3, 0x0

    .line 2933
    .local v3, text:Ljava/lang/String;
    const-string v4, "sms"

    iget-object v5, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2935
    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2936
    .local v0, formattedMessage:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 2937
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v6, v6}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2938
    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    .line 2941
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2949
    .end local v0           #formattedMessage:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->getByteSize(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->getBytesForDisplayFolding()I

    move-result v5

    if-le v4, v5, :cond_3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageListItem;->urlIncluded(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2955
    const/4 v2, 0x1

    .line 2960
    :goto_1
    const-string v4, "Mms/MessageListItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkLongText:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2961
    return v2

    .line 2945
    :cond_2
    const-string v4, "mms"

    iget-object v5, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2946
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2957
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private deleteDraftMessage()V
    .locals 3

    .prologue
    .line 3076
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 3077
    const/16 v1, 0xf

    .line 3078
    .local v1, what:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3079
    const/16 v1, 0xe

    .line 3082
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3083
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3084
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3086
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #what:I
    :cond_1
    return-void
.end method

.method private drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter "msgItem"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x5

    const/4 v2, 0x3

    .line 2025
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    .line 2026
    .local v0, boxId:I
    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    .line 2027
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2028
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemContents:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2029
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v4, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    if-eqz v4, :cond_3

    move v4, v2

    :goto_3
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2031
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v4, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    if-eqz v4, :cond_4

    :goto_4
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2033
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getHighlightMsgID()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getHighlightMsgType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2034
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessageListItem;->setSearchedMessageBubbleStyle(Lcom/android/mms/ui/MessageItem;I)V

    .line 2039
    :goto_5
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/MessageListItem;->bindIndicator(Lcom/android/mms/ui/MessageItem;Z)V

    .line 2040
    return-void

    .line 2026
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 2027
    goto :goto_1

    :cond_2
    move v1, v3

    .line 2028
    goto :goto_2

    :cond_3
    move v4, v3

    .line 2029
    goto :goto_3

    :cond_4
    move v2, v3

    .line 2031
    goto :goto_4

    .line 2036
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessageListItem;->setMessageBubbleStyle(Lcom/android/mms/ui/MessageItem;I)V

    goto :goto_5
.end method

.method private drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    const/4 v1, 0x0

    .line 1898
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    .line 1962
    :goto_0
    :pswitch_0
    return-void

    .line 1922
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1923
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    goto :goto_0

    .line 1926
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 1928
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    goto :goto_0

    .line 1898
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private editDraftMessage()V
    .locals 3

    .prologue
    .line 3062
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 3063
    const/16 v1, 0xd

    .line 3064
    .local v1, what:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3065
    const/16 v1, 0xc

    .line 3068
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3069
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3070
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3072
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #what:I
    :cond_1
    return-void
.end method

.method private findFirstValidSlide(Lcom/android/mms/ui/MessageItem;)I
    .locals 8
    .parameter "msgItem"

    .prologue
    .line 3011
    const/4 v1, 0x0

    .line 3013
    .local v1, retVal:I
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 3016
    :cond_0
    const/4 v5, 0x0

    .line 3038
    :goto_0
    return v5

    .line 3019
    :cond_1
    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    .line 3020
    .local v3, totalSize:I
    const/4 v4, 0x0

    .line 3021
    .local v4, vSlideModel:Lcom/android/mms/model/SlideModel;
    const/4 v2, 0x1

    .line 3022
    .local v2, slideIsNull:Z
    const/4 v0, 0x0

    .local v0, count:I
    :goto_1
    if-ge v0, v3, :cond_5

    if-eqz v2, :cond_5

    .line 3023
    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 3024
    if-eqz v4, :cond_4

    .line 3025
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3030
    :cond_3
    const-string v5, "Mms/MessageListItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vSlideModel not null, count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3031
    const/4 v2, 0x0

    .line 3032
    add-int/lit8 v1, v0, 0x1

    .line 3022
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3037
    :cond_5
    const-string v5, "Mms/MessageListItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstValidSlide="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v1

    .line 3038
    goto :goto_0
.end method

.method public static formatBody(Ljava/lang/String;ZZLandroid/content/Context;Lcom/android/mms/util/SmileyParser;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "body"
    .parameter "isMms"
    .parameter "hasLocation"
    .parameter "context"
    .parameter "parser"

    .prologue
    const/4 v2, 0x0

    .line 1771
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1772
    const-string v0, ""

    .line 1790
    :cond_0
    :goto_0
    return-object v0

    .line 1775
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1778
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v4

    if-le v3, v4, :cond_3

    if-nez p2, :cond_3

    const/4 v1, 0x1

    .line 1779
    .local v1, needEllipsis:Z
    :goto_1
    if-eqz v1, :cond_2

    .line 1780
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1784
    :cond_2
    invoke-virtual {p4, p0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1786
    if-eqz v1, :cond_0

    .line 1787
    invoke-static {p3, v0}, Lcom/android/mms/ui/MessageListItem;->appendMoreText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .end local v1           #needEllipsis:Z
    :cond_3
    move v1, v2

    .line 1778
    goto :goto_1
.end method

.method public static formatCBNumber(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "item"

    .prologue
    .line 1761
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1762
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1763
    const-string v1, "\nCB#: "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1764
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1766
    :cond_0
    return-object v0
.end method

.method private formatCmasSmsAddress(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "msgItem"
    .parameter "context"

    .prologue
    .line 1521
    invoke-static {}, Lcom/android/mms/MmsConfig;->getmCmasMessageTMOMenuTextFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1522
    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mServiceCategory:I

    invoke-static {v1}, Lcom/android/mms/transaction/CmasReceiverService;->getTmoServiceCategory(I)Ljava/lang/String;

    move-result-object v0

    .line 1526
    .local v0, address:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 1527
    :cond_0
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1529
    :cond_1
    return-object v0

    .line 1524
    .end local v0           #address:Ljava/lang/String;
    :cond_2
    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mServiceCategory:I

    invoke-static {v1}, Lcom/android/mms/transaction/CmasReceiverService;->getServiceCategory(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #address:Ljava/lang/String;
    goto :goto_0
.end method

.method public static formatContactInfo(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "item"

    .prologue
    .line 1823
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1824
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableContactInfoInBubble()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1825
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 1826
    .local v1, contactInfo:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1827
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1830
    .end local v1           #contactInfo:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1831
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v3

    invoke-static {v3}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/mms/ui/MessageItem;->mIncomingGroupMessage:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1833
    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1834
    .local v2, displayAddress:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1835
    const-string v3, ":"

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1838
    .end local v2           #displayAddress:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "when"

    .prologue
    .line 2765
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 2768
    .local v3, df:Ljava/text/DateFormat;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2771
    .local v4, formatedDate:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2772
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2773
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2774
    .local v1, dayOfWeek:I
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getDayOfWeekString(I)Ljava/lang/String;

    move-result-object v2

    .line 2776
    .local v2, dayOfWeekStr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 2778
    .local v5, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static formatMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;ZZ)Ljava/lang/CharSequence;
    .locals 11
    .parameter "item"
    .parameter "context"
    .parameter "formatBody"
    .parameter "formatCallback"

    .prologue
    .line 1729
    new-instance v4, Landroid/text/SpannableStringBuilder;

    const-string v0, ""

    invoke-direct {v4, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1730
    .local v4, buf:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v10

    .line 1732
    .local v10, parser:Lcom/android/mms/util/SmileyParser;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1734
    .local v7, formattedTexts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-static {p0}, Lcom/android/mms/ui/MessageListItem;->formatContactInfo(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1735
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v0, p1, v10}, Lcom/android/mms/ui/MessageListItem;->formatSubject(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/util/SmileyParser;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1736
    if-eqz p2, :cond_0

    .line 1737
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0, p1, v10}, Lcom/android/mms/ui/MessageListItem;->formatBody(Ljava/lang/String;ZZLandroid/content/Context;Lcom/android/mms/util/SmileyParser;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1739
    :cond_0
    if-eqz p3, :cond_1

    .line 1740
    invoke-static {p0}, Lcom/android/mms/ui/MessageListItem;->formatCBNumber(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1743
    :cond_1
    const/4 v8, 0x0

    .line 1744
    .local v8, i:I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 1745
    .local v6, charSeq:Ljava/lang/CharSequence;
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1747
    if-lez v8, :cond_3

    .line 1748
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1750
    :cond_3
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1752
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1737
    .end local v6           #charSeq:Ljava/lang/CharSequence;
    .end local v8           #i:I
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1756
    .restart local v8       #i:I
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual {v10}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v2

    invoke-virtual {v10}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v3

    const-string v5, "Mms/MessageListItem"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/util/UIUtils;->highlightMessage(Landroid/content/Context;Ljava/util/regex/Pattern;[I[ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 1757
    return-object v4
.end method

.method public static formatSenderInfo(Lcom/android/mms/ui/MessageItem;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "item"

    .prologue
    .line 1842
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1844
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1845
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    invoke-static {v2}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mIsGroupMessage:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1848
    iget-object v2, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1849
    .local v1, displayAddress:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1852
    .end local v1           #displayAddress:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static formatSubject(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/util/SmileyParser;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "subject"
    .parameter "context"
    .parameter "parser"

    .prologue
    .line 1810
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSubjectConcept4Korea()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1811
    :cond_0
    const-string v0, ""

    .line 1818
    :goto_0
    return-object v0

    .line 1814
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1815
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0019

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1816
    .local v1, subjectString:Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method public static getBytesForDisplayFolding()I
    .locals 1

    .prologue
    .line 3006
    const/16 v0, 0x8c

    return v0
.end method

.method private getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 4
    .parameter "msgItem"

    .prologue
    const/4 v0, 0x0

    .line 2990
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 3002
    :cond_0
    :goto_0
    return-object v0

    .line 2996
    :cond_1
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    .line 2997
    .local v1, textModel:Lcom/android/mms/model/TextModel;
    if-eqz v1, :cond_0

    .line 3001
    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 3002
    .local v0, result:Ljava/lang/String;
    goto :goto_0
.end method

.method private static getLinkTextColor(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 373
    const/4 v0, -0x1

    sget v1, Lcom/android/mms/ui/MessageListItem;->sTextColorLink:I

    if-ne v0, v1, :cond_0

    .line 374
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->sTextColorLink:I

    .line 377
    :cond_0
    sget v0, Lcom/android/mms/ui/MessageListItem;->sTextColorLink:I

    return v0
.end method

.method private static getNormalTextColor(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 365
    const/4 v0, -0x1

    sget v1, Lcom/android/mms/ui/MessageListItem;->sTextColorNormal:I

    if-ne v0, v1, :cond_0

    .line 366
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->sTextColorNormal:I

    .line 369
    :cond_0
    sget v0, Lcom/android/mms/ui/MessageListItem;->sTextColorNormal:I

    return v0
.end method

.method private getPriorityType(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)I
    .locals 3
    .parameter "context"
    .parameter "msgItem"

    .prologue
    const/16 v0, 0x80

    .line 2782
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2783
    iget v1, p2, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2784
    const/16 v0, 0x82

    .line 2791
    :cond_0
    :goto_0
    return v0

    .line 2788
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2789
    iget v0, p2, Lcom/android/mms/ui/MessageItem;->mMMSPriority:I

    goto :goto_0
.end method

.method private hideMmsView()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1555
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1556
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    if-eqz v3, :cond_0

    .line 1557
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MmsSlideView;

    .line 1558
    .local v1, view:Lcom/android/mms/ui/MmsSlideView;
    invoke-static {v1, v2}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 1564
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/android/mms/ui/MmsSlideView;
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    .line 1565
    return-void
.end method

.method private hideSipExplict()V
    .locals 3

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v0, :cond_0

    .line 2221
    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2222
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2225
    :cond_0
    return-void
.end method

.method private inflateDownloadControls()V
    .locals 2

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 1718
    :cond_0
    const v0, 0x7f0b0198

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1719
    const v0, 0x7f0b01db

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    .line 1720
    const v0, 0x7f0b01dc

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;

    .line 1722
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLinksClickable(Z)V

    .line 1723
    return-void
.end method

.method private isDeleteMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2855
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    .line 2856
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2858
    :cond_0
    return v0
.end method

.method private isUseCustomBg()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2863
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2864
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_background_color"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2866
    .local v0, bgStyleIndex:I
    if-nez v0, :cond_0

    .line 2867
    const/4 v0, 0x1

    .line 2869
    :cond_0
    sget v3, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_ITEM_INDEX:I

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2870
    .local v2, useCustomBg:Z
    :goto_0
    return v2

    .line 2869
    .end local v2           #useCustomBg:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private presentMms(Lcom/android/mms/ui/MessageItem;ZLcom/android/mms/ui/MessageListItem;)V
    .locals 4
    .parameter "msgItem"
    .parameter "onlyFirstPage"
    .parameter "listItem"

    .prologue
    .line 1533
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 1535
    .local v0, nPages:I
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1536
    if-eqz p2, :cond_0

    .line 1537
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->findFirstValidSlide(Lcom/android/mms/ui/MessageItem;)I

    move-result v0

    .line 1540
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {v1, v0, p1}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->initMmsThumbnail(ILcom/android/mms/ui/MessageItem;)V

    .line 1542
    const-string v1, "Mms/MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "present "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1546
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z

    invoke-virtual {v1, p3, v2}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->present(Lcom/android/mms/ui/MessageListItem;Z)V

    .line 1551
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V

    .line 1552
    return-void

    .line 1533
    .end local v0           #nPages:I
    :cond_1
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    goto :goto_0

    .line 1548
    .restart local v0       #nPages:I
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {v1, p3}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->present(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_1
.end method

.method private setFailedMessageBackgroundDefault()V
    .locals 3

    .prologue
    .line 2808
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleSentStyle(Landroid/content/Context;)I

    move-result v1

    .line 2809
    .local v1, styleSendIndex:I
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED2:[I

    aget v0, v2, v1

    .line 2811
    .local v0, resourceId:I
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2812
    return-void
.end method

.method private setMessageBubbleStyle(Lcom/android/mms/ui/MessageItem;I)V
    .locals 7
    .parameter "msgItem"
    .parameter "boxId"

    .prologue
    .line 2044
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v1

    .line 2045
    .local v1, styleReceiveIndex:I
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleSentStyle(Landroid/content/Context;)I

    move-result v2

    .line 2046
    .local v2, styleSendIndex:I
    const/4 v0, 0x0

    .line 2048
    .local v0, resourceId:I
    packed-switch p2, :pswitch_data_0

    .line 2081
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2082
    return-void

    .line 2050
    :pswitch_0
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_INBOX:[I

    aget v0, v3, v1

    .line 2051
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setVAttachmentSeperator(I)V

    goto :goto_0

    .line 2054
    :pswitch_1
    iget-wide v3, p1, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 2055
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    aget v0, v3, v2

    .line 2059
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setVAttachmentSeperator(I)V

    goto :goto_0

    .line 2057
    :cond_0
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_SENT:[I

    aget v0, v3, v2

    goto :goto_1

    .line 2064
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2065
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    aget v0, v3, v2

    .line 2069
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setVAttachmentSeperator(I)V

    goto :goto_0

    .line 2067
    :cond_1
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_SENT:[I

    aget v0, v3, v2

    goto :goto_2

    .line 2072
    :pswitch_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2073
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    aget v0, v3, v2

    .line 2075
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setVAttachmentSeperator(I)V

    goto :goto_0

    .line 2048
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private setSearchedMessageBubbleStyle(Lcom/android/mms/ui/MessageItem;I)V
    .locals 7
    .parameter "msgItem"
    .parameter "boxId"

    .prologue
    .line 2088
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v1

    .line 2089
    .local v1, styleReceiveIndex:I
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleSentStyle(Landroid/content/Context;)I

    move-result v2

    .line 2090
    .local v2, styleSendIndex:I
    const/4 v0, 0x0

    .line 2092
    .local v0, resourceId:I
    packed-switch p2, :pswitch_data_0

    .line 2121
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2122
    return-void

    .line 2094
    :pswitch_0
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_INBOX_FOCUS_PRESS:[I

    aget v0, v3, v1

    .line 2095
    goto :goto_0

    .line 2097
    :pswitch_1
    iget-wide v3, p1, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 2098
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED_FOCUS_PRESS:[I

    aget v0, v3, v2

    goto :goto_0

    .line 2100
    :cond_1
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_SENT_FOCUS_PRESS:[I

    aget v0, v3, v2

    .line 2102
    goto :goto_0

    .line 2106
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2107
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED_FOCUS_PRESS:[I

    aget v0, v3, v2

    goto :goto_0

    .line 2109
    :cond_2
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_SENT_FOCUS_PRESS:[I

    aget v0, v3, v2

    .line 2111
    goto :goto_0

    .line 2113
    :pswitch_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2114
    sget-object v3, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED_FOCUS_PRESS:[I

    aget v0, v3, v2

    goto :goto_0

    .line 2092
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private setTextViewMaxWidth(I)V
    .locals 1
    .parameter "maxWidth"

    .prologue
    .line 3044
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3045
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 3047
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 3048
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 3050
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 3051
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 3053
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 3054
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 3056
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    if-eqz v0, :cond_4

    .line 3057
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setTextMaxWidth(I)V

    .line 3059
    :cond_4
    return-void
.end method

.method private setVAttachmentSeperator(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentSeparator:Landroid/view/View;

    sget-object v1, Lcom/android/mms/ui/MessageListItem;->VATTACHMENT_SEPERATOR:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2086
    return-void
.end method

.method private startAnimation()V
    .locals 14

    .prologue
    .line 911
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 912
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v13, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 913
    .local v13, width:I
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 915
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 916
    .local v10, alpha:Landroid/view/animation/AlphaAnimation;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 917
    const-wide/16 v2, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 918
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 920
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 921
    .local v11, alphaFailedFadeIn:Landroid/view/animation/AlphaAnimation;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 922
    const-wide/16 v2, 0x12c

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 924
    new-instance v12, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/16 v3, 0x14e

    const/4 v4, 0x0

    invoke-direct {v12, v2, v3, v13, v4}, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;-><init>(Landroid/view/View;III)V

    .line 927
    .local v12, slideLeft:Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v2, v12}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 929
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 931
    .local v0, slideUp:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 932
    const-wide/16 v2, 0x1d3

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 933
    new-instance v2, Lcom/android/mms/animation/easing/SineInOut33;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/SineInOut33;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 935
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x40a0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 937
    .local v1, slideDown:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0xa6

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 938
    new-instance v2, Lcom/android/mms/animation/easing/SineInOut33;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/SineInOut33;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 940
    new-instance v2, Lcom/android/mms/ui/MessageListItem$2;

    invoke-direct {v2, p0, v11, v0}, Lcom/android/mms/ui/MessageListItem$2;-><init>(Lcom/android/mms/ui/MessageListItem;Landroid/view/animation/AlphaAnimation;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {v12, v2}, Lcom/android/mms/ui/MessageListItem$ExpandCollapseAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 958
    new-instance v2, Lcom/android/mms/ui/MessageListItem$3;

    invoke-direct {v2, p0, v1}, Lcom/android/mms/ui/MessageListItem$3;-><init>(Lcom/android/mms/ui/MessageListItem;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 974
    new-instance v2, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 989
    return-void
.end method

.method private startViewer()V
    .locals 15

    .prologue
    const/16 v5, 0x82

    const/4 v4, 0x0

    const/4 v14, 0x1

    .line 2126
    const/4 v6, 0x0

    .line 2127
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    .line 2128
    .local v3, messageItem:Lcom/android/mms/ui/MessageItem;
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v9

    .line 2129
    .local v9, msgId:J
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v12

    .line 2131
    .local v12, threadId:J
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideSipExplict()V

    .line 2132
    const-string v0, "Mms/MessageListItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start viewer, msgid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2135
    iget-boolean v0, v3, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-nez v0, :cond_0

    .line 2136
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2137
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2138
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2139
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2207
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v0, v5, :cond_1

    .line 2210
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    iget v2, v3, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v8

    .line 2212
    .local v8, messageDetails:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c007d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2216
    .end local v8           #messageDetails:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 2141
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2142
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-nez v0, :cond_0

    .line 2143
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2144
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2145
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2146
    const-string v0, "isWapPush"

    invoke-virtual {v6, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2147
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2152
    :cond_3
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-eq v0, v5, :cond_0

    .line 2153
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2155
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2157
    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    if-ne v0, v14, :cond_4

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isSafeMMS()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2159
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0421

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2160
    .local v11, szMsg:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2161
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0, v11, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2166
    .end local v11           #szMsg:Ljava/lang/String;
    :cond_4
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2167
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2168
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2169
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2171
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_6

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v0

    if-ne v0, v14, :cond_6

    .line 2172
    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLocationModel()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v7

    .line 2173
    .local v7, locModel:Lcom/samsung/mms/model/LocationVcardModel;
    if-eqz v7, :cond_0

    .line 2175
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v1, Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2176
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v0, "extra_startup_flag"

    const/4 v1, 0x4

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2177
    const-string v0, "extra_map_url"

    invoke-virtual {v7}, Lcom/samsung/mms/model/LocationVcardModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2178
    const-string v0, "extra_selected_place"

    invoke-virtual {v7}, Lcom/samsung/mms/model/LocationVcardModel;->getPlaceBytes()[B

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2179
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2182
    .end local v7           #locModel:Lcom/samsung/mms/model/LocationVcardModel;
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGalleryView4SingleImageMMSType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_MMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v0, v14, :cond_a

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v1

    if-gt v0, v1, :cond_a

    .line 2188
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Z)V

    goto/16 :goto_0

    .line 2189
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGalleryView4SingleImageMMSType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_TEXT_MMS:Ljava/lang/String;

    if-ne v0, v1, :cond_c

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v0, v14, :cond_c

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v1

    if-gt v0, v1, :cond_c

    .line 2193
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Z)V

    goto/16 :goto_0

    .line 2195
    :cond_c
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2198
    .restart local v6       #intent:Landroid/content/Intent;
    const/high16 v0, 0x2000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2200
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2201
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2202
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private stopAnimation()V
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->clearAnimation()V

    .line 905
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 906
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 907
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/MessageListItem;->isAnimationPlaying:Z

    .line 908
    return-void
.end method

.method private urlIncluded(Ljava/lang/String;)Z
    .locals 6
    .parameter "textInput"

    .prologue
    .line 2967
    const/4 v1, 0x0

    .line 2969
    .local v1, retVal:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2970
    const/4 v1, 0x0

    .line 2985
    :goto_0
    const-string v3, "Mms/MessageListItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "urlIncluded="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2986
    return v1

    .line 2973
    :cond_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2975
    .local v2, text:Landroid/text/SpannableString;
    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/text/Spannable;I)V

    .line 2976
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-virtual {v2, v3, v4, v5}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 2977
    .local v0, links:[Landroid/text/style/ClickableSpan;
    const-string v3, "Mms/MessageListItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "urlIncluded:links.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2978
    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    .line 2979
    const/4 v1, 0x1

    goto :goto_0

    .line 2981
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "msgItem"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 461
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    .line 462
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 463
    const/4 v6, 0x0

    .line 464
    .local v6, invisibleGroupView:Landroid/widget/ImageView;
    const/4 v7, 0x0

    .line 465
    .local v7, invisibleLockMsg:Landroid/widget/ImageView;
    const/4 v8, 0x0

    .line 467
    .local v8, invisiblePriorityView:Landroid/widget/ImageView;
    const/4 v5, 0x0

    .line 469
    .local v5, fontSize:F
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportBubbleViewPinchZoom()Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v11

    const/16 v12, 0xff

    if-eq v11, v12, :cond_12

    .line 470
    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v12}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v5

    .line 476
    :goto_0
    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/mms/ui/MessageItem;->mHasSeperator:Z

    if-eqz v11, :cond_15

    .line 477
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isUseCustomBg()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 478
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperator:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090035

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 482
    :goto_1
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperator:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v12, v13}, Lcom/android/mms/ui/MessageListItem;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 484
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 485
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 486
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 497
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_16

    .line 498
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 499
    const v11, 0x7f0b01af

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mGroupView:Landroid/widget/ImageView;

    .line 500
    const v11, 0x7f0b01b8

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #invisibleGroupView:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 502
    .restart local v6       #invisibleGroupView:Landroid/widget/ImageView;
    :cond_0
    const v11, 0x7f0b01b1

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorLockMsg:Landroid/widget/ImageView;

    .line 503
    const v11, 0x7f0b01ba

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #invisibleLockMsg:Landroid/widget/ImageView;
    check-cast v7, Landroid/widget/ImageView;

    .line 513
    .restart local v7       #invisibleLockMsg:Landroid/widget/ImageView;
    :goto_3
    if-eqz v6, :cond_1

    .line 514
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 517
    :cond_1
    if-eqz v7, :cond_2

    .line 518
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 521
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 522
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v11

    if-nez v11, :cond_18

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageListItem;->setFocusable(Z)V

    .line 525
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 531
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTranslatorMenu()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 532
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateModeForComposer()Ljava/lang/String;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/TranslateManager;->isTranslatableMms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 535
    :cond_3
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mTranslateIcon:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 540
    :cond_4
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 541
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 542
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v11

    sget-wide v13, Lcom/android/mms/transaction/SmsReceiverService;->lastFailedMsdId:J

    cmp-long v11, v11, v13

    if-nez v11, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v11

    sget-wide v13, Lcom/android/mms/ui/MessageListItem;->lastFailedMsgIdAnimationPlayed:J

    cmp-long v11, v11, v13

    if-eqz v11, :cond_1a

    .line 544
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v11

    sput-wide v11, Lcom/android/mms/ui/MessageListItem;->lastFailedMsgIdAnimationPlayed:J

    .line 546
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    new-instance v12, Lcom/android/mms/ui/MessageListItem$1;

    invoke-direct {v12, p0}, Lcom/android/mms/ui/MessageListItem$1;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    const-wide/16 v13, 0x190

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 572
    :cond_5
    :goto_6
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v13, 0x1

    cmp-long v11, v11, v13

    if-nez v11, :cond_1f

    .line 573
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIcon:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 580
    :goto_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 581
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v11

    if-eqz v11, :cond_20

    .line 582
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mDraftedIcon:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 588
    :cond_6
    :goto_8
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mSafeMMSLogo:Landroid/widget/ImageView;

    if-eqz v11, :cond_7

    .line 589
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SKT"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_22

    .line 590
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v11, :cond_21

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_21

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v11}, Lcom/android/mms/model/SlideshowModel;->isSafeMMS()Z

    move-result v11

    if-eqz v11, :cond_21

    .line 592
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mSafeMMSLogo:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 601
    :cond_7
    :goto_9
    const/4 v9, 0x0

    .line 602
    .local v9, mMW:Landroid/sec/multiwindow/MultiWindow;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiwindow()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    if-eqz v11, :cond_8

    .line 603
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v11}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v9

    .line 606
    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v11

    if-eqz v11, :cond_25

    .line 607
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 608
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 609
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIcon:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 613
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setTextOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 615
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v11

    if-eqz v11, :cond_23

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v11

    if-eqz v11, :cond_23

    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v13, 0x1

    cmp-long v11, v11, v13

    if-nez v11, :cond_23

    .line 616
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0039

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    invoke-direct {p0, v11}, Lcom/android/mms/ui/MessageListItem;->setTextViewMaxWidth(I)V

    .line 617
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0039

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setTextMaxWidth(I)V

    .line 629
    :goto_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 630
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mDraftedIcon:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    :cond_9
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/VAttachmentListView;->setItemClickable(Z)V

    .line 683
    :cond_a
    :goto_b
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 684
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 685
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    const/4 v12, 0x1

    invoke-virtual {v11, v12, v5}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setBodyTextSize(IF)V

    .line 692
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->bindSenderTextView(Lcom/android/mms/ui/MessageItem;)V

    .line 693
    const/4 v2, 0x0

    .line 694
    .local v2, avatarDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    if-eqz v11, :cond_e

    .line 695
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_34

    .line 696
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 697
    const-string v11, "CBmessages"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_33

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v11, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x6

    if-eq v11, v12, :cond_33

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x7

    if-eq v11, v12, :cond_33

    :cond_b
    const-string v11, "wpm"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_33

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_33

    .line 700
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 701
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 702
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 703
    .local v1, address:Ljava/lang/String;
    if-eqz v1, :cond_d

    .line 704
    const/4 v11, 0x0

    invoke-static {v1, v11}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    .line 705
    .local v4, contact:Lcom/android/mms/data/Contact;
    if-eqz v4, :cond_2d

    .line 706
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/data/Contact;->getDefaultContactImage()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 707
    const-string v11, "Mms/MessageListItem"

    const-string v12, "Contact avatar display"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :goto_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v11

    if-eqz v11, :cond_c

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v11, :cond_c

    .line 713
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0201f9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 715
    :cond_c
    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v11

    if-eqz v11, :cond_2f

    .line 716
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRCS()Z

    move-result v11

    if-eqz v11, :cond_2e

    .line 717
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 738
    .end local v4           #contact:Lcom/android/mms/data/Contact;
    :cond_d
    :goto_d
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020225

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 739
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11, v2}, Landroid/widget/QuickContactBadge;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 758
    .end local v1           #address:Ljava/lang/String;
    :cond_e
    :goto_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 759
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_36

    .line 760
    const v11, 0x7f0b01b9

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mPriorityIndicator:Landroid/widget/ImageView;

    .line 761
    const v11, 0x7f0b01b0

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #invisiblePriorityView:Landroid/widget/ImageView;
    check-cast v8, Landroid/widget/ImageView;

    .line 767
    .restart local v8       #invisiblePriorityView:Landroid/widget/ImageView;
    :goto_f
    if-eqz v8, :cond_f

    .line 768
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 772
    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 773
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    if-eqz v11, :cond_10

    .line 774
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 776
    :cond_10
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    if-eqz v11, :cond_11

    .line 777
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 781
    :cond_11
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    packed-switch v11, :pswitch_data_0

    .line 786
    invoke-direct/range {p0 .. p3}, Lcom/android/mms/ui/MessageListItem;->bindCommonMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 788
    :goto_10
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/MessageListItem;->bindSeperators(Lcom/android/mms/ui/MessageItem;)V

    .line 790
    new-instance v11, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$1;)V

    const/4 v12, 0x1

    new-array v12, v12, [Lcom/android/mms/ui/MessageItem;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 791
    return-void

    .line 472
    .end local v2           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v9           #mMW:Landroid/sec/multiwindow/MultiWindow;
    :cond_12
    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v5

    goto/16 :goto_0

    .line 480
    :cond_13
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperator:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09000c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 488
    :cond_14
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 489
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_2

    .line 492
    :cond_15
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 493
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 494
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_2

    .line 505
    :cond_16
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 506
    const v11, 0x7f0b01b8

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mGroupView:Landroid/widget/ImageView;

    .line 507
    const v11, 0x7f0b01af

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #invisibleGroupView:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 509
    .restart local v6       #invisibleGroupView:Landroid/widget/ImageView;
    :cond_17
    const v11, 0x7f0b01ba

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorLockMsg:Landroid/widget/ImageView;

    .line 510
    const v11, 0x7f0b01b1

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #invisibleLockMsg:Landroid/widget/ImageView;
    check-cast v7, Landroid/widget/ImageView;

    .restart local v7       #invisibleLockMsg:Landroid/widget/ImageView;
    goto/16 :goto_3

    .line 522
    :cond_18
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 537
    :cond_19
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mTranslateIcon:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_5

    .line 554
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v11

    sget-wide v13, Lcom/android/mms/ui/MessageListItem;->lastFailedMsgIdAnimationPlayed:J

    cmp-long v11, v11, v13

    if-eqz v11, :cond_1c

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v12, "sms"

    if-ne v11, v12, :cond_1c

    .line 555
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v11

    sget-wide v13, Lcom/android/mms/transaction/SmsReceiverService;->lastFailedMsdId:J

    cmp-long v11, v11, v13

    if-lez v11, :cond_1b

    sget-wide v11, Lcom/android/mms/transaction/SmsReceiverService;->lastFailedMsdId:J

    const-wide/16 v13, -0x1

    cmp-long v11, v11, v13

    if-nez v11, :cond_5

    .line 557
    :cond_1b
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_6

    .line 560
    :cond_1c
    sget-boolean v11, Lcom/android/mms/ui/MessageListItem;->isAnimationPlaying:Z

    if-nez v11, :cond_5

    .line 561
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_6

    .line 566
    :cond_1d
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_6

    .line 569
    :cond_1e
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_6

    .line 577
    :cond_1f
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIcon:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7

    .line 584
    :cond_20
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mDraftedIcon:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_8

    .line 594
    :cond_21
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mSafeMMSLogo:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 597
    :cond_22
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mSafeMMSLogo:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 619
    .restart local v9       #mMW:Landroid/sec/multiwindow/MultiWindow;
    :cond_23
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0037

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v3, v11

    .line 620
    .local v3, bubbleTextMaxLength:I
    if-eqz v9, :cond_24

    invoke-virtual {v9}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_24

    .line 623
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a003b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v3, v11

    .line 625
    :cond_24
    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageListItem;->setTextViewMaxWidth(I)V

    .line 626
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {v11, v3}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setTextMaxWidth(I)V

    goto/16 :goto_a

    .line 637
    .end local v3           #bubbleTextMaxLength:I
    :cond_25
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 638
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v11

    if-eqz v11, :cond_2b

    .line 639
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 640
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    :goto_11
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    iget-object v12, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIcon:Landroid/widget/Button;

    iget-object v12, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v11

    if-eqz v11, :cond_26

    .line 648
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mDraftedIcon:Landroid/widget/Button;

    iget-object v12, p0, Lcom/android/mms/ui/MessageListItem;->mDraftedIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    :cond_26
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 652
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0036

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v3, v11

    .line 653
    .restart local v3       #bubbleTextMaxLength:I
    if-eqz v9, :cond_27

    invoke-virtual {v9}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v11

    if-eqz v11, :cond_27

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_27

    .line 656
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a003a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v3, v11

    .line 658
    :cond_27
    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageListItem;->setTextViewMaxWidth(I)V

    .line 659
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    iget-object v12, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setTextOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 661
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTranslatorMenu()Z

    move-result v11

    if-eqz v11, :cond_28

    .line 662
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mTranslateIcon:Landroid/widget/Button;

    iget-object v12, p0, Lcom/android/mms/ui/MessageListItem;->mTranslateIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    :cond_28
    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v11, :cond_2c

    .line 666
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/mms/ui/MessageItem;->mServiceCategory:I

    const/16 v12, 0x1000

    if-ne v11, v12, :cond_29

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2a

    .line 667
    :cond_29
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    .line 668
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->addLinks(I)V

    .line 675
    :cond_2a
    :goto_12
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/VAttachmentListView;->setItemClickable(Z)V

    .line 677
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v11

    if-eqz v11, :cond_a

    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v13, 0x1

    cmp-long v11, v11, v13

    if-nez v11, :cond_a

    .line 678
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0038

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    invoke-direct {p0, v11}, Lcom/android/mms/ui/MessageListItem;->setTextViewMaxWidth(I)V

    .line 679
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0038

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->setTextMaxWidth(I)V

    goto/16 :goto_b

    .line 642
    .end local v3           #bubbleTextMaxLength:I
    :cond_2b
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 643
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_11

    .line 671
    .restart local v3       #bubbleTextMaxLength:I
    :cond_2c
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    .line 672
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->addLinks(I)V

    goto :goto_12

    .line 709
    .end local v3           #bubbleTextMaxLength:I
    .restart local v1       #address:Ljava/lang/String;
    .restart local v2       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #contact:Lcom/android/mms/data/Contact;
    :cond_2d
    invoke-static {}, Lcom/android/mms/data/Contact;->getDefaultContactImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 710
    const-string v11, "Mms/MessageListItem"

    const-string v12, "Contact default avatar display"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 719
    :cond_2e
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_d

    .line 722
    :cond_2f
    const-string v10, ""

    .line 723
    .local v10, number:Ljava/lang/String;
    if-eqz v4, :cond_30

    .line 724
    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v10

    .line 727
    :cond_30
    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_31

    .line 728
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v12, 0x1

    invoke-virtual {v11, v10, v12}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto/16 :goto_d

    .line 731
    :cond_31
    if-eqz v4, :cond_32

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v11

    if-eqz v11, :cond_32

    .line 732
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v12, 0x1

    invoke-virtual {v11, v10, v12}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto/16 :goto_d

    .line 734
    :cond_32
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_d

    .line 742
    .end local v1           #address:Ljava/lang/String;
    .end local v4           #contact:Lcom/android/mms/data/Contact;
    .end local v10           #number:Ljava/lang/String;
    :cond_33
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto/16 :goto_e

    .line 745
    :cond_34
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 746
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 747
    sget-object v11, Lcom/android/mms/data/Contact;->sCachedAvatarDataMeImage:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_35

    .line 748
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/data/Contact;->getDefaultContactImage()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/data/Contact;->getAvataMe(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 752
    :goto_13
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020225

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 753
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11, v2}, Landroid/widget/QuickContactBadge;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_e

    .line 750
    :cond_35
    sget-object v2, Lcom/android/mms/data/Contact;->sCachedAvatarDataMeImage:Landroid/graphics/drawable/Drawable;

    goto :goto_13

    .line 763
    :cond_36
    const v11, 0x7f0b01b0

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/android/mms/ui/MessageListItem;->mPriorityIndicator:Landroid/widget/ImageView;

    .line 764
    const v11, 0x7f0b01b9

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #invisiblePriorityView:Landroid/widget/ImageView;
    check-cast v8, Landroid/widget/ImageView;

    .restart local v8       #invisiblePriorityView:Landroid/widget/ImageView;
    goto/16 :goto_f

    .line 783
    :pswitch_0
    invoke-direct/range {p0 .. p3}, Lcom/android/mms/ui/MessageListItem;->bindNotifInd(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    goto/16 :goto_10

    .line 781
    nop

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch
.end method

.method public bindVAttachmentList(Lcom/android/mms/ui/MessageItem;)V
    .locals 4
    .parameter "msgItem"

    .prologue
    .line 1412
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    iget-boolean v3, p1, Lcom/android/mms/ui/MessageItem;->mHasAttachment:Z

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 1413
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/VAttachmentListView;->clear()V

    .line 1414
    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mHasAttachment:Z

    if-eqz v2, :cond_0

    .line 1415
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v2, v2, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/AttachmentModel;

    .line 1416
    .local v1, model:Lcom/android/mms/model/AttachmentModel;
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mVattachmentClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1, v3}, Lcom/android/mms/ui/VAttachmentListView;->add(Lcom/android/mms/model/AttachmentModel;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1419
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #model:Lcom/android/mms/model/AttachmentModel;
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationComposer;->onComposeMessageFlicking(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const/4 v0, 0x1

    .line 385
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBubbleLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 2760
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getCheckBox()I
    .locals 1

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getCheckBoxView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method public getMessageItem()Lcom/android/mms/ui/MessageItem;
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method public hasFailedIconFocused()Z
    .locals 1

    .prologue
    .line 2845
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2846
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2847
    const/4 v0, 0x1

    .line 2850
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initComposerVariable()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b00eb

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 362
    return-void
.end method

.method public isAlignLeft()Z
    .locals 1

    .prologue
    .line 2755
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    return v0
.end method

.method public isMultiSelectMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2235
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectionMode:I

    if-ne v2, v0, :cond_1

    .line 2245
    :cond_0
    :goto_0
    return v0

    .line 2242
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v2, :cond_2

    .line 2243
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2245
    goto :goto_0
.end method

.method public moveFocusToBubble()Z
    .locals 1

    .prologue
    .line 2837
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->hasFailedIconFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2838
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->restoreMsgBackgroundForFailed()V

    .line 2839
    const/4 v0, 0x1

    .line 2841
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1001
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1002
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 390
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 392
    const v1, 0x7f0b0190

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    .line 393
    const v1, 0x7f0b01a4

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemContents:Landroid/widget/LinearLayout;

    .line 394
    const v1, 0x7f0b01a5

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleIconContainer:Landroid/widget/LinearLayout;

    .line 395
    const v1, 0x7f0b0193

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    .line 396
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 397
    const v1, 0x7f0b01a0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    .line 398
    const v1, 0x7f0b01a1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mScheduledIcon:Landroid/widget/Button;

    .line 399
    const v1, 0x7f0b01a2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDraftedIcon:Landroid/widget/Button;

    .line 400
    const v1, 0x7f0b0195

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAddressTextView:Landroid/widget/TextView;

    .line 401
    const v1, 0x7f0b01a7

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectTextView:Landroid/widget/TextView;

    .line 402
    const v1, 0x7f0b0082

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    .line 405
    const v1, 0x7f0b01aa

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    .line 406
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->DEBUG_ONLY:Z

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 410
    :cond_0
    const v1, 0x7f0b0194

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderInfo:Landroid/widget/TextView;

    .line 411
    const v1, 0x7f0b00f7

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 412
    const v1, 0x7f0b01ae

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorContainer:Landroid/view/View;

    .line 413
    const v1, 0x7f0b01b7

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorTextView:Landroid/widget/TextView;

    .line 414
    const v1, 0x7f0b01b2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorScheuldedTexView:Landroid/widget/TextView;

    .line 415
    const v1, 0x7f0b01b3

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorFailedTextView:Landroid/widget/TextView;

    .line 416
    const v1, 0x7f0b01b4

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorDraftedTextView:Landroid/widget/TextView;

    .line 417
    const v1, 0x7f0b017f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    .line 418
    const v1, 0x7f0b018e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperator:Landroid/widget/TextView;

    .line 419
    const v1, 0x7f0b018c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateSeperatorContainer:Landroid/widget/LinearLayout;

    .line 421
    const v1, 0x7f0b01a9

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideContainer:Landroid/widget/LinearLayout;

    .line 422
    new-instance v1, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideContainer:Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;-><init>(Landroid/widget/LinearLayout;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsSlideGroup:Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;

    .line 424
    const v1, 0x7f0b01ab

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentSeparator:Landroid/view/View;

    .line 425
    const v1, 0x7f0b01ac

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/VAttachmentListView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mVAttachmentListView:Lcom/android/mms/ui/VAttachmentListView;

    .line 426
    const v1, 0x7f0b01a8

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSubjectContentSeperator:Landroid/view/View;

    .line 429
    const v1, 0x7f0b0191

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 430
    const v1, 0x7f0b01bb

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c042e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c042f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, callerIdDescription:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->onAvataClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->onAvataMeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 443
    const v1, 0x7f0b01ad

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTranslateIcon:Landroid/widget/Button;

    .line 444
    sget-boolean v1, Lcom/android/mms/ui/MessageListItem;->isAnimationPlaying:Z

    if-eqz v1, :cond_1

    .line 445
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/ui/MessageListItem;->isAnimationPlaying:Z

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorMarginLeftPx:I

    .line 449
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mIndicatorMarginRightPx:I

    .line 451
    const v1, 0x7f0b01b5

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDeliveryReportIcon:Landroid/widget/ImageView;

    .line 452
    const v1, 0x7f0b01b6

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mReadReportIcon:Landroid/widget/ImageView;

    .line 454
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 455
    const v1, 0x7f0b01a3

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSafeMMSLogo:Landroid/widget/ImageView;

    .line 457
    :cond_2
    return-void
.end method

.method public onMessageListItemClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1967
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectionMode:I

    if-ne v0, v1, :cond_1

    .line 1969
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCheckbox(Lcom/android/mms/ui/MessageListItem;)V

    .line 2005
    :cond_0
    :goto_0
    return-void

    .line 1975
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1977
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->performClick()Z

    .line 1978
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCheckbox(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_0

    .line 1982
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsViewer()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1983
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1984
    sget-boolean v0, Lcom/android/mms/ui/MessageListItem;->mBubbleClicked:Z

    if-nez v0, :cond_0

    .line 1985
    sput-boolean v1, Lcom/android/mms/ui/MessageListItem;->mBubbleClicked:Z

    .line 1986
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1987
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1988
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->editDraftMessage()V

    .line 1989
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/MessageListItem;->mBubbleClicked:Z

    goto :goto_0

    .line 1991
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->startViewer()V

    goto :goto_0

    .line 1995
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1996
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->startViewer()V

    goto :goto_0

    .line 2002
    :cond_6
    const-string v0, "Mms/MessageListItem"

    const-string v1, "******SMS Click********"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2228
    return-void
.end method

.method public performFailedIconClick()V
    .locals 4

    .prologue
    .line 2796
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2797
    const/4 v1, 0x2

    .line 2798
    .local v1, what:I
    const-string v2, "mms"

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2799
    const/4 v1, 0x1

    .line 2801
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2802
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2803
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2805
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #what:I
    :cond_1
    return-void
.end method

.method public restoreMsgBackgroundForFailed()V
    .locals 4

    .prologue
    .line 2825
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2826
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleSentStyle(Landroid/content/Context;)I

    move-result v1

    .line 2827
    .local v1, styleSendIndex:I
    sget-object v2, Lcom/android/mms/ui/MessageListItem;->BG_SENTFAILED:[I

    aget v0, v2, v1

    .line 2828
    .local v0, resourceId:I
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2830
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    const v3, 0x7f0200c8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2831
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 2832
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setVAttachmentSeperator(I)V

    .line 2834
    .end local v0           #resourceId:I
    .end local v1           #styleSendIndex:I
    :cond_0
    return-void
.end method

.method public setCheckBox(IZ)V
    .locals 2
    .parameter "visible"
    .parameter "checked"

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 2009
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 2010
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 2011
    return-void
.end method

.method public setFocusOnFailedIcon()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2815
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2816
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->setFailedMessageBackgroundDefault()V

    .line 2817
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    const v2, 0x7f0200c7

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2818
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 2821
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 996
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    .line 997
    return-void
.end method
