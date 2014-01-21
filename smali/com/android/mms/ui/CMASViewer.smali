.class public Lcom/android/mms/ui/CMASViewer;
.super Landroid/widget/FrameLayout;
.source "CMASViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;
    }
.end annotation


# static fields
.field private static final CMDSTOP:Ljava/lang/String; = "stop"

.field static final COLUMN_SMS_CMAS_ADDRESS:I = 0x0

.field static final COLUMN_SMS_CMAS_ALERT_HANDLING:I = 0xf

.field static final COLUMN_SMS_CMAS_BODY:I = 0x1

.field static final COLUMN_SMS_CMAS_CATEGORY:I = 0x9

.field static final COLUMN_SMS_CMAS_CERTANITY:I = 0xd

.field static final COLUMN_SMS_CMAS_DATE:I = 0x2

.field static final COLUMN_SMS_CMAS_ERROR_CODE:I = 0x7

.field static final COLUMN_SMS_CMAS_EXPIRES:I = 0x10

.field static final COLUMN_SMS_CMAS_IDENTIFIER:I = 0xe

.field static final COLUMN_SMS_CMAS_LANGUAGE:I = 0x11

.field static final COLUMN_SMS_CMAS_LOCKED:I = 0x6

.field static final COLUMN_SMS_CMAS_READ:I = 0x3

.field static final COLUMN_SMS_CMAS_RESPONSE_TYPE:I = 0xa

.field static final COLUMN_SMS_CMAS_SERVICE_CATEGORY:I = 0x8

.field static final COLUMN_SMS_CMAS_SEVERITY:I = 0xb

.field static final COLUMN_SMS_CMAS_STATUS:I = 0x5

.field static final COLUMN_SMS_CMAS_TYPE:I = 0x4

.field static final COLUMN_SMS_CMAS_URGENCY:I = 0xc

.field private static final DEBUG:Z = true

.field private static final DELETE_MESSAGE_TOKEN:I = 0x25e4

.field private static final MENU_BACK:I = 0x3

.field private static final MENU_CONVERSATION_LIST:I = 0x1

.field private static final MENU_COPY_MESSAGE_TEXT:I = 0xc

.field private static final MENU_DELETE_MESSAGE:I = 0xe

.field private static final MENU_LOCK_MESSAGE:I = 0xa

.field private static final MENU_MORE_INFO:I = 0x2

.field private static final MENU_UNLOCK_MESSAGE:I = 0xb

.field private static final MENU_VIEW_MESSAGE_DETAILS:I = 0xd

.field private static final MESSAGE_LIST_QUERY_TOKEN:I = 0x2537

