.class public Lcom/android/mms/data/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Conversation$Cache;
    }
.end annotation


# static fields
.field public static final ALL_SMS_PROJECTION:[Ljava/lang/String; = null

.field private static final ALL_SMS_SORT_ORDER:Ljava/lang/String; = "thread_id DESC"

.field public static final ALL_THREADS_PROJECTION:[Ljava/lang/String; = null

.field public static final CONVERATION_DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC,_id DESC"

.field public static final CONVERATION_NO_LIMIT:I = -0x1

.field private static final DATE:I = 0x1

.field private static final DISPLAY_RECIPIENT_IDS:I = 0xc

.field private static final ERROR:I = 0x7

.field private static final FINDO_NULL_QUERY_LIMIT:I = 0xc7

.field private static final GROUP_SNIPPET:I = 0xf

.field private static final HAS_ATTACHMENT:I = 0x9

.field private static final ID:I = 0x0

.field private static final MESSAGE_COUNT:I = 0x2

.field private static final MESSAGE_COUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final MESSAGE_TYPE:I = 0xb

.field public static final NGM_ALL_THREADS_PROJECTION:[Ljava/lang/String; = null

.field private static final READ:I = 0x6

.field private static final READ_PROJECTION:[Ljava/lang/String; = null

.field private static final RECIPIENT_IDS:I = 0x3

.field private static final REPLY_ALL:I = 0xe

.field private static final SNIPPET:I = 0x4

.field private static final SNIPPET_CS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Mms/Conversation"

.field private static final TEMP_THREAD_ID:J = 0x7ffffffffffffffeL

.field private static final TEMP_THREAD_ID_STR:Ljava/lang/String; = null

.field public static final THREAD_DISPLAY_RECIPIENT_IDS:Ljava/lang/String; = "display_recipient_ids"

.field private static final THREAD_SEARCH_COLUMNS:[Ljava/lang/String; = null

.field public static final THREAD_TRANSLATE_MODE:Ljava/lang/String; = "translate_mode"

.field private static THREAD_TYPE_MMS_SENDING:I = 0x0

.field private static THREAD_TYPE_SMS_PENDING:I = 0x0

.field private static THREAD_TYPE_SMS_SENDING:I = 0x0

.field private static final TRANSLATE_MODE:I = 0xd

.field private static final TYPE:I = 0x8

.field private static final UNREAD_COUNT:I = 0xa

.field private static final UNREAD_COUNT_SELECTION:Ljava/lang/String; = "unread_count > 0"

.field public static final UNREAD_PROJECTION:[Ljava/lang/String; = null

.field private static final UNREAD_SELECTION:Ljava/lang/String; = "(read=0)"

.field private static final UNREAD_SUM_PROJECTION:[Ljava/lang/String; = null

.field private static final UNSEEN_SELECTION:Ljava/lang/String; = "(seen=0)"

.field public static isCached:Z

.field public static final sAllThreadsUri:Landroid/net/Uri;

.field private static sLoadingThreads:Z

.field private static sReadContentValues:Landroid/content/ContentValues;

.field private static sSeenContentValues:Landroid/content/ContentValues;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDate:J

.field private mDisplayRecipientIds:Ljava/lang/String;

.field private mGroupMessage:Z

.field private mHasAttachment:Z

.field private mHasError:Z

.field private mHasPending:Z

.field private mHasSending:Z

.field private mHasUnreadMessages:Z

.field private mIsAnonymousMsg:Z

.field private mIsCbSms:Z

.field private mIsCmas:Z

.field private mIsWapPushMessage:Z

.field private mMarkAsReadBlocked:Z

.field private mMarkAsReadWaiting:Z

.field private mMessageCount:I

.field private mRecipientIds:Ljava/lang/String;

.field private mRecipients:Lcom/android/mms/data/ContactList;

.field private mReplyAll:Z

.field public mReplyAllDraftFlag:I

.field private mSnippet:Ljava/lang/String;

.field private mThreadId:J

.field private mTranslateMode:Ljava/lang/String;

.field private mType:I

.field private mUnreadMessageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    .line 93
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "person"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "locked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Conversation;->ALL_SMS_PROJECTION:[Ljava/lang/String;

    .line 101
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "message_count"

    aput-object v1, v0, v5

    const-string v1, "recipient_ids"

    aput-object v1, v0, v6

    const-string v1, "snippet"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "snippet_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "error"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "has_attachment"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "message_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "display_recipient_ids"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "translate_mode"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 108
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "message_count"

    aput-object v1, v0, v5

    const-string v1, "recipient_ids"

    aput-object v1, v0, v6

    const-string v1, "snippet"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "snippet_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "error"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "has_attachment"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "message_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "display_recipient_ids"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "translate_mode"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "reply_all"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "group_snippet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Conversation;->NGM_ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 118
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "read"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/data/Conversation;->UNREAD_PROJECTION:[Ljava/lang/String;

    .line 122
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "message_count"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/data/Conversation;->MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 129
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sum(unread_count)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/data/Conversation;->UNREAD_SUM_PROJECTION:[Ljava/lang/String;

    .line 132
    const/16 v0, 0xa

    sput v0, Lcom/android/mms/data/Conversation;->THREAD_TYPE_SMS_SENDING:I

    .line 133
    const/16 v0, 0xb

    sput v0, Lcom/android/mms/data/Conversation;->THREAD_TYPE_SMS_PENDING:I

    .line 134
    const/16 v0, 0x15

    sput v0, Lcom/android/mms/data/Conversation;->THREAD_TYPE_MMS_SENDING:I

    .line 140
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "read"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/data/Conversation;->READ_PROJECTION:[Ljava/lang/String;

    .line 194
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "normalized_date"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "transport_type"

    aput-object v1, v0, v5

    const-string v1, "text"

    aput-object v1, v0, v6

    const-string v1, "sub"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "recipient_ids"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "listorder"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "display_recipient_ids"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Conversation;->THREAD_SEARCH_COLUMNS:[Ljava/lang/String;

    .line 1859
    sput-boolean v3, Lcom/android/mms/data/Conversation;->isCached:Z

    .line 2021
    const-wide v0, 0x7ffffffffffffffeL

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Conversation;->TEMP_THREAD_ID_STR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mIsCbSms:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mIsAnonymousMsg:Z

    .line 204
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mIsWapPushMessage:Z

    .line 215
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mIsCmas:Z

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/data/Conversation;->mReplyAllDraftFlag:I

    .line 2160
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mGroupMessage:Z

    .line 2161
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mReplyAll:Z

    .line 223
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 224
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 225
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 226
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;JZ)V
    .locals 2
    .parameter "context"
    .parameter "threadId"
    .parameter "allowQuery"

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mIsCbSms:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mIsAnonymousMsg:Z

    .line 204
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mIsWapPushMessage:Z

    .line 215
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mIsCmas:Z

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/data/Conversation;->mReplyAllDraftFlag:I

    .line 2160
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mGroupMessage:Z

    .line 2161
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mReplyAll:Z

    .line 229
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 230
    invoke-direct {p0, p2, p3, p4}, Lcom/android/mms/data/Conversation;->loadFromThreadId(JZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 232
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 234
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "allowQuery"

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mIsCbSms:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mIsAnonymousMsg:Z

    .line 204
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mIsWapPushMessage:Z

    .line 215
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mIsCmas:Z

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/data/Conversation;->mReplyAllDraftFlag:I

    .line 2160
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mGroupMessage:Z

    .line 2161
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mReplyAll:Z

    .line 237
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 238
    invoke-static {p1, p0, p2, p3}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V

    .line 239
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/mms/data/ContactList;)V
    .locals 2
    .parameter "context"
    .parameter "recipients"

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mIsCbSms:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mIsAnonymousMsg:Z

    .line 204
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mIsWapPushMessage:Z

    .line 215
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mIsCmas:Z

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/data/Conversation;->mReplyAllDraftFlag:I

    .line 2160
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mGroupMessage:Z

    .line 2161
    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mReplyAll:Z

    .line 243
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 244
    iput-object p2, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 245
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/data/Conversation;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/android/mms/data/Conversation;->getSeenContentValues()Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/android/mms/data/Conversation;->getReadContentValues()Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/data/Conversation;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/data/Conversation;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/ContactList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/mms/data/Conversation;->THREAD_SEARCH_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->cacheAllThreads(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->blockingMarkAllSmsMessagesAsRead(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->blockingMarkAllMmsMessagesAsRead(Landroid/content/Context;)V

    return-void
.end method

.method private static blockingMarkAllMmsMessagesAsRead(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 1820
    const-string v1, "Mms/Conversation"

    const-string v2, "blockingMarkAllMmsMessagesAsRead()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1823
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->READ_PROJECTION:[Ljava/lang/String;

    const-string v3, "(read=0)"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1826
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1828
    .local v6, count:I
    if-eqz v7, :cond_0

    .line 1830
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 1832
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1836
    :cond_0
    if-nez v6, :cond_1

    .line 1846
    :goto_0
    return-void

    .line 1832
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1840
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 1841
    .local v8, values:Landroid/content/ContentValues;
    const-string v1, "read"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1843
    sget-object v1, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "(read=0)"

    invoke-virtual {v0, v1, v8, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1845
    const-string v1, "Mms/Conversation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mark "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MMS msgs as read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static blockingMarkAllSmsMessagesAsRead(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 1790
    const-string v1, "Mms/Conversation"

    const-string v2, "blockingMarkAllSmsMessagesAsRead()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1793
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->READ_PROJECTION:[Ljava/lang/String;

    const-string v3, "(read=0)"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1796
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1798
    .local v6, count:I
    if-eqz v7, :cond_0

    .line 1800
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 1802
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1806
    :cond_0
    if-nez v6, :cond_1

    .line 1807
    const-string v1, "Mms/Conversation"

    const-string v2, "nothing to update"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    :goto_0
    return-void

    .line 1802
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1811
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 1812
    .local v8, values:Landroid/content/ContentValues;
    const-string v1, "read"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1814
    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "(read=0)"

    invoke-virtual {v0, v1, v8, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1816
    const-string v1, "Mms/Conversation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mark "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SMS msgs as read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static cacheAllThreads(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 1864
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 1866
    .local v9, startT:J
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 1867
    :try_start_0
    sget-boolean v0, Lcom/android/mms/data/Conversation;->sLoadingThreads:Z

    if-eqz v0, :cond_0

    .line 1868
    const-string v0, "Mms/Conversation"

    const-string v2, "cacheAllThreads(),already loading"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    monitor-exit v1

    .line 1946
    :goto_0
    return-void

    .line 1871
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/data/Conversation;->sLoadingThreads:Z

    .line 1872
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1878
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 1882
    .local v13, threadsOnDisk:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 1884
    .local v6, c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1885
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->NGM_ALL_THREADS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1896
    :goto_1
    if-eqz v6, :cond_4

    .line 1897
    :goto_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1898
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1899
    .local v11, threadId:J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1906
    invoke-static {v11, v12}, Lcom/android/mms/data/Conversation$Cache;->get(J)Lcom/android/mms/data/Conversation;

    move-result-object v7

    .line 1910
    .local v7, conv:Lcom/android/mms/data/Conversation;
    if-nez v7, :cond_3

    .line 1914
    new-instance v7, Lcom/android/mms/data/Conversation;

    .end local v7           #conv:Lcom/android/mms/data/Conversation;
    const/4 v0, 0x0

    invoke-direct {v7, p0, v6, v0}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1918
    .restart local v7       #conv:Lcom/android/mms/data/Conversation;
    :try_start_2
    invoke-static {v7}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1921
    :catch_0
    move-exception v8

    .line 1922
    .local v8, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v0, "Mms/Conversation"

    const-string v1, "Tried to add duplicate Conversation to Cache"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1933
    .end local v7           #conv:Lcom/android/mms/data/Conversation;
    .end local v8           #e:Ljava/lang/IllegalStateException;
    .end local v11           #threadId:J
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 1934
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1937
    :cond_1
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 1938
    const/4 v2, 0x0

    :try_start_4
    sput-boolean v2, Lcom/android/mms/data/Conversation;->sLoadingThreads:Z

    .line 1939
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    .line 1872
    .end local v6           #c:Landroid/database/Cursor;
    .end local v13           #threadsOnDisk:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 1891
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v13       #threadsOnDisk:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1

    .line 1928
    .restart local v7       #conv:Lcom/android/mms/data/Conversation;
    .restart local v11       #threadId:J
    :cond_3
    const/4 v0, 0x0

    :try_start_6
    invoke-static {p0, v7, v6, v0}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 1933
    .end local v7           #conv:Lcom/android/mms/data/Conversation;
    .end local v11           #threadId:J
    :cond_4
    if-eqz v6, :cond_5

    .line 1934
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1937
    :cond_5
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 1938
    const/4 v0, 0x0

    :try_start_7
    sput-boolean v0, Lcom/android/mms/data/Conversation;->sLoadingThreads:Z

    .line 1939
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1943
    invoke-static {v13}, Lcom/android/mms/data/Conversation$Cache;->keepOnly(Ljava/util/Set;)V

    .line 1945
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheAllThreads(),elapsed(ms)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v9

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1939
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method public static conversationInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "findString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2201
    invoke-static {p0}, Lcom/android/mms/data/Conversation$Cache;->conversationInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static conversationInfoCursor(Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 1
    .parameter "findString"

    .prologue
    .line 2205
    invoke-static {p0}, Lcom/android/mms/data/Conversation$Cache;->conversationInfoCursor(Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method public static conversationInfoCursorForFindo(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 1
    .parameter "context"
    .parameter "args"

    .prologue
    .line 2210
    sget-boolean v0, Lcom/android/mms/data/Conversation;->isCached:Z

    if-nez v0, :cond_0

    .line 2211
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/data/Conversation;->isCached:Z

    .line 2212
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->cacheAllThreads(Landroid/content/Context;)V

    .line 2214
    :cond_0
    invoke-static {p1}, Lcom/android/mms/data/Conversation$Cache;->conversationInfoCursorForFindo([Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;
    .locals 2
    .parameter "context"

    .prologue
    .line 255
    const-string v0, "Mms/Conversation"

    const-string v1, "createNew()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v0, Lcom/android/mms/data/Conversation;

    invoke-direct {v0, p0}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createNewWithRecipient(Landroid/content/Context;Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/Conversation;
    .locals 2
    .parameter "context"
    .parameter "recipients"

    .prologue
    .line 260
    const-string v0, "Mms/Conversation"

    const-string v1, "createNewWithRecipient()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v0, Lcom/android/mms/data/Conversation;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;Lcom/android/mms/data/ContactList;)V

    return-object v0
.end method

.method private static deleteConversation(J)I
    .locals 4
    .parameter "threadId"

    .prologue
    const/4 v3, 0x0

    .line 1745
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    .line 1746
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1747
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 1749
    .local v2, uri:Landroid/net/Uri;
    invoke-static {v0, v1, v2, v3, v3}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static deleteTempConversation()V
    .locals 4

    .prologue
    .line 1740
    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/mms/data/Conversation;->deleteConversation(J)I

    move-result v0

    .line 1741
    .local v0, deleted:I
    const-string v1, "Mms/Conversation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteTempConversation(),deleted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    return-void
.end method

.method private static fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V
    .locals 9
    .parameter "context"
    .parameter "conv"
    .parameter "c"
    .parameter "allowQuery"

    .prologue
    .line 1305
    monitor-enter p1

    .line 1306
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 1307
    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/mms/data/Conversation;->mDate:J

    .line 1308
    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p1, Lcom/android/mms/data/Conversation;->mMessageCount:I

    .line 1309
    const/16 v5, 0xa

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p1, Lcom/android/mms/data/Conversation;->mUnreadMessageCount:I

    .line 1312
    const/16 v5, 0xc

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/mms/data/Conversation;->mDisplayRecipientIds:Ljava/lang/String;

    .line 1313
    const/4 v5, 0x3

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/mms/data/Conversation;->mRecipientIds:Ljava/lang/String;

    .line 1317
    const/16 v5, 0xd

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/mms/data/Conversation;->mTranslateMode:Ljava/lang/String;

    .line 1321
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1322
    const/16 v5, 0xa

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-lez v5, :cond_5

    const/4 v5, 0x1

    :goto_0
    invoke-direct {p1, v5}, Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V

    .line 1323
    const/16 v5, 0xe

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p1, Lcom/android/mms/data/Conversation;->mReplyAllDraftFlag:I

    .line 1333
    :goto_1
    const/4 v5, 0x4

    const/4 v6, 0x5

    invoke-static {p2, v5, v6}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v4

    .line 1336
    .local v4, snippet:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xf

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1337
    const-string v5, "WAP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The snippet data is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xf

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    const/16 v5, 0xf

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1342
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-wide v5, p1, Lcom/android/mms/data/Conversation;->mDate:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 1343
    const v5, 0x7f0c000c

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1345
    :cond_1
    iput-object v4, p1, Lcom/android/mms/data/Conversation;->mSnippet:Ljava/lang/String;

    .line 1347
    const/4 v5, 0x0

    iput-boolean v5, p1, Lcom/android/mms/data/Conversation;->mHasError:Z

    .line 1348
    const/4 v5, 0x0

    iput-boolean v5, p1, Lcom/android/mms/data/Conversation;->mHasSending:Z

    .line 1349
    const/4 v5, 0x0

    iput-boolean v5, p1, Lcom/android/mms/data/Conversation;->mHasPending:Z

    .line 1351
    const/16 v5, 0xb

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1352
    .local v0, messageType:I
    const/4 v5, 0x3

    if-ne v0, v5, :cond_8

    .line 1353
    const/4 v5, 0x1

    iput-boolean v5, p1, Lcom/android/mms/data/Conversation;->mHasError:Z

    .line 1364
    :cond_2
    :goto_2
    const/16 v5, 0x9

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    :goto_3
    iput-boolean v5, p1, Lcom/android/mms/data/Conversation;->mHasAttachment:Z

    .line 1366
    const/16 v5, 0x8

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p1, Lcom/android/mms/data/Conversation;->mType:I

    .line 1367
    iget v5, p1, Lcom/android/mms/data/Conversation;->mType:I

    invoke-direct {p1, v5}, Lcom/android/mms/data/Conversation;->setIsCmas(I)V

    .line 1369
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    const/16 v5, 0xc

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1373
    .local v2, recipientIds:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1374
    const/4 v5, 0x3

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1376
    :cond_3
    invoke-static {v2, p3}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 1377
    .local v3, recipients:Lcom/android/mms/data/ContactList;
    monitor-enter p1

    .line 1378
    :try_start_1
    iput-object v3, p1, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 1379
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1380
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 1381
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 1382
    .local v1, number:Ljava/lang/String;
    const-string v5, "CBmessages"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1383
    const/4 v5, 0x1

    iput-boolean v5, p1, Lcom/android/mms/data/Conversation;->mIsCbSms:Z

    .line 1391
    .end local v1           #number:Ljava/lang/String;
    :cond_4
    :goto_4
    return-void

    .line 1322
    .end local v0           #messageType:I
    .end local v2           #recipientIds:Ljava/lang/String;
    .end local v3           #recipients:Lcom/android/mms/data/ContactList;
    .end local v4           #snippet:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1328
    :cond_6
    const/4 v5, -0x1

    :try_start_2
    iput v5, p1, Lcom/android/mms/data/Conversation;->mReplyAllDraftFlag:I

    .line 1329
    const/4 v5, 0x6

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_7

    const/4 v5, 0x1

    :goto_5
    invoke-direct {p1, v5}, Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V

    goto/16 :goto_1

    .line 1369
    :catchall_0
    move-exception v5

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1329
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 1355
    .restart local v0       #messageType:I
    .restart local v4       #snippet:Ljava/lang/String;
    :cond_8
    :try_start_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v5

    if-eqz v5, :cond_b

    sget v5, Lcom/android/mms/data/Conversation;->THREAD_TYPE_SMS_PENDING:I

    if-ne v0, v5, :cond_9

    const/4 v5, 0x1

    invoke-static {p0, v5}, Lcom/android/mms/util/NetworkConnectionUtils;->isMsgNetworkAvailable(Landroid/content/Context;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    sget v5, Lcom/android/mms/data/Conversation;->THREAD_TYPE_MMS_SENDING:I

    if-ne v0, v5, :cond_b

    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/android/mms/util/NetworkConnectionUtils;->isMsgNetworkAvailable(Landroid/content/Context;Z)Z

    move-result v5

    if-nez v5, :cond_b

    .line 1358
    :cond_a
    const/4 v5, 0x1

    iput-boolean v5, p1, Lcom/android/mms/data/Conversation;->mHasPending:Z

    goto/16 :goto_2

    .line 1359
    :cond_b
    sget v5, Lcom/android/mms/data/Conversation;->THREAD_TYPE_SMS_SENDING:I

    if-eq v0, v5, :cond_c

    sget v5, Lcom/android/mms/data/Conversation;->THREAD_TYPE_SMS_PENDING:I

    if-eq v0, v5, :cond_c

    sget v5, Lcom/android/mms/data/Conversation;->THREAD_TYPE_MMS_SENDING:I

    if-ne v0, v5, :cond_2

    .line 1361
    :cond_c
    const/4 v5, 0x1

    iput-boolean v5, p1, Lcom/android/mms/data/Conversation;->mHasSending:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 1364
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1379
    .restart local v2       #recipientIds:Ljava/lang/String;
    .restart local v3       #recipients:Lcom/android/mms/data/ContactList;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 1384
    .restart local v1       #number:Ljava/lang/String;
    :cond_e
    const-string v5, "Pushmessage"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1385
    const/4 v5, 0x1

    iput-boolean v5, p1, Lcom/android/mms/data/Conversation;->mIsWapPushMessage:Z

    goto :goto_4

    .line 1386
    :cond_f
    const-string v5, "Anonymous"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1387
    const/4 v5, 0x1

    iput-boolean v5, p1, Lcom/android/mms/data/Conversation;->mIsAnonymousMsg:Z

    goto :goto_4
.end method

.method public static from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;
    .locals 8
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x0

    .line 451
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 452
    .local v3, threadId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 453
    invoke-static {v3, v4}, Lcom/android/mms/data/Conversation$Cache;->get(J)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 454
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    .line 455
    invoke-static {p0, v0, p1, v7}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V

    move-object v1, v0

    .line 467
    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    .local v1, conv:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 459
    .end local v1           #conv:Ljava/lang/Object;
    :cond_0
    new-instance v0, Lcom/android/mms/data/Conversation;

    invoke-direct {v0, p0, p1, v7}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 461
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_1
    const-string v5, "Mms/Conversation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "from(),return="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 467
    .restart local v1       #conv:Ljava/lang/Object;
    goto :goto_0

    .line 462
    .end local v1           #conv:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 463
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v5, "Mms/Conversation"

    const-string v6, "Tried to add duplicate Conversation to Cache"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    .locals 6
    .parameter "context"
    .parameter "threadId"
    .parameter "allowQuery"

    .prologue
    .line 268
    const-string v3, "Mms/Conversation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get(Context,long,boolean),threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",allowQuery"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation$Cache;->get(J)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 271
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 280
    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    .local v1, conv:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 274
    .end local v1           #conv:Ljava/lang/Object;
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    :cond_0
    new-instance v0, Lcom/android/mms/data/Conversation;

    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;JZ)V

    .line 276
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 280
    .restart local v1       #conv:Ljava/lang/Object;
    goto :goto_0

    .line 277
    .end local v1           #conv:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 278
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v3, "Tried to add duplicate Conversation to Cache"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "allowQuery"
    .parameter "createThread"

    .prologue
    const/4 v7, 0x1

    .line 344
    const-string v4, "Mms/Conversation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get(),uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",allowQuery="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    if-nez p1, :cond_0

    .line 347
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v4

    .line 365
    :goto_0
    return-object v4

    .line 350
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 352
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 354
    .local v2, threadId:J
    invoke-static {p0, v2, v3, p2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 356
    .end local v2           #threadId:J
    :catch_0
    move-exception v0

    .line 357
    .local v0, exception:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    .end local v0           #exception:Ljava/lang/NumberFormatException;
    :cond_1
    invoke-static {p1}, Lcom/android/mms/data/Conversation;->getRecipients(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2c

    const/16 v6, 0x3b

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, recipients:Ljava/lang/String;
    invoke-static {v1, p2, v7}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-static {p0, v4, p2, p3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v4

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;
    .locals 9
    .parameter "context"
    .parameter "recipients"
    .parameter "allowQuery"
    .parameter "createThread"

    .prologue
    const-wide/16 v7, 0x0

    .line 289
    const-string v4, "Mms/Conversation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get(Context,ContactList,boolean),recipients="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",allowQuery="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 294
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 335
    :cond_0
    :goto_0
    return-object v0

    .line 297
    :cond_1
    invoke-static {p1}, Lcom/android/mms/data/Conversation$Cache;->get(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 298
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-nez v0, :cond_0

    .line 301
    invoke-static {p0, p1, p3}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)J

    move-result-wide v2

    .line 304
    .local v2, threadId:J
    if-nez p3, :cond_2

    cmp-long v4, v2, v7

    if-lez v4, :cond_6

    .line 305
    :cond_2
    new-instance v0, Lcom/android/mms/data/Conversation;

    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    invoke-direct {v0, p0, v2, v3, p2}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;JZ)V

    .line 312
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 313
    sget-boolean v4, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-nez v4, :cond_3

    invoke-static {v2, v3}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 314
    invoke-virtual {v0, p1}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 318
    :cond_3
    const-string v4, "Mms/Conversation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conversation.get: created new conversation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 321
    const-string v4, "Mms/Conversation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conversation.get: new conv\'s recipients don\'t match input recpients "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_4
    if-nez p3, :cond_5

    cmp-long v4, v2, v7

    if-lez v4, :cond_0

    .line 328
    :cond_5
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v4, "Tried to add duplicate Conversation to Cache"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 308
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_6
    new-instance v0, Lcom/android/mms/data/Conversation;

    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;Lcom/android/mms/data/ContactList;)V

    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    goto :goto_1
.end method

.method public static get(Landroid/content/Context;Ljava/util/ArrayList;ZZ)Lcom/android/mms/data/Conversation;
    .locals 5
    .parameter "context"
    .parameter
    .parameter "allowQuery"
    .parameter "createThread"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/android/mms/data/Conversation;"
        }
    .end annotation

    .prologue
    .local p1, recipientsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 376
    const/4 v1, 0x0

    .line 377
    .local v1, result:Lcom/android/mms/data/Conversation;
    if-nez p1, :cond_0

    .line 378
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 384
    :goto_0
    const-string v2, "Mms/Conversation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get(Context,ArrayList,boolean),return="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return-object v1

    .line 380
    :cond_0
    invoke-static {p1}, Lcom/android/mms/data/Conversation;->getRecipientByList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, recipient:Ljava/lang/String;
    invoke-static {v0, v2, v2}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-static {p0, v2, p2, p3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    goto :goto_0
.end method

.method private static getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)J
    .locals 12
    .parameter "context"
    .parameter "list"
    .parameter "createThread"

    .prologue
    .line 868
    const-string v8, "Mms/Conversation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getOrCreateThreadId(),list="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 872
    .local v5, recipients:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 873
    .local v1, cacheContact:Lcom/android/mms/data/Contact;
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 874
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 876
    .local v4, number:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 877
    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 882
    :goto_1
    if-eqz v1, :cond_1

    .line 883
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 879
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 885
    :cond_1
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 891
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v4           #number:Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/android/mms/data/Conversation$Cache;->get(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    .line 892
    .local v2, conv:Lcom/android/mms/data/Conversation;
    if-eqz v2, :cond_3

    const/4 v8, 0x1

    if-ne v8, p2, :cond_3

    .line 893
    const-string v8, "Mms/Conversation"

    const-string v9, "-----------delete the useless cache-----------"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const-string v8, "Mms/Conversation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "conv.getThreadId() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/mms/data/Conversation$Cache;->remove(J)V

    .line 899
    :cond_3
    invoke-static {p0, v5, p2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Z)J

    move-result-wide v6

    .line 900
    .local v6, retVal:J
    const-string v8, "Mms/Conversation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getOrCreateThreadId(),return="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    return-wide v6
.end method

.method private static declared-synchronized getReadContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 486
    const-class v1, Lcom/android/mms/data/Conversation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/data/Conversation;->sReadContentValues:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 487
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/mms/data/Conversation;->sReadContentValues:Landroid/content/ContentValues;

    .line 488
    sget-object v0, Lcom/android/mms/data/Conversation;->sReadContentValues:Landroid/content/ContentValues;

    const-string v2, "read"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 491
    :cond_0
    sget-object v0, Lcom/android/mms/data/Conversation;->sReadContentValues:Landroid/content/ContentValues;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getRecipientByList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, recipientsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v9, 0x3b

    .line 389
    if-nez p0, :cond_0

    .line 390
    const/4 v2, 0x0

    .line 412
    :goto_0
    return-object v2

    .line 393
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 394
    .local v4, recipientCount:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 396
    .local v5, s:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 397
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 398
    .local v6, tmpl:Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, number:Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 402
    .local v3, pos:I
    if-lez v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 403
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 406
    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 409
    .end local v1           #number:Ljava/lang/String;
    .end local v3           #pos:I
    .end local v6           #tmpl:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, numbers:Ljava/lang/String;
    const-string v7, "Mms/Conversation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRecipientByList(),return="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getRecipients(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 2154
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 2155
    .local v0, base:Ljava/lang/String;
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2156
    .local v1, pos:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .end local v0           #base:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #base:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static declared-synchronized getSeenContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 477
    const-class v1, Lcom/android/mms/data/Conversation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/data/Conversation;->sSeenContentValues:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/mms/data/Conversation;->sSeenContentValues:Landroid/content/ContentValues;

    .line 479
    sget-object v0, Lcom/android/mms/data/Conversation;->sSeenContentValues:Landroid/content/ContentValues;

    const-string v2, "seen"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 482
    :cond_0
    sget-object v0, Lcom/android/mms/data/Conversation;->sSeenContentValues:Landroid/content/ContentValues;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getTempThreadId()J
    .locals 2

    .prologue
    .line 2024
    const-wide v0, 0x7ffffffffffffffeL

    return-wide v0
.end method

.method public static getTempThreadIdStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2028
    sget-object v0, Lcom/android/mms/data/Conversation;->TEMP_THREAD_ID_STR:Ljava/lang/String;

    return-object v0
.end method

.method public static getUnreadMessageCount(Landroid/content/ContentResolver;)I
    .locals 9
    .parameter "resolver"

    .prologue
    const/4 v8, 0x0

    .line 2086
    const/4 v6, 0x0

    .line 2089
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->UNREAD_SUM_PROJECTION:[Ljava/lang/String;

    const-string v3, "unread_count > 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2095
    if-nez v6, :cond_2

    .line 2104
    if-eqz v6, :cond_0

    .line 2105
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v8

    .line 2108
    :cond_1
    :goto_0
    return v0

    .line 2097
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2098
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 2104
    if-eqz v6, :cond_1

    .line 2105
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2104
    :cond_3
    if-eqz v6, :cond_4

    .line 2105
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move v0, v8

    .line 2108
    goto :goto_0

    .line 2101
    :catch_0
    move-exception v7

    .line 2102
    .local v7, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2104
    if-eqz v6, :cond_4

    .line 2105
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2104
    .end local v7           #ex:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2105
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static getUri(J)Landroid/net/Uri;
    .locals 1
    .parameter "threadId"

    .prologue
    .line 670
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 1729
    const-string v0, "Mms/Conversation"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    const-string v0, "Mms/Conversation"

    const-string v1, "init start"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->deleteConversation(J)I

    .line 1735
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/data/Conversation;->isCached:Z

    .line 1736
    const-string v0, "Mms/Conversation"

    const-string v1, "init end"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1753
    const-string v0, "Mms/Conversation"

    const-string v1, "init(Context)"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/data/Conversation;->isCached:Z

    .line 1756
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->startCaching(Landroid/content/Context;)V

    .line 1757
    return-void
.end method

.method private loadFromThreadId(JZ)Z
    .locals 8
    .parameter "threadId"
    .parameter "allowQuery"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 1978
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFromThreadId(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allowQuery"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    const/4 v6, 0x0

    .line 1981
    .local v6, c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1982
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->NGM_ALL_THREADS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1993
    :goto_0
    if-eqz v6, :cond_0

    .line 1994
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1995
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, v6, p3}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V

    .line 1997
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFromThreadId: fillFromCursor returned differnt thread_id! threadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThreadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2007
    :cond_0
    if-eqz v6, :cond_1

    .line 2008
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2010
    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1988
    :cond_2
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 2002
    :cond_3
    :try_start_1
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFromThreadId: Can\'t find thread ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2007
    if-eqz v6, :cond_4

    .line 2008
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v7

    goto :goto_1

    .line 2007
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2008
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static loadingThreads()Z
    .locals 1

    .prologue
    .line 1855
    sget-boolean v0, Lcom/android/mms/data/Conversation;->sLoadingThreads:Z

    return v0
.end method

.method public static markAllConversationsAsRead(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1774
    const-string v1, "Mms/Conversation"

    const-string v2, "markAllConversationsAsRead()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/Conversation$5;

    invoke-direct {v1, p0}, Lcom/android/mms/data/Conversation$5;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1785
    .local v0, thread:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1786
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1787
    return-void
.end method

.method public static queryMessageCount(JLandroid/content/Context;)I
    .locals 8
    .parameter "threadId"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 1955
    const/4 v7, 0x0

    .line 1956
    .local v7, messageCount:I
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1959
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1960
    const/4 v0, -0x1

    .line 1973
    :goto_0
    return v0

    .line 1964
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1965
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 1968
    :cond_1
    if-eqz v6, :cond_2

    .line 1969
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v7

    .line 1973
    goto :goto_0

    .line 1968
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1969
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static readFileBytes(Ljava/io/File;)[B
    .locals 10
    .parameter "file"

    .prologue
    .line 1177
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1178
    const/4 v0, 0x0

    .line 1206
    :cond_0
    :goto_0
    return-object v0

    .line 1180
    :cond_1
    const/4 v0, 0x0

    .line 1181
    .local v0, bytesRead:[B
    const/4 v3, 0x0

    .line 1183
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1184
    .end local v3           #is:Ljava/io/InputStream;
    .local v4, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 1185
    .local v5, length:J
    long-to-int v9, v5

    new-array v0, v9, [B

    .line 1187
    const/4 v8, 0x0

    .line 1188
    .local v8, offset:I
    const/4 v7, 0x0

    .line 1190
    .local v7, numRead:I
    :goto_1
    array-length v9, v0

    if-ge v8, v9, :cond_2

    array-length v9, v0

    sub-int/2addr v9, v8

    invoke-virtual {v4, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v7

    if-ltz v7, :cond_2

    .line 1191
    add-int/2addr v8, v7

    goto :goto_1

    .line 1197
    :cond_2
    if-eqz v4, :cond_4

    .line 1199
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 1203
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 1200
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 1202
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 1203
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 1194
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #length:J
    .end local v7           #numRead:I
    .end local v8           #offset:I
    :catch_1
    move-exception v2

    .line 1195
    .local v2, ioe:Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1197
    if-eqz v3, :cond_0

    .line 1199
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1200
    :catch_2
    move-exception v1

    .line 1202
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1197
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v3, :cond_3

    .line 1199
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1203
    :cond_3
    :goto_4
    throw v9

    .line 1200
    :catch_3
    move-exception v1

    .line 1202
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1197
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_3

    .line 1194
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_2

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #length:J
    .restart local v7       #numRead:I
    .restart local v8       #offset:I
    :cond_4
    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static readXmlFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 24
    .parameter "filepath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/data/SavedSmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1210
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v22

    if-nez v22, :cond_1

    .line 1211
    const/4 v3, 0x0

    .line 1292
    :cond_0
    :goto_0
    return-object v3

    .line 1213
    :cond_1
    const/16 v16, 0x0

    .line 1214
    .local v16, obj_is:Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 1215
    .local v15, obj_doc:Lorg/w3c/dom/Document;
    const/4 v6, 0x0

    .line 1216
    .local v6, doc_build_fact:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v7, 0x0

    .line 1217
    .local v7, doc_builder:Ljavax/xml/parsers/DocumentBuilder;
    const/4 v3, 0x0

    .line 1220
    .local v3, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    :try_start_0
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    .line 1221
    .end local v16           #obj_is:Ljava/io/InputStream;
    .local v17, obj_is:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 1222
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 1223
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v15

    .line 1224
    const/16 v18, 0x0

    .line 1225
    .local v18, obj_nod_list:Lorg/w3c/dom/NodeList;
    const/16 v20, 0x0

    .line 1226
    .local v20, threadConv:Lorg/w3c/dom/Element;
    const/16 v21, 0x0

    .line 1227
    .local v21, threadCount:I
    const/4 v14, 0x0

    .line 1229
    .local v14, messageCount:I
    if-eqz v15, :cond_f

    .line 1230
    invoke-interface {v15}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    .line 1231
    .local v9, feed:Lorg/w3c/dom/Element;
    const-string v22, "thread"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    .line 1232
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d

    .line 1234
    .end local v3           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .local v4, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    const/4 v13, 0x0

    .local v13, j:I
    :goto_1
    move/from16 v0, v21

    if-ge v13, v0, :cond_e

    .line 1235
    :try_start_2
    const-string v22, "thread"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .end local v20           #threadConv:Lorg/w3c/dom/Element;
    check-cast v20, Lorg/w3c/dom/Element;

    .line 1236
    .restart local v20       #threadConv:Lorg/w3c/dom/Element;
    const-string v22, "message"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 1237
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    .line 1239
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_d

    .line 1240
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 1241
    .local v12, item:Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    .line 1242
    .local v10, fstChild:Lorg/w3c/dom/Node;
    new-instance v19, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-direct/range {v19 .. v19}, Lcom/samsung/mms/data/SavedSmsMessage;-><init>()V

    .line 1243
    .local v19, smsMsg:Lcom/samsung/mms/data/SavedSmsMessage;
    int-to-long v0, v11

    move-wide/from16 v22, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/mms/data/SavedSmsMessage;->setID(J)V

    .line 1244
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/samsung/mms/data/SavedSmsMessage;->setTotalCount(I)V

    .line 1245
    const/4 v5, 0x0

    .line 1247
    .local v5, count:I
    :cond_2
    if-lez v5, :cond_3

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v10

    .line 1248
    :cond_3
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "address"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1249
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/mms/data/SavedSmsMessage;->setAddress(Ljava/lang/String;)V

    .line 1265
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 1266
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, v22

    if-ne v10, v0, :cond_2

    .line 1267
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1251
    :cond_5
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "canonical_address"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1252
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/mms/data/SavedSmsMessage;->setCanonicalAddress(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    goto :goto_3

    .line 1272
    .end local v5           #count:I
    .end local v10           #fstChild:Lorg/w3c/dom/Node;
    .end local v11           #i:I
    .end local v12           #item:Lorg/w3c/dom/Node;
    .end local v19           #smsMsg:Lcom/samsung/mms/data/SavedSmsMessage;
    .end local v20           #threadConv:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v8

    move-object v3, v4

    .end local v4           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .restart local v3       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    move-object/from16 v16, v17

    .line 1273
    .end local v9           #feed:Lorg/w3c/dom/Element;
    .end local v13           #j:I
    .end local v14           #messageCount:I
    .end local v17           #obj_is:Ljava/io/InputStream;
    .end local v18           #obj_nod_list:Lorg/w3c/dom/NodeList;
    .end local v21           #threadCount:I
    .local v8, e:Ljava/io/FileNotFoundException;
    .restart local v16       #obj_is:Ljava/io/InputStream;
    :goto_4
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1283
    if-eqz v16, :cond_0

    .line 1285
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1286
    :catch_1
    move-exception v8

    .line 1288
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1254
    .end local v3           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .end local v8           #e:Ljava/io/IOException;
    .end local v16           #obj_is:Ljava/io/InputStream;
    .restart local v4       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .restart local v5       #count:I
    .restart local v9       #feed:Lorg/w3c/dom/Element;
    .restart local v10       #fstChild:Lorg/w3c/dom/Node;
    .restart local v11       #i:I
    .restart local v12       #item:Lorg/w3c/dom/Node;
    .restart local v13       #j:I
    .restart local v14       #messageCount:I
    .restart local v17       #obj_is:Ljava/io/InputStream;
    .restart local v18       #obj_nod_list:Lorg/w3c/dom/NodeList;
    .restart local v19       #smsMsg:Lcom/samsung/mms/data/SavedSmsMessage;
    .restart local v20       #threadConv:Lorg/w3c/dom/Element;
    .restart local v21       #threadCount:I
    :cond_6
    :try_start_5
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "body"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 1255
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_7

    .line 1256
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v22

    const-string v23, "UTF-8"

    invoke-static/range {v22 .. v23}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/mms/data/SavedSmsMessage;->setBody(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_3

    .line 1274
    .end local v5           #count:I
    .end local v10           #fstChild:Lorg/w3c/dom/Node;
    .end local v11           #i:I
    .end local v12           #item:Lorg/w3c/dom/Node;
    .end local v19           #smsMsg:Lcom/samsung/mms/data/SavedSmsMessage;
    .end local v20           #threadConv:Lorg/w3c/dom/Element;
    :catch_2
    move-exception v8

    move-object v3, v4

    .end local v4           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .restart local v3       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    move-object/from16 v16, v17

    .line 1275
    .end local v9           #feed:Lorg/w3c/dom/Element;
    .end local v13           #j:I
    .end local v14           #messageCount:I
    .end local v17           #obj_is:Ljava/io/InputStream;
    .end local v18           #obj_nod_list:Lorg/w3c/dom/NodeList;
    .end local v21           #threadCount:I
    .local v8, e:Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v16       #obj_is:Ljava/io/InputStream;
    :goto_5
    :try_start_6
    invoke-virtual {v8}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1283
    if-eqz v16, :cond_0

    .line 1285
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 1286
    :catch_3
    move-exception v8

    .line 1288
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1258
    .end local v3           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .end local v8           #e:Ljava/io/IOException;
    .end local v16           #obj_is:Ljava/io/InputStream;
    .restart local v4       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .restart local v5       #count:I
    .restart local v9       #feed:Lorg/w3c/dom/Element;
    .restart local v10       #fstChild:Lorg/w3c/dom/Node;
    .restart local v11       #i:I
    .restart local v12       #item:Lorg/w3c/dom/Node;
    .restart local v13       #j:I
    .restart local v14       #messageCount:I
    .restart local v17       #obj_is:Ljava/io/InputStream;
    .restart local v18       #obj_nod_list:Lorg/w3c/dom/NodeList;
    .restart local v19       #smsMsg:Lcom/samsung/mms/data/SavedSmsMessage;
    .restart local v20       #threadConv:Lorg/w3c/dom/Element;
    .restart local v21       #threadCount:I
    :cond_7
    :try_start_8
    const-string v22, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/mms/data/SavedSmsMessage;->setBody(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_3

    .line 1276
    .end local v5           #count:I
    .end local v10           #fstChild:Lorg/w3c/dom/Node;
    .end local v11           #i:I
    .end local v12           #item:Lorg/w3c/dom/Node;
    .end local v19           #smsMsg:Lcom/samsung/mms/data/SavedSmsMessage;
    .end local v20           #threadConv:Lorg/w3c/dom/Element;
    :catch_4
    move-exception v8

    move-object v3, v4

    .end local v4           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .restart local v3       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    move-object/from16 v16, v17

    .line 1277
    .end local v9           #feed:Lorg/w3c/dom/Element;
    .end local v13           #j:I
    .end local v14           #messageCount:I
    .end local v17           #obj_is:Ljava/io/InputStream;
    .end local v18           #obj_nod_list:Lorg/w3c/dom/NodeList;
    .end local v21           #threadCount:I
    .local v8, e:Lorg/xml/sax/SAXException;
    .restart local v16       #obj_is:Ljava/io/InputStream;
    :goto_6
    :try_start_9
    invoke-virtual {v8}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1283
    if-eqz v16, :cond_0

    .line 1285
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    .line 1286
    :catch_5
    move-exception v8

    .line 1288
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1261
    .end local v3           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .end local v8           #e:Ljava/io/IOException;
    .end local v16           #obj_is:Ljava/io/InputStream;
    .restart local v4       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .restart local v5       #count:I
    .restart local v9       #feed:Lorg/w3c/dom/Element;
    .restart local v10       #fstChild:Lorg/w3c/dom/Node;
    .restart local v11       #i:I
    .restart local v12       #item:Lorg/w3c/dom/Node;
    .restart local v13       #j:I
    .restart local v14       #messageCount:I
    .restart local v17       #obj_is:Ljava/io/InputStream;
    .restart local v18       #obj_nod_list:Lorg/w3c/dom/NodeList;
    .restart local v19       #smsMsg:Lcom/samsung/mms/data/SavedSmsMessage;
    .restart local v20       #threadConv:Lorg/w3c/dom/Element;
    .restart local v21       #threadCount:I
    :cond_8
    :try_start_b
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "date"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/mms/data/SavedSmsMessage;->setDate(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_3

    .line 1278
    .end local v5           #count:I
    .end local v10           #fstChild:Lorg/w3c/dom/Node;
    .end local v11           #i:I
    .end local v12           #item:Lorg/w3c/dom/Node;
    .end local v19           #smsMsg:Lcom/samsung/mms/data/SavedSmsMessage;
    .end local v20           #threadConv:Lorg/w3c/dom/Element;
    :catch_6
    move-exception v8

    move-object v3, v4

    .end local v4           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .restart local v3       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    move-object/from16 v16, v17

    .line 1279
    .end local v9           #feed:Lorg/w3c/dom/Element;
    .end local v13           #j:I
    .end local v14           #messageCount:I
    .end local v17           #obj_is:Ljava/io/InputStream;
    .end local v18           #obj_nod_list:Lorg/w3c/dom/NodeList;
    .end local v21           #threadCount:I
    .restart local v8       #e:Ljava/io/IOException;
    .restart local v16       #obj_is:Ljava/io/InputStream;
    :goto_7
    :try_start_c
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1283
    if-eqz v16, :cond_0

    .line 1285
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_0

    .line 1286
    :catch_7
    move-exception v8

    .line 1288
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1262
    .end local v3           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .end local v8           #e:Ljava/io/IOException;
    .end local v16           #obj_is:Ljava/io/InputStream;
    .restart local v4       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .restart local v5       #count:I
    .restart local v9       #feed:Lorg/w3c/dom/Element;
    .restart local v10       #fstChild:Lorg/w3c/dom/Node;
    .restart local v11       #i:I
    .restart local v12       #item:Lorg/w3c/dom/Node;
    .restart local v13       #j:I
    .restart local v14       #messageCount:I
    .restart local v17       #obj_is:Ljava/io/InputStream;
    .restart local v18       #obj_nod_list:Lorg/w3c/dom/NodeList;
    .restart local v19       #smsMsg:Lcom/samsung/mms/data/SavedSmsMessage;
    .restart local v20       #threadConv:Lorg/w3c/dom/Element;
    .restart local v21       #threadCount:I
    :cond_9
    :try_start_e
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "read"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/mms/data/SavedSmsMessage;->setRead(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_3

    .line 1280
    .end local v5           #count:I
    .end local v10           #fstChild:Lorg/w3c/dom/Node;
    .end local v11           #i:I
    .end local v12           #item:Lorg/w3c/dom/Node;
    .end local v19           #smsMsg:Lcom/samsung/mms/data/SavedSmsMessage;
    .end local v20           #threadConv:Lorg/w3c/dom/Element;
    :catch_8
    move-exception v8

    move-object v3, v4

    .end local v4           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .restart local v3       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    move-object/from16 v16, v17

    .line 1281
    .end local v9           #feed:Lorg/w3c/dom/Element;
    .end local v13           #j:I
    .end local v14           #messageCount:I
    .end local v17           #obj_is:Ljava/io/InputStream;
    .end local v18           #obj_nod_list:Lorg/w3c/dom/NodeList;
    .end local v21           #threadCount:I
    .local v8, e:Ljava/lang/Exception;
    .restart local v16       #obj_is:Ljava/io/InputStream;
    :goto_8
    :try_start_f
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1283
    if-eqz v16, :cond_0

    .line 1285
    :try_start_10
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    goto/16 :goto_0

    .line 1286
    :catch_9
    move-exception v8

    .line 1288
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1263
    .end local v3           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .end local v8           #e:Ljava/io/IOException;
    .end local v16           #obj_is:Ljava/io/InputStream;
    .restart local v4       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .restart local v5       #count:I
    .restart local v9       #feed:Lorg/w3c/dom/Element;
    .restart local v10       #fstChild:Lorg/w3c/dom/Node;
    .restart local v11       #i:I
    .restart local v12       #item:Lorg/w3c/dom/Node;
    .restart local v13       #j:I
    .restart local v14       #messageCount:I
    .restart local v17       #obj_is:Ljava/io/InputStream;
    .restart local v18       #obj_nod_list:Lorg/w3c/dom/NodeList;
    .restart local v19       #smsMsg:Lcom/samsung/mms/data/SavedSmsMessage;
    .restart local v20       #threadConv:Lorg/w3c/dom/Element;
    .restart local v21       #threadCount:I
    :cond_a
    :try_start_11
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "type"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/mms/data/SavedSmsMessage;->setType(I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_3

    .line 1283
    .end local v5           #count:I
    .end local v10           #fstChild:Lorg/w3c/dom/Node;
    .end local v11           #i:I
    .end local v12           #item:Lorg/w3c/dom/Node;
    .end local v19           #smsMsg:Lcom/samsung/mms/data/SavedSmsMessage;
    .end local v20           #threadConv:Lorg/w3c/dom/Element;
    :catchall_0
    move-exception v22

    move-object v3, v4

    .end local v4           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .restart local v3       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    move-object/from16 v16, v17

    .end local v9           #feed:Lorg/w3c/dom/Element;
    .end local v13           #j:I
    .end local v14           #messageCount:I
    .end local v17           #obj_is:Ljava/io/InputStream;
    .end local v18           #obj_nod_list:Lorg/w3c/dom/NodeList;
    .end local v21           #threadCount:I
    .restart local v16       #obj_is:Ljava/io/InputStream;
    :goto_9
    if-eqz v16, :cond_b

    .line 1285
    :try_start_12
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 1289
    :cond_b
    :goto_a
    throw v22

    .line 1264
    .end local v3           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .end local v16           #obj_is:Ljava/io/InputStream;
    .restart local v4       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .restart local v5       #count:I
    .restart local v9       #feed:Lorg/w3c/dom/Element;
    .restart local v10       #fstChild:Lorg/w3c/dom/Node;
    .restart local v11       #i:I
    .restart local v12       #item:Lorg/w3c/dom/Node;
    .restart local v13       #j:I
    .restart local v14       #messageCount:I
    .restart local v17       #obj_is:Ljava/io/InputStream;
    .restart local v18       #obj_nod_list:Lorg/w3c/dom/NodeList;
    .restart local v19       #smsMsg:Lcom/samsung/mms/data/SavedSmsMessage;
    .restart local v20       #threadConv:Lorg/w3c/dom/Element;
    .restart local v21       #threadCount:I
    :cond_c
    :try_start_13
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "locked"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/mms/data/SavedSmsMessage;->setLocked(I)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    goto/16 :goto_3

    .line 1234
    .end local v5           #count:I
    .end local v10           #fstChild:Lorg/w3c/dom/Node;
    .end local v12           #item:Lorg/w3c/dom/Node;
    .end local v19           #smsMsg:Lcom/samsung/mms/data/SavedSmsMessage;
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .end local v11           #i:I
    :cond_e
    move-object v3, v4

    .line 1283
    .end local v4           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    .end local v9           #feed:Lorg/w3c/dom/Element;
    .end local v13           #j:I
    .restart local v3       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    :cond_f
    if-eqz v17, :cond_10

    .line 1285
    :try_start_14
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    move-object/from16 v16, v17

    .line 1289
    .end local v17           #obj_is:Ljava/io/InputStream;
    .restart local v16       #obj_is:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 1286
    .end local v16           #obj_is:Ljava/io/InputStream;
    .restart local v17       #obj_is:Ljava/io/InputStream;
    :catch_a
    move-exception v8

    .line 1288
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v16, v17

    .line 1289
    .end local v17           #obj_is:Ljava/io/InputStream;
    .restart local v16       #obj_is:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 1286
    .end local v8           #e:Ljava/io/IOException;
    .end local v14           #messageCount:I
    .end local v18           #obj_nod_list:Lorg/w3c/dom/NodeList;
    .end local v20           #threadConv:Lorg/w3c/dom/Element;
    .end local v21           #threadCount:I
    :catch_b
    move-exception v8

    .line 1288
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 1283
    .end local v8           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v22

    goto :goto_9

    .end local v16           #obj_is:Ljava/io/InputStream;
    .restart local v17       #obj_is:Ljava/io/InputStream;
    :catchall_2
    move-exception v22

    move-object/from16 v16, v17

    .end local v17           #obj_is:Ljava/io/InputStream;
    .restart local v16       #obj_is:Ljava/io/InputStream;
    goto :goto_9

    .line 1280
    :catch_c
    move-exception v8

    goto :goto_8

    .end local v16           #obj_is:Ljava/io/InputStream;
    .restart local v17       #obj_is:Ljava/io/InputStream;
    :catch_d
    move-exception v8

    move-object/from16 v16, v17

    .end local v17           #obj_is:Ljava/io/InputStream;
    .restart local v16       #obj_is:Ljava/io/InputStream;
    goto/16 :goto_8

    .line 1278
    :catch_e
    move-exception v8

    goto/16 :goto_7

    .end local v16           #obj_is:Ljava/io/InputStream;
    .restart local v17       #obj_is:Ljava/io/InputStream;
    :catch_f
    move-exception v8

    move-object/from16 v16, v17

    .end local v17           #obj_is:Ljava/io/InputStream;
    .restart local v16       #obj_is:Ljava/io/InputStream;
    goto/16 :goto_7

    .line 1276
    :catch_10
    move-exception v8

    goto/16 :goto_6

    .end local v16           #obj_is:Ljava/io/InputStream;
    .restart local v17       #obj_is:Ljava/io/InputStream;
    :catch_11
    move-exception v8

    move-object/from16 v16, v17

    .end local v17           #obj_is:Ljava/io/InputStream;
    .restart local v16       #obj_is:Ljava/io/InputStream;
    goto/16 :goto_6

    .line 1274
    :catch_12
    move-exception v8

    goto/16 :goto_5

    .end local v16           #obj_is:Ljava/io/InputStream;
    .restart local v17       #obj_is:Ljava/io/InputStream;
    :catch_13
    move-exception v8

    move-object/from16 v16, v17

    .end local v17           #obj_is:Ljava/io/InputStream;
    .restart local v16       #obj_is:Ljava/io/InputStream;
    goto/16 :goto_5

    .line 1272
    :catch_14
    move-exception v8

    goto/16 :goto_4

    .end local v16           #obj_is:Ljava/io/InputStream;
    .restart local v17       #obj_is:Ljava/io/InputStream;
    :catch_15
    move-exception v8

    move-object/from16 v16, v17

    .end local v17           #obj_is:Ljava/io/InputStream;
    .restart local v16       #obj_is:Ljava/io/InputStream;
    goto/16 :goto_4

    .end local v16           #obj_is:Ljava/io/InputStream;
    .restart local v14       #messageCount:I
    .restart local v17       #obj_is:Ljava/io/InputStream;
    .restart local v18       #obj_nod_list:Lorg/w3c/dom/NodeList;
    .restart local v20       #threadConv:Lorg/w3c/dom/Element;
    .restart local v21       #threadCount:I
    :cond_10
    move-object/from16 v16, v17

    .end local v17           #obj_is:Ljava/io/InputStream;
    .restart local v16       #obj_is:Ljava/io/InputStream;
    goto/16 :goto_0
.end method

.method public static removeCache(J)V
    .locals 2
    .parameter "threadId"

    .prologue
    .line 471
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 472
    invoke-static {p0, p1}, Lcom/android/mms/data/Conversation$Cache;->remove(J)V

    .line 474
    :cond_0
    return-void
.end method

.method private setHasUnreadMessages(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 824
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mHasUnreadMessages:Z

    .line 826
    return-void
.end method

.method private setIsCmas(I)V
    .locals 1
    .parameter "cmasServiceType"

    .prologue
    .line 2130
    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/16 v0, 0x68

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_2

    .line 2133
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsCmas:Z

    .line 2139
    :goto_0
    return-void

    .line 2137
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsCmas:Z

    goto :goto_0
.end method

.method public static startCaching(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 1760
    sget-boolean v1, Lcom/android/mms/data/Conversation;->isCached:Z

    if-eqz v1, :cond_0

    .line 1771
    :goto_0
    return-void

    .line 1762
    :cond_0
    sput-boolean v3, Lcom/android/mms/data/Conversation;->isCached:Z

    .line 1764
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/Conversation$4;

    invoke-direct {v1, p0}, Lcom/android/mms/data/Conversation$4;-><init>(Landroid/content/Context;)V

    const-string v2, "msg:cache all threads"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1769
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 1770
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;)V
    .locals 9
    .parameter "handler"
    .parameter "token"
    .parameter "deleteAll"
    .parameter "deleteDraft"
    .parameter "deleteInfo"

    .prologue
    const/4 v5, 0x0

    .line 1021
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDelete(),deleteAll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v7, p4, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p4, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1024
    .local v3, uri:Landroid/net/Uri;
    if-eqz p2, :cond_1

    move-object v4, v5

    .line 1035
    .local v4, selection:Ljava/lang/String;
    :goto_0
    if-nez p3, :cond_0

    .line 1036
    const-string v6, "msgType <> 3"

    .line 1037
    .local v6, typeClue:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 1038
    move-object v4, v6

    .line 1042
    .end local v6           #typeClue:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    move-object v0, p0

    move v1, p1

    move-object v2, p4

    .line 1044
    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1045
    return-void

    .line 1024
    .end local v4           #selection:Ljava/lang/String;
    :cond_1
    const-string v4, "locked=0"

    goto :goto_0

    .line 1040
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v6       #typeClue:Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " And "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static startDeleteAll(Landroid/content/AsyncQueryHandler;IZ)V
    .locals 7
    .parameter "handler"
    .parameter "token"
    .parameter "deleteAll"

    .prologue
    const/4 v2, 0x0

    .line 1058
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDeleteAll(),deleteAll="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    if-eqz p2, :cond_1

    move-object v4, v2

    .line 1072
    .local v4, selection:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_id <> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1074
    .local v6, tempThreadIdClue:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 1075
    move-object v4, v6

    .line 1082
    .end local v6           #tempThreadIdClue:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 1084
    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move v1, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1085
    return-void

    .line 1060
    .end local v4           #selection:Ljava/lang/String;
    :cond_1
    const-string v4, "locked=0"

    goto :goto_0

    .line 1077
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v6       #tempThreadIdClue:Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static startQueryAllSmsSelected(Landroid/content/AsyncQueryHandler;I[JZ)V
    .locals 10
    .parameter "handler"
    .parameter "token"
    .parameter "ids"
    .parameter "isThreadId"

    .prologue
    const/4 v5, 0x0

    .line 1126
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1127
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1131
    if-eqz p3, :cond_2

    .line 1132
    array-length v0, p2

    if-nez v0, :cond_1

    .line 1135
    .local v5, selection:Ljava/lang/String;
    :goto_0
    move-object v8, v5

    .line 1136
    .local v8, baseSelection:Ljava/lang/String;
    array-length v0, p2

    new-array v6, v0, [Ljava/lang/String;

    .line 1137
    .local v6, selectionArgs:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    array-length v0, p2

    if-ge v9, v0, :cond_4

    .line 1138
    if-eqz v9, :cond_0

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1141
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, p2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    .line 1137
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1132
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v8           #baseSelection:Ljava/lang/String;
    .end local v9           #i:I
    :cond_1
    const-string v5, "thread_id = ?"

    goto :goto_0

    .line 1134
    :cond_2
    array-length v0, p2

    if-nez v0, :cond_3

    .restart local v5       #selection:Ljava/lang/String;
    :goto_2
    goto :goto_0

    .end local v5           #selection:Ljava/lang/String;
    :cond_3
    const-string v5, "_id = ?"

    goto :goto_2

    .line 1143
    .restart local v5       #selection:Ljava/lang/String;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    .restart local v8       #baseSelection:Ljava/lang/String;
    .restart local v9       #i:I
    :cond_4
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_SMS_PROJECTION:[Ljava/lang/String;

    const-string v7, "thread_id DESC,date DESC"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v8           #baseSelection:Ljava/lang/String;
    .end local v9           #i:I
    :cond_5
    return-void
.end method

.method public static startQueryForAll(Landroid/content/AsyncQueryHandler;II)V
    .locals 8
    .parameter "handler"
    .parameter "token"
    .parameter "limit"

    .prologue
    const/4 v2, 0x0

    .line 971
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startQueryForAll(), limit = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 980
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 981
    sget-object v4, Lcom/android/mms/data/Conversation;->NGM_ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 987
    .local v4, projection:[Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasConversationListQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasConversationListQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date DESC,_id DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 998
    .local v7, order:Ljava/lang/String;
    :goto_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1002
    :cond_0
    sget-object v3, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    move-object v0, p0

    move v1, p1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    return-void

    .line 983
    .end local v4           #projection:[Ljava/lang/String;
    .end local v7           #order:Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .restart local v4       #projection:[Ljava/lang/String;
    goto :goto_0

    .line 991
    :cond_2
    const-string v7, "date DESC,_id DESC"

    .restart local v7       #order:Ljava/lang/String;
    goto :goto_1
.end method

.method public static startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V
    .locals 8
    .parameter "handler"
    .parameter "threadId"
    .parameter "token"

    .prologue
    const/4 v5, 0x0

    .line 1098
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startQueryHaveLockedMessages(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p0, p3}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1101
    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_LOCKED_URI:Landroid/net/Uri;

    .line 1102
    .local v3, uri:Landroid/net/Uri;
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1103
    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1105
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v0, p0

    move v1, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    return-void
.end method

.method public static startQueryHaveLockedThread(Landroid/content/AsyncQueryHandler;I)V
    .locals 8
    .parameter "handler"
    .parameter "token"

    .prologue
    const/4 v2, 0x0

    .line 1117
    const-string v0, "Mms/Conversation"

    const-string v1, "startQueryHaveLockedThread()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1120
    const-string v0, "content://mms-sms/allLocked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1121
    .local v3, uri:Landroid/net/Uri;
    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v5, "locked=1"

    const-string v7, "date DESC"

    move-object v0, p0

    move v1, p1

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    return-void
.end method

.method public static startQueryHaveMmsSelected(Landroid/content/AsyncQueryHandler;I[JZ)V
    .locals 10
    .parameter "handler"
    .parameter "token"
    .parameter "ids"
    .parameter "isThreadId"

    .prologue
    const/4 v4, 0x0

    .line 1156
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1157
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1160
    if-eqz p3, :cond_2

    .line 1161
    array-length v0, p2

    if-nez v0, :cond_1

    move-object v5, v4

    .line 1164
    .local v5, selection:Ljava/lang/String;
    :goto_0
    move-object v8, v5

    .line 1165
    .local v8, baseSelection:Ljava/lang/String;
    array-length v0, p2

    new-array v6, v0, [Ljava/lang/String;

    .line 1166
    .local v6, selectionArgs:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    array-length v0, p2

    if-ge v9, v0, :cond_4

    .line 1167
    if-eqz v9, :cond_0

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1170
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v1, p2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    .line 1166
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1161
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v8           #baseSelection:Ljava/lang/String;
    .end local v9           #i:I
    :cond_1
    const-string v5, "thread_id = ?"

    goto :goto_0

    .line 1163
    :cond_2
    array-length v0, p2

    if-nez v0, :cond_3

    move-object v5, v4

    .restart local v5       #selection:Ljava/lang/String;
    :goto_2
    goto :goto_0

    .end local v5           #selection:Ljava/lang/String;
    :cond_3
    const-string v5, "_id = ?"

    goto :goto_2

    .line 1172
    .restart local v5       #selection:Ljava/lang/String;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    .restart local v8       #baseSelection:Ljava/lang/String;
    .restart local v9       #i:I
    :cond_4
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "date DESC"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v8           #baseSelection:Ljava/lang/String;
    .end local v9           #i:I
    :cond_5
    return-void
.end method

.method public static startQuerySms(Landroid/content/AsyncQueryHandler;IJ)V
    .locals 8
    .parameter "handler"
    .parameter "token"
    .parameter "msgId"

    .prologue
    const/4 v2, 0x0

    .line 1149
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1151
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_SMS_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v0, p0

    move v1, p1

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    :cond_0
    return-void
.end method


# virtual methods
.method public blockMarkAsRead(Z)V
    .locals 3
    .parameter "block"

    .prologue
    .line 633
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockMarkAsRead(),block="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    if-eq p1, v0, :cond_0

    .line 635
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    .line 636
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    if-nez v0, :cond_0

    .line 637
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadWaiting:Z

    if-eqz v0, :cond_0

    .line 638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadWaiting:Z

    .line 639
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 643
    :cond_0
    return-void
.end method

.method public declared-synchronized checkReadReport(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 10
    .parameter "context"
    .parameter "exit"

    .prologue
    const/4 v7, 0x0

    .line 497
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v9

    .line 498
    .local v9, threadUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 500
    .local v1, threadId:J
    const-string v0, "Mms/Conversation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkReadReport(),threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_6

    .line 503
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 504
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    const/16 v3, 0x80

    new-instance v4, Lcom/android/mms/data/Conversation$1;

    invoke-direct {v4, p0, v9, p2}, Lcom/android/mms/data/Conversation$1;-><init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportWithoutConfirmDlg(Landroid/content/Context;JILjava/lang/Runnable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 527
    :cond_1
    if-eqz v9, :cond_3

    .line 528
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 529
    .local v8, resolver:Landroid/content/ContentResolver;
    sget-object v0, Lcom/android/mms/data/Conversation;->UNREAD_PROJECTION:[Ljava/lang/String;

    const-string v3, "(seen=0)"

    invoke-static {v8, v9, v0, v3}, Lcom/android/mms/ui/MessageUtils;->queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v7, 0x1

    .line 530
    .local v7, needUpdate:Z
    :cond_2
    if-eqz v7, :cond_4

    .line 531
    invoke-static {}, Lcom/android/mms/data/Conversation;->getSeenContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v3, "(seen=0)"

    const/4 v4, 0x0

    invoke-virtual {v8, v9, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 532
    .local v6, affectedRows:I
    const-string v0, "Mms/Conversation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update seen for thread uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",affected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    .end local v6           #affectedRows:I
    .end local v7           #needUpdate:Z
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :cond_3
    :goto_1
    if-eqz p2, :cond_0

    .line 538
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 497
    .end local v1           #threadId:J
    .end local v9           #threadUri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 534
    .restart local v1       #threadId:J
    .restart local v7       #needUpdate:Z
    .restart local v8       #resolver:Landroid/content/ContentResolver;
    .restart local v9       #threadUri:Landroid/net/Uri;
    :cond_4
    :try_start_2
    const-string v0, "Mms/Conversation"

    const-string v3, "nothing to update seen"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 543
    .end local v7           #needUpdate:Z
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :cond_5
    const/16 v3, 0x80

    new-instance v4, Lcom/android/mms/data/Conversation$2;

    invoke-direct {v4, p0, v9, p2}, Lcom/android/mms/data/Conversation$2;-><init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;Z)V

    goto :goto_0

    .line 562
    :cond_6
    if-eqz p2, :cond_0

    .line 563
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public clearThreadId()V
    .locals 4

    .prologue
    .line 700
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearThreadId(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now zero"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation$Cache;->remove(J)V

    .line 703
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 704
    return-void
.end method

.method public clearThreadId(J)V
    .locals 3
    .parameter "threadId"

    .prologue
    const/4 v2, 0x0

    .line 709
    const-string v0, "Mms:app"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearThreadId old threadId was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " now zero"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    :cond_0
    iput-wide p1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 713
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation$Cache;->remove(J)V

    .line 714
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 715
    return-void
.end method

.method public declared-synchronized ensureThreadId()J
    .locals 4

    .prologue
    .line 688
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureThreadId(),before="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 694
    :cond_0
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureThreadId(),after="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 688
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 913
    monitor-enter p0

    if-nez p1, :cond_0

    .line 919
    :goto_0
    monitor-exit p0

    return v3

    .line 916
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/data/Conversation;

    move-object v2, v0

    .line 917
    .local v2, other:Lcom/android/mms/data/Conversation;
    iget-object v4, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    iget-object v5, v2, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v4, v5}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 918
    .end local v2           #other:Lcom/android/mms/data/Conversation;
    :catch_0
    move-exception v1

    .line 919
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 913
    .end local v1           #e:Ljava/lang/ClassCastException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getDate()J
    .locals 2

    .prologue
    .line 771
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mDate:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDisplayRecipientIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 798
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mDisplayRecipientIds:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessageCount()I
    .locals 1

    .prologue
    .line 779
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Conversation;->mMessageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecipientIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 802
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipientIds:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecipients()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    .line 735
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReplyAll()Z
    .locals 1

    .prologue
    .line 2169
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2170
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mReplyAll:Z

    .line 2171
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 793
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mSnippet:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getThreadId()J
    .locals 2

    .prologue
    .line 678
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTranslateMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 808
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mTranslateMode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getType()I
    .locals 1

    .prologue
    .line 2126
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Conversation;->mType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 785
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Conversation;->mUnreadMessageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 650
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 651
    const/4 v0, 0x0

    .line 653
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUriIncludingDrafts()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 658
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 659
    const/4 v0, 0x0

    .line 660
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "content://mms-sms/complete-conversations-including-drafts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasAttachment()Z
    .locals 1

    .prologue
    .line 832
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasAttachment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasDraft()Z
    .locals 5

    .prologue
    .line 742
    monitor-enter p0

    const/4 v0, 0x0

    .line 744
    .local v0, result:Z
    :try_start_0
    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 745
    const/4 v1, 0x0

    .line 749
    :goto_0
    monitor-exit p0

    return v1

    .line 747
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/util/DraftCache;->hasDraft(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    move v1, v0

    .line 749
    goto :goto_0

    .line 742
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hasError()Z
    .locals 1

    .prologue
    .line 839
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasPending()Z
    .locals 1

    .prologue
    .line 850
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasSending()Z
    .locals 1

    .prologue
    .line 846
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasSending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasUnreadMessages()Z
    .locals 1

    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasUnreadMessages:Z

    return v0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    .prologue
    .line 925
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAnonymousMsg()Z
    .locals 1

    .prologue
    .line 865
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsAnonymousMsg:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCbSms()Z
    .locals 1

    .prologue
    .line 854
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsCbSms:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCmasMsg()Z
    .locals 1

    .prologue
    .line 2148
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsCmas:Z

    return v0
.end method

.method public declared-synchronized isCmasPresidential(I)Z
    .locals 1
    .parameter "cmasServiceType"

    .prologue
    .line 2142
    monitor-enter p0

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 2143
    const/4 v0, 0x1

    .line 2144
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupMessage()Z
    .locals 1

    .prologue
    .line 2180
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2181
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mGroupMessage:Z

    .line 2182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isWapPushMessage()Z
    .locals 1

    .prologue
    .line 859
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsWapPushMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markAsRead()V
    .locals 3

    .prologue
    .line 574
    const-string v1, "Mms/Conversation"

    const-string v2, "markAsRead"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-boolean v1, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadWaiting:Z

    if-eqz v1, :cond_0

    .line 577
    const-string v1, "Mms/Conversation"

    const-string v2, "mMarkAsReadWaiting is true bail"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-boolean v1, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    if-eqz v1, :cond_1

    .line 584
    const-string v1, "Mms/Conversation"

    const-string v2, "mMarkAsReadBlocked is true bail and set mMarkAsReadWaiting ro true"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadWaiting:Z

    goto :goto_0

    .line 590
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 592
    .local v0, threadUri:Landroid/net/Uri;
    new-instance v1, Lcom/android/mms/data/Conversation$3;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/data/Conversation$3;-><init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/mms/data/Conversation$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public removeRecipient(Ljava/lang/String;)Z
    .locals 4
    .parameter "recipientName"

    .prologue
    const/4 v2, 0x0

    .line 2186
    iget-object v3, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    if-nez v3, :cond_1

    .line 2195
    :cond_0
    :goto_0
    return v2

    .line 2189
    :cond_1
    iget-object v3, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 2190
    .local v1, recipient:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2191
    iget-object v2, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2, v1}, Lcom/android/mms/data/ContactList;->remove(Ljava/lang/Object;)Z

    .line 2192
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public sameRecipient(Landroid/net/Uri;)Z
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 420
    const/4 v2, 0x0

    .line 421
    .local v2, result:Z
    iget-object v6, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    .line 422
    .local v3, size:I
    if-le v3, v4, :cond_0

    .line 423
    const/4 v2, 0x0

    .line 436
    :goto_0
    const-string v4, "Mms/Conversation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sameRecipient(),return="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return v2

    .line 424
    :cond_0
    if-nez p1, :cond_2

    .line 425
    if-nez v3, :cond_1

    move v2, v4

    :goto_1
    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    .line 426
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x2

    if-lt v4, v6, :cond_3

    .line 427
    const/4 v2, 0x0

    goto :goto_0

    .line 430
    :cond_3
    invoke-static {p1}, Lcom/android/mms/data/Conversation;->getRecipients(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, recipient:Ljava/lang/String;
    invoke-static {v1, v5, v5}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 433
    .local v0, incomingRecipient:Lcom/android/mms/data/ContactList;
    iget-object v4, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v4, v0}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public setDraftState(Z)V
    .locals 5
    .parameter "hasDraft"

    .prologue
    .line 756
    const-wide/16 v0, 0x0

    .line 757
    .local v0, threadId:J
    monitor-enter p0

    .line 758
    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 759
    monitor-exit p0

    .line 760
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 764
    :goto_0
    return-void

    .line 759
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 762
    :cond_0
    const-string v2, "Mms/Conversation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDraftState(),hasDraft="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    goto :goto_0
.end method

.method public setGroupMessage(Z)V
    .locals 0
    .parameter "groupMessage"

    .prologue
    .line 2175
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mGroupMessage:Z

    .line 2176
    return-void
.end method

.method public declared-synchronized setRecipients(Lcom/android/mms/data/ContactList;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 725
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 728
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    monitor-exit p0

    return-void

    .line 725
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setReplyAll(Z)V
    .locals 0
    .parameter "replyAll"

    .prologue
    .line 2164
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mReplyAll:Z

    .line 2165
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 930
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/mms/Log;->isPrintSecured()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 931
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 933
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "recipients:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", threadId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 934
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 936
    .end local v0           #sb:Ljava/lang/StringBuffer;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 930
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
