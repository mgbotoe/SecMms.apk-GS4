.class public Lcom/android/mms/data/WorkingMessage;
.super Ljava/lang/Object;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    }
.end annotation


# static fields
.field public static final ACTION_SENDING_SMS:Ljava/lang/String; = "android.intent.action.SENDING_SMS"

.field private static final ATTACHMENT_META_COLUMNS:[Ljava/lang/String; = null

.field public static final AUDIO:I = 0x3

.field private static final CID_TEXT_:Ljava/lang/String; = "cid:text_"

.field public static final CONTENT_RESTRICTION:I = -0x5

.field public static final EMAIL:I = -0x1

.field public static final EMOJI_REQUIRES_MMS:I = 0x80

.field public static final EXCEED_MAX_SLIDE_NUM:I = -0x6

.field public static final EXCEED_MAX_TEXT_COUNT:I = -0x7

.field public static final EXTRA_SMS_MESSAGE:Ljava/lang/String; = "android.mms.extra.MESSAGE"

.field public static final EXTRA_SMS_RECIPIENTS:Ljava/lang/String; = "android.mms.extra.RECIPIENTS"

.field public static final EXTRA_SMS_THREAD_ID:Ljava/lang/String; = "android.mms.extra.THREAD_ID"

.field public static final FORCE_MMS:I = 0x20

.field public static final HAS_ATTACHMENT:I = 0x4

.field public static final HAS_SUBJECT:I = 0x2

.field public static final IMAGE:I = 0x1

.field public static final IMAGE_ROTATED:I = -0x8

.field public static final IMAGE_TOO_LARGE:I = -0x4

.field private static final LENGTH_REQUIRES_MMS:I = 0x8

.field public static final LOCATION_VCARD:I = 0xa

.field public static final MESSAGE_SIZE_EXCEEDED:I = -0x2

.field private static final MMS_DATE_INDEX:I = 0x4

.field private static final MMS_DELIVERY_REPORT:I = 0x6

.field private static final MMS_DRAFT_PROJECTION:[Ljava/lang/String; = null

.field private static final MMS_ID_INDEX:I = 0x0

.field private static final MMS_MESSAGE_SIZE_INDEX:I = 0x1

.field private static final MMS_OUTBOX_PROJECTION:[Ljava/lang/String; = null

.field private static final MMS_PRIORITY:I = 0x5

.field private static final MMS_READ_REPORT:I = 0x7

.field private static final MMS_RESERVED_INDEX:I = 0x3

.field private static final MMS_SUBJECT_CS_INDEX:I = 0x2

.field private static final MMS_SUBJECT_INDEX:I = 0x1

.field public static final MULTIPLE_RECIPIENTS:I = 0x40

.field public static final OK:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x2

.field public static final PRIORITY_LOW:I = 0x0

.field public static final PRIORITY_NORMAL:I = 0x1

.field public static final RAW:I = 0x5

.field private static final RECIPIENTS_REQUIRE_MMS:I = 0x1

.field private static final REPLY_ALL_MULTIPLE_RECIPIENTS:I = 0x10

.field public static final SLIDESHOW:I = 0x4

.field private static final SMS_ANONYMOUS_DRAFT_PROJECTION:[Ljava/lang/String; = null

.field private static final SMS_BODY_INDEX:I = 0x0

.field private static final SMS_DATE_INDEX:I = 0x2

.field private static final SMS_DRAFT_PROJECTION:[Ljava/lang/String; = null

.field private static final SMS_DRAFT_WHERE:Ljava/lang/String; = "type=3"

.field private static final SMS_PRIORITY_INDEX:I = 0x3

.field private static final SMS_RESERVED_INDEX:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Mms/WorkingMessage"

.field public static final TEXT:I = 0x0

.field private static final TEXT_EXT:Ljava/lang/String; = ".txt"

.field public static final UNKNOWN_ERROR:I = -0x1

.field public static final UNSUPPORTED_TYPE:I = -0x3

.field public static final VCAL:I = 0x7

.field public static final VCARD:I = 0x6

.field public static final VIDEO:I = 0x2

.field public static final VNOTE:I = 0x8

.field public static final VTODO:I = 0x9

.field public static mForceMmsState:Z

.field private static mSignatureText:Ljava/lang/CharSequence;

.field private static sMmsEnabled:Z

.field private static final sPreOpenedFilesDummy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field public static splitMmsOnGoing:I


# instance fields
.field private DEBUG_LOG:Z

.field private mAttachmentType:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDiscarded:Z

.field public mExitOnSent:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsSignatureAdded:Z

.field private mMaxEmailLen:I

.field private mMessageDeliveryReport:Z

.field private mMessageReadReport:Z

.field private mMessageUri:Landroid/net/Uri;

.field private mMmsState:I

.field public mNewSlide:I

.field private mPriorityLevel:I

.field private mPriorityValue:I

.field private mRecipients:Ljava/lang/String;

.field private mReserveDeliveryTime:J

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private final mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

.field private mSubject:Ljava/lang/CharSequence;

.field private mText:[Ljava/lang/CharSequence;

.field private mWorkingRecipients:Lcom/android/mms/data/ContactList;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    .line 207
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "m_size"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    .line 753
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_size"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    .line 2826
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sub"

    aput-object v1, v0, v4

    const-string v1, "sub_cs"

    aput-object v1, v0, v5

    const-string v1, "reserved"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rr"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    .line 3015
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->sPreOpenedFilesDummy:Ljava/util/HashMap;

    .line 3351
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v3

    const-string v1, "reserved"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "pri"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->SMS_DRAFT_PROJECTION:[Ljava/lang/String;

    .line 3701
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->SMS_ANONYMOUS_DRAFT_PROJECTION:[Ljava/lang/String;

    .line 4573
    sput v3, Lcom/android/mms/data/WorkingMessage;->splitMmsOnGoing:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V
    .locals 6
    .parameter "context"
    .parameter "listener"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 271
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRecipients:Ljava/lang/String;

    .line 189
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 192
    iput-wide v4, p0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    .line 195
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    .line 198
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    .line 218
    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    .line 219
    const/16 v0, 0x81

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityValue:I

    .line 220
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    .line 768
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    .line 4514
    iput-boolean v3, p0, Lcom/android/mms/data/WorkingMessage;->DEBUG_LOG:Z

    .line 272
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    .line 273
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    .line 274
    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    .line 275
    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 276
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const-string v1, ""

    aput-object v1, v0, v2

    .line 277
    iput-wide v4, p0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    .line 278
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    .line 279
    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    .line 280
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->updateSendStats(Lcom/android/mms/data/Conversation;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/data/WorkingMessage;JLjava/lang/String;IZ)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/data/WorkingMessage;->updateDraftSmsMessage(JLjava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/data/WorkingMessage;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p7}, Lcom/android/mms/data/WorkingMessage;->sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/data/WorkingMessage;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/data/WorkingMessage;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->deleteDuplicateMmsDraft(JZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->updateReplyAllStatus(Lcom/android/mms/data/Conversation;)V

    return-void
.end method

.method private addOldMedia(Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V
    .locals 2
    .parameter "slide"
    .parameter "oldMedia"

    .prologue
    .line 4089
    if-eqz p2, :cond_0

    .line 4090
    invoke-virtual {p1, p2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 4094
    :goto_0
    return-void

    .line 4092
    :cond_0
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "oldMedia is null!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addressContainsEmailToMms(Lcom/android/mms/data/Conversation;Ljava/lang/String;)Z
    .locals 10
    .parameter "conv"
    .parameter "text"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2373
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 2374
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    .line 2375
    .local v0, dests:[Ljava/lang/String;
    array-length v2, v0

    .line 2376
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 2377
    aget-object v8, v0, v1

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    aget-object v8, v0, v1

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2379
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIS41Email()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2381
    invoke-static {p2, v7}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v4

    .line 2388
    .local v4, params:[I
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2390
    aget v8, v4, v7

    if-le v8, v6, :cond_3

    .line 2391
    invoke-direct {p0, v6, v6, v6}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 2392
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 2393
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .line 2407
    .end local v0           #dests:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v4           #params:[I
    :goto_2
    return v6

    .line 2383
    .restart local v0       #dests:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 2384
    .local v5, s:Ljava/lang/StringBuffer;
    aget-object v8, v0, v1

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2385
    .local v3, mtext:Ljava/lang/String;
    invoke-static {v3, v7}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v4

    .restart local v4       #params:[I
    goto :goto_1

    .line 2397
    .end local v3           #mtext:Ljava/lang/String;
    .end local v5           #s:Ljava/lang/StringBuffer;
    :cond_2
    aget v8, v4, v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v9

    if-lt v8, v9, :cond_3

    .line 2398
    invoke-direct {p0, v6, v6, v6}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 2399
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 2400
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    goto :goto_2

    .line 2376
    .end local v4           #params:[I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #dests:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_4
    move v6, v7

    .line 2407
    goto :goto_2
.end method

.method private appendMedia(IILandroid/net/Uri;Z)V
    .locals 10
    .parameter "location"
    .parameter "type"
    .parameter "uri"
    .parameter "checkCRMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 3800
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v4, 0x64

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3801
    .local v2, sb:Ljava/lang/StringBuffer;
    const-string v4, "Mms/WorkingMessage"

    const-string v5, "appendMedia(),location="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ",type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ",uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ",checkCRMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 3806
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 3808
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    if-nez p2, :cond_1

    .line 3872
    :cond_0
    :goto_0
    return-void

    .line 3813
    :cond_1
    const/4 v0, 0x0

    .line 3814
    .local v0, media:Lcom/android/mms/model/MediaModel;
    const/4 v1, 0x0

    .line 3816
    .local v1, rawMedia:Lcom/android/mms/model/AttachmentModel;
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .line 3818
    const/4 v4, 0x1

    if-ne p2, v4, :cond_5

    .line 3819
    new-instance v0, Lcom/android/mms/model/ImageModel;

    .end local v0           #media:Lcom/android/mms/model/MediaModel;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v0, v4, p3, v5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 3821
    .restart local v0       #media:Lcom/android/mms/model/MediaModel;
    if-eqz p4, :cond_4

    move-object v4, v0

    .line 3822
    check-cast v4, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    :goto_1
    move-object v4, v0

    .line 3826
    check-cast v4, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->checkResolution()V

    .line 3857
    :goto_2
    if-eq p2, v9, :cond_c

    .line 3858
    if-eqz v3, :cond_2

    .line 3859
    invoke-virtual {v3, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 3866
    :cond_2
    :goto_3
    if-eq p2, v7, :cond_3

    if-ne p2, v8, :cond_0

    .line 3867
    :cond_3
    if-eqz v3, :cond_0

    .line 3868
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    goto :goto_0

    :cond_4
    move-object v4, v0

    .line 3824
    check-cast v4, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    goto :goto_1

    .line 3828
    :cond_5
    if-ne p2, v7, :cond_7

    .line 3829
    new-instance v0, Lcom/android/mms/model/VideoModel;

    .end local v0           #media:Lcom/android/mms/model/MediaModel;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v0, v4, p3, v5}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 3831
    .restart local v0       #media:Lcom/android/mms/model/MediaModel;
    if-eqz p4, :cond_6

    move-object v4, v0

    .line 3832
    check-cast v4, Lcom/android/mms/model/VideoModel;

    invoke-virtual {v4}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    goto :goto_2

    :cond_6
    move-object v4, v0

    .line 3834
    check-cast v4, Lcom/android/mms/model/VideoModel;

    invoke-virtual {v4}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V

    goto :goto_2

    .line 3837
    :cond_7
    if-ne p2, v8, :cond_9

    .line 3838
    new-instance v0, Lcom/android/mms/model/AudioModel;

    .end local v0           #media:Lcom/android/mms/model/MediaModel;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, p3}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3840
    .restart local v0       #media:Lcom/android/mms/model/MediaModel;
    if-eqz p4, :cond_8

    move-object v4, v0

    .line 3841
    check-cast v4, Lcom/android/mms/model/AudioModel;

    invoke-virtual {v4}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    goto :goto_2

    :cond_8
    move-object v4, v0

    .line 3843
    check-cast v4, Lcom/android/mms/model/AudioModel;

    invoke-virtual {v4}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto :goto_2

    .line 3846
    :cond_9
    const/16 v4, 0xa

    if-ne p2, v4, :cond_a

    .line 3848
    new-instance v0, Lcom/samsung/mms/model/LocationVcardModel;

    .end local v0           #media:Lcom/android/mms/model/MediaModel;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v0, v4, p3, v5}, Lcom/samsung/mms/model/LocationVcardModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v0       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_2

    .line 3850
    :cond_a
    if-ne p2, v9, :cond_b

    .line 3851
    new-instance v1, Lcom/android/mms/model/AttachmentModel;

    .end local v1           #rawMedia:Lcom/android/mms/model/AttachmentModel;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, p3, p4}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .restart local v1       #rawMedia:Lcom/android/mms/model/AttachmentModel;
    goto :goto_2

    .line 3853
    :cond_b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeMedia type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3861
    :cond_c
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v1}, Lcom/android/mms/model/SlideshowModel;->addAttachment(Lcom/android/mms/model/AttachmentModel;)V

    goto/16 :goto_3
.end method

.method private asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3586
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncDelete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3588
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage$6;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3593
    return-void
.end method

.method private asyncDeleteDraftMmsMessage(J)V
    .locals 4
    .parameter "threadId"

    .prologue
    .line 3728
    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asyncDeleteDraftMmsMessage(),threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3730
    .local v0, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3731
    return-void
.end method

.method private asyncSendMms(Lcom/android/mms/data/Conversation;)V
    .locals 14
    .parameter "conv"

    .prologue
    const/16 v0, 0xd

    const/4 v8, 0x0

    .line 2274
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 2275
    .local v4, mmsUri:Landroid/net/Uri;
    const-string v1, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mMessageUri = "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v13, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    .line 2278
    .local v5, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 2279
    .local v2, slideshow:Lcom/android/mms/model/SlideshowModel;
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v1}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v6

    .line 2280
    .local v6, sendReq:Lcom/google/android/mms/pdu/SendReq;
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-nez v1, :cond_0

    const/4 v8, 0x1

    .line 2282
    .local v8, textOnly:Z
    :cond_0
    iget v7, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityValue:I

    .line 2284
    .local v7, priority:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSubjectConcept4Korea()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2285
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2287
    :try_start_0
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2288
    const-string v11, ""

    .line 2289
    .local v11, szSubject:Ljava/lang/String;
    const/4 v12, 0x0

    .line 2290
    .local v12, text:Lcom/android/mms/model/TextModel;
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2291
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v12

    .line 2293
    :cond_1
    if-eqz v12, :cond_3

    .line 2294
    invoke-virtual {v12}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v11

    .line 2295
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2296
    const-string v1, "\n"

    const-string v3, " "

    invoke-virtual {v11, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 2297
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 2298
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2299
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    .line 2300
    .local v10, len:I
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v3, 0x0

    if-le v10, v0, :cond_2

    move v10, v0

    .end local v10           #len:I
    :cond_2
    invoke-virtual {v11, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2309
    .end local v11           #szSubject:Ljava/lang/String;
    .end local v12           #text:Lcom/android/mms/model/TextModel;
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2311
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2312
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    if-eqz v0, :cond_5

    .line 2313
    const/16 v0, 0x80

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    .line 2320
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2321
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    if-eqz v0, :cond_7

    .line 2322
    const/16 v0, 0x80

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2336
    :cond_4
    :goto_2
    new-instance v13, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/data/WorkingMessage$2;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/data/WorkingMessage$2;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;IZ)V

    const-string v1, "send_mms"

    invoke-direct {v13, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 2346
    return-void

    .line 2315
    :cond_5
    const/16 v0, 0x81

    :try_start_2
    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V
    :try_end_2
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2329
    :catch_0
    move-exception v9

    .line 2330
    .local v9, e1:Lcom/google/android/mms/InvalidHeaderValueException;
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "The sendReq setting for delivery/read report error"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    invoke-virtual {v9}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_2

    .line 2318
    .end local v9           #e1:Lcom/google/android/mms/InvalidHeaderValueException;
    :cond_6
    const/16 v0, 0x81

    :try_start_3
    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    goto :goto_1

    .line 2324
    :cond_7
    const/16 v0, 0x81

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    goto :goto_2

    .line 2327
    :cond_8
    const/16 v0, 0x81

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V
    :try_end_3
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 2305
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private asyncSendSms(Lcom/android/mms/data/Conversation;)V
    .locals 7
    .parameter "conv"

    .prologue
    const/4 v6, 0x0

    .line 2237
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2238
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2239
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2240
    .local v3, subText:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<subject:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2249
    .end local v3           #subText:Ljava/lang/String;
    .local v0, msgText:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_0

    .line 2253
    invoke-static {v0}, Lcom/android/mms/ui/GreekInputHandler;->convertGreekSmallLetterToCapital(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2256
    invoke-static {v0}, Lcom/android/mms/ui/GreekInputHandler;->MappingGreekCharater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2259
    :cond_0
    move-object v2, v0

    .line 2260
    .local v2, sendMsgText:Ljava/lang/String;
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    .line 2261
    .local v1, priority:I
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/data/WorkingMessage$1;

    invoke-direct {v5, p0, p1, v2, v1}, Lcom/android/mms/data/WorkingMessage$1;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;I)V

    const-string v6, "send_sms"

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 2268
    return-void

    .line 2242
    .end local v0           #msgText:Ljava/lang/String;
    .end local v1           #priority:I
    .end local v2           #sendMsgText:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #msgText:Ljava/lang/String;
    goto :goto_0

    .line 2245
    .end local v0           #msgText:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #msgText:Ljava/lang/String;
    goto :goto_0
.end method

.method private asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 10
    .parameter "conv"

    .prologue
    .line 3061
    const-string v7, "Mms/WorkingMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "asyncUpdateDraftMmsMessage conv="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mMessageUri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3067
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    .line 3068
    .local v3, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v7}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v4

    .line 3070
    .local v4, sendReq:Lcom/google/android/mms/pdu/SendReq;
    const-wide/16 v5, 0x0

    .line 3071
    .local v5, setReserved:J
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v0

    .line 3072
    .local v0, deliveryTime:J
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-eqz v7, :cond_0

    .line 3073
    const-wide/16 v5, 0x1

    .line 3074
    const-wide/16 v7, 0x3e8

    div-long v7, v0, v7

    invoke-virtual {v4, v7, v8}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 3076
    :cond_0
    invoke-virtual {v4, v5, v6}, Lcom/google/android/mms/pdu/SendReq;->setReserved(J)V

    .line 3078
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3080
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3081
    iget-boolean v7, p0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    if-eqz v7, :cond_3

    .line 3082
    const/16 v7, 0x80

    invoke-virtual {v4, v7}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    .line 3089
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3090
    iget-boolean v7, p0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    if-eqz v7, :cond_5

    .line 3091
    const/16 v7, 0x80

    invoke-virtual {v4, v7}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3104
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3105
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    .line 3108
    :cond_2
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/mms/data/WorkingMessage$3;

    invoke-direct {v8, p0, p1, v3, v4}, Lcom/android/mms/data/WorkingMessage$3;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 3160
    return-void

    .line 3084
    :cond_3
    const/16 v7, 0x81

    :try_start_1
    invoke-virtual {v4, v7}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3098
    :catch_0
    move-exception v2

    .line 3099
    .local v2, e1:Lcom/google/android/mms/InvalidHeaderValueException;
    const-string v7, "Mms/WorkingMessage"

    const-string v8, "The sendReq setting for delivery/read report error"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3100
    invoke-virtual {v2}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_1

    .line 3087
    .end local v2           #e1:Lcom/google/android/mms/InvalidHeaderValueException;
    :cond_4
    const/16 v7, 0x81

    :try_start_2
    invoke-virtual {v4, v7}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    goto :goto_0

    .line 3093
    :cond_5
    const/16 v7, 0x81

    invoke-virtual {v4, v7}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    goto :goto_1

    .line 3096
    :cond_6
    const/16 v7, 0x81

    invoke-virtual {v4, v7}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V
    :try_end_2
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V
    .locals 7
    .parameter "conv"
    .parameter "contents"
    .parameter "isInsert"

    .prologue
    .line 3442
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncUpdateDraftSmsMessage(),conv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3444
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3465
    :goto_0
    return-void

    .line 3447
    :cond_0
    iget v5, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    .line 3448
    .local v5, priority:I
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/data/WorkingMessage$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage$5;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;ZLjava/lang/String;I)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private calculateMaxEmailLength(Lcom/android/mms/data/ContactList;)V
    .locals 7
    .parameter "recipients"

    .prologue
    .line 1769
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIS41Email()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1778
    :cond_0
    return-void

    .line 1772
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v4

    .line 1773
    .local v4, numbers:[Ljava/lang/String;
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    .line 1774
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1775
    .local v3, number:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    if-le v5, v6, :cond_2

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1776
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    .line 1774
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private changeMedia(IILandroid/net/Uri;Z)V
    .locals 21
    .parameter "location"
    .parameter "type"
    .parameter "uri"
    .parameter "checkCRMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 3880
    new-instance v14, Ljava/lang/StringBuffer;

    const/16 v18, 0x64

    move/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3882
    .local v14, sb:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 3883
    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    .line 4085
    :cond_0
    :goto_0
    return-void

    .line 3888
    :cond_1
    if-eqz p3, :cond_0

    .line 3893
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v18

    if-eqz v18, :cond_3

    if-eqz p2, :cond_3

    .line 3894
    const-string v18, "Mms/WorkingMessage"

    const-string v19, "changeMedia(),location="

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, ",type="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, ",uri="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, ",checkCRMode="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3900
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v18

    if-gtz v18, :cond_5

    .line 3901
    :cond_4
    const-string v18, "Mms"

    const-string v19, "[WorkingMessage] changeMedia: no slides!"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3904
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v16

    .line 3905
    .local v16, slide:Lcom/android/mms/model/SlideModel;
    const/4 v8, 0x0

    .line 3906
    .local v8, media:Lcom/android/mms/model/MediaModel;
    const/4 v13, 0x0

    .line 3909
    .local v13, rawMedia:Lcom/android/mms/model/AttachmentModel;
    if-nez p2, :cond_9

    .line 3911
    if-nez p3, :cond_0

    .line 3912
    if-eqz v16, :cond_6

    .line 3913
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 3914
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 3915
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 3916
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeLocation()Z

    .line 3919
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v15

    .line 3921
    .local v15, size:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v15, :cond_8

    .line 3923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v18

    if-eqz v18, :cond_7

    .line 3924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideModel;->removeLocation()Z

    .line 3925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 3926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 3927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 3921
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3931
    :cond_8
    add-int/lit8 v6, v15, -0x1

    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v6, v0, :cond_0

    .line 3934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 3931
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 3940
    .end local v6           #i:I
    .end local v15           #size:I
    :cond_9
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 3941
    new-instance v7, Lcom/android/mms/model/ImageModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    invoke-direct {v7, v0, v1, v2}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 3943
    .local v7, imageModel:Lcom/android/mms/model/ImageModel;
    move-object v8, v7

    .line 3945
    if-eqz p4, :cond_a

    .line 3946
    invoke-virtual {v7}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 3948
    :cond_a
    invoke-virtual {v7}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    .line 3949
    invoke-virtual {v7}, Lcom/android/mms/model/ImageModel;->checkResolution()V

    .line 3982
    .end local v7           #imageModel:Lcom/android/mms/model/ImageModel;
    :goto_3
    const/4 v10, 0x0

    .line 3983
    .local v10, oldImage:Lcom/android/mms/model/MediaModel;
    const/4 v12, 0x0

    .line 3984
    .local v12, oldVideo:Lcom/android/mms/model/MediaModel;
    const/4 v9, 0x0

    .line 3985
    .local v9, oldAudio:Lcom/android/mms/model/MediaModel;
    const/4 v11, 0x0

    .line 3986
    .local v11, oldMedia:Lcom/android/mms/model/MediaModel;
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 3987
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v9

    .line 3989
    :cond_b
    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 3990
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v10

    .line 3992
    :cond_c
    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 3993
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v12

    .line 3997
    :cond_d
    const/16 v18, 0x5

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_1d

    .line 3999
    packed-switch p2, :pswitch_data_0

    .line 4017
    const/4 v11, 0x0

    .line 4021
    :cond_e
    :goto_4
    if-eqz v16, :cond_f

    .line 4022
    const/16 v18, 0x3

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a

    .line 4023
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 4024
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 4035
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v18

    if-eqz v18, :cond_1d

    .line 4036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v15

    .line 4038
    .restart local v15       #size:I
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_6
    if-ge v6, v15, :cond_1c

    .line 4040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v18

    if-eqz v18, :cond_10

    .line 4041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideModel;->removeLocation()Z

    .line 4042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 4038
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 3951
    .end local v6           #i:I
    .end local v9           #oldAudio:Lcom/android/mms/model/MediaModel;
    .end local v10           #oldImage:Lcom/android/mms/model/MediaModel;
    .end local v11           #oldMedia:Lcom/android/mms/model/MediaModel;
    .end local v12           #oldVideo:Lcom/android/mms/model/MediaModel;
    .end local v15           #size:I
    :cond_11
    const/16 v18, 0x2

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 3952
    new-instance v17, Lcom/android/mms/model/VideoModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 3954
    .local v17, videoModel:Lcom/android/mms/model/VideoModel;
    move-object/from16 v8, v17

    .line 3956
    if-eqz p4, :cond_12

    .line 3957
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    .line 3959
    :cond_12
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V

    goto/16 :goto_3

    .line 3961
    .end local v17           #videoModel:Lcom/android/mms/model/VideoModel;
    :cond_13
    const/16 v18, 0x3

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 3962
    new-instance v4, Lcom/android/mms/model/AudioModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3963
    .local v4, audioModel:Lcom/android/mms/model/AudioModel;
    move-object v8, v4

    .line 3965
    if-eqz p4, :cond_14

    .line 3966
    invoke-virtual {v4}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    .line 3968
    :cond_14
    invoke-virtual {v4}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto/16 :goto_3

    .line 3970
    .end local v4           #audioModel:Lcom/android/mms/model/AudioModel;
    :cond_15
    const/16 v18, 0xa

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 3972
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "changeMedia type="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", uri="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 3975
    :cond_16
    const/16 v18, 0x5

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 3976
    new-instance v13, Lcom/android/mms/model/AttachmentModel;

    .end local v13           #rawMedia:Lcom/android/mms/model/AttachmentModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v13, v0, v1, v2}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .restart local v13       #rawMedia:Lcom/android/mms/model/AttachmentModel;
    goto/16 :goto_3

    .line 3978
    :cond_17
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "changeMedia type="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", uri="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 4001
    .restart local v9       #oldAudio:Lcom/android/mms/model/MediaModel;
    .restart local v10       #oldImage:Lcom/android/mms/model/MediaModel;
    .restart local v11       #oldMedia:Lcom/android/mms/model/MediaModel;
    .restart local v12       #oldVideo:Lcom/android/mms/model/MediaModel;
    :pswitch_0
    if-eqz v16, :cond_18

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v18

    if-eqz v18, :cond_18

    .line 4002
    move-object v11, v10

    .line 4003
    :cond_18
    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 4004
    move-object v11, v12

    goto/16 :goto_4

    .line 4007
    :pswitch_1
    if-eqz v16, :cond_19

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v18

    if-eqz v18, :cond_19

    .line 4008
    move-object v11, v10

    .line 4009
    :cond_19
    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 4010
    move-object v11, v12

    goto/16 :goto_4

    .line 4013
    :pswitch_2
    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 4014
    move-object v11, v9

    goto/16 :goto_4

    .line 4025
    :cond_1a
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 4026
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 4027
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    goto/16 :goto_5

    .line 4029
    :cond_1b
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 4030
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 4031
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    goto/16 :goto_5

    .line 4046
    .restart local v6       #i:I
    .restart local v15       #size:I
    :cond_1c
    const/4 v6, 0x1

    :goto_7
    if-ge v6, v15, :cond_1d

    .line 4049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 4046
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 4055
    .end local v6           #i:I
    .end local v15           #size:I
    :cond_1d
    const/16 v18, 0x5

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_20

    .line 4057
    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/RotationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_4

    .line 4081
    :goto_8
    const/16 v18, 0x2

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_1e

    const/16 v18, 0x3

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    .line 4082
    :cond_1e
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 4084
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    goto/16 :goto_0

    .line 4059
    :catch_0
    move-exception v5

    .line 4060
    .local v5, e:Lcom/android/mms/UnsupportContentTypeException;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lcom/android/mms/data/WorkingMessage;->addOldMedia(Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V

    .line 4061
    new-instance v18, Lcom/android/mms/UnsupportContentTypeException;

    const-string v19, "UnsupportContentTypeException"

    invoke-direct/range {v18 .. v19}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 4062
    .end local v5           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_1
    move-exception v5

    .line 4063
    .local v5, e:Lcom/android/mms/ExceedMessageSizeException;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lcom/android/mms/data/WorkingMessage;->addOldMedia(Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V

    .line 4064
    new-instance v18, Lcom/android/mms/ExceedMessageSizeException;

    const-string v19, "ExceedMessageSizeException"

    invoke-direct/range {v18 .. v19}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 4065
    .end local v5           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_2
    move-exception v5

    .line 4066
    .local v5, e:Lcom/android/mms/ResolutionException;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lcom/android/mms/data/WorkingMessage;->addOldMedia(Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V

    .line 4067
    new-instance v18, Lcom/android/mms/ResolutionException;

    const-string v19, "ResolutionException"

    invoke-direct/range {v18 .. v19}, Lcom/android/mms/ResolutionException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 4068
    .end local v5           #e:Lcom/android/mms/ResolutionException;
    :catch_3
    move-exception v5

    .line 4069
    .local v5, e:Lcom/android/mms/RotationException;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lcom/android/mms/data/WorkingMessage;->addOldMedia(Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V

    .line 4070
    new-instance v18, Lcom/android/mms/RotationException;

    const-string v19, "RotationException"

    invoke-direct/range {v18 .. v19}, Lcom/android/mms/RotationException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 4071
    .end local v5           #e:Lcom/android/mms/RotationException;
    :catch_4
    move-exception v5

    .line 4072
    .local v5, e:Lcom/android/mms/ContentRestrictionException;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lcom/android/mms/data/WorkingMessage;->addOldMedia(Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V

    .line 4073
    new-instance v18, Lcom/android/mms/ContentRestrictionException;

    const-string v19, "ContentRestrictionException"

    invoke-direct/range {v18 .. v19}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 4076
    .end local v5           #e:Lcom/android/mms/ContentRestrictionException;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/mms/model/SlideshowModel;->addAttachment(Lcom/android/mms/model/AttachmentModel;)V

    goto :goto_8

    .line 3999
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkMediaFileName(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "i"
    .parameter "src"

    .prologue
    .line 2559
    const/4 v1, 0x0

    .local v1, m:I
    :goto_0
    if-ge v1, p1, :cond_3

    .line 2560
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 2561
    .local v3, slide2:Lcom/android/mms/model/SlideModel;
    if-eqz v3, :cond_2

    .line 2562
    const/4 v2, 0x0

    .local v2, n:I
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 2563
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2564
    const/16 v4, 0x2e

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2565
    .local v0, index:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 2566
    new-instance v4, Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2569
    :goto_2
    const-string v4, "Mms/WorkingMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changed file name changed, len = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    .end local v0           #index:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2568
    .restart local v0       #index:I
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 2559
    .end local v0           #index:I
    .end local v2           #n:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2574
    .end local v3           #slide2:Lcom/android/mms/model/SlideModel;
    :cond_3
    return-object p2
.end method

.method private static closePreOpenedFiles(Ljava/util/HashMap;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4593
    .local p0, preOpenedFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    if-nez p0, :cond_1

    .line 4606
    :cond_0
    return-void

    .line 4596
    :cond_1
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 4597
    .local v3, uris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 4598
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 4599
    .local v1, is:Ljava/io/InputStream;
    if-eqz v1, :cond_2

    .line 4601
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4602
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/content/Context;)Landroid/net/Uri;
    .locals 10
    .parameter "persister"
    .parameter "sendReq"
    .parameter "slideshow"
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 3020
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "createDraftMmsMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3023
    if-nez p2, :cond_0

    move-object v8, v9

    .line 3034
    :goto_0
    return-object v8

    .line 3026
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v7

    .line 3027
    .local v7, pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {p1, v7}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 3028
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-static {p3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v4

    sget-object v5, Lcom/android/mms/data/WorkingMessage;->sPreOpenedFilesDummy:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v8

    .line 3031
    .local v8, res:Landroid/net/Uri;
    invoke-virtual {p2, v7}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3033
    .end local v7           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v8           #res:Landroid/net/Uri;
    :catch_0
    move-exception v6

    .local v6, e:Lcom/google/android/mms/MmsException;
    move-object v8, v9

    .line 3034
    goto :goto_0
.end method

.method public static createEmpty(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 286
    const-string v1, "Mms/WorkingMessage"

    const-string v2, "createEmpty()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    .line 290
    .local v0, msg:Lcom/android/mms/data/WorkingMessage;
    return-object v0
.end method

.method private deleteDraftSmsMessage(J)V
    .locals 5
    .parameter "threadId"

    .prologue
    .line 3695
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDraftSmsMessage(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3696
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "type=3"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3699
    return-void
.end method

.method private deleteDuplicateMmsDraft(JZ)V
    .locals 9
    .parameter "threadId"
    .parameter "ignoreUri"

    .prologue
    .line 2527
    const/4 v7, 0x0

    .line 2528
    .local v7, cursor:Landroid/database/Cursor;
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 2529
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "invalid threadId. just return"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2556
    :cond_0
    :goto_0
    return-void

    .line 2532
    :cond_1
    const/4 v8, 0x0

    .line 2533
    .local v8, uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2535
    .local v4, selection:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2537
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 2538
    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2539
    sget-object v0, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 2540
    if-nez p3, :cond_4

    .line 2541
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2542
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v8, v0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2552
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 2553
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 2545
    :cond_4
    if-eqz v8, :cond_2

    .line 2546
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v8, v0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2552
    :cond_5
    if-eqz v7, :cond_0

    .line 2553
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "conv"
    .parameter "isAsync"

    .prologue
    .line 3623
    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMmsMessage(),uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",selection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3624
    new-instance v0, Lcom/android/mms/data/WorkingMessage$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage$7;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V

    .line 3678
    .local v0, r:Ljava/lang/Runnable;
    if-eqz p5, :cond_0

    .line 3679
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3683
    :goto_0
    return-void

    .line 3681
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private dumpWorkingRecipients()V
    .locals 5

    .prologue
    .line 1794
    const-string v2, "Mms/WorkingMessage"

    const-string v3, "-- mWorkingRecipients:"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v2, :cond_1

    .line 1797
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    .line 1798
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1799
    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v4, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1801
    :cond_0
    const-string v2, "Mms/WorkingMessage"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private ensureSlideshow()V
    .locals 3

    .prologue
    .line 950
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    .line 959
    :goto_0
    return-void

    .line 954
    :cond_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 955
    .local v1, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v0, Lcom/android/mms/model/SlideModel;

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 956
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 957
    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    goto :goto_0
.end method

.method private static hasId(Landroid/net/Uri;)Z
    .locals 6
    .parameter "uri"

    .prologue
    .line 2579
    const-wide/16 v2, -0x1

    .line 2581
    .local v2, msgId:J
    :try_start_0
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 2588
    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 2582
    :catch_0
    move-exception v1

    .line 2583
    .local v1, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2584
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2586
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 2588
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private hasMmsContentToSave()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1944
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v1, :cond_1

    .line 1952
    :cond_0
    :goto_0
    return v0

    .line 1947
    :cond_1
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    const/16 v2, 0x40

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1952
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;
    .locals 6
    .parameter "context"
    .parameter "activity"
    .parameter "uri"

    .prologue
    .line 299
    new-instance v1, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    .line 300
    .local v1, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 301
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 303
    .local v2, persister:Lcom/google/android/mms/pdu/PduPersister;
    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load: moving to drafts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2, v3}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 313
    .end local v2           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_0
    invoke-direct {v1, p2}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 317
    :cond_1
    :goto_0
    return-object v1

    .line 307
    .restart local v2       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t move to drafts:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;ZZ)Lcom/android/mms/data/WorkingMessage;
    .locals 6
    .parameter "context"
    .parameter "activity"
    .parameter "uri"
    .parameter "IsSlideshow"
    .parameter "checkCRMode"

    .prologue
    .line 323
    new-instance v1, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    .line 325
    .local v1, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 326
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 328
    .local v2, persister:Lcom/google/android/mms/pdu/PduPersister;
    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load with CRMode : moving to drafts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2, v3}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 338
    .end local v2           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_0
    invoke-direct {v1, p2, p3, p4}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    :cond_1
    :goto_0
    return-object v1

    .line 332
    .restart local v2       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t move to drafts:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loadDraft(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;
    .locals 2
    .parameter "context"
    .parameter "activity"
    .parameter "conv"

    .prologue
    .line 506
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    .line 507
    .local v0, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-direct {v0, p2}, Lcom/android/mms/data/WorkingMessage;->loadFromConversation(Lcom/android/mms/data/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    .end local v0           #msg:Lcom/android/mms/data/WorkingMessage;
    :goto_0
    return-object v0

    .restart local v0       #msg:Lcom/android/mms/data/WorkingMessage;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    goto :goto_0
.end method

.method public static loadDraftDelete(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Conversation;)Z
    .locals 2
    .parameter "context"
    .parameter "activity"
    .parameter "conv"

    .prologue
    .line 533
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    .line 534
    .local v0, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-direct {v0, p2}, Lcom/android/mms/data/WorkingMessage;->loadFromConversation(Lcom/android/mms/data/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    const/4 v1, 0x1

    .line 537
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadFromConversation(Lcom/android/mms/data/Conversation;)Z
    .locals 9
    .parameter "conv"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 542
    const-string v6, "Mms/WorkingMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadFromConversation(),conv="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 545
    .local v1, threadId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-gtz v6, :cond_1

    .line 585
    :cond_0
    :goto_0
    return v4

    .line 550
    :cond_1
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->readDraftSmsMessage(Lcom/android/mms/data/Conversation;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 551
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v6, v6, v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    move v4, v5

    .line 552
    goto :goto_0

    .line 560
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v1, v2, v0}, Lcom/android/mms/data/WorkingMessage;->readDraftMmsMessage(Landroid/content/Context;JLjava/lang/StringBuilder;)Landroid/net/Uri;

    move-result-object v3

    .line 563
    .local v3, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 564
    iput-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    .line 567
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 568
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v1, v2}, Lcom/android/mms/data/WorkingMessage;->readPriorityMms(Landroid/content/Context;J)V

    .line 571
    :cond_4
    if-eqz v3, :cond_0

    .line 572
    invoke-direct {p0, v3}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 575
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6, v3}, Lcom/android/mms/data/WorkingMessage;->loadRecipients(Landroid/content/Context;Landroid/net/Uri;)V

    .line 578
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 579
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    :cond_5
    move v4, v5

    .line 581
    goto :goto_0
.end method

.method private loadFromDraftUri(Landroid/net/Uri;)Z
    .locals 31
    .parameter "mDraftUri"

    .prologue
    .line 4625
    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadFromDraftUri(),mDraftUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4627
    const-string v13, ""

    .local v13, body:Ljava/lang/String;
    const-string v23, ""

    .line 4629
    .local v23, recipients:Ljava/lang/String;
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .local v24, reserved:Ljava/lang/Long;
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 4630
    .local v16, date:Ljava/lang/Long;
    const/4 v15, 0x0

    .line 4631
    .local v15, cursor:Landroid/database/Cursor;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 4632
    .local v25, sb:Ljava/lang/StringBuilder;
    const/16 v30, 0x0

    .line 4633
    .local v30, uri:Landroid/net/Uri;
    const/16 v27, 0x0

    .line 4634
    .local v27, svcCmd:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 4636
    .local v7, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4637
    const/4 v2, 0x5

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "body"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "reserved"

    aput-object v3, v5, v2

    const/4 v2, 0x2

    const-string v3, "date"

    aput-object v3, v5, v2

    const/4 v2, 0x3

    const-string v3, "address"

    aput-object v3, v5, v2

    const/4 v2, 0x4

    const-string v3, "svc_cmd"

    aput-object v3, v5, v2

    .line 4641
    .local v5, SMS_DRAFT_PROJECTION:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "type=3"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v7           #cr:Landroid/content/ContentResolver;
    move-result-object v15

    .line 4643
    const/16 v17, 0x0

    .line 4644
    .local v17, haveDraft:Z
    if-eqz v15, :cond_1

    .line 4646
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4647
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4648
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 4649
    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 4650
    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 4651
    const/16 v17, 0x1

    .line 4652
    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v27

    .line 4655
    :cond_0
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 4659
    :cond_1
    if-eqz v17, :cond_4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v8, 0x1

    cmp-long v2, v2, v8

    if-nez v2, :cond_4

    .line 4660
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    .line 4665
    :goto_0
    if-nez v23, :cond_5

    .line 4666
    const-string v23, ""

    .line 4672
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setRecipients(Ljava/lang/String;)V

    .line 4674
    new-instance v19, Lcom/android/mms/data/ContactList;

    invoke-direct/range {v19 .. v19}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 4675
    .local v19, list:Lcom/android/mms/data/ContactList;
    const-string v2, ","

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 4676
    .local v20, mRecipients:[Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move-object/from16 v0, v20

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_7

    .line 4677
    aget-object v2, v20, v18

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4679
    aget-object v2, v20, v18

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4680
    aget-object v2, v20, v18

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v20, v18

    .line 4682
    :cond_2
    aget-object v2, v20, v18

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4683
    aget-object v2, v20, v18

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v14

    .line 4684
    .local v14, contact:Lcom/android/mms/data/Contact;
    aget-object v2, v20, v18

    invoke-virtual {v14}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 4685
    aget-object v2, v20, v18

    invoke-virtual {v14, v2}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 4686
    invoke-virtual {v14}, Lcom/android/mms/data/Contact;->reload()V

    .line 4690
    :goto_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 4676
    .end local v14           #contact:Lcom/android/mms/data/Contact;
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 4655
    .end local v18           #i:I
    .end local v19           #list:Lcom/android/mms/data/ContactList;
    .end local v20           #mRecipients:[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2

    .line 4662
    :cond_4
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    goto :goto_0

    .line 4668
    :cond_5
    const-string v2, "["

    const-string v3, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    .line 4669
    const-string v2, "]"

    const-string v3, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    goto :goto_1

    .line 4688
    .restart local v14       #contact:Lcom/android/mms/data/Contact;
    .restart local v18       #i:I
    .restart local v19       #list:Lcom/android/mms/data/ContactList;
    .restart local v20       #mRecipients:[Ljava/lang/String;
    :cond_6
    aget-object v2, v20, v18

    invoke-virtual {v14, v2}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    goto :goto_3

    .line 4694
    .end local v14           #contact:Lcom/android/mms/data/Contact;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 4696
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4697
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    .line 4698
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    .line 4699
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4700
    and-int/lit8 v2, v27, 0x1

    if-lez v2, :cond_8

    .line 4701
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    .line 4703
    :cond_8
    and-int/lit8 v2, v27, 0x2

    if-lez v2, :cond_9

    .line 4704
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    .line 4709
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    .line 4710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 4711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "type=3"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0, v4, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4712
    const/4 v2, 0x1

    .line 4825
    .end local v5           #SMS_DRAFT_PROJECTION:[Ljava/lang/String;
    .end local v17           #haveDraft:Z
    .end local v18           #i:I
    .end local v19           #list:Lcom/android/mms/data/ContactList;
    .end local v20           #mRecipients:[Ljava/lang/String;
    :goto_4
    return v2

    .line 4714
    .restart local v7       #cr:Landroid/content/ContentResolver;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4715
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    invoke-static/range {v6 .. v12}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 4718
    if-eqz v15, :cond_d

    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4719
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    .line 4720
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v15, v2, v3}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v26

    .line 4722
    .local v26, subject:Ljava/lang/String;
    if-eqz v26, :cond_b

    .line 4723
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4725
    :cond_b
    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v8, 0x1

    cmp-long v2, v2, v8

    if-nez v2, :cond_15

    .line 4726
    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    .line 4731
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4732
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    .line 4733
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    .line 4734
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4735
    const/4 v2, 0x6

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_17

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    .line 4737
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4738
    const/4 v2, 0x7

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_18

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4744
    .end local v26           #subject:Ljava/lang/String;
    :cond_d
    if-eqz v15, :cond_e

    .line 4745
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 4748
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4749
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    .line 4752
    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4754
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 4759
    if-eqz v15, :cond_10

    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4760
    const/4 v2, 0x5

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    .line 4762
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    const/16 v3, 0x82

    if-ne v2, v3, :cond_19

    .line 4763
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4769
    :cond_10
    :goto_8
    if-eqz v15, :cond_11

    .line 4770
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 4774
    :cond_11
    if-eqz v30, :cond_1f

    .line 4775
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->getRecipientsFromPDU(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 4777
    if-eqz v23, :cond_1d

    .line 4779
    const-wide v28, 0x7ffffffffffffffeL

    .line 4780
    .local v28, tempAddress:J
    const-wide/16 v21, 0x0

    .line 4782
    .local v21, mRecipientsAddress:J
    :try_start_3
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v21

    .line 4787
    :goto_9
    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v2, v21, v2

    if-nez v2, :cond_12

    .line 4788
    const-string v23, ""

    .line 4791
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setRecipients(Ljava/lang/String;)V

    .line 4793
    new-instance v19, Lcom/android/mms/data/ContactList;

    invoke-direct/range {v19 .. v19}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 4794
    .restart local v19       #list:Lcom/android/mms/data/ContactList;
    const-string v2, ";"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 4795
    .restart local v20       #mRecipients:[Ljava/lang/String;
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_a
    move-object/from16 v0, v20

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_1c

    .line 4796
    aget-object v2, v20, v18

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 4798
    aget-object v2, v20, v18

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4799
    aget-object v2, v20, v18

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v20, v18

    .line 4801
    :cond_13
    aget-object v2, v20, v18

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 4803
    aget-object v2, v20, v18

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v14

    .line 4804
    .restart local v14       #contact:Lcom/android/mms/data/Contact;
    aget-object v2, v20, v18

    invoke-virtual {v14}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 4805
    aget-object v2, v20, v18

    invoke-virtual {v14, v2}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 4806
    invoke-virtual {v14}, Lcom/android/mms/data/Contact;->reload()V

    .line 4810
    :goto_b
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 4795
    .end local v14           #contact:Lcom/android/mms/data/Contact;
    :cond_14
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    .line 4728
    .end local v18           #i:I
    .end local v19           #list:Lcom/android/mms/data/ContactList;
    .end local v20           #mRecipients:[Ljava/lang/String;
    .end local v21           #mRecipientsAddress:J
    .end local v28           #tempAddress:J
    .restart local v26       #subject:Ljava/lang/String;
    :cond_15
    const-wide/16 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_5

    .line 4744
    .end local v26           #subject:Ljava/lang/String;
    :catchall_1
    move-exception v2

    if-eqz v15, :cond_16

    .line 4745
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_16
    throw v2

    .line 4735
    .restart local v26       #subject:Ljava/lang/String;
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 4738
    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 4765
    .end local v26           #subject:Ljava/lang/String;
    :cond_19
    const/4 v2, 0x1

    :try_start_5
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_8

    .line 4769
    :catchall_2
    move-exception v2

    if-eqz v15, :cond_1a

    .line 4770
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_1a
    throw v2

    .line 4808
    .restart local v14       #contact:Lcom/android/mms/data/Contact;
    .restart local v18       #i:I
    .restart local v19       #list:Lcom/android/mms/data/ContactList;
    .restart local v20       #mRecipients:[Ljava/lang/String;
    .restart local v21       #mRecipientsAddress:J
    .restart local v28       #tempAddress:J
    :cond_1b
    aget-object v2, v20, v18

    invoke-virtual {v14, v2}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    goto :goto_b

    .line 4814
    .end local v14           #contact:Lcom/android/mms/data/Contact;
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 4817
    .end local v18           #i:I
    .end local v19           #list:Lcom/android/mms/data/ContactList;
    .end local v20           #mRecipients:[Ljava/lang/String;
    .end local v21           #mRecipientsAddress:J
    .end local v28           #tempAddress:J
    :cond_1d
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1e

    .line 4818
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 4820
    :cond_1e
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 4825
    .end local v7           #cr:Landroid/content/ContentResolver;
    :cond_1f
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 4783
    .restart local v7       #cr:Landroid/content/ContentResolver;
    .restart local v21       #mRecipientsAddress:J
    .restart local v28       #tempAddress:J
    :catch_0
    move-exception v2

    goto/16 :goto_9
.end method

.method private loadFromUri(Landroid/net/Uri;)Z
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 447
    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadFromUri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 459
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    .line 460
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 462
    :goto_0
    return v2

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Couldn\'t load URI %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    .line 453
    goto :goto_0
.end method

.method private loadFromUri(Landroid/net/Uri;ZZ)Z
    .locals 8
    .parameter "uri"
    .parameter "IsSlideshow"
    .parameter "checkCRMode"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 468
    const-string v5, "Mms/WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFromUri with CRMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p2, p3}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 471
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 473
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 474
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 475
    .local v2, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v1, Lcom/android/mms/model/SlideModel;

    invoke-direct {v1, v2}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 476
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 478
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 480
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const v7, 0x7f0c0032

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    .end local v2           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_0
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 492
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    .line 493
    invoke-virtual {p0, v4}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 495
    :goto_0
    return v3

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v5, "Couldn\'t load URI %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v5, v3}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    .line 486
    goto :goto_0
.end method

.method public static loadMultiDraft(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;
    .locals 2
    .parameter "context"
    .parameter "activity"
    .parameter "mDraftUri"

    .prologue
    .line 4610
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    .line 4611
    .local v0, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-direct {v0, p2}, Lcom/android/mms/data/WorkingMessage;->loadFromDraftUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4614
    .end local v0           #msg:Lcom/android/mms/data/WorkingMessage;
    :goto_0
    return-object v0

    .restart local v0       #msg:Lcom/android/mms/data/WorkingMessage;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    goto :goto_0
.end method

.method private makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;
    .locals 9
    .parameter "conv"
    .parameter "subject"

    .prologue
    const/4 v8, 0x1

    .line 2938
    const/4 v0, 0x0

    .line 2939
    .local v0, dests:[Ljava/lang/String;
    if-nez p1, :cond_3

    .line 2940
    const-string v4, "Mms/WorkingMessage"

    const-string v5, "conversation is null!!!!!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/String;

    .line 2946
    :goto_0
    new-instance v3, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 2947
    .local v3, req:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 2949
    .local v2, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2951
    if-eqz v2, :cond_0

    .line 2952
    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 2985
    :cond_0
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2986
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 2989
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 2991
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2992
    iget v4, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    if-ne v4, v8, :cond_7

    .line 2995
    const/16 v4, 0x81

    :try_start_0
    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3011
    :cond_2
    :goto_2
    return-object v3

    .line 2943
    .end local v2           #encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v3           #req:Lcom/google/android/mms/pdu/SendReq;
    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2958
    .restart local v2       #encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #req:Lcom/google/android/mms/pdu/SendReq;
    :cond_4
    if-eqz v2, :cond_0

    .line 2960
    const-string v4, "NGM:makeSendReq:encodedNumbers"

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2961
    array-length v4, v2

    if-ne v4, v8, :cond_5

    .line 2963
    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 2964
    const-string v4, "NGM:makeSendReq"

    const-string v5, "Send through to"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2968
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->isGroupMessage()Z

    move-result v4

    if-ne v4, v8, :cond_6

    .line 2970
    const-string v4, "NGM"

    const-string v5, "Multiple Recipients .... Group Message true.. Set CC"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/SendReq;->setCc([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 2972
    const-string v4, "NGM:makeSendReq"

    const-string v5, "Send through CC"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2976
    :cond_6
    const-string v4, "NGM"

    const-string v5, "Multiple Recipients .... Group Message false.. Set BCC"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2977
    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/SendReq;->setBcc([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 2978
    const-string v4, "NGM:makeSendReq"

    const-string v5, "Send through BCC"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2996
    :catch_0
    move-exception v1

    .line 2998
    .local v1, e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v1}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_2

    .line 3001
    .end local v1           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :cond_7
    iget v4, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 3004
    const/16 v4, 0x82

    :try_start_1
    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 3005
    :catch_1
    move-exception v1

    .line 3007
    .restart local v1       #e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v1}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_2
.end method

.method private preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;I)V
    .locals 19
    .parameter "conv"
    .parameter "msgText"
    .parameter "priority"

    .prologue
    .line 2414
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 2416
    const/4 v8, 0x0

    .line 2417
    .local v8, bSmsDeliveryReport:Z
    const/4 v9, 0x0

    .line 2418
    .local v9, bSmsReadReport:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2419
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    .line 2420
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    .line 2423
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v5}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 2429
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v2

    .line 2431
    .local v2, threadId:J
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v4

    .line 2450
    .local v4, semiSepRecipients:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_4

    .line 2451
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v5, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 2452
    .local v18, msg:Landroid/os/Message;
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    .line 2459
    .end local v18           #msg:Landroid/os/Message;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-lez v5, :cond_5

    .line 2460
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v6

    .line 2461
    .local v6, deliveryTime:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v1

    .line 2462
    .local v1, reservationManager:Lcom/android/mms/transaction/ReservationManager;
    if-eqz v1, :cond_1

    move-object/from16 v5, p2

    .line 2463
    invoke-virtual/range {v1 .. v9}, Lcom/android/mms/transaction/ReservationManager;->addSms(JLjava/lang/String;Ljava/lang/String;JZZ)J

    .line 2467
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    if-nez v5, :cond_2

    .line 2468
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v5}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 2477
    .end local v1           #reservationManager:Lcom/android/mms/transaction/ReservationManager;
    .end local v6           #deliveryTime:J
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2479
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    .line 2480
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, v2, v3, v10}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    .line 2482
    :cond_3
    return-void

    .line 2454
    :cond_4
    const-string v5, "Mms/WorkingMessage"

    const-string v10, "preSendSmsWorker Handler is null"

    invoke-static {v5, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object v12, v4

    move-wide v13, v2

    move/from16 v15, p3

    move/from16 v16, v8

    move/from16 v17, v9

    .line 2474
    invoke-direct/range {v10 .. v17}, Lcom/android/mms/data/WorkingMessage;->sendSmsWorker(Ljava/lang/String;Ljava/lang/String;JIZZ)V

    goto :goto_1
.end method

.method private prepareForSave(ZZLjava/lang/String;)V
    .locals 1
    .parameter "notify"
    .parameter "removeSubject"
    .parameter "callBackNumber"

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 1345
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->hasMmsContentToSave()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1346
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 1347
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .line 1349
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1350
    invoke-direct {p0, p3}, Lcom/android/mms/data/WorkingMessage;->syncCallbackNumberToSlideshow(Ljava/lang/String;)V

    .line 1353
    :cond_0
    if-eqz p2, :cond_1

    .line 1354
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeSubjectIfEmpty(Z)V

    .line 1357
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeAttachmentIfEmpty(Z)V

    .line 1358
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeLengthMMSIfNotOver(Z)V

    .line 1360
    :cond_2
    return-void
.end method

.method private readDraftMmsMessage(Landroid/content/Context;JLjava/lang/StringBuilder;)Landroid/net/Uri;
    .locals 10
    .parameter "context"
    .parameter "threadId"
    .parameter "sb"

    .prologue
    const/4 v5, 0x0

    .line 2852
    const-string v0, "Mms/WorkingMessage"

    const-string v2, "readDraftMmsMessage()"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2855
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2857
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2858
    .local v4, selection:Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2861
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 2892
    :cond_0
    :goto_0
    return-object v5

    .line 2866
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2867
    sget-object v0, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 2869
    .local v9, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    const/4 v2, 0x2

    invoke-static {v7, v0, v2}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v8

    .line 2871
    .local v8, subject:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 2872
    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2874
    :cond_2
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v5, 0x1

    cmp-long v0, v2, v5

    if-nez v0, :cond_5

    .line 2875
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    mul-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    .line 2880
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2881
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityValue:I

    .line 2884
    :cond_3
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, p3, v2}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2888
    if-eqz v7, :cond_4

    .line 2889
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v5, v9

    goto :goto_0

    .line 2877
    :cond_5
    const-wide/16 v2, 0x0

    :try_start_1
    iput-wide v2, p0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2888
    .end local v8           #subject:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 2889
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 2888
    :cond_7
    if-eqz v7, :cond_0

    .line 2889
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private readDraftSmsMessage(Lcom/android/mms/data/Conversation;)Ljava/lang/String;
    .locals 16
    .parameter "conv"

    .prologue
    .line 3366
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v14

    .line 3369
    .local v14, threadId:J
    const-string v1, "Mms/WorkingMessage"

    const-string v2, "readDraftSmsMessage()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3372
    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-gtz v1, :cond_1

    .line 3373
    const-string v8, ""

    .line 3438
    :cond_0
    :goto_0
    return-object v8

    .line 3376
    :cond_1
    sget-object v1, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 3377
    .local v3, threadUri:Landroid/net/Uri;
    const-string v8, ""

    .line 3378
    .local v8, body:Ljava/lang/String;
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .local v12, reserved:Ljava/lang/Long;
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 3380
    .local v10, date:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/mms/data/WorkingMessage;->SMS_DRAFT_PROJECTION:[Ljava/lang/String;

    const-string v5, "type=3"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3382
    .local v9, c:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 3383
    .local v11, haveDraft:Z
    if-eqz v9, :cond_4

    .line 3385
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3386
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3387
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 3388
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 3389
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3390
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3392
    :cond_2
    const/4 v11, 0x1

    .line 3395
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3398
    :cond_4
    if-eqz v11, :cond_6

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v4, 0x1

    cmp-long v1, v1, v4

    if-nez v1, :cond_6

    .line 3399
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    .line 3406
    :goto_1
    if-eqz v11, :cond_5

    .line 3411
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 3420
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 3422
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3429
    invoke-static {v14, v15}, Lcom/android/mms/data/Conversation;->removeCache(J)V

    .line 3430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v14, v15, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v13

    .line 3432
    .local v13, tempConv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v13}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3433
    const-string v1, "Mms/WorkingMessage"

    const-string v2, "readDraftSmsMessage calling clearThreadId"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3434
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    goto/16 :goto_0

    .line 3395
    .end local v13           #tempConv:Lcom/android/mms/data/Conversation;
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 3401
    :cond_6
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    goto :goto_1
.end method

.method private readPriorityMms(Landroid/content/Context;J)V
    .locals 8
    .parameter "context"
    .parameter "threadId"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 4459
    const-string v0, "Mms:app"

    invoke-static {v0, v6}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4460
    const-string v0, "readCallBackNumberFromMms tid=%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4463
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4465
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4466
    .local v4, selection:Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4472
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4476
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityValue:I

    .line 4478
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityValue:I

    const/16 v2, 0x82

    if-ne v0, v2, :cond_3

    .line 4479
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4485
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 4486
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4489
    :cond_2
    return-void

    .line 4481
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4485
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 4486
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private removeAttachmentIfEmpty(Z)V
    .locals 2
    .parameter "notify"

    .prologue
    .line 1319
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1320
    return-void
.end method

.method private removeLengthMMSIfNotOver(Z)V
    .locals 3
    .parameter "notify"

    .prologue
    const/16 v2, 0x8

    .line 1324
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1325
    :cond_0
    const/4 v0, 0x0

    .line 1326
    .local v0, mContactList:Lcom/android/mms/data/ContactList;
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v1, :cond_1

    .line 1327
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1329
    :cond_1
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getMaxLengthEmailAdress(Lcom/android/mms/data/ContactList;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/data/WorkingMessage;->isLengthRequiresMMS(I)Z

    move-result v1

    invoke-direct {p0, v2, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1333
    .end local v0           #mContactList:Lcom/android/mms/data/ContactList;
    :goto_0
    return-void

    .line 1331
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isLengthRequiresMMS()Z

    move-result v1

    invoke-direct {p0, v2, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method private removeSubjectIfEmpty(Z)V
    .locals 1
    .parameter "notify"

    .prologue
    .line 1312
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1313
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1315
    :cond_0
    return-void
.end method

.method private sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;IZ)V
    .locals 35
    .parameter "conv"
    .parameter "mmsUri"
    .parameter "persister"
    .parameter "slideshow"
    .parameter "sendReq"
    .parameter "priority"
    .parameter "textOnly"

    .prologue
    .line 2594
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 2597
    const/16 v16, 0x0

    .line 2599
    .local v16, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 2601
    if-eqz v16, :cond_2

    .line 2602
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-long v0, v3

    move-wide/from16 v24, v0

    .line 2604
    .local v24, maxMessageSize:J
    const-wide/16 v33, 0x0

    .line 2605
    .local v33, totalPendingSize:J
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2606
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    add-long v33, v33, v3

    goto :goto_0

    .line 2608
    :cond_0
    cmp-long v3, v33, v24

    if-ltz v3, :cond_2

    .line 2609
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 2610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMaxPendingMessagesReached()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2615
    if-eqz v16, :cond_1

    .line 2616
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2775
    .end local v24           #maxMessageSize:J
    .end local v33           #totalPendingSize:J
    :cond_1
    :goto_1
    return-void

    .line 2615
    :cond_2
    if-eqz v16, :cond_3

    .line 2616
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2619
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 2623
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v31

    .line 2627
    .local v31, threadId:J
    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMmsWorker: update draft MMS message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttachmentFilenameEncoding()Z

    move-result v3

    if-nez v3, :cond_d

    .line 2636
    const/16 v23, 0x0

    .line 2637
    .local v23, mCurrentSlideNum:I
    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/mms/model/SlideModel;

    .line 2638
    .local v30, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/mms/model/MediaModel;

    .line 2639
    .local v26, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v27

    .line 2640
    .local v27, mediaSrc:Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, i:I
    :goto_4
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_7

    .line 2641
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-lt v3, v4, :cond_4

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7e

    if-le v3, v4, :cond_5

    .line 2642
    :cond_4
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v27

    .line 2640
    :cond_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 2615
    .end local v20           #i:I
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v23           #mCurrentSlideNum:I
    .end local v26           #media:Lcom/android/mms/model/MediaModel;
    .end local v27           #mediaSrc:Ljava/lang/String;
    .end local v30           #slide:Lcom/android/mms/model/SlideModel;
    .end local v31           #threadId:J
    :catchall_0
    move-exception v3

    if-eqz v16, :cond_6

    .line 2616
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3

    .line 2646
    .restart local v20       #i:I
    .restart local v22       #i$:Ljava/util/Iterator;
    .restart local v23       #mCurrentSlideNum:I
    .restart local v26       #media:Lcom/android/mms/model/MediaModel;
    .restart local v27       #mediaSrc:Ljava/lang/String;
    .restart local v30       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v31       #threadId:J
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->checkMediaFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/android/mms/model/MediaModel;->setSrc(Ljava/lang/String;)V

    goto :goto_3

    .line 2648
    .end local v20           #i:I
    .end local v26           #media:Lcom/android/mms/model/MediaModel;
    .end local v27           #mediaSrc:Ljava/lang/String;
    :cond_8
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 2650
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v30           #slide:Lcom/android/mms/model/SlideModel;
    :cond_9
    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v3

    if-lez v3, :cond_d

    .line 2651
    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v29

    .line 2652
    .local v29, rawAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/mms/model/AttachmentModel;

    .line 2653
    .local v15, attachment:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual {v15}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v14

    .line 2654
    .local v14, attachSrc:Ljava/lang/String;
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_6
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_c

    .line 2655
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-lt v3, v4, :cond_a

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7e

    if-le v3, v4, :cond_b

    .line 2656
    :cond_a
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    invoke-virtual {v14, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    .line 2654
    :cond_b
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 2659
    :cond_c
    invoke-virtual {v15, v14}, Lcom/android/mms/model/AttachmentModel;->setSrc(Ljava/lang/String;)V

    goto :goto_5

    .line 2668
    .end local v14           #attachSrc:Ljava/lang/String;
    .end local v15           #attachment:Lcom/android/mms/model/AttachmentModel;
    .end local v20           #i:I
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v23           #mCurrentSlideNum:I
    .end local v29           #rawAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    :cond_d
    if-nez p2, :cond_10

    .line 2670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p2

    .line 2673
    if-eqz p7, :cond_e

    invoke-static/range {p2 .. p2}, Lcom/android/mms/data/WorkingMessage;->hasId(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2674
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2679
    .local v6, values:Landroid/content/ContentValues;
    const-string v3, "text_only"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2690
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_11

    .line 2691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v3, v4, v5, v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    .line 2692
    .local v28, msg:Landroid/os/Message;
    invoke-virtual/range {v28 .. v28}, Landroid/os/Message;->sendToTarget()V

    .line 2699
    .end local v28           #msg:Landroid/os/Message;
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v3

    const-wide/16 v9, 0x0

    cmp-long v3, v3, v9

    if-lez v3, :cond_13

    .line 2700
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v17

    .line 2702
    .local v17, deliveryTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v7

    .line 2703
    .local v7, reservationManager:Lcom/android/mms/transaction/ReservationManager;
    if-eqz v7, :cond_f

    .line 2704
    const-wide/16 v3, 0x3e8

    div-long v3, v17, v3

    const-wide/16 v9, 0x3e8

    mul-long v11, v3, v9

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p4

    invoke-virtual/range {v7 .. v12}, Lcom/android/mms/transaction/ReservationManager;->addMms(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;J)J

    .line 2706
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0, v5, v9}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2712
    :goto_9
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    const/4 v4, 0x0

    move-wide/from16 v0, v31

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    .line 2713
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    if-nez v3, :cond_f

    .line 2714
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 2774
    .end local v7           #reservationManager:Lcom/android/mms/transaction/ReservationManager;
    .end local v17           #deliveryTime:J
    :cond_f
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 2686
    :cond_10
    invoke-static/range {p2 .. p5}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    goto :goto_7

    .line 2694
    :cond_11
    const-string v3, "Mms/WorkingMessage"

    const-string v4, "sendMmsWorker Handler is null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 2709
    .restart local v7       #reservationManager:Lcom/android/mms/transaction/ReservationManager;
    .restart local v17       #deliveryTime:J
    :cond_12
    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->syncDeleteDraftMmsMessage(J)V

    goto :goto_9

    .line 2718
    .end local v7           #reservationManager:Lcom/android/mms/transaction/ReservationManager;
    .end local v17           #deliveryTime:J
    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-nez v3, :cond_14

    .line 2720
    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    .line 2744
    :cond_14
    :try_start_1
    new-instance v8, Lcom/android/mms/transaction/MmsMessageSender;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v3

    int-to-long v11, v3

    move-object/from16 v10, p2

    move/from16 v13, p6

    invoke-direct/range {v8 .. v13}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;JI)V

    .line 2747
    .local v8, sender:Lcom/android/mms/transaction/MessageSender;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2748
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    invoke-interface {v8, v3}, Lcom/android/mms/transaction/MessageSender;->setPriorityLevel(I)V

    .line 2749
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    .line 2751
    :cond_15
    move-wide/from16 v0, v31

    invoke-interface {v8, v0, v1}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v3

    if-nez v3, :cond_16

    .line 2754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0, v5, v9}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2758
    :cond_16
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    const/4 v4, 0x0

    move-wide/from16 v0, v31

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    .line 2760
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2762
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v31

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    .line 2766
    :cond_17
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v31

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2772
    .end local v8           #sender:Lcom/android/mms/transaction/MessageSender;
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    goto/16 :goto_a

    .line 2767
    :catch_0
    move-exception v19

    .line 2768
    .local v19, e:Ljava/lang/Exception;
    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v31

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method private sendSmsWorker(Ljava/lang/String;Ljava/lang/String;JIZZ)V
    .locals 9
    .parameter "msgText"
    .parameter "semiSepRecipients"
    .parameter "threadId"
    .parameter "priority"
    .parameter "deliveryReport"
    .parameter "readReport"

    .prologue
    .line 2486
    const-string v1, ";"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2488
    .local v2, dests:[Ljava/lang/String;
    const-string v1, "Mms/WorkingMessage"

    const-string v3, "sendSmsWorker()"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2490
    const/4 v0, 0x0

    .line 2492
    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    .end local v0           #sender:Lcom/android/mms/transaction/MessageSender;
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 2494
    .restart local v0       #sender:Lcom/android/mms/transaction/MessageSender;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2495
    const-string v1, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPriorityLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    invoke-interface {v0, v1}, Lcom/android/mms/transaction/MessageSender;->setPriorityLevel(I)V

    .line 2497
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    .line 2500
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2501
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2502
    const/4 v8, 0x0

    .line 2503
    .local v8, svcCmd:I
    if-eqz p6, :cond_1

    .line 2504
    or-int/lit8 v8, v8, 0x1

    .line 2506
    :cond_1
    if-eqz p7, :cond_2

    .line 2507
    or-int/lit8 v8, v8, 0x2

    :cond_2
    move-object v1, v0

    .line 2509
    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    const/4 v3, 0x0

    invoke-virtual {v1, v8, v3}, Lcom/android/mms/transaction/SmsMessageSender;->setServiceCommand(ILjava/lang/String;)V

    .line 2514
    .end local v8           #svcCmd:I
    :cond_3
    :try_start_0
    invoke-interface {v0, p3, p4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 2517
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, p3, p4}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2522
    :goto_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 2523
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 2524
    return-void

    .line 2518
    :catch_0
    move-exception v7

    .line 2519
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send SMS message, threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setText(ILjava/lang/CharSequence;)V
    .locals 5
    .parameter "slideIndex"
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 622
    const-string v1, "Mms/WorkingMessage"

    const-string v3, "setText()"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, content:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZZ)V

    .line 633
    .end local v0           #content:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aput-object p2, v1, p1

    .line 634
    return-void

    .restart local v0       #content:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 629
    goto :goto_0
.end method

.method private static stateString(I)Ljava/lang/String;
    .locals 3
    .parameter "state"

    .prologue
    .line 1987
    if-nez p0, :cond_0

    .line 1988
    const-string v1, "<none>"

    .line 2013
    :goto_0
    return-object v1

    .line 1990
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1991
    .local v0, sb:Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_1

    .line 1992
    const-string v1, "RECIPIENTS_REQUIRE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1993
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_2

    .line 1994
    const-string v1, "HAS_SUBJECT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1995
    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_3

    .line 1996
    const-string v1, "HAS_ATTACHMENT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1997
    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_4

    .line 1998
    const-string v1, "LENGTH_REQUIRES_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_5

    .line 2001
    const-string v1, "REPLY_ALL_MULTIPLE_RECIPIENTS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2003
    :cond_5
    and-int/lit8 v1, p0, 0x20

    if-lez v1, :cond_6

    .line 2004
    const-string v1, "FORCE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2005
    :cond_6
    and-int/lit8 v1, p0, 0x40

    if-lez v1, :cond_7

    .line 2006
    const-string v1, "MULTIPLE_RECIPIENTS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2007
    :cond_7
    and-int/lit16 v1, p0, 0x80

    if-lez v1, :cond_8

    .line 2008
    const-string v1, "EMOJI_REQUIRES_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2010
    :cond_8
    const-string v1, "Temp_NGM"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2013
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private syncCallbackNumberToSlideshow(Ljava/lang/String;)V
    .locals 10
    .parameter "callBackNumber"

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x0

    .line 1236
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1269
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v8}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 1241
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1243
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    .line 1244
    .local v0, index:I
    new-instance v3, Lcom/android/mms/model/TextModel;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v5, "text/plain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid:text_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 1246
    .local v3, textModel:Lcom/android/mms/model/TextModel;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1247
    .local v1, s:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1249
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v8

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1251
    :cond_2
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1252
    const-string v4, "CB#:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1253
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 1254
    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_0

    .line 1255
    .end local v0           #index:I
    .end local v1           #s:Ljava/lang/StringBuffer;
    .end local v3           #textModel:Lcom/android/mms/model/TextModel;
    :cond_3
    if-eqz v2, :cond_0

    .line 1257
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    .line 1258
    .restart local v3       #textModel:Lcom/android/mms/model/TextModel;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1259
    .restart local v1       #s:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1261
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v8

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1265
    :goto_1
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1266
    const-string v4, "CB#:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1267
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1263
    :cond_4
    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private syncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3596
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3597
    return-void
.end method

.method private syncDeleteDraftMmsMessage(J)V
    .locals 5
    .parameter "threadId"

    .prologue
    .line 3734
    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncDeleteDraftMmsMessage(),threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3736
    .local v0, where:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3737
    return-void
.end method

.method private syncTextFromSlideshow()V
    .locals 8

    .prologue
    .line 1277
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1278
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    .line 1279
    .local v5, slideSize:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v1

    .line 1280
    .local v1, maxSlideSize:I
    if-le v5, v1, :cond_1

    move v2, v1

    .local v2, n:I
    move v3, v1

    .line 1281
    .end local v2           #n:I
    .local v3, n:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 1282
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 1283
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1284
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 1281
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1280
    .end local v0           #i:I
    .end local v3           #n:I
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :cond_1
    move v2, v5

    .restart local v2       #n:I
    move v3, v5

    goto :goto_0

    .line 1288
    .end local v1           #maxSlideSize:I
    .end local v2           #n:I
    .end local v5           #slideSize:I
    :cond_2
    return-void
.end method

.method private syncTextToSlideshow()V
    .locals 11

    .prologue
    .line 1200
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 1233
    :cond_0
    return-void

    .line 1203
    :cond_1
    const/4 v0, 0x0

    .line 1206
    .local v0, i:I
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    .line 1207
    .local v5, slideSize:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v2

    .line 1208
    .local v2, maxSlideSize:I
    if-le v5, v2, :cond_4

    move v3, v2

    .line 1211
    .local v3, n:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1212
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 1214
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1216
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v1

    .line 1217
    .local v1, index:I
    new-instance v6, Lcom/android/mms/model/TextModel;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v8, "text/plain"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cid:text_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 1220
    .local v6, textModel:Lcom/android/mms/model/TextModel;
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1221
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    :cond_2
    invoke-virtual {v4, v6}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 1211
    .end local v1           #index:I
    .end local v6           #textModel:Lcom/android/mms/model/TextModel;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3           #n:I
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :cond_4
    move v3, v5

    .line 1208
    goto :goto_0

    .line 1224
    .restart local v3       #n:I
    .restart local v4       #slide:Lcom/android/mms/model/SlideModel;
    :cond_5
    if-eqz v4, :cond_3

    .line 1226
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v6

    .line 1227
    .restart local v6       #textModel:Lcom/android/mms/model/TextModel;
    invoke-virtual {v6}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1229
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private syncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;Z)V
    .locals 24
    .parameter "conv"
    .parameter "isInsert"

    .prologue
    .line 3165
    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncUpdateDraftMmsMessage conv="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMessageUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v19

    .line 3169
    .local v19, persister:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v20

    .line 3171
    .local v20, sendReq:Lcom/google/android/mms/pdu/SendReq;
    const-wide/16 v21, 0x0

    .line 3172
    .local v21, setReserved:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v13

    .line 3173
    .local v13, deliveryTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v13, v2

    if-eqz v2, :cond_0

    .line 3174
    const-wide/16 v21, 0x1

    .line 3175
    const-wide/16 v2, 0x3e8

    div-long v2, v13, v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 3177
    :cond_0
    invoke-virtual/range {v20 .. v22}, Lcom/google/android/mms/pdu/SendReq;->setReserved(J)V

    .line 3179
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3181
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3182
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    if-eqz v2, :cond_7

    .line 3183
    const/16 v2, 0x80

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    .line 3190
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3191
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    if-eqz v2, :cond_9

    .line 3192
    const/16 v2, 0x80

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3204
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3205
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/mms/data/WorkingMessage;->deleteDuplicateMmsDraft(JZ)V

    .line 3207
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3208
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    .line 3210
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    .line 3211
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 3213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v2, :cond_b

    .line 3214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 3260
    :cond_4
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3261
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 3264
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3266
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/data/WorkingMessage;->updateReplyAllStatus(Lcom/android/mms/data/Conversation;)V

    .line 3269
    :cond_6
    return-void

    .line 3185
    :cond_7
    const/16 v2, 0x81

    :try_start_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3199
    :catch_0
    move-exception v16

    .line 3200
    .local v16, e1:Lcom/google/android/mms/InvalidHeaderValueException;
    const-string v2, "Mms/WorkingMessage"

    const-string v3, "The sendReq setting for delivery/read report error"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3201
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_1

    .line 3188
    .end local v16           #e1:Lcom/google/android/mms/InvalidHeaderValueException;
    :cond_8
    const/16 v2, 0x81

    :try_start_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    goto :goto_0

    .line 3194
    :cond_9
    const/16 v2, 0x81

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    goto :goto_1

    .line 3197
    :cond_a
    const/16 v2, 0x81

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V
    :try_end_2
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 3218
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->mmsMessageSize()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v17, v0

    .line 3219
    .local v17, message_size:J
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "m_size"

    aput-object v3, v5, v2

    .line 3222
    .local v5, MMS_DRAFT_PROJECTION1:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3224
    .local v12, cursor:Landroid/database/Cursor;
    new-instance v9, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v9, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3225
    .local v9, values:Landroid/content/ContentValues;
    const-string v2, "m_size"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3226
    if-eqz v12, :cond_d

    .line 3228
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3229
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3232
    :cond_c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3237
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    .line 3239
    .local v23, uriTriggerUpdate:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v2, v0, v3, v1}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    .line 3241
    if-nez p2, :cond_4

    .line 3246
    :try_start_4
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_4
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 3247
    :catch_1
    move-exception v15

    .line 3249
    .local v15, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v15}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto/16 :goto_2

    .line 3232
    .end local v15           #e:Lcom/google/android/mms/MmsException;
    .end local v23           #uriTriggerUpdate:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 3253
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v2, v0, v3, v1}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    goto/16 :goto_2
.end method

.method private syncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V
    .locals 6
    .parameter "conv"
    .parameter "contents"
    .parameter "isInsert"

    .prologue
    .line 3468
    const-string v0, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncUpdateDraftSmsMessage(),conv="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3470
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3488
    :cond_0
    :goto_0
    return-void

    .line 3473
    :cond_1
    iget v4, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    .line 3475
    .local v4, priority:I
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v1

    .line 3476
    .local v1, threadId:J
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 3477
    if-eqz p3, :cond_2

    move-object v0, p0

    move-object v3, p2

    move v5, p3

    .line 3478
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->updateDraftSmsMessage(JLjava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 3483
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3485
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->updateReplyAllStatus(Lcom/android/mms/data/Conversation;)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v3, p2

    move v5, p3

    .line 3480
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->updateDraftSmsMessage(JLjava/lang/String;IZ)Landroid/net/Uri;

    goto :goto_1
.end method

.method private static updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 5
    .parameter "uri"
    .parameter "persister"
    .parameter "slideshow"
    .parameter "sendReq"

    .prologue
    .line 3291
    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDraftMmsMessage uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3293
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3294
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3330
    :goto_0
    return-void

    .line 3299
    :cond_0
    if-nez p0, :cond_1

    .line 3300
    const-string v2, "Mms/WorkingMessage"

    const-string v3, "updateDraftMmsMessage null uri"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3304
    :cond_1
    if-nez p3, :cond_2

    .line 3305
    const-string v2, "Mms/WorkingMessage"

    const-string v3, "updateDraftMmsMessage null sendReq"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3309
    :cond_2
    if-nez p2, :cond_3

    .line 3310
    const-string v2, "Mms/WorkingMessage"

    const-string v3, "updateDraftMmsMessage null slideshow"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3315
    :cond_3
    :try_start_0
    invoke-virtual {p1, p0, p3}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3319
    :goto_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 3322
    .local v1, pb:Lcom/google/android/mms/pdu/PduBody;
    :try_start_1
    sget-object v2, Lcom/android/mms/data/WorkingMessage;->sPreOpenedFilesDummy:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3329
    :goto_2
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    goto :goto_0

    .line 3316
    .end local v1           #pb:Lcom/google/android/mms/pdu/PduBody;
    :catch_0
    move-exception v0

    .line 3317
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3323
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .restart local v1       #pb:Lcom/google/android/mms/pdu/PduBody;
    :catch_1
    move-exception v0

    .line 3324
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDraftMmsMessage: cannot update message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3325
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_2
    move-exception v0

    .line 3326
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateDraftSmsMessage(JLjava/lang/String;IZ)Landroid/net/Uri;
    .locals 16
    .parameter "threadId"
    .parameter "contents"
    .parameter "priority"
    .parameter "isInsert"

    .prologue
    .line 3493
    const-string v2, "Mms/WorkingMessage"

    const-string v3, "updateDraftSmsMessage tid=xxxxxx, contents=xxxxxx"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3497
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 3498
    const/4 v15, 0x0

    .line 3579
    :goto_0
    return-object v15

    .line 3501
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3503
    .local v5, values:Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3505
    const-string v2, "address"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3508
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 3510
    const-string v2, "address"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->formatNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3514
    :cond_2
    const-string v2, "thread_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3515
    const-string v2, "body"

    move-object/from16 v0, p3

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    const-string v2, "type"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3518
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3519
    const-string v2, "pri"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3522
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3524
    :cond_4
    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3527
    :cond_5
    const-wide/16 v12, 0x0

    .line 3528
    .local v12, setReserved:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v9

    .line 3530
    .local v9, deliveryTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-eqz v2, :cond_6

    .line 3531
    const-wide/16 v12, 0x1

    .line 3532
    const-string v2, "date"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3535
    :cond_6
    const-string v2, "reserved"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3537
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3538
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3539
    const/4 v14, 0x0

    .line 3540
    .local v14, svcCmd:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    if-eqz v2, :cond_7

    .line 3541
    or-int/lit8 v14, v14, 0x1

    .line 3543
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    if-eqz v2, :cond_8

    .line 3544
    or-int/lit8 v14, v14, 0x2

    .line 3546
    :cond_8
    const-string v2, "svc_cmd"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3550
    .end local v14           #svcCmd:I
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3552
    if-eqz p5, :cond_a

    .line 3553
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    .line 3569
    .local v15, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3556
    .end local v15           #uri:Landroid/net/Uri;
    :cond_a
    const/4 v8, 0x0

    .line 3558
    .local v8, bRet:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 3562
    :goto_1
    if-lez v8, :cond_b

    .line 3563
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3559
    :catch_0
    move-exception v11

    .line 3560
    .local v11, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMultiDraftSmsMessage() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3569
    .end local v8           #bRet:I
    .end local v11           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    throw v2

    .line 3565
    .restart local v8       #bRet:I
    :cond_b
    const/4 v15, 0x0

    .line 3569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3572
    .end local v8           #bRet:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 3573
    .restart local v15       #uri:Landroid/net/Uri;
    invoke-direct/range {p0 .. p2}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(J)V

    .line 3576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    .line 3578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private updateReplyAllStatus(Lcom/android/mms/data/Conversation;)V
    .locals 8
    .parameter "conv"

    .prologue
    const/4 v0, 0x1

    .line 3273
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "threads"

    invoke-static {v1, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3274
    .local v2, threads_uri:Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    .line 3275
    .local v4, threadId:J
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->isGroupMessage()Z

    move-result v6

    .line 3276
    .local v6, reply_all:Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 3277
    .local v3, values:Landroid/content/ContentValues;
    const-string v1, "reply_all"

    if-eqz v6, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3278
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    .line 3279
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/data/WorkingMessage$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage$4;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Landroid/content/ContentValues;J)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 3285
    :cond_0
    return-void

    .line 3277
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSendStats(Lcom/android/mms/data/Conversation;)V
    .locals 8
    .parameter "conv"

    .prologue
    .line 2353
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/data/ContactList;->getNumbers(ZZ)[Ljava/lang/String;

    move-result-object v0

    .line 2354
    .local v0, dests:[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2357
    .local v2, phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v4, Lcom/android/common/contacts/DataUsageStatUpdater;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/common/contacts/DataUsageStatUpdater;-><init>(Landroid/content/Context;)V

    .line 2358
    .local v4, updater:Lcom/android/common/contacts/DataUsageStatUpdater;
    invoke-virtual {v4, v2}, Lcom/android/common/contacts/DataUsageStatUpdater;->updateWithPhoneNumber(Ljava/util/Collection;)Z

    move-result v3

    .line 2360
    .local v3, result:Z
    if-eqz v0, :cond_0

    .line 2362
    const-string v5, "Mms/WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSendStats,phone:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/mms/Log;->filterOutDigits([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2369
    .end local v3           #result:Z
    .end local v4           #updater:Lcom/android/common/contacts/DataUsageStatUpdater;
    :cond_0
    :goto_0
    return-void

    .line 2364
    :catch_0
    move-exception v1

    .line 2365
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v5, "Mms/WorkingMessage"

    const-string v6, "SQLiteException caught"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2366
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v1

    .line 2367
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v5, "Mms/WorkingMessage"

    const-string v6, "IllegalStateException caught"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateState(IZZ)V
    .locals 7
    .parameter "state"
    .parameter "on"
    .parameter "notify"

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 2078
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    if-nez v0, :cond_1

    .line 2132
    :cond_0
    :goto_0
    return-void

    .line 2084
    :cond_1
    iget v6, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 2085
    .local v6, oldState:I
    if-eqz p2, :cond_8

    .line 2086
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 2093
    :goto_1
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-ne v0, v4, :cond_2

    and-int/lit8 v0, v6, -0x21

    if-lez v0, :cond_2

    .line 2094
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 2098
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2099
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 2102
    :cond_3
    if-ne p1, v4, :cond_4

    if-eqz p2, :cond_4

    .line 2103
    sput-boolean v3, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    .line 2107
    :cond_4
    if-eqz p3, :cond_5

    .line 2108
    if-nez v6, :cond_9

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eqz v0, :cond_9

    .line 2109
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-interface {v0, v3, v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(ZI)V

    .line 2115
    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 2116
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    .line 2117
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 2120
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2121
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2122
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2123
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2124
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 2129
    :cond_7
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eq v6, v0, :cond_0

    .line 2130
    const-string v1, "Mms/WorkingMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_a

    const-string v0, "+"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2088
    :cond_8
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    goto/16 :goto_1

    .line 2110
    :cond_9
    if-eqz v6, :cond_5

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v0, :cond_5

    .line 2111
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-interface {v0, v5, v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(ZI)V

    goto/16 :goto_2

    .line 2130
    :cond_a
    const-string v0, "-"

    goto :goto_3
.end method


# virtual methods
.method public addSlide(I)Z
    .locals 9
    .parameter "slideIndex"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4097
    const-string v5, "Mms/WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addSlide(),slideIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4099
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 4100
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v5, :cond_0

    .line 4135
    :goto_0
    return v3

    .line 4103
    :cond_0
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 4104
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 4105
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4107
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    .line 4108
    .local v0, index:I
    new-instance v2, Lcom/android/mms/model/TextModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v6, "text/plain"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid:text_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v8

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 4111
    .local v2, text:Lcom/android/mms/model/TextModel;
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    .line 4112
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v5, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    .line 4114
    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 4117
    .end local v0           #index:I
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    .end local v2           #text:Lcom/android/mms/model/TextModel;
    :cond_2
    new-instance v1, Lcom/android/mms/model/SlideModel;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v1, v3}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 4118
    .restart local v1       #slide:Lcom/android/mms/model/SlideModel;
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    .line 4119
    .restart local v0       #index:I
    new-instance v2, Lcom/android/mms/model/TextModel;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v5, "text/plain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid:text_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 4121
    .restart local v2       #text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 4124
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-ge v3, p1, :cond_3

    .line 4125
    const-string v3, "Mms/WorkingMessage"

    const-string v5, "inside mSlideshow.size()<slideIndex"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4126
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 4134
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    move v3, v4

    .line 4135
    goto/16 :goto_0

    .line 4128
    :cond_3
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, p1, v1}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    goto :goto_1
.end method

.method public addWorkingRecipients(Lcom/android/mms/data/ContactList;)V
    .locals 8
    .parameter "numbers"

    .prologue
    .line 1821
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 1822
    .local v1, existedRecipients:Lcom/android/mms/data/ContactList;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1823
    :cond_0
    new-instance v6, Lcom/android/mms/data/ContactList;

    invoke-direct {v6}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    .line 1824
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    .line 1825
    .local v5, number:Lcom/android/mms/data/Contact;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1826
    invoke-virtual {v1, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 1827
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1829
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1830
    .local v0, existedRecipient:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1832
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1837
    .end local v0           #existedRecipient:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #number:Lcom/android/mms/data/Contact;
    :cond_4
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #existedRecipients:Lcom/android/mms/data/ContactList;
    check-cast v1, Lcom/android/mms/data/ContactList;

    .line 1838
    .restart local v1       #existedRecipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    .line 1839
    .restart local v5       #number:Lcom/android/mms/data/Contact;
    const/4 v4, 0x0

    .line 1840
    .local v4, isAdded:I
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1841
    .restart local v0       #existedRecipient:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1842
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1844
    .end local v0           #existedRecipient:Lcom/android/mms/data/Contact;
    :cond_7
    if-nez v4, :cond_5

    .line 1845
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1848
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #isAdded:I
    .end local v5           #number:Lcom/android/mms/data/Contact;
    :cond_8
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->clear()V

    .line 1849
    return-void
.end method

.method public asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 5
    .parameter "conv"

    .prologue
    .line 3686
    const-string v2, "Mms/WorkingMessage"

    const-string v3, "asyncDeleteDraftSmsMessage()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3687
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 3688
    .local v0, threadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 3689
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "type=3"

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3692
    :cond_0
    return-void
.end method

.method public checkIfAddressContainsEmailToMms(Ljava/util/List;Ljava/lang/CharSequence;)Z
    .locals 12
    .parameter
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2193
    const/4 v5, 0x0

    .line 2194
    .local v5, requiresMms:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 2195
    const/4 v2, 0x0

    .line 2196
    .local v2, dests:[Ljava/lang/String;
    if-nez p1, :cond_5

    .line 2197
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    move v6, v5

    .line 2230
    .end local v2           #dests:[Ljava/lang/String;
    .end local v5           #requiresMms:Z
    .local v6, requiresMms:I
    :goto_0
    return v6

    .line 2200
    .end local v6           #requiresMms:I
    .restart local v2       #dests:[Ljava/lang/String;
    .restart local v5       #requiresMms:Z
    :cond_1
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v2

    .line 2206
    :goto_1
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 2207
    .local v1, dest:Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2208
    :cond_2
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 2210
    .local v7, s:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2211
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {p2, v11, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v8

    .line 2215
    .local v8, ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_3
    iget v9, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v9, v10, :cond_7

    .line 2216
    const/4 v5, 0x1

    .line 2221
    .end local v1           #dest:Ljava/lang/String;
    .end local v7           #s:Ljava/lang/StringBuffer;
    .end local v8           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_3
    if-eqz v5, :cond_8

    .line 2222
    invoke-direct {p0, v10, v10, v10}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 2223
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 2224
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #dests:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_4
    :goto_4
    move v6, v5

    .line 2230
    .restart local v6       #requiresMms:I
    goto :goto_0

    .line 2202
    .end local v6           #requiresMms:I
    .restart local v2       #dests:[Ljava/lang/String;
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/String;

    .line 2203
    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #dests:[Ljava/lang/String;
    check-cast v2, [Ljava/lang/String;

    .restart local v2       #dests:[Ljava/lang/String;
    goto :goto_1

    .line 2213
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #dest:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v7       #s:Ljava/lang/StringBuffer;
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {p2, v11, v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v8

    .restart local v8       #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    goto :goto_3

    .line 2206
    .end local v7           #s:Ljava/lang/StringBuffer;
    .end local v8           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2227
    .end local v1           #dest:Ljava/lang/String;
    :cond_8
    invoke-direct {p0, v10, v11, v10}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_4
.end method

.method public checkMaxSlide(II)Z
    .locals 2
    .parameter "location"
    .parameter "type"

    .prologue
    .line 3767
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 3768
    const/4 v0, 0x1

    .line 3770
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cloneWorkingMessage_ForSplitMmsSend(Lcom/android/mms/data/WorkingMessage;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 4517
    iget v0, p1, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 4520
    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 4523
    iget-object v0, p1, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    .line 4533
    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 4536
    iget-object v0, p1, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    .line 4538
    iget-object v0, p1, Lcom/android/mms/data/WorkingMessage;->mRecipients:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRecipients:Ljava/lang/String;

    .line 4540
    iget-object v0, p1, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    .line 4543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 4546
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    sput-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    .line 4550
    return-void
.end method

.method public correctAttachmentState(Z)V
    .locals 11
    .parameter "notify"

    .prologue
    const/4 v4, 0x5

    const/4 v10, 0x4

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 348
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_12

    .line 349
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v9

    .line 353
    .local v9, slideCount:I
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 355
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iput-boolean v5, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    .line 358
    :cond_0
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 359
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 360
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 362
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0032

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 437
    .end local v9           #slideCount:I
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 438
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    .line 439
    .local v6, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v7

    .line 440
    .local v7, sendReq:Lcom/google/android/mms/pdu/SendReq;
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, v6, v1, v7}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    .line 443
    .end local v6           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v7           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    invoke-direct {p0, v10, v0, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 444
    return-void

    .line 367
    .restart local v9       #slideCount:I
    :cond_4
    if-nez v9, :cond_7

    .line 370
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 371
    iput-boolean v5, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    .line 374
    :cond_5
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_6

    .line 375
    iput v4, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 377
    :cond_6
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 378
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 379
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 381
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto :goto_0

    .line 384
    :cond_7
    if-le v9, v3, :cond_8

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v0

    if-nez v0, :cond_8

    .line 385
    iput v10, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 386
    :cond_8
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v0

    if-ne v0, v3, :cond_9

    .line 387
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 389
    :cond_9
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    .line 390
    .local v8, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 391
    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 392
    :cond_a
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 393
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 394
    :cond_b
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 395
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto/16 :goto_0

    .line 397
    :cond_c
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubjectField()Z

    move-result v0

    if-nez v0, :cond_10

    .line 398
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_d

    .line 399
    iput v4, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto/16 :goto_0

    .line 400
    :cond_d
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isLengthRequiresMMS()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 401
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->recipienHasEmail()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 404
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto/16 :goto_0

    .line 407
    :cond_e
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 408
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 409
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 410
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    .line 411
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 415
    :cond_f
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto/16 :goto_0

    .line 417
    :cond_10
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 419
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupMessage()Z

    move-result v0

    if-eq v0, v3, :cond_11

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    :cond_11
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 421
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    .line 422
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 429
    .end local v8           #slide:Lcom/android/mms/model/SlideModel;
    .end local v9           #slideCount:I
    :cond_12
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 430
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 432
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method protected createPendingSmsMessage(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter "msgText"
    .parameter "semiSepRecipients"
    .parameter "threadId"

    .prologue
    .line 4440
    const-string v1, ";"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4443
    .local v2, dests:[Ljava/lang/String;
    const-string v1, "createPendingSmsMessage"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4446
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 4448
    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    invoke-interface {v0, p3, p4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 4451
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, p3, p4}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4456
    :goto_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 4457
    return-void

    .line 4452
    :catch_0
    move-exception v7

    .line 4453
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to save SMS message to pending, threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public createSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    .line 3762
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 3763
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public deleteAnonymousDraftSmsMessage()V
    .locals 10

    .prologue
    .line 3706
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "asyncDeleteDraftMmsMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3707
    const/4 v7, 0x0

    .line 3708
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 3709
    .local v9, uri:Landroid/net/Uri;
    const-string v8, "address is NULL"

    .line 3711
    .local v8, selection:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->SMS_ANONYMOUS_DRAFT_PROJECTION:[Ljava/lang/String;

    const-string v4, "address is NULL"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3713
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 3714
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3715
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 3716
    const-string v0, "hys"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3717
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v9, v0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3721
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_0

    .line 3722
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 3721
    :cond_1
    if-eqz v7, :cond_2

    .line 3722
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3725
    :cond_2
    return-void
.end method

.method public declared-synchronized discard()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1662
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "discard()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    .line 1668
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-ne v0, v2, :cond_2

    .line 1669
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "already discarded"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1700
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1674
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1676
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1677
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 1678
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    .line 1694
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 1695
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetProvider;->getWidgetCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {}, Lcom/android/mms/widget/MmsWidgetProvider;->getCurrentWidget()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmsWidget"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1696
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 1697
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1698
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1662
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1682
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 1685
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const-string v2, "msg_box=3"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    goto :goto_1

    .line 1689
    :cond_6
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public dump()V
    .locals 3

    .prologue
    .line 1806
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "WorkingMessage:"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->dumpWorkingRecipients()V

    .line 1808
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    .line 1809
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConversation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    :cond_0
    return-void
.end method

.method public expectedMessageSize()Ljava/lang/String;
    .locals 14

    .prologue
    .line 4226
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 4227
    .local v7, msgSize:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 4228
    .local v6, messageSize:I
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v12, :cond_0

    .line 4229
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v12

    add-int/2addr v6, v12

    .line 4233
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubjectField()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 4234
    add-int/lit8 v6, v6, 0x7d

    .line 4237
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 4238
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 4239
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 4240
    .local v0, c:Lcom/android/mms/data/Contact;
    if-eqz v0, :cond_2

    .line 4241
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 4242
    .local v8, number:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v6, v12

    goto :goto_0

    .line 4245
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v8           #number:Ljava/lang/String;
    :cond_3
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 4246
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 4247
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    if-eqz v0, :cond_4

    .line 4248
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 4249
    .restart local v8       #number:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 4250
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v6, v12

    goto :goto_1

    .line 4268
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v8           #number:Ljava/lang/String;
    :cond_5
    const/16 v5, 0x36

    .line 4270
    .local v5, mediaHeaderSize:I
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v12, :cond_a

    .line 4271
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v11

    .line 4272
    .local v11, slideCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v11, :cond_9

    .line 4273
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v12, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v10

    .line 4275
    .local v10, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 4277
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    .line 4278
    .local v1, fileNameSize:I
    add-int v12, v5, v1

    add-int/lit8 v12, v12, 0x28

    add-int/2addr v6, v12

    .line 4280
    .end local v1           #fileNameSize:I
    :cond_6
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 4282
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    .line 4283
    .restart local v1       #fileNameSize:I
    add-int v12, v5, v1

    add-int/lit8 v12, v12, 0x28

    add-int/2addr v6, v12

    .line 4285
    .end local v1           #fileNameSize:I
    :cond_7
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 4287
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    .line 4288
    .restart local v1       #fileNameSize:I
    add-int v12, v5, v1

    add-int/lit8 v12, v12, 0x1c

    add-int/2addr v6, v12

    .line 4272
    .end local v1           #fileNameSize:I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4294
    .end local v10           #slide:Lcom/android/mms/model/SlideModel;
    :cond_9
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v12

    if-lez v12, :cond_a

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRawAttachmentsNameList()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 4295
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v9

    .line 4296
    .local v9, rawAttachmentCnt:I
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRawAttachmentsNameList()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v6, v12

    .line 4297
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v9, :cond_a

    .line 4299
    add-int/lit16 v6, v6, 0x11a

    .line 4297
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4303
    .end local v2           #i:I
    .end local v9           #rawAttachmentCnt:I
    .end local v11           #slideCount:I
    :cond_a
    if-nez v6, :cond_b

    .line 4304
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4313
    :goto_4
    const/4 v4, 0x0

    .line 4314
    .local v4, kilobyte:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c0011

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4315
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4317
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 4306
    .end local v4           #kilobyte:Ljava/lang/String;
    :cond_b
    add-int/lit16 v12, v6, 0x3ff

    div-int/lit16 v6, v12, 0x400

    .line 4307
    if-nez v6, :cond_c

    .line 4308
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 4310
    :cond_c
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public getAttachmentType()I
    .locals 1

    .prologue
    .line 3741
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    return v0
.end method

.method public getConversation()Lcom/android/mms/data/Conversation;
    .locals 1

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method public getMaxEmailLen()I
    .locals 2

    .prologue
    .line 1898
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "IS41 Email : getMaxEmailLen"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    return v0
.end method

.method public getMessageDeliveryReport()Z
    .locals 1

    .prologue
    .line 4350
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    return v0
.end method

.method public getMessageReadReport()Z
    .locals 1

    .prologue
    .line 4360
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    return v0
.end method

.method public getMessageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 4322
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    return v0
.end method

.method public getRawAttachmentsCount()I
    .locals 1

    .prologue
    .line 4887
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v0, :cond_0

    .line 4888
    const/4 v0, 0x0

    .line 4890
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    goto :goto_0
.end method

.method public getRawAttachmentsNameList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3753
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 3754
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList()Ljava/lang/String;

    move-result-object v0

    .line 3756
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecipients()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRecipients:Ljava/lang/String;

    return-object v0
.end method

.method public getReserveDeliveryTime()J
    .locals 2

    .prologue
    .line 4340
    iget-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    return-wide v0
.end method

.method public getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public getSubject()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "slideIndex"

    .prologue
    .line 736
    if-ltz p1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    .line 739
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTextLengthFromAllSlide(I)I
    .locals 5
    .parameter "slideIndex"

    .prologue
    .line 1291
    const/4 v2, 0x0

    .line 1293
    .local v2, nLength:I
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1294
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1295
    if-ne v0, p1, :cond_1

    .line 1294
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1298
    :cond_1
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 1299
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1300
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/TelephonyUtils;->getByteSize(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 1305
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    return v2
.end method

.method public getWorkingMessageUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 4554
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWorkingMessageUri : return ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4556
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWorkingRecipients()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    .line 1853
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    .line 1855
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAttachment()Z
    .locals 1

    .prologue
    .line 965
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocationAttachment()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 974
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 975
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 976
    :cond_0
    return v0
.end method

.method public hasOnlySignatureText()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 4365
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4382
    :cond_0
    :goto_0
    return v4

    .line 4369
    :cond_1
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 4371
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_enable_signature"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4372
    .local v0, isSignatureEnabled:Z
    if-eqz v0, :cond_0

    .line 4376
    const-string v5, "pref_key_signature_text"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4377
    .local v3, signatureText:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4381
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4382
    .local v1, linefeedAndSignature:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method public hasSlideMedia()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 970
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSlideshow()Z
    .locals 2

    .prologue
    .line 1123
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubjectField()Z
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 750
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAddPossible(ILcom/android/mms/model/SlideModel;)Z
    .locals 3
    .parameter "type"
    .parameter "slide"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3774
    if-ne p1, v1, :cond_1

    .line 3775
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3791
    :cond_0
    :goto_0
    return v0

    .line 3778
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 3779
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 3791
    goto :goto_0

    .line 3782
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 3783
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 3786
    :cond_4
    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    .line 3787
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public isDiscarded()Z
    .locals 1

    .prologue
    .line 1712
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    return v0
.end method

.method public isEmptyGroupMessage()Z
    .locals 1

    .prologue
    .line 4504
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4505
    const/4 v0, 0x1

    .line 4507
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFakeMmsForDraft()Z
    .locals 1

    .prologue
    .line 939
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLengthRequiresMMS()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 984
    sget v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    .line 985
    .local v0, encodingType:I
    const/4 v2, 0x0

    .line 986
    .local v2, params:[I
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    if-eqz v5, :cond_1

    .line 989
    if-nez v0, :cond_0

    .line 990
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isContainKoreanChar(Ljava/lang/String;)Z

    move-result v1

    .line 991
    .local v1, isKoreanChar:Z
    if-eqz v1, :cond_0

    .line 992
    const/4 v0, 0x2

    .line 996
    .end local v1           #isKoreanChar:Z
    :cond_0
    if-ne v0, v3, :cond_2

    .line 997
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-static {v5, v4, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    .line 1009
    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    aget v5, v2, v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v6

    if-lt v5, v6, :cond_5

    .line 1012
    :goto_1
    return v3

    .line 998
    :cond_2
    if-nez v0, :cond_3

    .line 999
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-static {v5, v4, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    goto :goto_0

    .line 1001
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableComposeTypeUI()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1002
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-static {v5, v4}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v2

    goto :goto_0

    .line 1004
    :cond_4
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/util/TelephonyUtils;->getStringByteSize(Ljava/lang/String;)[I

    move-result-object v2

    goto :goto_0

    :cond_5
    move v3, v4

    .line 1012
    goto :goto_1
.end method

.method public isLengthRequiresMMS(I)Z
    .locals 11
    .parameter "maxEmailChars"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1021
    sget v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    .line 1022
    .local v0, encodingType:I
    const/4 v2, 0x0

    .line 1023
    .local v2, params:[I
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    if-eqz v7, :cond_1

    .line 1026
    if-nez v0, :cond_0

    .line 1027
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->isContainKoreanChar(Ljava/lang/String;)Z

    move-result v1

    .line 1028
    .local v1, isKoreanChar:Z
    if-eqz v1, :cond_0

    .line 1029
    const/4 v0, 0x2

    .line 1033
    .end local v1           #isKoreanChar:Z
    :cond_0
    if-ne v0, v5, :cond_5

    .line 1034
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    if-lez p1, :cond_4

    .line 1037
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1038
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    .line 1043
    .local v4, ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    new-array v3, v10, [I

    .line 1044
    .local v3, ret:[I
    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v7, v3, v6

    .line 1045
    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v7, v3, v5

    .line 1046
    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v7, v3, v8

    .line 1047
    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v7, v3, v9

    .line 1048
    move-object v2, v3

    .line 1097
    .end local v3           #ret:[I
    .end local v4           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v7

    if-eqz v7, :cond_d

    if-lez p1, :cond_d

    .line 1098
    if-eqz v2, :cond_c

    aget v7, v2, v6

    if-le v7, v5, :cond_c

    .line 1106
    :cond_2
    :goto_2
    return v5

    .line 1040
    :cond_3
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZII)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    .restart local v4       #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    goto :goto_0

    .line 1050
    .end local v4           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_4
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    goto :goto_1

    .line 1052
    :cond_5
    if-nez v0, :cond_8

    .line 1053
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    if-lez p1, :cond_7

    .line 1056
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1057
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    .line 1062
    .restart local v4       #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_3
    new-array v3, v10, [I

    .line 1063
    .restart local v3       #ret:[I
    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v7, v3, v6

    .line 1064
    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v7, v3, v5

    .line 1065
    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v7, v3, v8

    .line 1066
    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v7, v3, v9

    .line 1067
    move-object v2, v3

    .line 1068
    goto :goto_1

    .line 1059
    .end local v3           #ret:[I
    .end local v4           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_6
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZII)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    .restart local v4       #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    goto :goto_3

    .line 1069
    .end local v4           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_7
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    goto :goto_1

    .line 1072
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableComposeTypeUI()Z

    move-result v7

    if-nez v7, :cond_b

    .line 1073
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    if-lez p1, :cond_a

    .line 1076
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1077
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    .line 1082
    .restart local v4       #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_4
    new-array v3, v10, [I

    .line 1083
    .restart local v3       #ret:[I
    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v7, v3, v6

    .line 1084
    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v7, v3, v5

    .line 1085
    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v7, v3, v8

    .line 1086
    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v7, v3, v9

    .line 1087
    move-object v2, v3

    .line 1088
    goto/16 :goto_1

    .line 1079
    .end local v3           #ret:[I
    .end local v4           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_9
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZII)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    .restart local v4       #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    goto :goto_4

    .line 1089
    .end local v4           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_a
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v2

    goto/16 :goto_1

    .line 1092
    :cond_b
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/util/TelephonyUtils;->getStringByteSize(Ljava/lang/String;)[I

    move-result-object v2

    goto/16 :goto_1

    :cond_c
    move v5, v6

    .line 1101
    goto/16 :goto_2

    .line 1103
    :cond_d
    if-eqz v2, :cond_e

    aget v7, v2, v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v8

    if-ge v7, v8, :cond_2

    :cond_e
    move v5, v6

    .line 1106
    goto/16 :goto_2
.end method

.method public isMmsExceededSizewhenPastedText(ILjava/lang/CharSequence;)Z
    .locals 11
    .parameter "slideIndex"
    .parameter "s"

    .prologue
    const/4 v6, 0x1

    .line 4857
    if-eqz p2, :cond_1

    .line 4858
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4862
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v7, :cond_3

    .line 4863
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 4864
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    .line 4865
    .local v0, index:I
    const/4 v1, 0x0

    .line 4866
    .local v1, originalTextSize:I
    new-instance v3, Lcom/android/mms/model/TextModel;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v8, "text/plain"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cid:text_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v10

    invoke-direct {v3, v7, v8, v9, v10}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 4868
    .local v3, text:Lcom/android/mms/model/TextModel;
    if-eqz v2, :cond_0

    .line 4869
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v7

    if-nez v7, :cond_2

    .line 4870
    invoke-virtual {v3, p2, v6}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    .line 4879
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getMediaSize()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v7, v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v8

    if-le v7, v8, :cond_3

    .line 4882
    .end local v0           #index:I
    .end local v1           #originalTextSize:I
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    .end local v3           #text:Lcom/android/mms/model/TextModel;
    :goto_2
    return v6

    .line 4860
    :cond_1
    const-string p2, ""

    goto :goto_0

    .line 4872
    .restart local v0       #index:I
    .restart local v1       #originalTextSize:I
    .restart local v2       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v3       #text:Lcom/android/mms/model/TextModel;
    :cond_2
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    .line 4873
    .local v4, textModel:Lcom/android/mms/model/TextModel;
    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getMediaSize()I

    move-result v1

    .line 4874
    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    .line 4875
    .local v5, textString:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4876
    invoke-virtual {v3, v5, v6}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 4882
    .end local v0           #index:I
    .end local v1           #originalTextSize:I
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    .end local v3           #text:Lcom/android/mms/model/TextModel;
    .end local v4           #textModel:Lcom/android/mms/model/TextModel;
    .end local v5           #textString:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public isMmsStateMultipleRecipient()Z
    .locals 1

    .prologue
    .line 943
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingSizeOver(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    .line 2779
    const/4 v7, 0x0

    .line 2782
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2784
    if-eqz v7, :cond_3

    .line 2785
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v8, v0

    .line 2787
    .local v8, maxMessageSize:J
    const-wide/16 v10, 0x0

    .line 2788
    .local v10, totalPendingSize:J
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2789
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    add-long/2addr v10, v0

    goto :goto_0

    .line 2791
    :cond_0
    cmp-long v0, v10, v8

    if-ltz v0, :cond_3

    .line 2792
    const v0, 0x7f0c00e2

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2798
    if-eqz v7, :cond_1

    .line 2799
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v12

    .end local v8           #maxMessageSize:J
    .end local v10           #totalPendingSize:J
    :cond_2
    :goto_1
    return v0

    .line 2796
    :cond_3
    const/4 v0, 0x0

    .line 2798
    if-eqz v7, :cond_2

    .line 2799
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2798
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 2799
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public isSignatureAdded()Z
    .locals 1

    .prologue
    .line 4386
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    return v0
.end method

.method public isWorthSaving()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 909
    iget-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-ne v2, v1, :cond_1

    .line 929
    :cond_0
    :goto_0
    return v0

    .line 912
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 913
    goto :goto_0

    .line 916
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 917
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasOnlySignatureText()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 919
    goto :goto_0

    .line 925
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 926
    goto :goto_0
.end method

.method public loadFromUri_onlySlideshowModel(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4560
    iget-boolean v3, p0, Lcom/android/mms/data/WorkingMessage;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "loadFromUri %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4562
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4569
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    .line 4570
    invoke-virtual {p0, v2}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 4571
    :goto_0
    return v1

    .line 4563
    :catch_0
    move-exception v0

    .line 4564
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Couldn\'t load URI %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 4565
    goto :goto_0
.end method

.method public loadRecipients(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 592
    const-string v1, "Mms/WorkingMessage"

    const-string v2, "loadRecipients()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-static {p2, p1}, Lcom/android/mms/ui/MessageUtils;->getRecipientsFromPDU(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, recipients:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->setRecipients(Ljava/lang/String;)V

    .line 598
    :cond_0
    return-void
.end method

.method public mmsMessageSize()I
    .locals 11

    .prologue
    .line 4150
    const/4 v5, 0x0

    .line 4151
    .local v5, messageSize:I
    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v10, :cond_0

    .line 4152
    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v10

    add-int/2addr v5, v10

    .line 4156
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubjectField()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 4157
    add-int/lit8 v5, v5, 0x7d

    .line 4160
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 4161
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 4162
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 4163
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 4164
    .local v6, number:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v5, v10

    .line 4165
    goto :goto_0

    .line 4166
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #number:Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 4167
    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 4168
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 4169
    .restart local v6       #number:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v5, v10

    .line 4170
    goto :goto_1

    .line 4185
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #number:Ljava/lang/String;
    :cond_3
    const/16 v4, 0x36

    .line 4187
    .local v4, mediaHeaderSize:I
    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v10, :cond_8

    .line 4188
    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v9

    .line 4189
    .local v9, slideCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v9, :cond_7

    .line 4190
    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    .line 4192
    .local v8, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 4194
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    .line 4195
    .local v1, fileNameSize:I
    add-int v10, v4, v1

    add-int/lit8 v10, v10, 0x28

    add-int/2addr v5, v10

    .line 4197
    .end local v1           #fileNameSize:I
    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 4199
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    .line 4200
    .restart local v1       #fileNameSize:I
    add-int v10, v4, v1

    add-int/lit8 v10, v10, 0x28

    add-int/2addr v5, v10

    .line 4202
    .end local v1           #fileNameSize:I
    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 4204
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    .line 4205
    .restart local v1       #fileNameSize:I
    add-int v10, v4, v1

    add-int/lit8 v10, v10, 0x1c

    add-int/2addr v5, v10

    .line 4189
    .end local v1           #fileNameSize:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4211
    .end local v8           #slide:Lcom/android/mms/model/SlideModel;
    :cond_7
    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v10

    if-lez v10, :cond_8

    .line 4212
    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v7

    .line 4213
    .local v7, rawAttachmentCnt:I
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRawAttachmentsNameList()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v5, v10

    .line 4214
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v7, :cond_8

    .line 4216
    add-int/lit16 v5, v5, 0x11a

    .line 4214
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4220
    .end local v2           #i:I
    .end local v7           #rawAttachmentCnt:I
    .end local v9           #slideCount:I
    :cond_8
    return v5
.end method

.method public readStateFromBundle(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    const/4 v4, 0x0

    .line 1751
    if-nez p1, :cond_0

    .line 1766
    :goto_0
    return-void

    .line 1755
    :cond_0
    const-string v3, "subject"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1756
    .local v1, subject:Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1758
    const-string v3, "msg_uri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1759
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 1760
    invoke-direct {p0, v2}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    goto :goto_0

    .line 1763
    :cond_1
    const-string v3, "sms_body"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1764
    .local v0, body:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aput-object v0, v3, v4

    goto :goto_0
.end method

.method public recipienHasEmail()Z
    .locals 1

    .prologue
    .line 1960
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 1961
    const/4 v0, 0x1

    .line 1963
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFakeMmsForDraft(Z)V
    .locals 2
    .parameter "notify"

    .prologue
    const/4 v1, 0x0

    .line 1387
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-nez v0, :cond_1

    .line 1395
    :cond_0
    :goto_0
    return-void

    .line 1390
    :cond_1
    sput-boolean v1, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    .line 1393
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    const/16 v0, 0x20

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public removeRecipient(Ljava/lang/String;)Z
    .locals 1
    .parameter "recipientName"

    .prologue
    .line 4586
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Conversation;->removeRecipient(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeSlide(I)Z
    .locals 4
    .parameter "slideIndex"

    .prologue
    const/4 v3, 0x1

    .line 4139
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSlide(),slideIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4140
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 4141
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    .line 4142
    invoke-virtual {p0, v3}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 4143
    return v3
.end method

.method public requiresMms()Z
    .locals 1

    .prologue
    .line 1935
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveAsMms(Z)Landroid/net/Uri;
    .locals 8
    .parameter "notify"

    .prologue
    const/4 v7, 0x0

    .line 1402
    const-string v4, "Mms/WorkingMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAsMms(),notify="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,mConversation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    iget-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v4, :cond_0

    .line 1405
    const-string v4, "Mms/WorkingMessage"

    const-string v5, "saveAsMms() IllegalStateException : saveAsMms() called after discard()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    iput-boolean v7, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1410
    :cond_0
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v4, :cond_1

    .line 1411
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "saveAsMms() called with no conversation"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1418
    :cond_1
    const/16 v4, 0x20

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1421
    const/4 v4, 0x0

    invoke-direct {p0, v7, v7, v4}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZLjava/lang/String;)V

    .line 1426
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1427
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 1428
    .local v1, recipient:Lcom/android/mms/data/ContactList;
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1429
    new-instance v3, Lcom/android/mms/data/ContactList;

    invoke-direct {v3}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 1430
    .local v3, tempRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {}, Lcom/android/mms/data/Contact;->getTemp()Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 1431
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v3}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 1441
    .end local v1           #recipient:Lcom/android/mms/data/ContactList;
    .end local v3           #tempRecipients:Lcom/android/mms/data/ContactList;
    :goto_0
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1443
    .local v0, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v2

    .line 1450
    .local v2, sendReq:Lcom/google/android/mms/pdu/SendReq;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v4, :cond_4

    .line 1451
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v4, v5}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1456
    :goto_1
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v4

    .line 1433
    .end local v0           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v2           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .restart local v1       #recipient:Lcom/android/mms/data/ContactList;
    :cond_2
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    goto :goto_0

    .line 1437
    .end local v1           #recipient:Lcom/android/mms/data/ContactList;
    :cond_3
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    goto :goto_0

    .line 1453
    .restart local v0       #persister:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v2       #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :cond_4
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v4, v0, v5, v2}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    goto :goto_1
.end method

.method public saveDraft(Z)Z
    .locals 1
    .parameter "isRemoveComposer"

    .prologue
    .line 1466
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/data/WorkingMessage;->saveDraft(ZZ)Z

    move-result v0

    return v0
.end method

.method public saveDraft(ZZ)Z
    .locals 11
    .parameter "isRemoveComposer"
    .parameter "forceSyncUpdate"

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 1470
    const-string v5, "Mms/WorkingMessage"

    const-string v6, "saveDraft()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    const/4 v1, 0x0

    .line 1475
    .local v1, isSaved:Z
    iget-boolean v5, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v5, :cond_0

    .line 1476
    const-string v5, "Mms/WorkingMessage"

    const-string v6, "saveDraft(),mDiscarded=true"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    :goto_0
    return v4

    .line 1481
    :cond_0
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v5, :cond_1

    .line 1482
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "saveDraft() called with no conversation"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1487
    :cond_1
    const/4 v5, 0x0

    invoke-direct {p0, v4, p1, v5}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZLjava/lang/String;)V

    .line 1489
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1491
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1492
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 1493
    .local v2, recipient:Lcom/android/mms/data/ContactList;
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1494
    new-instance v3, Lcom/android/mms/data/ContactList;

    invoke-direct {v3}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 1495
    .local v3, tempRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {}, Lcom/android/mms/data/Contact;->getTemp()Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 1496
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v3}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 1499
    .end local v2           #recipient:Lcom/android/mms/data/ContactList;
    .end local v3           #tempRecipients:Lcom/android/mms/data/ContactList;
    :cond_2
    if-eqz p2, :cond_4

    .line 1500
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1505
    :goto_1
    const/4 v1, 0x1

    .line 1507
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 1553
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v10}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    move v4, v1

    .line 1554
    goto :goto_0

    .line 1502
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v4}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1507
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    throw v4

    .line 1510
    :cond_5
    const/4 v0, 0x0

    .line 1511
    .local v0, content:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    if-eqz v5, :cond_6

    .line 1512
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1514
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1515
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0019

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1526
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 1527
    if-eqz p2, :cond_9

    .line 1528
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v5, :cond_8

    .line 1529
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v4, v0, v10}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    .line 1540
    :goto_3
    const/4 v1, 0x1

    goto :goto_2

    .line 1531
    :cond_8
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v5, v0, v4}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    goto :goto_3

    .line 1534
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v5, :cond_a

    .line 1535
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v4, v0, v10}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    goto :goto_3

    .line 1537
    :cond_a
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v5, v0, v4}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    goto :goto_3

    .line 1546
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1547
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(J)V

    goto/16 :goto_2
.end method

.method public saveDraftSync(Z)Z
    .locals 12
    .parameter "isRemoveComposer"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v0, 0x0

    .line 1558
    const-string v1, "Mms/WorkingMessage"

    const-string v3, "saveDraftSync()"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    const/4 v8, 0x0

    .line 1563
    .local v8, isSaved:Z
    iget-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v1, :cond_0

    .line 1564
    const-string v1, "Mms/WorkingMessage"

    const-string v3, "saveDraftSync(),mDiscarded=true"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    :goto_0
    return v0

    .line 1569
    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v1, :cond_1

    .line 1570
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "saveDraftSync() called with no conversation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1575
    :cond_1
    invoke-direct {p0, v0, p1, v4}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZLjava/lang/String;)V

    .line 1577
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1578
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v1, :cond_6

    .line 1579
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    .line 1580
    .local v9, szAuth:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "mms"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1582
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;Z)V

    .line 1583
    const/4 v8, 0x1

    .line 1614
    .end local v9           #szAuth:Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms-sms/update_thread/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1615
    .local v2, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1657
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v11}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    move v0, v8

    .line 1658
    goto :goto_0

    .line 1585
    .restart local v9       #szAuth:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    .line 1586
    .local v6, content:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    .line 1587
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1589
    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1591
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1, v6, v0}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    .line 1592
    const/4 v8, 0x1

    goto :goto_1

    .line 1596
    .end local v6           #content:Ljava/lang/String;
    .end local v9           #szAuth:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1598
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v0, v11}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;Z)V

    .line 1599
    const/4 v8, 0x1

    goto :goto_1

    .line 1601
    :cond_7
    const/4 v6, 0x0

    .line 1602
    .restart local v6       #content:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    if-eqz v1, :cond_8

    .line 1603
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1605
    :cond_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1607
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v0, v6, v11}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    .line 1608
    const/4 v8, 0x1

    goto :goto_1

    .line 1616
    .end local v6           #content:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1617
    .local v7, e:Ljava/lang/UnsupportedOperationException;
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "UnsupportedOperationException in update_thread!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1618
    .end local v7           #e:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v7

    .line 1619
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1620
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "Exception is occurred in update_thread!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1624
    .end local v7           #e:Ljava/lang/Exception;
    :cond_9
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1626
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;Z)V

    .line 1627
    const/4 v8, 0x1

    goto :goto_2

    .line 1629
    :cond_a
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1631
    .restart local v6       #content:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0019

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1643
    :cond_b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1644
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1, v6, v0}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V

    .line 1645
    const/4 v8, 0x1

    goto/16 :goto_2
.end method

.method public saveSmsToPending()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4397
    const-string v3, "saveSmsToPending"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4401
    const/4 v3, 0x0

    invoke-direct {p0, v5, v6, v3}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZLjava/lang/String;)V

    .line 4404
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 4406
    .local v0, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4408
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4409
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4410
    .local v2, subText:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<subject:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4415
    .end local v2           #subText:Ljava/lang/String;
    .local v1, msgText:Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/data/WorkingMessage$8;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/mms/data/WorkingMessage$8;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 4433
    .end local v1           #msgText:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/mms/data/RecipientIdCache;->updateNumbers(JLcom/android/mms/data/ContactList;)V

    .line 4436
    iput-boolean v6, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 4437
    return-void

    .line 4412
    :cond_1
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #msgText:Ljava/lang/String;
    goto :goto_0
.end method

.method public send()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2140
    const-string v5, "Mms/WorkingMessage"

    const-string v6, "send()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 2144
    .local v2, origThreadId:J
    const/4 v0, 0x0

    .line 2145
    .local v0, callBackNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2146
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2147
    .local v4, prefs:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackEnabled(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2148
    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2149
    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 2158
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2160
    invoke-direct {p0, v8, v8, v0}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZLjava/lang/String;)V

    .line 2173
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/mms/data/WorkingMessage;->addressContainsEmailToMms(Lcom/android/mms/data/Conversation;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2174
    :cond_1
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v5}, Lcom/android/mms/data/WorkingMessage;->asyncSendMms(Lcom/android/mms/data/Conversation;)V

    .line 2180
    :goto_2
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/mms/data/RecipientIdCache;->updateNumbers(JLcom/android/mms/data/ContactList;)V

    .line 2183
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5, v9}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 2186
    :cond_2
    iput-boolean v8, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 2188
    const-string v5, "Mms/WorkingMessage"

    const-string v6, "send()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    return-void

    .line 2151
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    :cond_3
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 2153
    .local v1, line1Number:Ljava/lang/String;
    if-nez v1, :cond_4

    const-string v0, ""

    :goto_3
    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_3

    .line 2162
    .end local v1           #line1Number:Ljava/lang/String;
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_5
    const/4 v5, 0x0

    invoke-direct {p0, v8, v8, v5}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZLjava/lang/String;)V

    goto :goto_1

    .line 2176
    :cond_6
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v5}, Lcom/android/mms/data/WorkingMessage;->asyncSendSms(Lcom/android/mms/data/Conversation;)V

    goto :goto_2
.end method

.method public setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I
    .locals 8
    .parameter "contentResolver"
    .parameter "location"
    .parameter "type"
    .parameter "dataUri"
    .parameter "append"
    .parameter "checkCRMode"
    .parameter "sendMultiple"

    .prologue
    .line 772
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 773
    if-nez p4, :cond_2

    if-eqz p3, :cond_2

    .line 774
    const/4 v3, -0x1

    .line 902
    :cond_0
    :goto_0
    return v3

    .line 777
    :cond_1
    if-nez p4, :cond_2

    .line 778
    const/4 v3, -0x1

    goto :goto_0

    .line 784
    :cond_2
    const/4 v3, 0x0

    .line 803
    .local v3, result:I
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 805
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v5, :cond_3

    .line 806
    const/4 v3, -0x1

    goto :goto_0

    .line 810
    :cond_3
    if-eqz p4, :cond_4

    const/4 v5, 0x1

    if-ne p3, v5, :cond_4

    invoke-virtual {p4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/picasa/item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 811
    const/4 v3, -0x4

    .line 812
    goto :goto_0

    .line 815
    :cond_4
    const/4 v2, 0x0

    .line 816
    .local v2, isSlideAdded:Z
    if-eqz p5, :cond_5

    .line 817
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {p0, p3, v5}, Lcom/android/mms/data/WorkingMessage;->isAddPossible(ILcom/android/mms/model/SlideModel;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 818
    add-int/lit8 p2, p2, 0x1

    .line 819
    new-instance v4, Lcom/android/mms/model/SlideModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v4, v5}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 820
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2, v4}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 821
    const/4 v2, 0x1

    .line 825
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :cond_5
    invoke-virtual {p0, p2, p3}, Lcom/android/mms/data/WorkingMessage;->checkMaxSlide(II)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 826
    if-eqz v2, :cond_6

    .line 827
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 828
    const/4 v2, 0x0

    .line 830
    :cond_6
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    .line 831
    const/4 v3, -0x6

    goto :goto_0

    .line 834
    :cond_7
    const/4 v5, 0x1

    if-ne v2, v5, :cond_9

    .line 835
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, i:I
    :goto_1
    if-le v1, p2, :cond_8

    .line 836
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    add-int/lit8 v7, v1, -0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v1

    .line 835
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 838
    :cond_8
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const-string v6, ""

    aput-object v6, v5, p2

    .line 841
    .end local v1           #i:I
    :cond_9
    iput p2, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    .line 846
    if-eqz p5, :cond_d

    .line 847
    :try_start_0
    invoke-direct {p0, p2, p3, p4, p6}, Lcom/android/mms/data/WorkingMessage;->appendMedia(IILandroid/net/Uri;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/android/mms/RotationException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_7

    .line 878
    :goto_2
    if-eqz v3, :cond_b

    .line 879
    if-eqz v2, :cond_b

    .line 881
    const/4 v5, -0x1

    if-le p2, v5, :cond_a

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_a

    .line 882
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 883
    :cond_a
    const/4 v2, 0x0

    .line 884
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    .line 891
    :cond_b
    :goto_3
    if-nez v3, :cond_0

    .line 892
    const/4 v5, 0x5

    if-eq p3, v5, :cond_c

    .line 893
    iput p3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 896
    :cond_c
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 897
    if-nez p7, :cond_0

    .line 898
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v5, p3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentChanged(I)V

    goto/16 :goto_0

    .line 849
    :cond_d
    :try_start_1
    invoke-direct {p0, p2, p3, p4, p6}, Lcom/android/mms/data/WorkingMessage;->changeMedia(IILandroid/net/Uri;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/android/mms/RotationException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_7

    goto :goto_2

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, e:Ljava/lang/IllegalStateException;
    const/4 v3, -0x1

    .line 853
    :try_start_2
    const-string v5, "Mms/WorkingMessage"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 878
    if-eqz v3, :cond_b

    .line 879
    if-eqz v2, :cond_b

    .line 881
    const/4 v5, -0x1

    if-le p2, v5, :cond_e

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_e

    .line 882
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 883
    :cond_e
    const/4 v2, 0x0

    .line 884
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto :goto_3

    .line 854
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 855
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v3, -0x1

    .line 856
    :try_start_3
    const-string v5, "Mms/WorkingMessage"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 878
    if-eqz v3, :cond_b

    .line 879
    if-eqz v2, :cond_b

    .line 881
    const/4 v5, -0x1

    if-le p2, v5, :cond_f

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_f

    .line 882
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 883
    :cond_f
    const/4 v2, 0x0

    .line 884
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto :goto_3

    .line 857
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 858
    .local v0, e:Lcom/google/android/mms/MmsException;
    const/4 v3, -0x1

    .line 859
    :try_start_4
    const-string v5, "Mms/WorkingMessage"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 878
    if-eqz v3, :cond_b

    .line 879
    if-eqz v2, :cond_b

    .line 881
    const/4 v5, -0x1

    if-le p2, v5, :cond_10

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_10

    .line 882
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 883
    :cond_10
    const/4 v2, 0x0

    .line 884
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_3

    .line 860
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_3
    move-exception v0

    .line 861
    .local v0, e:Lcom/android/mms/UnsupportContentTypeException;
    const/4 v3, -0x3

    .line 862
    :try_start_5
    const-string v5, "Mms/WorkingMessage"

    invoke-virtual {v0}, Lcom/android/mms/UnsupportContentTypeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 878
    if-eqz v3, :cond_b

    .line 879
    if-eqz v2, :cond_b

    .line 881
    const/4 v5, -0x1

    if-le p2, v5, :cond_11

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_11

    .line 882
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 883
    :cond_11
    const/4 v2, 0x0

    .line 884
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_3

    .line 863
    .end local v0           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_4
    move-exception v0

    .line 864
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v3, -0x2

    .line 865
    :try_start_6
    const-string v5, "Mms/WorkingMessage"

    invoke-virtual {v0}, Lcom/android/mms/ExceedMessageSizeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 878
    if-eqz v3, :cond_b

    .line 879
    if-eqz v2, :cond_b

    .line 881
    const/4 v5, -0x1

    if-le p2, v5, :cond_12

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_12

    .line 882
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 883
    :cond_12
    const/4 v2, 0x0

    .line 884
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_3

    .line 867
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_5
    move-exception v0

    .line 868
    .local v0, e:Lcom/android/mms/ResolutionException;
    const/4 v3, -0x4

    .line 869
    :try_start_7
    const-string v5, "Mms/WorkingMessage"

    invoke-virtual {v0}, Lcom/android/mms/ResolutionException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 878
    if-eqz v3, :cond_b

    .line 879
    if-eqz v2, :cond_b

    .line 881
    const/4 v5, -0x1

    if-le p2, v5, :cond_13

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_13

    .line 882
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 883
    :cond_13
    const/4 v2, 0x0

    .line 884
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_3

    .line 871
    .end local v0           #e:Lcom/android/mms/ResolutionException;
    :catch_6
    move-exception v0

    .line 872
    .local v0, e:Lcom/android/mms/RotationException;
    const/4 v3, -0x8

    .line 873
    :try_start_8
    const-string v5, "Mms/WorkingMessage"

    invoke-virtual {v0}, Lcom/android/mms/RotationException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 878
    if-eqz v3, :cond_b

    .line 879
    if-eqz v2, :cond_b

    .line 881
    const/4 v5, -0x1

    if-le p2, v5, :cond_14

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_14

    .line 882
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 883
    :cond_14
    const/4 v2, 0x0

    .line 884
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_3

    .line 874
    .end local v0           #e:Lcom/android/mms/RotationException;
    :catch_7
    move-exception v0

    .line 875
    .local v0, e:Lcom/android/mms/ContentRestrictionException;
    const/4 v3, -0x5

    .line 876
    :try_start_9
    const-string v5, "Mms/WorkingMessage"

    invoke-virtual {v0}, Lcom/android/mms/ContentRestrictionException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 878
    if-eqz v3, :cond_b

    .line 879
    if-eqz v2, :cond_b

    .line 881
    const/4 v5, -0x1

    if-le p2, v5, :cond_15

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_15

    .line 882
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 883
    :cond_15
    const/4 v2, 0x0

    .line 884
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_3

    .line 878
    .end local v0           #e:Lcom/android/mms/ContentRestrictionException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_17

    .line 879
    if-eqz v2, :cond_17

    .line 881
    const/4 v6, -0x1

    if-le p2, v6, :cond_16

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    if-ge p2, v6, :cond_16

    .line 882
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 883
    :cond_16
    const/4 v2, 0x0

    .line 884
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    :cond_17
    throw v5
.end method

.method public setAttachmentType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 3745
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 3750
    :goto_0
    return-void

    .line 3749
    :cond_0
    iput p1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0
.end method

.method public setConversation(Lcom/android/mms/data/Conversation;Z)V
    .locals 5
    .parameter "conv"
    .parameter "notify"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1862
    const-string v0, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setConversation(),before="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",after="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 1866
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1867
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1889
    :cond_0
    :goto_0
    return-void

    .line 1874
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1876
    if-eqz p1, :cond_3

    .line 1877
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1878
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsAlias()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 1879
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-le v0, v2, :cond_5

    :goto_2
    invoke-virtual {p0, v2, p2}, Lcom/android/mms/data/WorkingMessage;->setHasMultipleRecipients(ZZ)V

    .line 1887
    :cond_3
    :goto_3
    if-eqz p1, :cond_0

    .line 1888
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage;->calculateMaxEmailLength(Lcom/android/mms/data/ContactList;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1878
    goto :goto_1

    :cond_5
    move v2, v1

    .line 1879
    goto :goto_2

    .line 1881
    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 1882
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-le v0, v2, :cond_7

    :goto_4
    invoke-virtual {p0, v2, p2}, Lcom/android/mms/data/WorkingMessage;->setHasMultipleRecipients(ZZ)V

    goto :goto_3

    :cond_7
    move v2, v1

    goto :goto_4
.end method

.method public setEmojiRequiresMms(Z)V
    .locals 2
    .parameter "mmsRequired"

    .prologue
    .line 1983
    const/16 v0, 0x80

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1984
    return-void
.end method

.method public setFlag_splitMmsOnGoing(I)I
    .locals 3
    .parameter "flag"

    .prologue
    .line 4579
    sput p1, Lcom/android/mms/data/WorkingMessage;->splitMmsOnGoing:I

    .line 4580
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlag_splitMmsOnGoing:flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/data/WorkingMessage;->splitMmsOnGoing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4582
    :cond_0
    sget v0, Lcom/android/mms/data/WorkingMessage;->splitMmsOnGoing:I

    return v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 4329
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    .line 4330
    return-void
.end method

.method public setHasEmail(ZZ)V
    .locals 2
    .parameter "hasEmail"
    .parameter "notify"

    .prologue
    const/4 v1, 0x1

    .line 1908
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1909
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1913
    :goto_0
    return-void

    .line 1911
    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public setHasMultipleRecipients(ZZ)V
    .locals 2
    .parameter "hasMultipleRecipients"
    .parameter "notify"

    .prologue
    .line 1925
    const/16 v1, 0x40

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1929
    return-void

    .line 1925
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsSignatureAdded(Z)V
    .locals 0
    .parameter "isAdded"

    .prologue
    .line 4390
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    .line 4391
    return-void
.end method

.method public setLengthRequiresMms(Z)V
    .locals 2
    .parameter "mmsRequired"

    .prologue
    const/4 v1, 0x1

    .line 1971
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1973
    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1974
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 1980
    :cond_1
    :goto_0
    return-void

    .line 1976
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_1

    .line 1977
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    goto :goto_0
.end method

.method public setMessageDeliveryReport(Z)V
    .locals 0
    .parameter "deliveryReport"

    .prologue
    .line 4345
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageDeliveryReport:Z

    .line 4346
    return-void
.end method

.method public setMessageReadReport(Z)V
    .locals 0
    .parameter "readReport"

    .prologue
    .line 4355
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageReadReport:Z

    .line 4356
    return-void
.end method

.method public setMessageUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 4620
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 4621
    return-void
.end method

.method public setMessageUriToNull()V
    .locals 8

    .prologue
    .line 515
    const/4 v7, 0x0

    .line 516
    .local v7, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 520
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    :cond_1
    if-eqz v7, :cond_2

    .line 525
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 529
    :cond_2
    return-void

    .line 524
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 525
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public setPriority(I)V
    .locals 3
    .parameter "priority"

    .prologue
    .line 637
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPriority : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iput p1, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    .line 639
    return-void
.end method

.method public setRecipients(Ljava/lang/String;)V
    .locals 0
    .parameter "recipients"

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mRecipients:Ljava/lang/String;

    .line 604
    return-void
.end method

.method public setReplyAllGroupConversation(ZZ)V
    .locals 2
    .parameter "group"
    .parameter "notify"

    .prologue
    const/16 v1, 0x10

    .line 4494
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Conversation;->setGroupMessage(Z)V

    .line 4495
    if-eqz p1, :cond_0

    .line 4496
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 4499
    :goto_0
    return-void

    .line 4498
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public setReserveDeliveryTime(J)V
    .locals 0
    .parameter "deliverytime"

    .prologue
    .line 4335
    iput-wide p1, p0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    .line 4336
    return-void
.end method

.method public setSubject(Ljava/lang/CharSequence;Z)V
    .locals 9
    .parameter "s"
    .parameter "notify"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1135
    const-string v3, "Mms/WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSubject(),s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",notify="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLimitOnMmsSubjectByByte()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1138
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/mms/util/TelephonyUtils;->substringByByteSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    .line 1145
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1146
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1147
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v6

    if-eqz p1, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {p0, v8, v6, v3, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZZ)V

    .line 1155
    :cond_0
    :goto_2
    if-eqz p1, :cond_2

    .line 1156
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 1157
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 1158
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 1159
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1161
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    .line 1162
    .local v0, index:I
    new-instance v2, Lcom/android/mms/model/TextModel;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v6, "text/plain"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid:text_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v8

    invoke-direct {v2, v3, v6, v7, v8}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 1165
    .local v2, text:Lcom/android/mms/model/TextModel;
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v3, v5

    if-eqz v3, :cond_1

    .line 1166
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    .line 1168
    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 1172
    .end local v0           #index:I
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    .end local v2           #text:Lcom/android/mms/model/TextModel;
    :cond_2
    return-void

    .line 1139
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v6

    if-le v3, v6, :cond_4

    .line 1140
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v3

    invoke-interface {p1, v5, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 1142
    :cond_4
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_5
    move v3, v5

    .line 1147
    goto/16 :goto_1

    .line 1149
    :cond_6
    if-eqz p1, :cond_8

    .line 1150
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_7

    move v3, v4

    :goto_3
    invoke-direct {p0, v8, v3, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto/16 :goto_2

    :cond_7
    move v3, v5

    goto :goto_3

    .line 1151
    :cond_8
    if-nez p1, :cond_0

    .line 1152
    if-eqz p1, :cond_9

    move v3, v4

    :goto_4
    invoke-direct {p0, v8, v3, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto/16 :goto_2

    :cond_9
    move v3, v5

    goto :goto_4
.end method

.method public setWorkingRecipients(Lcom/android/mms/data/ContactList;)V
    .locals 2
    .parameter "numbers"

    .prologue
    .line 1787
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    .line 1788
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "setWorkingRecipients"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->calculateMaxEmailLength(Lcom/android/mms/data/ContactList;)V

    .line 1791
    return-void
.end method

.method public syncWorkingRecipients()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1368
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1369
    const-string v0, "kkahn/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncWorkingRecipients()>splitMmsOnGoing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/data/WorkingMessage;->splitMmsOnGoing:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    sget v0, Lcom/android/mms/data/WorkingMessage;->splitMmsOnGoing:I

    if-ne v0, v1, :cond_1

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1376
    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 1378
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->setHasMultipleRecipients(ZZ)V

    .line 1379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    goto :goto_0

    .line 1378
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public unDiscard()V
    .locals 2

    .prologue
    .line 1703
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "unDiscard"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1706
    return-void
.end method

.method public updateState(IZZZ)V
    .locals 7
    .parameter "state"
    .parameter "attachment_on"
    .parameter "on"
    .parameter "notify"

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 2018
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    if-nez v0, :cond_1

    .line 2067
    :cond_0
    :goto_0
    return-void

    .line 2024
    :cond_1
    iget v6, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 2025
    .local v6, oldState:I
    if-eqz p3, :cond_7

    if-eqz p2, :cond_7

    .line 2026
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 2033
    :goto_1
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-ne v0, v4, :cond_2

    and-int/lit8 v0, v6, -0x21

    if-lez v0, :cond_2

    .line 2034
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 2036
    :cond_2
    if-ne p1, v4, :cond_3

    if-eqz p3, :cond_3

    .line 2037
    sput-boolean v3, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    .line 2041
    :cond_3
    if-eqz p4, :cond_4

    .line 2042
    if-nez v6, :cond_8

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eqz v0, :cond_8

    .line 2043
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-interface {v0, v3, v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(ZI)V

    .line 2049
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 2050
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    .line 2051
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 2054
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2055
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2056
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2057
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2058
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 2063
    :cond_6
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eq v6, v0, :cond_0

    .line 2065
    const-string v1, "Mms/WorkingMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_9

    const-string v0, "+"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2028
    :cond_7
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    goto/16 :goto_1

    .line 2044
    :cond_8
    if-eqz v6, :cond_4

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v0, :cond_4

    .line 2045
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-interface {v0, v5, v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(ZI)V

    goto/16 :goto_2

    .line 2065
    :cond_9
    const-string v0, "-"

    goto :goto_3
.end method

.method public updateText(ILjava/lang/CharSequence;)I
    .locals 15
    .parameter "slideIndex"
    .parameter "s"

    .prologue
    .line 646
    const-string v11, "Mms/WorkingMessage"

    const-string v12, "changeSlideText()"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const/4 v6, 0x0

    .line 648
    .local v6, result:I
    if-eqz p2, :cond_1

    .line 649
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 654
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v11, :cond_4

    .line 655
    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v7

    .line 664
    .local v7, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v11

    if-nez v11, :cond_2

    .line 665
    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v5

    .line 666
    .local v5, index:I
    new-instance v8, Lcom/android/mms/model/TextModel;

    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v12, "text/plain"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cid:text_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".txt"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v14}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v14

    invoke-direct {v8, v11, v12, v13, v14}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 668
    .local v8, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v8}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v10

    .line 669
    .local v10, textString:Ljava/lang/String;
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v8, v0, v11}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    .line 671
    :try_start_0
    invoke-virtual {v7, v8}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .end local v5           #index:I
    .end local v7           #slide:Lcom/android/mms/model/SlideModel;
    .end local v8           #text:Lcom/android/mms/model/TextModel;
    .end local v10           #textString:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-direct/range {p0 .. p2}, Lcom/android/mms/data/WorkingMessage;->setText(ILjava/lang/CharSequence;)V

    .line 728
    return v6

    .line 651
    :cond_1
    const-string p2, ""

    goto :goto_0

    .line 672
    .restart local v5       #index:I
    .restart local v7       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v8       #text:Lcom/android/mms/model/TextModel;
    .restart local v10       #textString:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 673
    .local v2, e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v6, -0x2

    .line 674
    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    .line 677
    :try_start_1
    invoke-virtual {v7, v8}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 683
    :goto_2
    move-object/from16 p2, v10

    goto :goto_1

    .line 678
    :catch_1
    move-exception v4

    .line 679
    .local v4, ee:Lcom/android/mms/ExceedMessageSizeException;
    const-string v11, ""

    const/4 v12, 0x1

    invoke-virtual {v8, v11, v12}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    .line 680
    invoke-virtual {v7, v8}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_2

    .line 685
    .end local v2           #e:Lcom/android/mms/ExceedMessageSizeException;
    .end local v4           #ee:Lcom/android/mms/ExceedMessageSizeException;
    .end local v5           #index:I
    .end local v8           #text:Lcom/android/mms/model/TextModel;
    .end local v10           #textString:Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_0

    .line 687
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v9

    .line 688
    .local v9, textModel:Lcom/android/mms/model/TextModel;
    invoke-virtual {v9}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v10

    .line 690
    .restart local v10       #textString:Ljava/lang/String;
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v9}, Lcom/android/mms/model/SlideModel;->replaceText(Ljava/lang/String;Lcom/android/mms/model/TextModel;)V
    :try_end_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 691
    :catch_2
    move-exception v2

    .line 692
    .restart local v2       #e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v6, -0x2

    .line 694
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->getRemainingContentSize()I

    move-result v1

    .line 695
    .local v1, allowedBytes:I
    if-lez v1, :cond_3

    .line 696
    const-string v11, "Mms/WorkingMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "allowedBytes: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    add-int/2addr v12, v1

    invoke-static {v11, v12}, Lcom/android/mms/util/TelephonyUtils;->substringByByteSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 699
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v9}, Lcom/android/mms/model/SlideModel;->replaceText(Ljava/lang/String;Lcom/android/mms/model/TextModel;)V
    :try_end_3
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 700
    :catch_3
    move-exception v3

    .line 701
    .local v3, e2:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v6, -0x2

    .line 702
    move-object/from16 p2, v10

    .line 703
    goto :goto_1

    .line 706
    .end local v3           #e2:Lcom/android/mms/ExceedMessageSizeException;
    :cond_3
    move-object/from16 p2, v10

    goto :goto_1

    .line 711
    .end local v1           #allowedBytes:I
    .end local v2           #e:Lcom/android/mms/ExceedMessageSizeException;
    .end local v7           #slide:Lcom/android/mms/model/SlideModel;
    .end local v9           #textModel:Lcom/android/mms/model/TextModel;
    .end local v10           #textString:Ljava/lang/String;
    :cond_4
    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v11, :cond_0

    .line 715
    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v7

    .line 716
    .restart local v7       #slide:Lcom/android/mms/model/SlideModel;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 717
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v9

    .line 718
    .restart local v9       #textModel:Lcom/android/mms/model/TextModel;
    invoke-virtual {v9}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v10

    .line 720
    .restart local v10       #textString:Ljava/lang/String;
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v9}, Lcom/android/mms/model/SlideModel;->replaceText(Ljava/lang/String;Lcom/android/mms/model/TextModel;)V
    :try_end_4
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 721
    :catch_4
    move-exception v2

    .line 722
    .restart local v2       #e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v6, -0x2

    .line 723
    move-object/from16 p2, v10

    goto/16 :goto_1
.end method

.method public writeStateToBundle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .parameter "bundle"
    .parameter "saveRecipients"

    .prologue
    const/4 v2, 0x0

    .line 1722
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1723
    const-string v0, "subject"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1727
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1728
    const-string v0, "msg_uri"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1742
    :cond_1
    :goto_0
    return-void

    .line 1729
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1730
    const-string v0, "sms_body"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1733
    :cond_3
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 1734
    const-string v0, "msg_uri"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 1735
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1736
    const-string v0, "sms_body"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1738
    const-string v0, "anonymous"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method
