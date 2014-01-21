.class public Lcom/android/mms/transaction/SmsMessageSender;
.super Ljava/lang/Object;
.source "SmsMessageSender.java"

# interfaces
.implements Lcom/android/mms/transaction/MessageSender;


# static fields
.field private static final COLUMN_REPLY_PATH_PRESENT:I = 0x0

.field private static final COLUMN_SERVICE_CENTER:I = 0x1

.field private static final DEFAULT_DELIVERY_REPORT_MODE:Z = false

.field private static final SERVICE_CENTER_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/SmsMessageSender"

.field private static final URI_SMS_QUEUED:Landroid/net/Uri;


# instance fields
.field protected mCallbackNumber:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field private final mDests:[Ljava/lang/String;

.field protected mExpiry:I

.field protected mForcePending:Z

.field private mGroupId:J

.field private mLocked:Z

.field protected mMessageText:Ljava/lang/String;

.field protected final mNumberOfDests:I

.field private mOldGroupId:J

.field private mPriority:I

.field protected mPriorityLevel:I

.field protected mReplyPath:Z

.field private mRequestAppId:I

.field private mRequestMsgId:I

.field protected mServiceCenter:Ljava/lang/String;

.field protected mServiceType:I

.field protected mSmsSvcCmd:I

.field protected mSmsSvcCmdContent:Ljava/lang/String;

.field protected mThreadId:J

.field protected mTimestamp:J

.field protected mUserSelectedEncodingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const-string v0, "content://sms/queued"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/SmsMessageSender;->URI_SMS_QUEUED:Landroid/net/Uri;

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reply_path_present"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_center"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .parameter "context"
    .parameter "dests"
    .parameter "msgText"
    .parameter "threadId"

    .prologue
    const-wide/16 v7, 0x0

    const/16 v5, 0x81

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mReplyPath:Z

    .line 61
    const/16 v3, 0xff

    iput v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mExpiry:I

    .line 62
    iput v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceType:I

    .line 78
    iput-wide v7, p0, Lcom/android/mms/transaction/SmsMessageSender;->mOldGroupId:J

    .line 79
    iput-wide v7, p0, Lcom/android/mms/transaction/SmsMessageSender;->mGroupId:J

    .line 80
    iput v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestAppId:I

    .line 81
    iput v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestMsgId:I

    .line 83
    iput-boolean v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mLocked:Z

    .line 86
    iput v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mPriorityLevel:I

    .line 89
    iput v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSmsSvcCmd:I

    .line 90
    const-string v3, ""

    iput-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSmsSvcCmdContent:Ljava/lang/String;

    .line 111
    iput v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mPriority:I

    .line 120
    iput-object p1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    .line 122
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEmptySms()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p3, ""

    .end local p3
    :cond_0
    iput-object p3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 127
    :goto_0
    if-eqz p2, :cond_3

    .line 128
    array-length v3, p2

    iput v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    .line 129
    iget v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    .line 130
    iget-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    iget v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    invoke-static {p2, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    .line 137
    iput-wide p4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    .line 138
    iget-wide v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-direct {p0, v5, v6}, Lcom/android/mms/transaction/SmsMessageSender;->getOutgoingServiceCenter(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 140
    iget-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 143
    .local v1, prefs:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mUserSelectedEncodingType:I

    .line 151
    const-string v3, "pref_key_manage_smsc_address"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, smsc:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 153
    iput-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 157
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackEnabled(Landroid/content/SharedPreferences;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 158
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 159
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mCallbackNumber:Ljava/lang/String;

    .line 168
    :goto_2
    return-void

    .line 125
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    .end local v2           #smsc:Ljava/lang/String;
    .restart local p3
    :cond_2
    iput-object p3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    goto :goto_0

    .line 132
    .end local p3
    :cond_3
    iput v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    .line 133
    iput-object v4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    goto :goto_1

    .line 161
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    .restart local v2       #smsc:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, line1Number:Ljava/lang/String;
    if-nez v0, :cond_5

    move-object v0, v4

    .end local v0           #line1Number:Ljava/lang/String;
    :cond_5
    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mCallbackNumber:Ljava/lang/String;

    goto :goto_2

    .line 166
    :cond_6
    iput-object v4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mCallbackNumber:Ljava/lang/String;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0
    .parameter "context"
    .parameter "dests"
    .parameter "msgText"
    .parameter "threadId"
    .parameter "priority"

    .prologue
    .line 115
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .line 116
    iput p6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mPriority:I

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 0
    .parameter "context"
    .parameter "dests"
    .parameter "msgText"
    .parameter "threadId"
    .parameter "appId"
    .parameter "msgId"

    .prologue
    .line 106
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .line 107
    iput p6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestAppId:I

    .line 108
    iput p7, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestMsgId:I

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .parameter "context"
    .parameter "dests"
    .parameter "msgText"
    .parameter "threadId"
    .parameter "oldGroupId"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .line 101
    iput-wide p6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mOldGroupId:J

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0
    .parameter "context"
    .parameter "dests"
    .parameter "msgText"
    .parameter "threadId"
    .parameter "forcePending"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .line 95
    iput-boolean p6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mForcePending:Z

    .line 96
    return-void
.end method

.method private static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "extensionValues"

    .prologue
    const/4 v3, 0x0

    .line 438
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 439
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v1, "subject"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    if-eqz p5, :cond_0

    const-string v1, "date"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 443
    :cond_0
    const-string v2, "read"

    if-eqz p6, :cond_4

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 444
    if-eqz p7, :cond_1

    const-string v1, "status"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, p8, v1

    if-eqz v1, :cond_2

    const-string v1, "thread_id"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 446
    :cond_2
    const-string v1, "reserved"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 450
    if-eqz p10, :cond_3

    invoke-virtual {v0, p10}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 452
    :cond_3
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 443
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method private static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLandroid/content/ContentValues;I)Landroid/net/Uri;
    .locals 4
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "extensionValues"
    .parameter "priority"

    .prologue
    const/4 v3, 0x0

    .line 497
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 498
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v1, "subject"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    if-eqz p5, :cond_0

    const-string v1, "date"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 502
    :cond_0
    const-string v2, "read"

    if-eqz p6, :cond_4

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 503
    if-eqz p7, :cond_1

    const-string v1, "status"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, p8, v1

    if-eqz v1, :cond_2

    const-string v1, "thread_id"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 505
    :cond_2
    const-string v1, "reserved"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 508
    if-eqz p10, :cond_3

    invoke-virtual {v0, p10}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 510
    :cond_3
    const-string v1, "pri"

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 512
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 502
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method private static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLandroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 3
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "extensionValues"
    .parameter "mForcePending"

    .prologue
    .line 467
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 468
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v1, "subject"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    if-eqz p5, :cond_0

    const-string v1, "date"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 472
    :cond_0
    const-string v2, "read"

    if-eqz p6, :cond_4

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 473
    if-eqz p7, :cond_1

    const-string v1, "status"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 474
    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, p8, v1

    if-eqz v1, :cond_2

    const-string v1, "thread_id"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 475
    :cond_2
    const-string v1, "reserved"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    const-string v2, "roam_pending"

    if-eqz p11, :cond_5

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 480
    if-eqz p10, :cond_3

    invoke-virtual {v0, p10}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 482
    :cond_3
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 472
    :cond_4
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 477
    :cond_5
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method

.method private static getBGSenderValues(JI)Landroid/content/ContentValues;
    .locals 3
    .parameter "appId"
    .parameter "msgID"

    .prologue
    .line 395
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 396
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "app_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 397
    const-string v1, "msg_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    return-object v0
.end method

.method private static getCallbackValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .parameter "callbackNumber"

    .prologue
    .line 403
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 404
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "callback_number"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-object v0
.end method

.method private static getGroupValues(JI)Landroid/content/ContentValues;
    .locals 3
    .parameter "groupId"
    .parameter "hidden"

    .prologue
    .line 384
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 385
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "group_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 386
    const-string v1, "hidden"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    return-object v0
.end method

.method private static getKTSMSDeliveryReadReportValues(ILjava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter "svcCmd"
    .parameter "svcCmdContent"

    .prologue
    .line 416
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 417
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "svc_cmd"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 418
    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    .line 419
    const-string v1, "hidden"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 422
    const-string v1, "svc_cmd_content"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_1
    return-object v0
.end method

.method private static getLockedValues(Z)Landroid/content/ContentValues;
    .locals 3
    .parameter "locked"

    .prologue
    .line 410
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 411
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "locked"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 412
    return-object v0
.end method

.method private getOutgoingServiceCenter(J)Ljava/lang/String;
    .locals 11
    .parameter "threadId"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 525
    const/4 v7, 0x0

    .line 529
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 535
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 542
    :cond_0
    if-eqz v7, :cond_1

    .line 543
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v9

    :cond_2
    :goto_0
    return-object v0

    .line 539
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v8, v0, :cond_4

    .line 540
    .local v8, replyPathPresent:Z
    :goto_1
    if-eqz v8, :cond_5

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 542
    :goto_2
    if-eqz v7, :cond_2

    .line 543
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #replyPathPresent:Z
    :cond_4
    move v8, v10

    .line 539
    goto :goto_1

    .restart local v8       #replyPathPresent:Z
    :cond_5
    move-object v0, v9

    .line 540
    goto :goto_2

    .line 542
    .end local v8           #replyPathPresent:Z
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 543
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private queueMessage(J)Z
    .locals 18
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    if-nez v1, :cond_1

    .line 214
    :cond_0
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Null message body or dest."

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEmoji()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->convertCharToSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 222
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableKoreanSpecialCharacter()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/util/TelephonyUtils;->convertCharaterforKOR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 225
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 226
    .local v16, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_sms_delivery_reports"

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 230
    .local v8, requestDeliveryReport:Z
    const/16 v17, 0x0

    .line 232
    .local v17, uri:Landroid/net/Uri;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 233
    .local v11, extensionValues:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mCallbackNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mCallbackNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/transaction/SmsMessageSender;->getCallbackValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 234
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestAppId:I

    if-lez v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestMsgId:I

    if-lez v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestAppId:I

    int-to-long v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestMsgId:I

    invoke-static {v1, v2, v3}, Lcom/android/mms/transaction/SmsMessageSender;->getBGSenderValues(JI)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 236
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mLocked:Z

    invoke-static {v1}, Lcom/android/mms/transaction/SmsMessageSender;->getLockedValues(Z)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 238
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 239
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 240
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSmsSvcCmd:I

    if-lez v1, :cond_6

    .line 241
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSmsSvcCmd:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSmsSvcCmdContent:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/mms/transaction/SmsMessageSender;->getKTSMSDeliveryReadReportValues(ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 247
    :cond_6
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRoamGuard()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/SmsMessageSender;->URI_SMS_QUEUED:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/mms/transaction/SmsMessageSender;->mForcePending:Z

    invoke-static/range {v1 .. v12}, Lcom/android/mms/transaction/SmsMessageSender;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLandroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v17

    .line 285
    :goto_0
    if-eqz v17, :cond_7

    .line 286
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mGroupId:J

    .line 288
    :cond_7
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mGroupId:J

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/mms/transaction/SmsMessageSender;->getGroupValues(JI)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_8

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mOldGroupId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_9

    .line 295
    :cond_8
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mGroupId:J

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mOldGroupId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/SmsMessageSender;->updateGroupSms(JJ)V

    .line 297
    :cond_9
    const/4 v14, 0x1

    .local v14, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    if-ge v14, v1, :cond_d

    .line 305
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    .line 306
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/SmsMessageSender;->URI_SMS_QUEUED:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/transaction/SmsMessageSender;->mPriorityLevel:I

    invoke-static/range {v1 .. v12}, Lcom/android/mms/transaction/SmsMessageSender;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLandroid/content/ContentValues;I)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 260
    .end local v14           #i:I
    :cond_a
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/SmsMessageSender;->URI_SMS_QUEUED:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/transaction/SmsMessageSender;->mPriorityLevel:I

    invoke-static/range {v1 .. v12}, Lcom/android/mms/transaction/SmsMessageSender;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLandroid/content/ContentValues;I)Landroid/net/Uri;

    move-result-object v17

    goto/16 :goto_0

    .line 273
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/SmsMessageSender;->URI_SMS_QUEUED:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-static/range {v1 .. v11}, Lcom/android/mms/transaction/SmsMessageSender;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLandroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v17

    goto/16 :goto_0

    .line 290
    :catch_0
    move-exception v13

    .line 291
    .local v13, e:Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v1, v13}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto/16 :goto_1

    .line 319
    .end local v13           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v14       #i:I
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/SmsMessageSender;->URI_SMS_QUEUED:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-static/range {v1 .. v11}, Lcom/android/mms/transaction/SmsMessageSender;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLandroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 330
    :catch_1
    move-exception v13

    .line 331
    .restart local v13       #e:Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v1, v13}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto/16 :goto_3

    .line 338
    .end local v13           #e:Landroid/database/sqlite/SQLiteException;
    :cond_d
    new-instance v15, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v15, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    .local v15, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mForcePending:Z

    if-eqz v1, :cond_e

    const-string v1, "AutoSendWhenInDomesticCoverage"

    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 341
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 343
    const/4 v1, 0x0

    return v1
.end method

.method private updateGroupSms(JJ)V
    .locals 7
    .parameter "groupId"
    .parameter "oldGroupId"

    .prologue
    const/4 v6, 0x0

    .line 194
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 195
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    const-string v2, "group_type"

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 200
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    .line 201
    const-string v2, "group_type"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 202
    const-string v2, "hidden"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(group_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND type!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, selection:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 207
    .end local v0           #selection:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public queueMessageForPending(J)Z
    .locals 14
    .parameter "threadId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    if-nez v0, :cond_1

    .line 351
    :cond_0
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Null message body or dest."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 355
    .local v13, prefs:Landroid/content/SharedPreferences;
    const-string v0, "pref_key_sms_delivery_reports"

    const/4 v1, 0x0

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 359
    .local v7, requestDeliveryReport:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    iget v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    if-ge v11, v0, :cond_2

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/queued"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v11

    iget-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    iget-wide v8, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-static/range {v0 .. v9}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 367
    :catch_0
    move-exception v10

    .line 368
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v0, v10}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1

    .line 372
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :cond_2
    new-instance v12, Landroid/content/Intent;

    const-string v0, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    .local v12, intent:Landroid/content/Intent;
    const-string v0, "AutoSendWhenInDomesticCoverage"

    const/4 v1, 0x1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 377
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(J)Z
    .locals 1
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsMessageSender;->queueMessage(J)Z

    move-result v0

    return v0
.end method

.method public setLocked(Z)V
    .locals 0
    .parameter "locked"

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mLocked:Z

    .line 175
    return-void
.end method

.method public setPriorityLevel(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 550
    iput p1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mPriorityLevel:I

    .line 551
    return-void
.end method

.method public setServiceCommand(ILjava/lang/String;)V
    .locals 0
    .parameter "svcCmd"
    .parameter "svcCmdContent"

    .prologue
    .line 178
    iput p1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSmsSvcCmd:I

    .line 179
    iput-object p2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSmsSvcCmdContent:Ljava/lang/String;

    .line 180
    return-void
.end method
