.class public Lcom/android/mms/cover/MissedMsgActivity;
.super Landroid/app/Activity;
.source "MissedMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/cover/MissedMsgActivity$MissedMessageBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field private static final CLICK_MAX_LENGTH:I = 0x14

.field private static final COLUMN_MMS_DATE:I = 0x5

.field private static final COLUMN_MSG_BODY:I = 0x1

.field private static final COLUMN_MSG_DATE:I = 0x7

.field private static final COLUMN_MSG_ID:I = 0x6

.field private static final COLUMN_MSG_TYPE:I = 0x0

.field private static final COLUMN_SMS_DATE:I = 0x2

.field private static final COLUMN_SUBJECT:I = 0x3

.field private static final COLUMN_SUBJECT_CS:I = 0x4

.field private static final DELAY_TIME_FOR_SCOVER_HIDE:I = 0x190

.field private static final DELAY_TIME_FOR_SCOVER_SHOW:I = 0x1f4

.field private static final DELAY_TIME_FOR_UPDATE_MSG:I = 0x258

.field private static final DIM_SCREEN_TIMEOUT_ON_CLEAR_COVER:I = 0x0

.field private static final FLICK_MIN_LENGTH:I = 0x96

.field private static final FLICK_TYPE_CLICK:I = 0x1

.field private static final FLICK_TYPE_NONE:I = 0x0

.field private static final FLICK_TYPE_TO_LEFT:I = 0x3

.field private static final FLICK_TYPE_TO_RIGHT:I = 0x2

.field public static final MSG_TYPE_SIZE:I = 0x4

.field private static final SCREEN_TIMEOUT_ON_CLEAR_COVER:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "Mms/MissedMsgActivity"