.field static final PROJECTION_SMS_CMAS:[Ljava/lang/String; = null

.field static final SELECTION_SMS_CMAS:Ljava/lang/String; = "sms._id = sms_id AND cmas.thread_id = ?"

.field private static final TAG:Ljava/lang/String; = "CMASViewer"


# instance fields
.field private cmas_alert_type_tv:Landroid/widget/TextView;

.field private cmas_data_tv:Landroid/widget/TextView;

.field private cmas_date_time_tv:Landroid/widget/TextView;

.field private cmas_msg_expiry_tv:Landroid/widget/TextView;

.field private cmas_text_tv:Landroid/widget/TextView;

.field private linearLayout01:Landroid/widget/LinearLayout;

.field private linearLayout02:Landroid/widget/LinearLayout;

.field private mActivity:Landroid/app/Activity;

.field private mBackgroundQueryHandler:Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;

.field private mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

.field private final mCMASOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mConv:Lcom/android/mms/ui/ConversationListFragment;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field public mFontSize:F

.field private mIntent:Landroid/content/Intent;

.field private mLocked:I

.field private mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

.field private mScreenWidth:I

.field private msgDate:J

.field private msgExpiry:J

.field private msgId:J

.field private msgServiceCategory:I

.field private msgText:Ljava/lang/String;

.field private scrollView:Landroid/widget/ScrollView;

.field private threadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 140
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "service_category"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "category"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "response_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "severity"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "urgency"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "certainty"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "identifier"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "alert_handling"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "expires"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "language"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/CMASViewer;->PROJECTION_SMS_CMAS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 159
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 86
    iput-wide v0, p0, Lcom/android/mms/ui/CMASViewer;->msgId:J

    .line 87
    iput-object v2, p0, Lcom/android/mms/ui/CMASViewer;->msgText:Ljava/lang/String;

    .line 88
    iput-wide v0, p0, Lcom/android/mms/ui/CMASViewer;->msgDate:J

    .line 89
    iput v3, p0, Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I

    .line 90
    iput-wide v0, p0, Lcom/android/mms/ui/CMASViewer;->msgExpiry:J

    .line 91
    iput v3, p0, Lcom/android/mms/ui/CMASViewer;->mLocked:I

    .line 117
    iput-object v2, p0, Lcom/android/mms/ui/CMASViewer;->mConv:Lcom/android/mms/ui/ConversationListFragment;

    .line 119
    sget-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_FONT_SIZE:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/android/mms/ui/CMASViewer;->mFontSize:F

    .line 583
    new-instance v0, Lcom/android/mms/ui/CMASViewer$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CMASViewer$1;-><init>(Lcom/android/mms/ui/CMASViewer;)V

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mCMASOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 749
    iput-object v2, p0, Lcom/android/mms/ui/CMASViewer;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    .line 160
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    iput-wide v0, p0, Lcom/android/mms/ui/CMASViewer;->msgId:J

    .line 87
    iput-object v2, p0, Lcom/android/mms/ui/CMASViewer;->msgText:Ljava/lang/String;

    .line 88
    iput-wide v0, p0, Lcom/android/mms/ui/CMASViewer;->msgDate:J

    .line 89
    iput v3, p0, Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I

    .line 90
    iput-wide v0, p0, Lcom/android/mms/ui/CMASViewer;->msgExpiry:J

    .line 91
    iput v3, p0, Lcom/android/mms/ui/CMASViewer;->mLocked:I

    .line 117
    iput-object v2, p0, Lcom/android/mms/ui/CMASViewer;->mConv:Lcom/android/mms/ui/ConversationListFragment;

    .line 119
    sget-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_FONT_SIZE:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/android/mms/ui/CMASViewer;->mFontSize:F

    .line 583
    new-instance v0, Lcom/android/mms/ui/CMASViewer$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CMASViewer$1;-><init>(Lcom/android/mms/ui/CMASViewer;)V

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mCMASOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 749
    iput-object v2, p0, Lcom/android/mms/ui/CMASViewer;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    .line 165
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    .line 166
    return-void
.end method

.method private CmasViewerSetTxtSize()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 790
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/CMASViewer;->mFontSize:F

    .line 791
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize7Step(II)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/CMASViewer;->mFontSize:F

    .line 798
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_text_tv:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/mms/ui/CMASViewer;->mFontSize:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 799
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_data_tv:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/mms/ui/CMASViewer;->mFontSize:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 800
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/mms/ui/CMASViewer;->mFontSize:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 801
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_date_time_tv:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/mms/ui/CMASViewer;->mFontSize:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 802
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_msg_expiry_tv:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/mms/ui/CMASViewer;->mFontSize:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 804
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CMASViewer;->setFocusable(Z)V

    .line 805
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CMASViewer;->setFocusableInTouchMode(Z)V

    .line 806
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewer;->setDescendantFocusability(I)V

    .line 807
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASViewer;->requestFocus()Z

    .line 808
    return-void

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/CMASViewer;->mFontSize:F

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/CMASViewer;)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/CMASViewer;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_date_time_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_msg_expiry_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/CMASViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->CmasViewerSetTxtSize()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/CMASViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->finishTask()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/CMASViewer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/CMASViewer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/mms/ui/CMASViewer;->msgId:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/CMASViewer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/mms/ui/CMASViewer;->msgId:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/CMASViewer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->msgText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/CMASViewer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewer;->msgText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/CMASViewer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/mms/ui/CMASViewer;->msgDate:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/CMASViewer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/mms/ui/CMASViewer;->msgDate:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/CMASViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/CMASViewer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/CMASViewer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/mms/ui/CMASViewer;->msgExpiry:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/CMASViewer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/mms/ui/CMASViewer;->msgExpiry:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/CMASViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/mms/ui/CMASViewer;->mLocked:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/CMASViewer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/mms/ui/CMASViewer;->mLocked:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_text_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_data_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method private confirmDeleteThread(J)V
    .locals 3
    .parameter "mthreadId"

    .prologue
    .line 638
    const-string v0, "CMASViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " confirmDeleteThread() with threadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;

    const/16 v1, 0x70b

    invoke-static {v0, p1, p2, v1}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    .line 642
    return-void
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 645
    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 648
    .local v0, clip:Landroid/text/ClipboardManager;
    const-string v1, "CMASViewer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " copyToClipboard() with str = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 651
    return-void
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 5
    .parameter "context"
    .parameter "mthreadId"

    .prologue
    .line 774
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 776
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "CMASViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " createIntent threadId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 779
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 780
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "CMASViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " createIntent Uri for threadId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 782
    const-string v2, "cmas"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 785
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    return-object v0
.end method