.field public static final TYPES:[Ljava/lang/String;

.field private static mIsFinishing:Z

.field private static sEnablePreview:Z

.field private static sPduPersister:Lcom/google/android/mms/pdu/PduPersister;


# instance fields
.field private final ACTION_CLEAR_COVER_ON:Ljava/lang/String;

.field private final EXTRA_COVER_OPEN:Ljava/lang/String;

.field private final PRIVATE_FLAG_SHOW_OVER_PINUP_WINDOW:I

.field private conversation:Lcom/android/mms/data/Conversation;

.field private endX:I

.field private endY:I

.field filter:Landroid/content/IntentFilter;

.field private isCmas:Z

.field private mAddressToCall:Ljava/lang/String;

.field private mAttachmentBitmap:Landroid/graphics/Bitmap;

.field mBlockFlickUntilMillis:J

.field private mCmasType:Ljava/lang/String;

.field private mColorUseAll:I

.field private mContext:Landroid/content/Context;

.field private mCurrentIdx:I

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDateView:Landroid/widget/TextView;

.field private mExitButton:Landroid/widget/ImageButton;

.field public mHandler:Landroid/os/Handler;

.field private mIsEnterConvList:Z

.field private mIsInvalidMessage:Z

.field private mLaunchThreadId:J

.field private mMainActivity:Landroid/widget/LinearLayout;

.field private mMakeCall:Landroid/widget/ImageButton;

.field private mMessageBodyView:Landroid/widget/TextView;

.field private mMmsImageView:Landroid/widget/ImageView;

.field private mMmsIndicatorView:Landroid/widget/TextView;

.field private mMsgBodys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMsgClearCoverReceiver:Landroid/content/BroadcastReceiver;

.field private mMsgCountView:Landroid/widget/TextView;

.field private mMsgIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgSubjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupBackgroungView:Landroid/widget/LinearLayout;

.field private mRecipientList:Lcom/android/mms/data/ContactList;

.field private mRecipientNumberView:Landroid/widget/TextView;

.field private mRecipientNumbers:Ljava/lang/String;

.field private mRecipientView:Landroid/widget/TextView;

.field private mRecipients:Ljava/lang/String;

.field private mShowMsgId:J

.field private mShowMsgPreview:Z

.field private mShowMsgUri:Ljava/lang/String;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mThreadId:J

.field private mTotalUnreadMsgCount:I

.field private msgUri:Landroid/net/Uri;

.field projection:[Ljava/lang/String;

.field public screenOffReceiver:Landroid/content/BroadcastReceiver;

.field private startX:I

.field private startY:I

.field thread_projection:[Ljava/lang/String;

.field private update_read:Z

.field private update_seen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    sput-boolean v2, Lcom/android/mms/cover/MissedMsgActivity;->sEnablePreview:Z

    .line 159
    sput-boolean v2, Lcom/android/mms/cover/MissedMsgActivity;->mIsFinishing:Z

    .line 166
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mms"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "sms"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wpm"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cmas"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sms"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "directDisplayMessage"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/cover/MissedMsgActivity;->TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    const-string v0, "com.samsung.cover.OPEN"

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->ACTION_CLEAR_COVER_ON:Ljava/lang/String;

    .line 83
    const-string v0, "coverOpen"

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->EXTRA_COVER_OPEN:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/android/mms/cover/MissedMsgActivity$MissedMessageBroadcastReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/mms/cover/MissedMsgActivity$MissedMessageBroadcastReceiver;-><init>(Lcom/android/mms/cover/MissedMsgActivity;Lcom/android/mms/cover/MissedMsgActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgClearCoverReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    iput-wide v5, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J

    .line 94
    iput v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentIdx:I

    .line 95
    iput v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mTotalUnreadMsgCount:I

    .line 105
    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientList:Lcom/android/mms/data/ContactList;

    .line 106
    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAddressToCall:Ljava/lang/String;

    .line 110
    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mPopupBackgroungView:Landroid/widget/LinearLayout;

    .line 111
    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMainActivity:Landroid/widget/LinearLayout;

    .line 112
    iput v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mColorUseAll:I

    .line 114
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "normalized_date"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->projection:[Ljava/lang/String;

    .line 117
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->thread_projection:[Ljava/lang/String;

    .line 139
    iput-wide v5, p0, Lcom/android/mms/cover/MissedMsgActivity;->mBlockFlickUntilMillis:J

    .line 140
    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCmasType:Ljava/lang/String;

    .line 144
    iput-boolean v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_read:Z

    .line 145
    iput-boolean v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_seen:Z

    .line 146
    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->msgUri:Landroid/net/Uri;

    .line 147
    iput-boolean v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsEnterConvList:Z

    .line 148
    iput-wide v5, p0, Lcom/android/mms/cover/MissedMsgActivity;->mLaunchThreadId:J

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mHandler:Landroid/os/Handler;

    .line 161
    iput-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgUri:Ljava/lang/String;

    .line 163
    iput-boolean v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z

    .line 164
    iput-boolean v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsInvalidMessage:Z

    .line 682
    const/high16 v0, 0x20

    iput v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->PRIVATE_FLAG_SHOW_OVER_PINUP_WINDOW:I

    .line 758
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->filter:Landroid/content/IntentFilter;

    .line 760
    new-instance v0, Lcom/android/mms/cover/MissedMsgActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/cover/MissedMsgActivity$9;-><init>(Lcom/android/mms/cover/MissedMsgActivity;)V

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/cover/MissedMsgActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/mms/cover/MissedMsgActivity;->setClearCoverMode(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/cover/MissedMsgActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsEnterConvList:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/mms/cover/MissedMsgActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/mms/cover/MissedMsgActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mLaunchThreadId:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/mms/cover/MissedMsgActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->isCmas:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/mms/cover/MissedMsgActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCmasType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->msgUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/cover/MissedMsgActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_seen:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/mms/cover/MissedMsgActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_seen:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/mms/cover/MissedMsgActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_read:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/mms/cover/MissedMsgActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_read:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/mms/cover/MissedMsgActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    sput-boolean p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsFinishing:Z

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/android/mms/cover/MissedMsgActivity;->sEnablePreview:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/cover/MissedMsgActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/cover/MissedMsgActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentIdx:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/cover/MissedMsgActivity;Ljava/lang/Runnable;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/cover/MissedMsgActivity;->markAsRead(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/cover/MissedMsgActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAddressToCall:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/cover/MissedMsgActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/mms/cover/MissedMsgActivity;->setMissedMsgInfo(I)V

    return-void
.end method

.method private calcParams(Landroid/graphics/Bitmap;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 12
    .parameter "bitmap"
    .parameter "params"

    .prologue
    const/high16 v11, 0x4332

    const/high16 v10, 0x4305

    .line 1165
    const/4 v2, 0x0

    .line 1166
    .local v2, maxHeight:F
    const/4 v3, 0x0

    .line 1167
    .local v3, maxWidth:F
    const/4 v4, 0x0

    .line 1168
    .local v4, scale:F
    const/4 v6, 0x0

    .line 1169
    .local v6, tempWidth:I
    const/4 v5, 0x0

    .line 1171
    .local v5, tempHeight:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v1, v7

    .line 1172
    .local v1, bitmapWidth:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 1174
    .local v0, bitmapHeight:F
    const-string v7, "Mms/MissedMsgActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calcParams bitmap.w = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bitmap.h = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    cmpg-float v7, v1, v0

    if-gtz v7, :cond_2

    .line 1177
    invoke-static {v10}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v7

    int-to-float v3, v7

    .line 1178
    invoke-static {v11}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v7

    int-to-float v2, v7

    .line 1179
    div-float v4, v3, v1

    .line 1185
    :goto_0
    mul-float v7, v0, v4

    float-to-int v5, v7

    .line 1186
    int-to-float v7, v5

    cmpl-float v7, v7, v2

    if-lez v7, :cond_0

    .line 1187
    int-to-float v2, v5

    .line 1189
    :cond_0
    mul-float v7, v1, v4

    float-to-int v6, v7

    .line 1190
    int-to-float v7, v6

    cmpl-float v7, v7, v3

    if-lez v7, :cond_1

    .line 1191
    int-to-float v3, v6

    .line 1193
    :cond_1
    float-to-int v7, v3

    iput v7, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1194
    float-to-int v7, v2

    iput v7, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1195
    const-string v7, "Mms/MissedMsgActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calcParams w = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", h = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    return-object p2

    .line 1181
    :cond_2
    invoke-static {v11}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v7

    int-to-float v3, v7

    .line 1182
    invoke-static {v10}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v7

    int-to-float v2, v7

    .line 1183
    div-float v4, v2, v0

    goto :goto_0
.end method

.method private checkEnterMsgMode()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 279
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->thread_projection:[Ljava/lang/String;

    const-string v3, "read=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 280
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 281
    const-string v0, "Mms/MissedMsgActivity"

    const-string v1, "cursor is null so just return"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsInvalidMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    if-eqz v6, :cond_0

    .line 298
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 299
    const/4 v6, 0x0

    goto :goto_0

    .line 290
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 291
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mLaunchThreadId:J

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsEnterConvList:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :goto_1
    if-eqz v6, :cond_0

    .line 298
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 299
    const/4 v6, 0x0

    goto :goto_0

    .line 294
    :cond_3
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsEnterConvList:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 297
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 298
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 299
    const/4 v6, 0x0

    :cond_4
    throw v0
.end method

.method private getBackgroundColor()I
    .locals 11

    .prologue
    const/16 v10, 0xef

    const/16 v9, 0x77

    const/16 v8, 0x6b

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1328
    const/4 v0, 0x0

    .line 1329
    .local v0, color:I
    invoke-virtual {p0}, Lcom/android/mms/cover/MissedMsgActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sview_color_random"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1330
    .local v1, colorRandom:I
    const/4 v2, 0x0

    .line 1331
    .local v2, tempColor:I
    const-string v3, "Mms/MissedMsgActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBackgroundColor colorRandom = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    packed-switch v1, :pswitch_data_0

    .line 1342
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 1345
    :goto_0
    return v0

    .line 1334
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/cover/MissedMsgActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "s_vew_cover_background_color"

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1335
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v10, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 1336
    goto :goto_0

    .line 1338
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/cover/MissedMsgActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sview_bg_display_random"

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1339
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v10, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 1340
    goto :goto_0

    .line 1332
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCallableRecipient()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1138
    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 1140
    .local v1, recipients:Lcom/android/mms/data/ContactList;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1141
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1143
    .local v0, contact:Lcom/android/mms/data/Contact;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1144
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAddressToCall:Ljava/lang/String;

    .line 1145
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 1148
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 5
    .parameter "contactList"

    .prologue
    const/4 v4, 0x1

    .line 792
    const-string v2, ""

    .line 796
    .local v2, recipient:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v4, :cond_5

    .line 797
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 798
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, addr:Ljava/lang/String;
    const-string v3, "CBmessages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 801
    const v3, 0x7f0c00fb

    invoke-virtual {p0, v3}, Lcom/android/mms/cover/MissedMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 848
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    :goto_0
    return-object v2

    .line 802
    .restart local v0       #addr:Ljava/lang/String;
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    :cond_1
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 803
    const v3, 0x7f0c0161

    invoke-virtual {p0, v3}, Lcom/android/mms/cover/MissedMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 804
    :cond_2
    const-string v3, "#CMAS#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 805
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/cover/MissedMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 806
    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCmasType:Ljava/lang/String;

    goto :goto_0

    .line 808
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 809
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 811
    :cond_4
    const/high16 v3, 0x7f0c

    invoke-virtual {p0, v3}, Lcom/android/mms/cover/MissedMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 815
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 816
    const-string v3, ", "

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getContactNumberString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 5
    .parameter "contactList"

    .prologue
    const/4 v4, 0x1

    .line 852
    const-string v2, ""

    .line 853
    .local v2, recipient:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 854
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 855
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, addr:Ljava/lang/String;
    const-string v3, "CBmessages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 858
    const v3, 0x7f0c00fb

    invoke-virtual {p0, v3}, Lcom/android/mms/cover/MissedMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 873
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    :goto_0
    return-object v2

    .line 859
    .restart local v0       #addr:Ljava/lang/String;
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    :cond_1
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 860
    const v3, 0x7f0c0161

    invoke-virtual {p0, v3}, Lcom/android/mms/cover/MissedMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 861
    :cond_2
    const-string v3, "#CMAS#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 862
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/cover/MissedMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 863
    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCmasType:Ljava/lang/String;

    goto :goto_0

    .line 865
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 868
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 869
    const v3, 0x7f0c03bc

    invoke-virtual {p0, v3}, Lcom/android/mms/cover/MissedMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getFlickType(II)I
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/16 v1, 0x14

    .line 670
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 671
    const/4 v0, 0x1

    .line 677
    :goto_0
    return v0

    .line 672
    :cond_0
    const/16 v0, 0x96

    if-lt p1, v0, :cond_1

    .line 673
    const/4 v0, 0x2

    goto :goto_0

    .line 674
    :cond_1
    const/16 v0, -0x96

    if-gt p1, v0, :cond_2

    .line 675
    const/4 v0, 0x3

    goto :goto_0

    .line 677
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getImage(Lcom/android/mms/model/SlideModel;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "firstSlide"

    .prologue
    .line 950
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 953
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->getThumbnailBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 960
    :goto_0
    return-object v2

    .line 954
    :catch_0
    move-exception v1

    .line 955
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    const-string v2, "Mms/MissedMsgActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImage OOM occured e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    .end local v1           #ex:Ljava/lang/OutOfMemoryError;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 956
    :catch_1
    move-exception v0

    .line 957
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Mms/MissedMsgActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getMmsUri(J)Landroid/net/Uri;
    .locals 2
    .parameter "msgId"

    .prologue
    .line 877
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 1
    .parameter "context"

    .prologue
    .line 943
    sget-object v0, Lcom/android/mms/cover/MissedMsgActivity;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    if-nez v0, :cond_0

    .line 944
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    sput-object v0, Lcom/android/mms/cover/MissedMsgActivity;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 946
    :cond_0
    sget-object v0, Lcom/android/mms/cover/MissedMsgActivity;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1152
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientList:Lcom/android/mms/data/ContactList;

    if-nez v1, :cond_0

    .line 1153
    iget-wide v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1154
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1156
    .local v0, recipients:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1157
    invoke-static {v0, v5, v5}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientList:Lcom/android/mms/data/ContactList;

    .line 1161
    .end local v0           #recipients:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientList:Lcom/android/mms/data/ContactList;

    return-object v1
.end method

.method private getSlideAttachCount(Lcom/android/mms/model/SlideshowModel;)I
    .locals 8
    .parameter "slideshow"

    .prologue
    const/4 v6, 0x0

    .line 1200
    const/4 v2, 0x0

    .line 1201
    .local v2, mediaCount:I
    const/4 v3, 0x0

    .line 1202
    .local v3, pageCount:I
    const/4 v4, 0x0

    .line 1203
    .local v4, rawAttachCount:I
    const/4 v0, 0x0

    .line 1204
    .local v0, attachmentCount:I
    const/4 v5, 0x0

    .line 1206
    .local v5, slide:Lcom/android/mms/model/SlideModel;
    if-nez p1, :cond_1

    .line 1230
    :cond_0
    :goto_0
    return v6

    .line 1209
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    .line 1211
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 1212
    invoke-virtual {p1, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    .line 1213
    if-eqz v5, :cond_0

    .line 1217
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1218
    add-int/lit8 v2, v2, 0x1

    .line 1220
    :cond_2
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1221
    add-int/lit8 v2, v2, 0x1

    .line 1223
    :cond_3
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1224
    add-int/lit8 v2, v2, 0x1

    .line 1211
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1226
    :cond_5
    iget-object v6, p1, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 1227
    iget-object v6, p1, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1229
    :cond_6
    add-int v0, v2, v4

    move v6, v0

    .line 1230
    goto :goto_0
.end method

.method private static getText(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;
    .locals 1
    .parameter "firstSlide"

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 967
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private handleFlick(IIIIJ)V
    .locals 7
    .parameter "startTouchX"
    .parameter "endTouchX"
    .parameter "startTouchY"
    .parameter "endTouchY"
    .parameter "eventTime"

    .prologue
    const/4 v6, 0x1

    .line 623
    iget v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mTotalUnreadMsgCount:I

    if-gt v3, v6, :cond_1

    .line 624
    const-string v3, "Mms/MissedMsgActivity"

    const-string v4, "Only one message exist so do not need to flick"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 627
    :cond_1
    sub-int v0, p2, p1

    .line 628
    .local v0, dx:I
    sub-int v1, p4, p3

    .line 630
    .local v1, dy:I
    invoke-direct {p0, v0, v1}, Lcom/android/mms/cover/MissedMsgActivity;->getFlickType(II)I

    move-result v2

    .line 631
    .local v2, flickType:I
    const-string v3, "Mms/MissedMsgActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flick type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    packed-switch v2, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 637
    :pswitch_2
    iget-wide v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mBlockFlickUntilMillis:J

    cmp-long v3, p5, v3

    if-lez v3, :cond_0

    .line 638
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentIdx:I

    invoke-direct {p0, v3, v4}, Lcom/android/mms/cover/MissedMsgActivity;->moveToNextMessage(ZI)V

    goto :goto_0

    .line 642
    :pswitch_3
    iget-wide v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mBlockFlickUntilMillis:J

    cmp-long v3, p5, v3

    if-lez v3, :cond_0

    .line 643
    iget v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentIdx:I

    invoke-direct {p0, v6, v3}, Lcom/android/mms/cover/MissedMsgActivity;->moveToNextMessage(ZI)V

    goto :goto_0

    .line 633
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 200
    const-string v0, "thread_id"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J

    .line 201
    const-string v0, "msg_id"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgId:J

    .line 202
    const-string v0, "NOTIFICATION_ITEM_URI"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgUri:Ljava/lang/String;

    .line 204
    const-string v0, "Mms/MissedMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-wide v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 207
    iget-wide v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J

    invoke-static {p0, v0, v1, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->conversation:Lcom/android/mms/data/Conversation;

    .line 221
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->conversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iput-boolean v7, p0, Lcom/android/mms/cover/MissedMsgActivity;->isCmas:Z

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgId:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 226
    iput-boolean v7, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z

    .line 227
    const-string v0, "Mms/MissedMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowMsgUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowMsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/cover/MissedMsgActivity;->loadNotificationPref(Landroid/content/Context;)V

    .line 233
    :goto_1
    return-void

    .line 209
    :cond_1
    const-string v0, "Mms/MissedMsgActivity"

    const-string v1, "invalid address"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sput-boolean v7, Lcom/android/mms/cover/MissedMsgActivity;->mIsFinishing:Z

    .line 211
    invoke-direct {p0, v6}, Lcom/android/mms/cover/MissedMsgActivity;->setClearCoverMode(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/cover/MissedMsgActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/cover/MissedMsgActivity$1;-><init>(Lcom/android/mms/cover/MissedMsgActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 229
    :cond_2
    iput-boolean v6, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z

    goto :goto_0
.end method

.method private initActivity()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 238
    iget-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgUri:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/mms/cover/MissedMsgActivity;->setPreviewMsgInfo(Landroid/content/Context;Ljava/lang/String;J)V

    .line 250
    :goto_0
    iget-boolean v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsInvalidMessage:Z

    if-eqz v0, :cond_2

    .line 251
    const-string v0, "Mms/MissedMsgActivity"

    const-string v1, "Enter invalid thread. Do no enter MissedMsgActivity just Return !!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sput-boolean v5, Lcom/android/mms/cover/MissedMsgActivity;->mIsFinishing:Z

    .line 253
    invoke-virtual {p0}, Lcom/android/mms/cover/MissedMsgActivity;->finish()V

    .line 275
    :goto_1
    return-void

    .line 241
    :cond_0
    sget-boolean v0, Lcom/android/mms/cover/MissedMsgActivity;->sEnablePreview:Z

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/cover/MissedMsgActivity;->initMissedMsgInfos(Landroid/content/Context;J)V

    .line 243
    invoke-direct {p0, v4}, Lcom/android/mms/cover/MissedMsgActivity;->setMissedMsgInfo(I)V

    goto :goto_0

    .line 245
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->checkEnterMsgMode()V

    .line 246
    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->setDefaultMsgInfo()V

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/cover/MissedMsgActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_color_use_all"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mColorUseAll:I

    .line 258
    const-string v0, "Mms/MissedMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mColorUseAll = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mColorUseAll:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mColorUseAll:I

    if-ne v0, v5, :cond_3

    .line 260
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMainActivity:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/mms/cover/MissedMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020224

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mPopupBackgroungView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 267
    :goto_2
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/cover/MissedMsgActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/cover/MissedMsgActivity$2;-><init>(Lcom/android/mms/cover/MissedMsgActivity;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x320

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mBlockFlickUntilMillis:J

    goto :goto_1

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMainActivity:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mPopupBackgroungView:Landroid/widget/LinearLayout;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_2
.end method

.method private initArrayData()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    .line 519
    :goto_0
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgBodys:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgBodys:Ljava/util/ArrayList;

    .line 525
    :goto_1
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTimes:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTimes:Ljava/util/ArrayList;

    .line 531
    :goto_2
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    .line 537
    :goto_3
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgSubjects:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgSubjects:Ljava/util/ArrayList;

    .line 542
    :goto_4
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgBodys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 534
    :cond_3
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    .line 540
    :cond_4
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgSubjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_4
.end method

.method private initMissedMsgInfos(Landroid/content/Context;J)V
    .locals 16
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 465
    const-string v2, "Mms/MissedMsgActivity"

    const-string v4, "initMissedMsgInfos()"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 467
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/cover/MissedMsgActivity;->projection:[Ljava/lang/String;

    const-string v5, "read=0"

    const/4 v6, 0x0

    const-string v7, "normalized_date DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 469
    .local v8, cursor:Landroid/database/Cursor;
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/cover/MissedMsgActivity;->initArrayData()V

    .line 471
    if-nez v8, :cond_1

    .line 472
    const-string v2, "Mms/MissedMsgActivity"

    const-string v4, "cursor is null so just return"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mTotalUnreadMsgCount:I

    .line 505
    :cond_2
    if-eqz v8, :cond_0

    .line 506
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 507
    const/4 v8, 0x0

    goto :goto_0

    .line 481
    :cond_3
    const/4 v2, 0x6

    :try_start_1
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 482
    .local v12, msgId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 485
    .local v9, msgBody:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgBodys:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 488
    .local v15, msgType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 491
    .local v14, msgSubject:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgSubjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 494
    .local v10, msgDate:J
    const-string v2, "mms"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 495
    const-wide/16 v4, 0x3e8

    mul-long/2addr v10, v4

    .line 497
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTimes:Ljava/util/ArrayList;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/cover/MissedMsgActivity;->mTotalUnreadMsgCount:I

    .line 505
    :cond_5
    if-eqz v8, :cond_0

    .line 506
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 507
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 502
    .end local v9           #msgBody:Ljava/lang/String;
    .end local v10           #msgDate:J
    .end local v12           #msgId:J
    .end local v14           #msgSubject:Ljava/lang/String;
    .end local v15           #msgType:Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    .line 503
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/mms/cover/MissedMsgActivity;->mTotalUnreadMsgCount:I

    .line 505
    :cond_6
    if-eqz v8, :cond_7

    .line 506
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 507
    const/4 v8, 0x0

    :cond_7
    throw v2
.end method

.method private initResourceLayout()V
    .locals 4

    .prologue
    .line 305
    const-string v2, "Mms/MissedMsgActivity"

    const-string v3, "initResourceLayout()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const v2, 0x7f0b01cb

    invoke-virtual {p0, v2}, Lcom/android/mms/cover/MissedMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientView:Landroid/widget/TextView;

    .line 307
    const v2, 0x7f0b01d2

    invoke-virtual {p0, v2}, Lcom/android/mms/cover/MissedMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mDateView:Landroid/widget/TextView;

    .line 308
    const v2, 0x7f0b01d8

    invoke-virtual {p0, v2}, Lcom/android/mms/cover/MissedMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMessageBodyView:Landroid/widget/TextView;

    .line 309
    const v2, 0x7f0b01cd

    invoke-virtual {p0, v2}, Lcom/android/mms/cover/MissedMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mExitButton:Landroid/widget/ImageButton;

    .line 310
    const v2, 0x7f0b01d3

    invoke-virtual {p0, v2}, Lcom/android/mms/cover/MissedMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgCountView:Landroid/widget/TextView;

    .line 311
    const v2, 0x7f0b01d7

    invoke-virtual {p0, v2}, Lcom/android/mms/cover/MissedMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    .line 313
    const v2, 0x7f0b01d4

    invoke-virtual {p0, v2}, Lcom/android/mms/cover/MissedMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMakeCall:Landroid/widget/ImageButton;

    .line 314
    const v2, 0x7f0b01d0

    invoke-virtual {p0, v2}, Lcom/android/mms/cover/MissedMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumberView:Landroid/widget/TextView;

    .line 315
    const v2, 0x7f0b01cc

    invoke-virtual {p0, v2}, Lcom/android/mms/cover/MissedMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentTime:Landroid/widget/TextView;

    .line 316
    const v2, 0x7f0b01d9

    invoke-virtual {p0, v2}, Lcom/android/mms/cover/MissedMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsIndicatorView:Landroid/widget/TextView;

    .line 317
    const v2, 0x7f0b01c8

    invoke-virtual {p0, v2}, Lcom/android/mms/cover/MissedMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mPopupBackgroungView:Landroid/widget/LinearLayout;

    .line 318
    const v2, 0x7f0b01c7

    invoke-virtual {p0, v2}, Lcom/android/mms/cover/MissedMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMainActivity:Landroid/widget/LinearLayout;

    .line 320
    sget-boolean v2, Lcom/android/mms/cover/MissedMsgActivity;->sEnablePreview:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->getCallableRecipient()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMakeCall:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 328
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 329
    .local v0, time:J
    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mExitButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/mms/cover/MissedMsgActivity$3;

    invoke-direct {v3, p0}, Lcom/android/mms/cover/MissedMsgActivity$3;-><init>(Lcom/android/mms/cover/MissedMsgActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMakeCall:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/mms/cover/MissedMsgActivity$4;

    invoke-direct {v3, p0}, Lcom/android/mms/cover/MissedMsgActivity$4;-><init>(Lcom/android/mms/cover/MissedMsgActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    return-void

    .line 325
    .end local v0           #time:J
    :cond_1
    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMakeCall:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private static loadNotificationPref(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 545
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 546
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_enable_preview_message"

    sget-boolean v2, Lcom/android/mms/cover/MissedMsgActivity;->sEnablePreview:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/cover/MissedMsgActivity;->sEnablePreview:Z

    .line 547
    const-string v1, "Mms/MissedMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadNotificationPref sEnablePreview = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/cover/MissedMsgActivity;->sEnablePreview:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method private markAsRead(Ljava/lang/Runnable;IZ)V
    .locals 15
    .parameter "callback"
    .parameter "index"
    .parameter "isExit"

    .prologue
    .line 971
    const/4 v13, 0x0

    .line 973
    .local v13, isMms:Z
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, p2

    if-gt v1, v0, :cond_1

    .line 974
    :cond_0
    const-string v1, "Mms/MissedMsgActivity"

    const-string v2, "There is no unread message or enter invalid index"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    :goto_0
    return-void

    .line 978
    :cond_1
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 980
    .local v9, msgId:J
    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-gtz v1, :cond_2

    .line 981
    const-string v1, "Mms/MissedMsgActivity"

    const-string v2, "Invalid msgId"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 984
    :cond_2
    const-string v2, "sms"

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v2, "cmas"

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 985
    :cond_3
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->msgUri:Landroid/net/Uri;

    .line 986
    const/4 v13, 0x0

    .line 996
    :cond_4
    :goto_1
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 997
    .local v14, values:Landroid/content/ContentValues;
    const-string v1, "read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 998
    if-eqz p3, :cond_5

    .line 999
    const-string v1, "seen"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1002
    :cond_5
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "read"

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, "seen"

    aput-object v2, v4, v1

    .line 1007
    .local v4, PROJECTION_READ_SEEN:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/cover/MissedMsgActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->msgUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1010
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_8

    .line 1011
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1014
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 1015
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    cmp-long v1, v1, v9

    if-nez v1, :cond_7

    .line 1016
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    .line 1017
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_read:Z

    .line 1018
    :cond_6
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    .line 1019
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_seen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1027
    :cond_8
    if-eqz v13, :cond_10

    .line 1028
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1029
    if-eqz p3, :cond_b

    .line 1030
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x80

    new-instance v5, Lcom/android/mms/cover/MissedMsgActivity$10;

    move-object/from16 v0, p1

    invoke-direct {v5, p0, v14, v0}, Lcom/android/mms/cover/MissedMsgActivity$10;-><init>(Lcom/android/mms/cover/MissedMsgActivity;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v1, v2, v3, v5}, Lcom/android/mms/cover/MissedMsgUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 987
    .end local v4           #PROJECTION_READ_SEEN:[Ljava/lang/String;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_9
    const-string v2, "wpm"

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mms-sms/wap-push-messages/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->msgUri:Landroid/net/Uri;

    .line 989
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 990
    :cond_a
    const-string v2, "mms"

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 991
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->msgUri:Landroid/net/Uri;

    .line 992
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1023
    .restart local v4       #PROJECTION_READ_SEEN:[Ljava/lang/String;
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v14       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1042
    :cond_b
    invoke-virtual {p0}, Lcom/android/mms/cover/MissedMsgActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->msgUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v14, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1043
    iget-boolean v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_read:Z

    if-eqz v1, :cond_c

    .line 1044
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    const-wide/16 v2, -0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1046
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    long-to-int v3, v9

    invoke-static {v1, v2, v3}, Lcom/android/mms/accessory/WatchRelay;->sendReadMsgIntent(Landroid/content/Context;II)V

    .line 1048
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_read:Z

    .line 1049
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 1052
    :cond_d
    if-eqz p3, :cond_e

    .line 1053
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x80

    new-instance v5, Lcom/android/mms/cover/MissedMsgActivity$11;

    move-object/from16 v0, p1

    invoke-direct {v5, p0, v14, v0}, Lcom/android/mms/cover/MissedMsgActivity$11;-><init>(Lcom/android/mms/cover/MissedMsgActivity;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v1, v2, v3, v5}, Lcom/android/mms/cover/MissedMsgUtils;->handleReadReportDataOne(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1066
    :cond_e
    invoke-virtual {p0}, Lcom/android/mms/cover/MissedMsgActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->msgUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v14, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1067
    iget-boolean v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_read:Z

    if-eqz v1, :cond_f

    .line 1068
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    const-wide/16 v2, -0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1070
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    long-to-int v3, v9

    invoke-static {v1, v2, v3}, Lcom/android/mms/accessory/WatchRelay;->sendReadMsgIntent(Landroid/content/Context;II)V

    .line 1072
    :cond_f
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->update_read:Z

    .line 1073
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 1077
    :cond_10
    if-eqz p3, :cond_12

    .line 1078
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1079
    const/4 v1, 0x0

    new-instance v2, Lcom/android/mms/cover/MissedMsgActivity$12;

    move-object/from16 v0, p1

    invoke-direct {v2, p0, v14, v0}, Lcom/android/mms/cover/MissedMsgActivity$12;-><init>(Lcom/android/mms/cover/MissedMsgActivity;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v9, v10, v1, v2}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOneForSmsWithoutConfirmDlg(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1092
    :cond_11
    new-instance v1, Lcom/android/mms/cover/MissedMsgActivity$13;

    move-object/from16 v0, p1

    invoke-direct {v1, p0, v14, v0}, Lcom/android/mms/cover/MissedMsgActivity$13;-><init>(Lcom/android/mms/cover/MissedMsgActivity;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/cover/MissedMsgActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1105
    :cond_12
    new-instance v5, Lcom/android/mms/cover/MissedMsgActivity$14;

    move-object v6, p0

    move-object v7, v14

    move/from16 v8, p2

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/mms/cover/MissedMsgActivity$14;-><init>(Lcom/android/mms/cover/MissedMsgActivity;Landroid/content/ContentValues;IJLjava/lang/Runnable;)V

    invoke-virtual {p0, v5}, Lcom/android/mms/cover/MissedMsgActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private moveToNextMessage(ZI)V
    .locals 3
    .parameter "forward"
    .parameter "currentIdx"

    .prologue
    const/4 v2, 0x1

    .line 650
    if-eqz p1, :cond_1

    .line 651
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mTotalUnreadMsgCount:I

    if-ge v0, v1, :cond_0

    .line 652
    new-instance v0, Lcom/android/mms/cover/MissedMsgActivity$7;

    invoke-direct {v0, p0, p2}, Lcom/android/mms/cover/MissedMsgActivity$7;-><init>(Lcom/android/mms/cover/MissedMsgActivity;I)V

    invoke-direct {p0, v0, p2, v2}, Lcom/android/mms/cover/MissedMsgActivity;->markAsRead(Ljava/lang/Runnable;IZ)V

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    add-int/lit8 v0, p2, -0x1

    if-ltz v0, :cond_0

    .line 660
    new-instance v0, Lcom/android/mms/cover/MissedMsgActivity$8;

    invoke-direct {v0, p0, p2}, Lcom/android/mms/cover/MissedMsgActivity$8;-><init>(Lcom/android/mms/cover/MissedMsgActivity;I)V

    invoke-direct {p0, v0, p2, v2}, Lcom/android/mms/cover/MissedMsgActivity;->markAsRead(Ljava/lang/Runnable;IZ)V

    goto :goto_0
.end method

.method private parsingPdu(Landroid/content/Context;JI)V
    .locals 14
    .parameter "context"
    .parameter "msgId"
    .parameter "currentIdx"

    .prologue
    .line 881
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    .line 882
    const/4 v5, 0x0

    .line 884
    .local v5, mmsText:Ljava/lang/String;
    :try_start_0
    move-wide/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/android/mms/cover/MissedMsgActivity;->getMmsUri(J)Landroid/net/Uri;

    move-result-object v6

    .line 885
    .local v6, msgUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/mms/cover/MissedMsgActivity;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v7

    .line 886
    .local v7, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v7, :cond_a

    instance-of v10, v7, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v10, :cond_a

    .line 887
    check-cast v7, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v7           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {p1, v10, v11}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    .line 888
    .local v8, slideshow:Lcom/android/mms/model/SlideshowModel;
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 889
    .local v4, firstSlide:Lcom/android/mms/model/SlideModel;
    if-eqz v4, :cond_3

    .line 890
    invoke-static {v4}, Lcom/android/mms/cover/MissedMsgActivity;->getImage(Lcom/android/mms/model/SlideModel;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    .line 891
    iget-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgSubjects:Ljava/util/ArrayList;

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 892
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgSubjects:Ljava/util/ArrayList;

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 894
    :cond_0
    if-eqz v5, :cond_4

    .line 895
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Lcom/android/mms/cover/MissedMsgActivity;->getText(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 900
    :goto_0
    invoke-direct {p0, v8}, Lcom/android/mms/cover/MissedMsgActivity;->getSlideAttachCount(Lcom/android/mms/model/SlideshowModel;)I

    move-result v2

    .line 901
    .local v2, attachCount:I
    const-string v9, ""

    .line 902
    .local v9, string:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    if-nez v10, :cond_7

    .line 904
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-nez v2, :cond_5

    .line 905
    const v10, 0x7f0c0435

    invoke-virtual {p0, v10}, Lcom/android/mms/cover/MissedMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 919
    :cond_1
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 920
    move-object v5, v9

    .line 927
    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMessageBodyView:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 939
    .end local v2           #attachCount:I
    .end local v4           #firstSlide:Lcom/android/mms/model/SlideModel;
    .end local v6           #msgUri:Landroid/net/Uri;
    .end local v8           #slideshow:Lcom/android/mms/model/SlideshowModel;
    .end local v9           #string:Ljava/lang/String;
    :cond_3
    :goto_3
    return-void

    .line 897
    .restart local v4       #firstSlide:Lcom/android/mms/model/SlideModel;
    .restart local v6       #msgUri:Landroid/net/Uri;
    .restart local v8       #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_4
    invoke-static {v4}, Lcom/android/mms/cover/MissedMsgActivity;->getText(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 906
    .restart local v2       #attachCount:I
    .restart local v9       #string:Ljava/lang/String;
    :cond_5
    const/4 v10, 0x1

    if-ne v2, v10, :cond_6

    .line 907
    const v10, 0x7f0c0434

    invoke-virtual {p0, v10}, Lcom/android/mms/cover/MissedMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 908
    :cond_6
    const/4 v10, 0x1

    if-le v2, v10, :cond_1

    .line 909
    const v10, 0x7f0c0193

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/mms/cover/MissedMsgActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 912
    :cond_7
    add-int/lit8 v10, v2, -0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 913
    const v10, 0x7f0c0432

    invoke-virtual {p0, v10}, Lcom/android/mms/cover/MissedMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 914
    :cond_8
    add-int/lit8 v10, v2, -0x1

    const/4 v11, 0x1

    if-le v10, v11, :cond_1

    .line 915
    const v10, 0x7f0c0433

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    add-int/lit8 v13, v2, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/mms/cover/MissedMsgActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 922
    :cond_9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 923
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 929
    .end local v2           #attachCount:I
    .end local v4           #firstSlide:Lcom/android/mms/model/SlideModel;
    .end local v8           #slideshow:Lcom/android/mms/model/SlideshowModel;
    .end local v9           #string:Ljava/lang/String;
    .restart local v7       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_a
    if-eqz v7, :cond_3

    instance-of v10, v7, Lcom/google/android/mms/pdu/NotificationInd;

    if-eqz v10, :cond_3

    .line 930
    iget-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgSubjects:Ljava/util/ArrayList;

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 931
    iget-object v11, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMessageBodyView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgSubjects:Ljava/util/ArrayList;

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 936
    .end local v6           #msgUri:Landroid/net/Uri;
    .end local v7           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :catch_0
    move-exception v3

    .line 937
    .local v3, e:Lcom/google/android/mms/MmsException;
    const-string v10, "Mms/MissedMsgActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MmsException parsingPdu e = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 933
    .end local v3           #e:Lcom/google/android/mms/MmsException;
    .restart local v6       #msgUri:Landroid/net/Uri;
    .restart local v7       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_b
    :try_start_1
    iget-object v10, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMessageBodyView:Landroid/widget/TextView;

    const v11, 0x7f0c000c

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private setClearCoverMode(Z)V
    .locals 4
    .parameter "isClearCoverMode"

    .prologue
    .line 1129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1130
    .local v0, mMisseMsgCoverMode:Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1131
    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1132
    const-string v1, "sender"

    const-string v2, "MissedMsgActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1133
    invoke-virtual {p0, v0}, Lcom/android/mms/cover/MissedMsgActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1134
    const-string v1, "Mms/MissedMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isClearCoverMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    return-void
.end method

.method private setDefaultMsgInfo()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 374
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 375
    .local v0, defaultText:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientView:Landroid/widget/TextView;

    const/high16 v2, 0x7f0c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 376
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgCountView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageCount(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mDateView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->conversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    const v1, 0x7f0c006f

    invoke-virtual {p0, v1}, Lcom/android/mms/cover/MissedMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const v2, 0x7f0c0435

    invoke-virtual {p0, v2}, Lcom/android/mms/cover/MissedMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMessageBodyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumberView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    return-void
.end method

.method private setMissedMsgInfo(I)V
    .locals 8
    .parameter "index"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 387
    const-string v1, "Mms/MissedMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMissedMsgInfo() index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCmasType:Ljava/lang/String;

    .line 389
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p1, :cond_1

    .line 390
    :cond_0
    const-string v1, "Mms/MissedMsgActivity"

    const-string v2, "There is no unread message"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iput-boolean v7, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsInvalidMessage:Z

    .line 462
    :goto_0
    return-void

    .line 394
    :cond_1
    iput p1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentIdx:I

    .line 395
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->conversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/cover/MissedMsgActivity;->getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipients:Ljava/lang/String;

    .line 396
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipients:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->conversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/cover/MissedMsgActivity;->getContactNumberString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumbers:Ljava/lang/String;

    .line 399
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumberView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumberView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCmasType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 404
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    const-string v2, "cmas"

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 407
    :cond_2
    iget v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mTotalUnreadMsgCount:I

    if-lez v1, :cond_3

    .line 408
    const-string v2, "mms"

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 409
    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4, p1}, Lcom/android/mms/cover/MissedMsgActivity;->parsingPdu(Landroid/content/Context;JI)V

    .line 410
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 412
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 434
    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mTotalUnreadMsgCount:I

    if-le v1, v7, :cond_7

    .line 435
    add-int/lit8 v0, p1, 0x1

    .line 436
    .local v0, idx:I
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgCountView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->mTotalUnreadMsgCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    .end local v0           #idx:I
    :goto_2
    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTimes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->formatDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    if-nez p1, :cond_8

    .line 445
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/cover/MissedMsgActivity$5;

    invoke-direct {v2, p0}, Lcom/android/mms/cover/MissedMsgActivity$5;-><init>(Lcom/android/mms/cover/MissedMsgActivity;)V

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 421
    :cond_4
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 424
    :cond_5
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgBodys:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 427
    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMessageBodyView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgBodys:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 429
    :cond_6
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMessageBodyView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 439
    :cond_7
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 456
    :cond_8
    new-instance v1, Lcom/android/mms/cover/MissedMsgActivity$6;

    invoke-direct {v1, p0}, Lcom/android/mms/cover/MissedMsgActivity$6;-><init>(Lcom/android/mms/cover/MissedMsgActivity;)V

    iget v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentIdx:I

    invoke-direct {p0, v1, v2, v5}, Lcom/android/mms/cover/MissedMsgActivity;->markAsRead(Ljava/lang/Runnable;IZ)V

    goto/16 :goto_0
.end method

.method private setMsgDataToPreview(I)V
    .locals 6
    .parameter "msgType"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1292
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->conversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/cover/MissedMsgActivity;->getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipients:Ljava/lang/String;

    .line 1293
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->conversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/cover/MissedMsgActivity;->getContactNumberString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumbers:Ljava/lang/String;

    .line 1296
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumberView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumbers:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mRecipientNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1298
    if-nez p1, :cond_1

    .line 1299
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/mms/cover/MissedMsgActivity;->parsingPdu(Landroid/content/Context;JI)V

    .line 1300
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1301
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1303
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1317
    :goto_0
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1318
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mDateView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1320
    new-instance v0, Lcom/android/mms/cover/MissedMsgActivity$15;

    invoke-direct {v0, p0}, Lcom/android/mms/cover/MissedMsgActivity$15;-><init>(Lcom/android/mms/cover/MissedMsgActivity;)V

    iget v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentIdx:I

    invoke-direct {p0, v0, v1, v4}, Lcom/android/mms/cover/MissedMsgActivity;->markAsRead(Ljava/lang/Runnable;IZ)V

    .line 1325
    return-void

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1308
    :cond_1
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1309
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMmsIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1310
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgBodys:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1311
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMessageBodyView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgBodys:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1313
    :cond_2
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMessageBodyView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPreviewMsgInfo(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 14
    .parameter "context"
    .parameter "showMsgUri"
    .parameter "msgId"

    .prologue
    .line 1234
    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->initArrayData()V

    .line 1235
    const/4 v13, 0x1

    .line 1236
    .local v13, msgType:I
    const/4 v3, 0x0

    .line 1237
    .local v3, messageUri:Landroid/net/Uri;
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mCurrentIdx:I

    .line 1238
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v10, v2, :cond_0

    .line 1239
    sget-object v2, Lcom/android/mms/accessory/WatchRelay;->URI:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1240
    move v13, v10

    .line 1241
    const-string v2, "Mms/MissedMsgActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    :cond_0
    const/4 v8, 0x0

    .line 1246
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v2, 0x3

    if-ne v2, v13, :cond_1

    .line 1247
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1249
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1250
    const-string v2, "Mms/MissedMsgActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "messageUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    if-nez v3, :cond_4

    .line 1252
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsInvalidMessage:Z

    .line 1289
    :cond_2
    :goto_1
    return-void

    .line 1238
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1255
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/cover/MissedMsgActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1257
    if-nez v8, :cond_5

    .line 1258
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsInvalidMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1285
    if-eqz v8, :cond_2

    .line 1286
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1261
    :cond_5
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1262
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 1263
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsInvalidMessage:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1285
    if-eqz v8, :cond_2

    .line 1286
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1266
    :cond_6
    :try_start_2
    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgIds:Ljava/util/ArrayList;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1268
    if-nez v13, :cond_7

    .line 1269
    :try_start_3
    const-string v2, "date"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1270
    .local v11, msgDate:J
    const-wide/16 v4, 0x3e8

    mul-long/2addr v11, v4

    .line 1271
    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTimes:Ljava/util/ArrayList;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgSubjects:Ljava/util/ArrayList;

    const-string v4, "sub"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1282
    .end local v11           #msgDate:J
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTypes:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/mms/cover/MissedMsgActivity;->TYPES:[Ljava/lang/String;

    aget-object v4, v4, v13

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    invoke-direct {p0, v13}, Lcom/android/mms/cover/MissedMsgActivity;->setMsgDataToPreview(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1285
    if-eqz v8, :cond_2

    .line 1286
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1274
    :cond_7
    :try_start_5
    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgTimes:Ljava/util/ArrayList;

    const-string v4, "date"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgBodys:Ljava/util/ArrayList;

    const-string v4, "body"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 1277
    :catch_0
    move-exception v9

    .line 1278
    .local v9, e:Ljava/lang/IllegalArgumentException;
    :try_start_6
    const-string v2, "Mms/MissedMsgActivity"

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->mIsInvalidMessage:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1285
    if-eqz v8, :cond_2

    .line 1286
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1285
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_8

    .line 1286
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2
.end method

.method private setWinodowAttribute()V
    .locals 3

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/android/mms/cover/MissedMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 686
    invoke-virtual {p0}, Lcom/android/mms/cover/MissedMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 687
    .local v0, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x400

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 688
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x20

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 690
    const-wide/16 v1, 0x1770

    iput-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 691
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 693
    invoke-virtual {p0}, Lcom/android/mms/cover/MissedMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 694
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/mms/cover/MissedMsgActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 695
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 698
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    .line 595
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 597
    .local v7, action:I
    packed-switch v7, :pswitch_data_0

    .line 617
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 599
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->startX:I

    .line 600
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->startY:I

    goto :goto_0

    .line 604
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->endX:I

    .line 605
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/cover/MissedMsgActivity;->endY:I

    .line 607
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-nez v0, :cond_0

    .line 610
    :cond_1
    iget v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->startX:I

    iget v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->endX:I

    iget v3, p0, Lcom/android/mms/cover/MissedMsgActivity;->startY:I

    iget v4, p0, Lcom/android/mms/cover/MissedMsgActivity;->endY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/cover/MissedMsgActivity;->handleFlick(IIIIJ)V

    goto :goto_0

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    const-string v1, "Mms/MissedMsgActivity"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/cover/MissedMsgActivity;->mIsFinishing:Z

    .line 180
    invoke-virtual {p0}, Lcom/android/mms/cover/MissedMsgActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;

    .line 181
    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->setWinodowAttribute()V

    .line 182
    const v1, 0x7f040057

    invoke-virtual {p0, v1}, Lcom/android/mms/cover/MissedMsgActivity;->setContentView(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/mms/cover/MissedMsgActivity;->registerReceiver()V

    .line 185
    invoke-virtual {p0}, Lcom/android/mms/cover/MissedMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 186
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/mms/cover/MissedMsgActivity;->handleIntent(Landroid/content/Intent;)V

    .line 187
    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->initResourceLayout()V

    .line 188
    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->initActivity()V

    .line 189
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 574
    :try_start_0
    const-string v1, "Mms/MissedMsgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy mIsFinishing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/cover/MissedMsgActivity;->mIsFinishing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgClearCoverReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgClearCoverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/cover/MissedMsgActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_1

    .line 579
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 581
    :cond_1
    sget-boolean v1, Lcom/android/mms/cover/MissedMsgActivity;->mIsFinishing:Z

    if-eqz v1, :cond_2

    .line 582
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/mms/cover/MissedMsgActivity;->setClearCoverMode(Z)V

    .line 584
    :cond_2
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_3

    .line 585
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/cover/MissedMsgActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :cond_3
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 591
    return-void

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/MissedMsgActivity"

    const-string v2, "mMsgClearCoverReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 553
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 567
    :goto_0
    return v0

    .line 557
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-nez v1, :cond_1

    .line 558
    const/4 v0, 0x0

    goto :goto_0

    .line 562
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 563
    const-string v1, "Mms/MissedMsgActivity"

    const-string v2, "onKeyUp():KEYCODE_BACK"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    sput-boolean v0, Lcom/android/mms/cover/MissedMsgActivity;->mIsFinishing:Z

    .line 567
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 193
    const-string v0, "Mms/MissedMsgActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 195
    invoke-direct {p0, p1}, Lcom/android/mms/cover/MissedMsgActivity;->handleIntent(Landroid/content/Intent;)V

    .line 196
    invoke-direct {p0}, Lcom/android/mms/cover/MissedMsgActivity;->initActivity()V

    .line 197
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 701
    const-string v1, "Mms/MissedMsgActivity"

    const-string v2, "onCreate : registerPhoneReceiver"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 703
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->mMsgClearCoverReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/cover/MissedMsgActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 705
    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/cover/MissedMsgActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 706
    return-void
.end method