.method public static createIntentForNoti(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 5
    .parameter "context"
    .parameter "mthreadId"

    .prologue
    .line 755
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 758
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "CMASViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " createIntent threadId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 762
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 764
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "CMASViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " createIntent Uri for threadId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v2, "thread_id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 767
    const-string v2, "cmas"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 770
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    return-object v0
.end method

.method private finishTask()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->finishCmasViewer(Z)Z

    .line 369
    return-void
.end method

.method private declared-synchronized getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 686
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private goToConversationList()V
    .locals 2

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->finishTask()V

    .line 676
    const-string v0, "CMASViewer"

    const-string v1, " goToConversationList"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 10
    .parameter "bundle"
    .parameter "intent"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 404
    const/4 v1, 0x1

    .line 406
    .local v1, createThread:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 407
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SENDTO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 408
    const/4 v1, 0x0

    .line 412
    :cond_0
    if-eqz p1, :cond_1

    .line 414
    const-string v4, "CMASViewer"

    const-string v5, "initActivityState"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v4}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 416
    const-string v4, "recipients"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, recipients:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v6}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-static {v4, v5, v7, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    .line 446
    .end local v3           #recipients:Ljava/lang/String;
    :goto_0
    return-void

    .line 424
    :cond_1
    const-string v4, "thread_id"

    invoke-virtual {p2, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mms/ui/CMASViewer;->threadId:J

    .line 425
    iget-wide v4, p0, Lcom/android/mms/ui/CMASViewer;->threadId:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    .line 426
    iget-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/android/mms/ui/CMASViewer;->threadId:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    .line 445
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v4}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 430
    .local v2, intentData:Landroid/net/Uri;
    if-eqz v2, :cond_3

    .line 432
    iget-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v7, v1}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_1

    .line 435
    :cond_3
    const-string v4, "address"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 437
    iget-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v6}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-static {v4, v5, v7, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_1

    .line 440
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_1
.end method

.method private initCMASMoreInfoViewer()Lcom/android/mms/ui/CMASMoreInfoViewer;
    .locals 5

    .prologue
    .line 505
    const v3, 0x7f0b0084

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/CMASViewer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 506
    .local v2, vg:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 508
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040020

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b008d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/CMASMoreInfoViewer;

    .line 509
    .local v1, moreinfoviewer:Lcom/android/mms/ui/CMASMoreInfoViewer;
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/CMASMoreInfoViewer;->setActivity(Landroid/app/Activity;)V

    .line 510
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/CMASMoreInfoViewer;->setVisibility(I)V

    .line 512
    return-object v1
.end method

.method private initResourceRefs()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "CMASViewer"

    const-string v1, " onStart"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const v0, 0x7f0b0088

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_text_tv:Landroid/widget/TextView;

    .line 204
    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;

    .line 205
    const v0, 0x7f0b008b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_data_tv:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f0b008a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_date_time_tv:Landroid/widget/TextView;

    .line 207
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_msg_expiry_tv:Landroid/widget/TextView;

    .line 208
    const v0, 0x7f0b0087

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewer;->linearLayout02:Landroid/widget/LinearLayout;

    .line 210
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->linearLayout02:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mCMASOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 211
    return-void
.end method

.method private lockMessage(JZ)V
    .locals 8
    .parameter "msgId"
    .parameter "locked"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 654
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 655
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 657
    .local v0, lockUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 659
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "CMASViewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " lockMessage() with msgId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and locked="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v6, "locked"

    if-eqz p3, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    new-instance v3, Ljava/lang/Thread;

    new-instance v6, Lcom/android/mms/ui/CMASViewer$2;

    invoke-direct {v6, p0, v0, v2}, Lcom/android/mms/ui/CMASViewer$2;-><init>(Lcom/android/mms/ui/CMASViewer;Landroid/net/Uri;Landroid/content/ContentValues;)V

    const-string v7, "lockMessage"

    invoke-direct {v3, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 670
    if-eqz p3, :cond_1

    :goto_1
    iput v4, p0, Lcom/android/mms/ui/CMASViewer;->mLocked:I

    .line 671
    return-void

    :cond_0
    move v3, v5

    .line 661
    goto :goto_0

    :cond_1
    move v4, v5

    .line 670
    goto :goto_1
.end method

.method private declared-synchronized setIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 681
    monitor-enter p0

    :try_start_0
    const-string v0, "CMASViewer"

    const-string v1, "setIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewer;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    monitor-exit p0

    return-void

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startMsgListQuery()V
    .locals 11

    .prologue
    const/16 v4, 0x2537

    .line 476
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    .line 478
    .local v9, threadId:J
    sget-object v0, Landroid/provider/Telephony$Cmas;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 480
    .local v3, conversationUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 482
    .local v6, selectionArgs:[Ljava/lang/String;
    const-string v0, "CMASViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMsgListQuery for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    if-nez v3, :cond_0

    .line 500
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->cancelOperation(I)V

    .line 492
    :try_start_0
    const-string v0, "CMASViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMsgListQuery startQuery for conversationUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;

    const/16 v1, 0x2537

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/CMASViewer;->PROJECTION_SMS_CMAS:[Ljava/lang/String;

    const-string v5, "sms._id = sms_id AND cmas.thread_id = ?"

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    :catch_0
    move-exception v8

    .line 498
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private viewMoreInfoLayout()V
    .locals 6

    .prologue
    .line 564
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 565
    .local v1, threadId:J
    const-string v3, "CMASViewer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value of threadID :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 581
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/android/mms/ui/CMASMoreInfoViewer;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 571
    .local v0, cmasintent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    if-eqz v3, :cond_1

    .line 572
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 575
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->initCMASMoreInfoViewer()Lcom/android/mms/ui/CMASMoreInfoViewer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    .line 576
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 577
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    invoke-virtual {v3}, Lcom/android/mms/ui/CMASMoreInfoViewer;->onStart()V

    .line 579
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    invoke-virtual {v3}, Lcom/android/mms/ui/CMASMoreInfoViewer;->onResume()V

    goto :goto_0
.end method


# virtual methods
.method public configurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->finishTask()V

    .line 375
    return-void
.end method

.method public destroyCMASMoreInfo()V
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/CMASMoreInfoViewer;->setVisibility(I)V

    .line 898
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 812
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 813
    .local v2, keyCode:I
    const-string v5, "CMASViewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchKeyEvent(),keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 815
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    .line 816
    const/16 v5, 0x18

    if-ne v2, v5, :cond_2

    .line 817
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 819
    const/16 v5, 0xa8

    if-ne v2, v5, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v5

    const/16 v6, 0x221

    if-eq v5, v6, :cond_1

    .line 857
    :cond_0
    :goto_0
    return v4

    .line 823
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 824
    .local v3, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 826
    .local v1, idxMsgPreferFontSize:I
    add-int/lit8 v1, v1, 0x1

    .line 828
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 829
    .local v0, editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 830
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 832
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASViewer;->loadMessageContent()V

    goto :goto_0

    .line 835
    .end local v0           #editprefs:Landroid/content/SharedPreferences$Editor;
    .end local v1           #idxMsgPreferFontSize:I
    .end local v3           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_2
    const/16 v5, 0x19

    if-ne v2, v5, :cond_4

    .line 836
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 838
    const/16 v5, 0xa9

    if-ne v2, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v5

    const/16 v6, 0x222

    if-ne v5, v6, :cond_0

    .line 842
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 843
    .restart local v3       #sharedPrefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 845
    .restart local v1       #idxMsgPreferFontSize:I
    add-int/lit8 v1, v1, -0x1

    .line 847
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 848
    .restart local v0       #editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 849
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 851
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASViewer;->loadMessageContent()V

    goto :goto_0

    .line 857
    .end local v0           #editprefs:Landroid/content/SharedPreferences$Editor;
    .end local v1           #idxMsgPreferFontSize:I
    .end local v3           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method public initialize(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 381
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/CMASViewer;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 383
    const-string v2, "CMASViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize: savedInstanceState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mConversation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 389
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/CMASViewer;->mScreenWidth:I

    .line 392
    iget-object v2, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/CMASViewer;->threadId:J

    .line 394
    iget-wide v2, p0, Lcom/android/mms/ui/CMASViewer;->threadId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/CMASViewer;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v2}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 400
    return-void
.end method

.method public isCMASMoreInfoVisible()Z
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 890
    const/4 v0, 0x1

    .line 892
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadMessageContent()V
    .locals 2

    .prologue
    .line 471
    const-string v0, "CMASViewer"

    const-string v1, "loadMessageContent"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->startMsgListQuery()V

    .line 473
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 609
    const-string v2, "CMASViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected() item id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 634
    :cond_0
    :goto_0
    return v0

    .line 613
    :pswitch_0
    iget-wide v1, p0, Lcom/android/mms/ui/CMASViewer;->msgId:J

    invoke-direct {p0, v1, v2, v0}, Lcom/android/mms/ui/CMASViewer;->lockMessage(JZ)V

    goto :goto_0

    .line 617
    :pswitch_1
    iget-wide v2, p0, Lcom/android/mms/ui/CMASViewer;->msgId:J

    invoke-direct {p0, v2, v3, v1}, Lcom/android/mms/ui/CMASViewer;->lockMessage(JZ)V

    goto :goto_0

    .line 621
    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->msgText:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/CMASViewer;->copyToClipboard(Ljava/lang/String;)V

    goto :goto_0

    .line 625
    :pswitch_3
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->viewMoreInfoLayout()V

    goto :goto_0

    .line 629
    :pswitch_4
    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mConv:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mConv:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v2, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->deleteSelectedConversationsRemote(J)V

    goto :goto_0

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 3
    .parameter "savedInstanceState"
    .parameter "intent"

    .prologue
    .line 182
    invoke-direct {p0, p2}, Lcom/android/mms/ui/CMASViewer;->setIntent(Landroid/content/Intent;)V

    .line 184
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->initResourceRefs()V

    .line 185
    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mContentResolver:Landroid/content/ContentResolver;

    .line 186
    new-instance v1, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;

    iget-object v2, p0, Lcom/android/mms/ui/CMASViewer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/CMASViewer;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/CMASViewer;->initialize(Landroid/os/Bundle;)V

    .line 190
    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/data/Conversation;->isCmasPresidential(I)Z

    move-result v0

    .line 192
    .local v0, isCmasPresidentialType:Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->cmas_data_tv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    .line 198
    .end local v0           #isCmasPresidentialType:Z
    :cond_1
    :goto_0
    return-void

    .line 195
    .restart local v0       #isCmasPresidentialType:Z
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->cmas_data_tv:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 886
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 692
    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    if-eqz v6, :cond_0

    .line 693
    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/CMASMoreInfoViewer;->setVisibility(I)V

    .line 695
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    .line 696
    const-string v6, "CMASViewer"

    const-string v7, "newIntent()"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-direct {p0, p1}, Lcom/android/mms/ui/CMASViewer;->setIntent(Landroid/content/Intent;)V

    .line 699
    const/4 v0, 0x0

    .line 700
    .local v0, conversation:Lcom/android/mms/data/Conversation;
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->CmasViewerSetTxtSize()V

    .line 702
    const-string v6, "thread_id"

    invoke-virtual {p1, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/mms/ui/CMASViewer;->threadId:J

    .line 703
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 705
    .local v1, intentUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 707
    .local v3, scheme:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 708
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 711
    :cond_1
    const/4 v2, 0x0

    .line 712
    .local v2, sameThread:Z
    iget-wide v6, p0, Lcom/android/mms/ui/CMASViewer;->threadId:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 713
    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    iget-wide v7, p0, Lcom/android/mms/ui/CMASViewer;->threadId:J

    invoke-static {v6, v7, v8, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 722
    :cond_2
    :goto_0
    const-string v6, "CMASViewer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onNewIntent: data="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", thread_id extra is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/mms/ui/CMASViewer;->threadId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v6, "CMASViewer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " new conversation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mConversation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    if-eqz v0, :cond_3

    .line 728
    invoke-virtual {v0, v4}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 736
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v2, v4

    .line 740
    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    .line 741
    const-string v4, "CMASViewer"

    const-string v5, "onNewIntent: same conversation"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v4}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 747
    :goto_2
    return-void

    .line 715
    :cond_4
    if-nez v2, :cond_2

    .line 718
    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v6, v1, v5, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v2, v5

    .line 736
    goto :goto_1

    .line 744
    :cond_6
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/CMASViewer;->initialize(Landroid/os/Bundle;)V

    .line 745
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASViewer;->loadMessageContent()V

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 534
    const-string v0, "CMASViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onOptionsItemSelected item selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 559
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 542
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->goToConversationList()V

    goto :goto_0

    .line 545
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->viewMoreInfoLayout()V

    goto :goto_0

    .line 552
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/CMASMoreInfoViewer;->setVisibility(I)V

    .line 553
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    goto :goto_0

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 875
    const-string v0, "CMASViewer"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 516
    const-string v0, "CMASViewer"

    const-string v1, " onPrepareOptionsMenu"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->isSplitModeActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    const v0, 0x7f0c01bb

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 525
    const/4 v0, 0x3

    const v1, 0x7f0c01fd

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 529
    :goto_0
    return v3

    .line 527
    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f0c01bc

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 880
    const-string v0, "CMASViewer"

    const-string v1, " onRestart"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 864
    const-string v0, "CMASViewer"

    const-string v1, " onResume"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 450
    const-string v0, "CMASViewer"

    const-string v1, " onStart"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASViewer;->loadMessageContent()V

    .line 453
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 454
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 869
    const-string v0, "CMASViewer"

    const-string v1, " onStop"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 871
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 169
    const-string v0, "CMASViewer"

    const-string v1, "setActivity()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;

    .line 172
    return-void
.end method

.method public setConversationList(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 2
    .parameter "convList"

    .prologue
    .line 175
    const-string v0, "CMASViewer"

    const-string v1, "setConversationList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    if-eqz p1, :cond_0

    .line 177
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewer;->mConv:Lcom/android/mms/ui/ConversationListFragment;

    .line 178
    :cond_0
    return-void
.end method

.method public setMessageFont()V
    .locals 6

    .prologue
    .line 458
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 459
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "#cmas#pref##font#size"

    const-string v4, "14"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, bTemp:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 462
    .local v1, iFont:I
    const-string v3, "CMASViewer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Font size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 465
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->cmas_data_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 466
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->cmas_date_time_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 467
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->cmas_msg_expiry_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 468
    return-void
.end method

.method public setOnStateChangedListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0
    .parameter "onEventListener"

    .prologue
    .line 751
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewer;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    .line 752
    return-void
.end method
