.class public Lcom/android/mms/transaction/SmsReceiverService;
.super Landroid/app/Service;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/SmsReceiverService$HeadsetEventReceiver;,
        Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_SEND_MESSAGE:Ljava/lang/String; = "com.android.mms.transaction.SEND_MESSAGE"

.field private static final ADDRESS_TRANSLATION_FAILURE_S:I = 0x1

.field private static final ADDRESS_VACANT_S:I = 0x0

.field private static final CB_MY_CHANNEL_MAX_COUNT_PREFIXED:I = 0x3e8

.field public static final CLASS_ZERO_BODY_KEY:Ljava/lang/String; = "CLASS_ZERO_BODY"

.field public static final DELIM:Ljava/lang/String; = "/"

.field public static final EXTRA_LAST_SENT_MSG:Ljava/lang/String; = "LastSentMsg"

.field public static final EXTRA_MESSAGE_SENT_SEND_NEXT:Ljava/lang/String; = "SendNextMsg"

.field public static final EXTRA_MESSAGE_SENT_SMS_READCONFIRM_MSG:Ljava/lang/String; = "SmsReadConfirmMsg"

.field public static final EXTRA_SEND_MESSAGE_INTERNATIONAL_ROAM:Ljava/lang/String; = "AutoSendWhenInDomesticCoverage"

.field private static final GROUP_SEND_LAST:I = 0x2

.field private static final GROUP_SEND_MORE:I = 0x1

.field private static final GROUP_SEND_SINGLE:I = 0x0

.field private static final GROUP_SMS_COLUMN_GROUP_ID:I = 0x1

.field private static final GROUP_SMS_COLUMN_TYPE:I = 0x0

.field public static final MESSAGE_SENT_ACTION:Ljava/lang/String; = "com.android.mms.transaction.MESSAGE_SENT"

.field private static final NETWORK_RESOURCE_SHORTAGE_S:I = 0x2

.field private static final NO_ACK:I = 0x22

.field private static final OTHER_GENERAL_PROBLEMS_MORE_FIRST_S:I = 0x6c

.field private static final OTHER_NETWORK_PROBLEM_MORE_LAST_S:I = 0x1f

.field public static final PROPERTY_IMS_REGISTERED:Ljava/lang/String; = "persist.sys.ims.reg"

.field private static final REPLACE_COLUMN_ID:I = 0x0

.field private static final REPLACE_PROJECTION:[Ljava/lang/String; = null

.field private static final SAFETY_MESSAGE_KIDS_SAFE_ADDRESS:Ljava/lang/String; = "address"

.field private static final SAFETY_MESSAGE_SEND_KIDS_SAFE:Ljava/lang/String; = "android.intent.action.SAFETY_MESSAGE_SEND_KIDS_SAFE"

.field private static final SEND_COLUMN_ADDRESS:I = 0x2

.field private static final SEND_COLUMN_BODY:I = 0x3

.field private static final SEND_COLUMN_CALLBACK_NUMBER:I = 0x5

.field private static final SEND_COLUMN_GROUP_ID:I = 0x6

.field private static final SEND_COLUMN_ID:I = 0x0

.field private static final SEND_COLUMN_PRIORITY:I = 0x6

.field private static final SEND_COLUMN_STATUS:I = 0x4

.field private static final SEND_COLUMN_SVC_CMD:I = 0x7

.field private static final SEND_COLUMN_SVC_CMD_CONTENT:I = 0x8

.field private static final SEND_COLUMN_THREAD_ID:I = 0x1

.field private static final SEND_PROJECTION:[Ljava/lang/String; = null

.field private static final SEND_PROJECTION_FOR_SVC_CMD:[Ljava/lang/String; = null

.field private static final SEND_PROJECTION_ROAMGUARD:[Ljava/lang/String; = null

.field private static final SMS_ORIGINATION_DENIED_S:I = 0x61

.field private static final TAG:Ljava/lang/String; = "Mms/SmsReceiverService"

.field private static final TELESERVICE_LGT_ETC_SHARE_49162:I = 0xc00a

.field private static final TELESERVICE_LGT_WAP_URL_NOTI_49166:I = 0xc00e

.field private static final TELESERVICE_LGT_WAP_URL_NOTI_49167:I = 0xc00f

.field private static final TELESERVICE_LGT_WAP_URL_NOTI_49168:I = 0xc010

.field private static final TERMINATION_DENIED_S:I = 0x62

.field private static final USER_DATA_SIZE_ERROR_S:I = 0x64

.field private static isNumberVIP:Z

.field public static lastFailedMsdId:J

.field private static mSending:Z

.field public static sRetryCount:I


# instance fields
.field private final GROUP_SMS_PROJECTION:[Ljava/lang/String;

.field private mCausecode:I

.field private mGroupSendingStatus:I

.field private mMessage:Ljava/lang/String;

.field mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecipient:Ljava/lang/String;

.field private mResultCode:I

.field private mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field public mSveConnected:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mToastHandler:Landroid/os/Handler;

.field private myService:Lcom/tencent/engine/IEngineService;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field protected userSelectedEncodingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    sput-boolean v3, Lcom/android/mms/transaction/SmsReceiverService;->isNumberVIP:Z

    .line 150
    sput v3, Lcom/android/mms/transaction/SmsReceiverService;->sRetryCount:I

    .line 153
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "status"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "roam_pending"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION_ROAMGUARD:[Ljava/lang/String;

    .line 164
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "status"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    .line 175
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "status"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "group_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "svc_cmd"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "svc_cmd_content"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION_FOR_SVC_CMD:[Ljava/lang/String;

    .line 190
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/mms/transaction/SmsReceiverService;->lastFailedMsdId:J

    .line 1396
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "protocol"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 122
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 188
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    .line 234
    iput-boolean v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mSveConnected:Z

    .line 235
    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->myService:Lcom/tencent/engine/IEngineService;

    .line 236
    new-instance v0, Lcom/android/mms/transaction/SmsReceiverService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/SmsReceiverService$1;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->serviceConnection:Landroid/content/ServiceConnection;

    .line 251
    new-instance v0, Lcom/android/mms/transaction/SmsReceiverService$HeadsetEventReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/transaction/SmsReceiverService$HeadsetEventReceiver;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Lcom/android/mms/transaction/SmsReceiverService$1;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 682
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "type"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "group_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->GROUP_SMS_PROJECTION:[Ljava/lang/String;

    .line 2081
    new-instance v0, Lcom/android/mms/transaction/SmsReceiverService$6;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/SmsReceiverService$6;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    .line 2120
    return-void
.end method

.method private EncodeNonGSMCharater(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "msgText"

    .prologue
    .line 2170
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v7

    iput v7, p0, Lcom/android/mms/transaction/SmsReceiverService;->userSelectedEncodingType:I

    .line 2172
    iget v7, p0, Lcom/android/mms/transaction/SmsReceiverService;->userSelectedEncodingType:I

    if-nez v7, :cond_5

    .line 2174
    move-object v0, p1

    .line 2175
    .local v0, Tempbuff:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2177
    .local v4, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 2178
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2180
    .local v6, v:C
    const/16 v7, 0x3130

    if-ge v7, v6, :cond_0

    const/16 v7, 0x318d

    if-lt v6, v7, :cond_1

    :cond_0
    const v7, 0xabff

    if-ge v7, v6, :cond_2

    const v7, 0xd7a4

    if-ge v6, v7, :cond_2

    .line 2181
    :cond_1
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/mms/transaction/SmsReceiverService;->userSelectedEncodingType:I

    move-object v2, p1

    .line 2196
    .end local v0           #Tempbuff:Ljava/lang/String;
    .end local v1           #i:I
    .end local v4           #stringBuilder:Ljava/lang/StringBuilder;
    .end local v6           #v:C
    .end local p1
    .local v2, msgText:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 2184
    .end local v2           #msgText:Ljava/lang/String;
    .restart local v0       #Tempbuff:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v4       #stringBuilder:Ljava/lang/StringBuilder;
    .restart local v6       #v:C
    .restart local p1
    :cond_2
    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->convertEachCharacter(C)C

    move-result v5

    .line 2185
    .local v5, temp:C
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 2186
    .local v3, s:Ljava/lang/StringBuffer;
    const v7, 0xfeff

    if-ne v7, v5, :cond_3

    .line 2188
    const/16 v5, 0x3f

    .line 2189
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Unavialable to show"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2192
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2194
    .end local v3           #s:Ljava/lang/StringBuffer;
    .end local v5           #temp:C
    .end local v6           #v:C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v0           #Tempbuff:Ljava/lang/String;
    .end local v1           #i:I
    .end local v4           #stringBuilder:Ljava/lang/StringBuilder;
    :cond_5
    move-object v2, p1

    .line 2196
    .end local p1
    .restart local v2       #msgText:Ljava/lang/String;
    goto :goto_1
.end method

.method public static FilterCLRF(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "source"

    .prologue
    .line 1813
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 1814
    .local v1, i:I
    const/4 v0, 0x0

    .line 1815
    .local v0, count:I
    add-int/lit8 v3, v1, 0x1

    .line 1817
    .local v3, total:I
    :goto_0
    if-lez v1, :cond_1

    .line 1818
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 1819
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1822
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1825
    :cond_1
    const/4 v4, 0x0

    sub-int v5, v3, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1826
    .local v2, ret:Ljava/lang/String;
    return-object v2
.end method

.method static synthetic access$002(Lcom/android/mms/transaction/SmsReceiverService;Lcom/tencent/engine/IEngineService;)Lcom/tencent/engine/IEngineService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService;->myService:Lcom/tencent/engine/IEngineService;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForSetCbReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForGetCbReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleCbSettingsAvailable()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSIMStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsServiceCenter(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Context;[Landroid/telephony/SmsMessage;IZLjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 122
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/transaction/SmsReceiverService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handlePCWLockMessage(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/transaction/SmsReceiverService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mCausecode:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mRecipient:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/transaction/SmsReceiverService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->sendPCWLockMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/SmsReceiverService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->isRoamGuardPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleSendMessage()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleRoamingStatusChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsCbReceived(Landroid/content/Intent;)V

    return-void
.end method

.method private clearCBMessages()V
    .locals 5

    .prologue
    .line 1977
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "read= 0 and protocol= 5"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1979
    return-void
.end method

.method private displayClassZeroMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "msgs"
    .parameter "format"

    .prologue
    .line 1785
    const/4 v5, 0x0

    aget-object v3, p2, v5

    .line 1787
    .local v3, sms:Landroid/telephony/SmsMessage;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1788
    .local v0, body:Ljava/lang/StringBuilder;
    array-length v2, p2

    .line 1790
    .local v2, pduCount:I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 1791
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "pdu"

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "format"

    invoke-virtual {v5, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "body"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x1800

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 1808
    .local v4, smsDialogIntent:Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1809
    return-void

    .line 1793
    .end local v4           #smsDialogIntent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1794
    aget-object v3, p2, v1

    .line 1795
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 6
    .parameter "sms"

    .prologue
    const/4 v2, 0x0

    .line 1722
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1725
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "ril.sms.gcf-mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1727
    .local v0, GcfMode:Ljava/lang/String;
    const-string v3, "On"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1728
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1729
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms.getOriginatingAddress() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    const-string v3, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsServerTime()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1751
    const-string v3, "date"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1760
    :goto_1
    const-string v3, "date_sent"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1761
    const-string v3, "protocol"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1762
    const-string v3, "read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1763
    const-string v3, "seen"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1764
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1765
    const-string v3, "subject"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1769
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractContentValues priority = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessagePriority()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    const-string v3, "pri"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessagePriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1773
    :cond_1
    const-string v3, "reply_path_present"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1774
    const-string v2, "service_center"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    return-object v1

    .line 1732
    :cond_3
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms.getDisplayOriginatingAddress(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    const-string v3, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1738
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1739
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1740
    const-string v3, "address"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1742
    :cond_5
    const-string v3, "address"

    const v4, 0x7f0c013b

    invoke-virtual {p0, v4}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1745
    :cond_6
    const-string v3, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1755
    :cond_7
    const-string v3, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1
.end method

.method private handleBootCompleted()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1314
    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "handleBootCompleted()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    invoke-direct {p0, v8}, Lcom/android/mms/transaction/SmsReceiverService;->handlePCWLockMessage(Z)V

    .line 1331
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1332
    invoke-static {}, Lcom/android/mms/data/Conversation;->deleteTempConversation()V

    .line 1339
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->moveOutboxMessagesToFailedBox()I

    move-result v0

    .line 1340
    .local v0, numMoved:I
    if-lez v0, :cond_1

    .line 1341
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 1345
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 1353
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 1354
    const-wide/16 v4, -0x3

    invoke-static {p0, v4, v5, v9}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1358
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSegmentedSms()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 1359
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    .line 1360
    .local v3, smsManager:Landroid/telephony/SmsManager;
    const-class v4, Landroid/telephony/SmsManager;

    const-string v5, "setCDMASmsReassembly"

    new-array v6, v8, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1361
    .local v1, setCDMASmsReassembly:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_2

    .line 1362
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1363
    .local v2, sharedpref:Landroid/content/SharedPreferences;
    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "pref_key_sms_reassembly"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v1, v4}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    .end local v1           #setCDMASmsReassembly:Ljava/lang/reflect/Method;
    .end local v2           #sharedpref:Landroid/content/SharedPreferences;
    .end local v3           #smsManager:Landroid/telephony/SmsManager;
    :cond_2
    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "handleBootCompleted()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    return-void

    .line 1356
    :cond_3
    const-wide/16 v4, -0x1

    invoke-static {p0, v4, v5, v9}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    goto :goto_0
.end method

.method private handleCbSettingsAvailable()V
    .locals 15

    .prologue
    .line 1883
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v11

    .line 1884
    .local v11, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1885
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1886
    .local v9, sharedpref:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1890
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v11}, Landroid/telephony/SmsManager;->getCbSettings()Landroid/telephony/gsm/CbConfig;

    move-result-object v0

    .line 1891
    .local v0, cbConfig:Landroid/telephony/gsm/CbConfig;
    if-nez v0, :cond_2

    .line 1892
    const-string v12, "Mms/SmsReceiverService"

    const-string v13, "smsManager.getCbSettings() = null."

    invoke-static {v12, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    const/16 v10, 0x3e8

    .line 1924
    .local v10, simChMaxCount:I
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;)[S

    move-result-object v8

    .line 1925
    .local v8, myChIDs:[S
    const-string v12, "pref_cb_my_channel_enabled_count"

    array-length v13, v8

    invoke-interface {v5, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1926
    const-string v12, "pref_cb_my_channel_max_count"

    invoke-interface {v5, v12, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1927
    const-string v12, "pref_sim_ready_status"

    const/4 v13, 0x1

    invoke-interface {v5, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1928
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1930
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 1931
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->isSimCardChanged()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1932
    const-string v12, "Mms/SmsReceiverService"

    const-string v13, "SIMCard Is changed"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->resetCmasSettings(Landroid/content/Context;)V

    .line 1937
    :cond_1
    invoke-static {v1, v9}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 1938
    return-void

    .line 1896
    .end local v8           #myChIDs:[S
    .end local v10           #simChMaxCount:I
    :cond_2
    iget-char v10, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    .line 1897
    .restart local v10       #simChMaxCount:I
    invoke-static {v1}, Lcom/android/mms/ui/ChannelUtils;->getChannels(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v4

    .line 1898
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_0

    .line 1899
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1900
    .local v2, curChCount:I
    invoke-static {v1}, Lcom/android/mms/ui/ChannelUtils;->getCheckedCount(Landroid/content/Context;)I

    move-result v3

    .line 1902
    .local v3, curCheckedChCount:I
    :try_start_0
    const-string v12, "Mms/SmsReceiverService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "curChCount = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "curCheckedChCount = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    const-string v12, "Mms/SmsReceiverService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "simChMaxCount = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "cbConfig.msgIdCount = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    iget v12, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    add-int/2addr v12, v3

    if-le v12, v10, :cond_3

    .line 1905
    invoke-static {v1}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;)[S

    move-result-object v8

    .line 1906
    .restart local v8       #myChIDs:[S
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    if-ge v7, v2, :cond_3

    .line 1907
    aget-short v12, v8, v7

    const/4 v13, 0x0

    invoke-static {v1, v12, v13}, Lcom/android/mms/ui/ChannelUtils;->updateSubscription(Landroid/content/Context;II)V

    .line 1906
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1910
    .end local v7           #j:I
    .end local v8           #myChIDs:[S
    :cond_3
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    iget v12, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-ge v6, v12, :cond_5

    .line 1911
    iget-object v12, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v12, v12, v6

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/android/mms/ui/ChannelUtils;->isChannelAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1912
    iget-object v12, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v12, v12, v6

    const/4 v13, 0x1

    invoke-static {v1, v12, v13}, Lcom/android/mms/ui/ChannelUtils;->updateSubscription(Landroid/content/Context;II)V

    .line 1910
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1914
    :cond_4
    iget-object v12, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v12, v12, v6

    const/4 v13, 0x1

    invoke-static {v1, v12, v13}, Lcom/android/mms/ui/ChannelUtils;->addChannel(Landroid/content/Context;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1919
    .end local v6           #i:I
    :catchall_0
    move-exception v12

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v12

    .restart local v6       #i:I
    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private handleErrCodeForGetCbReceived(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1965
    const-string v2, "getRsp"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 1967
    .local v0, messages:Ljava/io/Serializable;
    instance-of v2, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1968
    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1969
    .local v1, result:Lcom/android/internal/telephony/CommandException;
    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    .end local v1           #result:Lcom/android/internal/telephony/CommandException;
    :goto_0
    return-void

    .line 1971
    :cond_0
    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "[CB] error code = Unknown Object received "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleErrCodeForSetCbReceived(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1872
    const-string v2, "setRsp"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 1874
    .local v0, messages:Ljava/io/Serializable;
    instance-of v2, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1875
    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1876
    .local v1, result:Lcom/android/internal/telephony/CommandException;
    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    .end local v1           #result:Lcom/android/internal/telephony/CommandException;
    :goto_0
    return-void

    .line 1878
    :cond_0
    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "[CB] error code = Unknown Object received "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlePCWLockMessage(Z)V
    .locals 4
    .parameter "isBootComplete"

    .prologue
    .line 2102
    const/16 v0, 0x14

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_pcw_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2104
    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PCW LOCK. Send Lock message. BootComplete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_pcw_phone"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mRecipient:Ljava/lang/String;

    .line 2108
    if-eqz p1, :cond_1

    .line 2109
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c018c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;

    .line 2115
    :goto_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2116
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2118
    :cond_0
    return-void

    .line 2111
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c018b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleRoamingStatusChanged(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 550
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "ACTION_ROAMING_STATUS_CHANGED : "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    sget-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    if-nez v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 555
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/RoamStatusChangeReceiver;->unRegisterForRoamingStatusChanges(Landroid/content/Context;)V

    .line 556
    return-void
.end method

.method private handleSIMStatus(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 1941
    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "handleSIMStatus()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    .line 1944
    .local v1, cscFeature:Lcom/sec/android/app/CscFeature;
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1945
    .local v3, sharedpref:Landroid/content/SharedPreferences;
    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1947
    .local v0, SIM_STATUS:Ljava/lang/String;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1949
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSIMStatus(): SIM_STATUS = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    const-string v4, "ABSENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1951
    const-string v4, "pref_sim_ready_status"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1952
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1962
    :cond_0
    :goto_0
    return-void

    .line 1953
    :cond_1
    const-string v4, "READY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1954
    const-string v4, "pref_sim_ready_status"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1955
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1956
    :cond_2
    const-string v4, "LOADED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1958
    const-string v4, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1959
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Lcom/android/mms/MmsConfig;->setContactMatchCliDigit(I)V

    goto :goto_0
.end method

.method private handleSendMessage()V
    .locals 3

    .prologue
    .line 560
    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendMessage mSending = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    sget-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    if-nez v0, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 564
    :cond_0
    return-void
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 539
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 540
    .local v0, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 541
    sget-boolean v1, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    if-nez v1, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 545
    :cond_0
    return-void
.end method

.method private handleSharingTidMessage(Landroid/telephony/SmsMessage;)Z
    .locals 6
    .parameter "sms"

    .prologue
    .line 2201
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getSharedCmd()Ljava/lang/String;

    move-result-object v3

    .line 2202
    .local v3, cmd:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getSharedAppId()Ljava/lang/String;

    move-result-object v0

    .line 2203
    .local v0, appId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2204
    .local v2, bHandled:Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_1

    .line 2205
    :cond_0
    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "discard sharing tid message~~! invalid appId"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    const/4 v2, 0x1

    .line 2231
    :goto_0
    return v2

    .line 2208
    :cond_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 2209
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2210
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.lgt.action.APM_START_APP"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2211
    .local v1, autoUpIntent:Landroid/content/Intent;
    const-string v4, "tid"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTeleserviceId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2212
    const-string v4, "message"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2213
    const-string v4, "cmd"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2214
    const-string v4, "appId"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2215
    const-string v4, "payload"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getSharedPayLoad()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2217
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2218
    const/4 v2, 0x1

    .line 2219
    goto :goto_0

    .end local v1           #autoUpIntent:Landroid/content/Intent;
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 2220
    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "discard sharing tid message~~! unsupported cmd"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    const/4 v2, 0x1

    goto :goto_0

    .line 2223
    :cond_3
    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "save sharing tid message~~!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2226
    :cond_4
    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "discard sharing tid message~~! cmd is invalid"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private handleSmsCbReceived(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    .line 1850
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1851
    .local v3, sharedpref:Landroid/content/SharedPreferences;
    const-string v6, "pref_key_cb_settings_activation"

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1852
    .local v0, activation:Z
    const-string v6, "Mms/SmsReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MmsConfig.getEnableCBMessage()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBMessage()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBMessage()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1868
    :cond_0
    :goto_0
    return-void

    .line 1856
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1857
    .local v1, extras:Landroid/os/Bundle;
    if-nez v1, :cond_2

    .line 1858
    const-string v6, "Mms/SmsReceiverService"

    const-string v7, "received SMS_CB_RECEIVED_ACTION with no extras!"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1862
    :cond_2
    invoke-direct {p0, p0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->storeCbMessage(Landroid/content/Context;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v2

    .line 1864
    .local v2, messageUri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 1865
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getSmsThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v4

    .line 1866
    .local v4, threadId:J
    invoke-static {p0, v4, v5, v9}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    goto :goto_0
.end method

.method private handleSmsReceived(Landroid/content/Intent;I)V
    .locals 28
    .parameter "intent"
    .parameter "error"

    .prologue
    .line 1107
    const-string v3, "Mms/SmsReceiverService"

    const-string v4, "handleSmsReceived()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v5

    .line 1109
    .local v5, msgs:[Landroid/telephony/SmsMessage;
    const-string v3, "format"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1110
    .local v7, format:Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v10

    .line 1112
    .local v10, body:Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v21, v5, v3

    .line 1114
    .local v21, sms:Landroid/telephony/SmsMessage;
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSmsReceived() - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1118
    const/16 v18, 0x0

    .line 1119
    .local v18, nTP_PID:I
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v18

    .line 1121
    sparse-switch v18, :sswitch_data_0

    .line 1137
    .end local v18           #nTP_PID:I
    :cond_0
    new-instance v17, Lcom/android/mms/transaction/MTMessageParser;

    invoke-direct/range {v17 .. v17}, Lcom/android/mms/transaction/MTMessageParser;-><init>()V

    .line 1138
    .local v17, mtparser:Lcom/android/mms/transaction/MTMessageParser;
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/transaction/MTMessageParser;->messageParser(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1311
    .end local v17           #mtparser:Lcom/android/mms/transaction/MTMessageParser;
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 1143
    .restart local v17       #mtparser:Lcom/android/mms/transaction/MTMessageParser;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isAllowTextMessaging(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1144
    const-string v3, "Mms/SmsReceiverService"

    const-string v4, "Discard SMS by IT Policy"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1148
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1150
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/mms/util/SecurityMailboxUtils;->isNumberInVIPList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/mms/transaction/SmsReceiverService;->isNumberVIP:Z

    .line 1151
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNumberVIP = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v6, Lcom/android/mms/transaction/SmsReceiverService;->isNumberVIP:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    sget-boolean v3, Lcom/android/mms/transaction/SmsReceiverService;->isNumberVIP:Z

    if-nez v3, :cond_1

    .line 1158
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsDiscardPrefix()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    if-eqz v10, :cond_5

    .line 1159
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsDiscardPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1160
    const-string v3, "Mms/SmsReceiverService"

    const-string v4, "discard sms body by prefix"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1166
    :cond_5
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v3

    sget-object v4, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v3, v4, :cond_6

    .line 1167
    new-instance v12, Landroid/content/Intent;

    const-string v3, "android.intent.action.REFRESH_SIM_LIST"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1168
    .local v12, class2Intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1171
    .end local v12           #class2Intent:Landroid/content/Intent;
    :cond_6
    const/16 v19, 0x0

    .line 1172
    .local v19, number:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsSupportReplyAddress()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1173
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v19

    .line 1177
    :goto_1
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v23

    .line 1178
    .local v23, text:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1190
    .local v8, isSpam:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 1191
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-static {v3, v0, v1}, Lcom/android/mms/ui/MessageUtils;->SpamMessageFilterForVIPMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 1221
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v8, :cond_7

    .line 1222
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "messageblock_mode"

    const/4 v6, 0x2

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 1223
    .local v9, blockMessageMode:I
    const/4 v11, 0x0

    .line 1225
    .local v11, checkSpam:I
    if-eqz v9, :cond_7

    .line 1226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsReceiverService;->myService:Lcom/tencent/engine/IEngineService;

    if-eqz v3, :cond_7

    .line 1228
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsReceiverService;->myService:Lcom/tencent/engine/IEngineService;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v3, v0, v1}, Lcom/tencent/engine/IEngineService;->getInterceptResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 1230
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1suggestion after: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    :goto_3
    const/4 v3, 0x1

    if-ne v11, v3, :cond_7

    .line 1236
    const/4 v8, 0x1

    .line 1242
    .end local v9           #blockMessageMode:I
    .end local v11           #checkSpam:I
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1243
    const/16 v22, 0x0

    .line 1245
    .local v22, teleserviceId:I
    const-string v3, "3gpp2"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1246
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getTeleserviceId()I

    move-result v22

    .line 1254
    :cond_8
    :goto_4
    const v3, 0xc00a

    move/from16 v0, v22

    if-ne v0, v3, :cond_11

    .line 1255
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSharingTidMessage(Landroid/telephony/SmsMessage;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1256
    const-string v3, "Mms/SmsReceiverService"

    const-string v4, "handleSharingTidMessage handled~!"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1175
    .end local v8           #isSpam:Z
    .end local v22           #teleserviceId:I
    .end local v23           #text:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    .line 1195
    .restart local v8       #isSpam:Z
    .restart local v23       #text:Ljava/lang/String;
    :cond_a
    array-length v15, v5

    .line 1196
    .local v15, lenghOfSms:I
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "len of sms is (check concatenated sms) : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const/4 v3, 0x1

    if-le v15, v3, :cond_e

    .line 1200
    const/16 v25, 0x0

    .line 1201
    .local v25, textConcat:Ljava/lang/String;
    const/16 v24, 0x0

    .line 1202
    .local v24, textBody:Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, jj:I
    :goto_5
    if-ge v14, v15, :cond_d

    .line 1203
    aget-object v3, v5, v14

    if-eqz v3, :cond_b

    .line 1204
    aget-object v3, v5, v14

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v24

    .line 1205
    if-nez v25, :cond_c

    .line 1206
    move-object/from16 v25, v24

    .line 1202
    :cond_b
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 1208
    :cond_c
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    goto :goto_6

    .line 1212
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 1213
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSpam : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1217
    .end local v14           #jj:I
    .end local v24           #textBody:Ljava/lang/String;
    .end local v25           #textConcat:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_2

    .line 1231
    .end local v15           #lenghOfSms:I
    .restart local v9       #blockMessageMode:I
    .restart local v11       #checkSpam:I
    :catch_0
    move-exception v13

    .line 1232
    .local v13, e:Landroid/os/RemoteException;
    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3

    .line 1247
    .end local v9           #blockMessageMode:I
    .end local v11           #checkSpam:I
    .end local v13           #e:Landroid/os/RemoteException;
    .restart local v22       #teleserviceId:I
    :cond_f
    const-string v3, "3gpp"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1248
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v3, :cond_8

    .line 1249
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v0, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v22, v0

    goto/16 :goto_4

    .line 1251
    :cond_10
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSmsReceived...unsupported message format = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1261
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isWapBrowserAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1262
    packed-switch v22, :pswitch_data_0

    .end local v22           #teleserviceId:I
    :cond_12
    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move/from16 v6, p2

    .line 1276
    invoke-direct/range {v3 .. v8}, Lcom/android/mms/transaction/SmsReceiverService;->insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;ILjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v16

    .line 1278
    .local v16, messageUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1280
    const-string v3, "Mms/SmsReceiverService"

    const-string v4, "handleSmsReceived..."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    const-string v4, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSmsReceived"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "(replace)"

    :goto_7
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " messageUri: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", address: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", body: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    :cond_13
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1290
    const-string v3, "GATE"

    const-string v4, "<GATE-M>INCOMING_MSG</GATE-M>"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const-string v3, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<GATE-M>SMSSENDERINFO:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "</GATE-M>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_14
    if-eqz v16, :cond_15

    if-nez v8, :cond_15

    .line 1295
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getSmsThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v26

    .line 1297
    .local v26, threadId:J
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1298
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 1299
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 1300
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "sms"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1, v4}, Lcom/android/mms/ui/MessageUtils;->sendNotiToOtherApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    .end local v26           #threadId:J
    :cond_15
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1304
    if-eqz v16, :cond_1

    if-eqz v8, :cond_1

    .line 1305
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v20

    .line 1306
    .local v20, result:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    goto/16 :goto_0

    .line 1266
    .end local v16           #messageUri:Landroid/net/Uri;
    .end local v20           #result:Z
    .restart local v22       #teleserviceId:I
    :pswitch_0
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discard Wap Url Noti Msg"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1281
    .end local v22           #teleserviceId:I
    .restart local v16       #messageUri:Landroid/net/Uri;
    :cond_16
    const-string v3, ""

    goto/16 :goto_7

    .line 1121
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_0
        0x51 -> :sswitch_0
        0x52 -> :sswitch_0
        0x53 -> :sswitch_0
        0x7d -> :sswitch_0
        0x7f -> :sswitch_0
        0x99 -> :sswitch_0
    .end sparse-switch

    .line 1262
    :pswitch_data_0
    .packed-switch 0xc00e
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleSmsSent(Landroid/content/Intent;I)V
    .locals 20
    .parameter "intent"
    .parameter "error"

    .prologue
    .line 758
    const-string v3, "Mms/SmsReceiverService"

    const-string v5, "handleSmsSent()"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 761
    .local v4, uri:Landroid/net/Uri;
    const-string v3, "Mms/SmsReceiverService"

    const-string v5, "handleSmsSent set mSending to false"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    .line 765
    const-string v3, "LastSentMsg"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 767
    .local v14, lastSentMsg:Z
    if-nez v4, :cond_1

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 773
    const-string v3, "SmsReadConfirmMsg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 774
    .local v17, smsReadConfirmMsg:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 776
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v5, v4, v6, v7}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 778
    const-string v3, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSmsSent smsReadConfirm uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :goto_1
    if-nez v14, :cond_0

    .line 785
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    goto :goto_0

    .line 779
    :catch_0
    move-exception v13

    .line 780
    .local v13, e:Ljava/lang/Exception;
    const-string v3, "Mms/SmsReceiverService"

    const-string v5, "fail to delete readconfirm message"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 791
    .end local v13           #e:Ljava/lang/Exception;
    .end local v17           #smsReadConfirmMsg:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/mms/transaction/SmsReceiverService;->updateGroupType(Landroid/net/Uri;I)Z

    move-result v18

    .line 793
    .local v18, updated:Z
    const-string v3, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSmsSent lastSentMsg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    if-nez v14, :cond_11

    .line 796
    const/4 v11, 0x0

    .line 798
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "type"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 801
    const/4 v15, 0x0

    .line 803
    .local v15, messageBoxType:I
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 804
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 807
    :cond_3
    const/4 v3, 0x5

    if-eq v15, v3, :cond_4

    const/4 v3, 0x2

    if-ne v15, v3, :cond_f

    .line 808
    :cond_4
    const-string v3, "Mms/SmsReceiverService"

    const-string v5, "concatenated message order is wrong..."

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const/4 v3, 0x2

    if-ne v15, v3, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_e

    .line 810
    const-string v3, "Mms/SmsReceiverService"

    const-string v5, "need to update messagebox to fail in case of being out of order."

    invoke-static {v3, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 820
    :goto_2
    if-eqz v11, :cond_5

    .line 821
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 847
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v15           #messageBoxType:I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    .line 848
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 849
    const-string v3, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSmsSent sending uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_6
    if-eqz v14, :cond_7

    .line 853
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/mms/transaction/SmsReceiverService;->moveMessagetoSentBox(Landroid/net/Uri;I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 854
    const-string v3, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSmsSent: failed to move message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to sent folder"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    :cond_7
    const/4 v9, -0x1

    .line 859
    .local v9, app_id:I
    const/16 v16, -0x1

    .line 861
    .local v16, msg_id:I
    if-eqz v14, :cond_9

    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "app_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "msg_id"

    aput-object v7, v5, v6

    const-string v6, "app_id>0"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 866
    .restart local v11       #cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_9

    .line 868
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 869
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 870
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v16

    .line 873
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 878
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_9
    if-lez v9, :cond_a

    .line 879
    new-instance v10, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    invoke-direct {v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 880
    .local v10, broadintent:Landroid/content/Intent;
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v5, 0x2

    invoke-virtual {v10, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 881
    const-string v3, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    const-string v3, "com.android.mms.transaction.MESSAGE_APP_ID"

    invoke-virtual {v10, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 883
    const-string v3, "com.android.mms.transaction.MESSAGE_MSG_ID"

    move/from16 v0, v16

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 885
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 888
    .end local v10           #broadintent:Landroid/content/Intent;
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "errorClass"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_b

    .line 890
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 891
    .local v19, values:Landroid/content/ContentValues;
    const-string v3, "error_code"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 892
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 895
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDocomoAccountAsDefault()Z

    move-result v3

    if-nez v3, :cond_c

    .line 896
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 897
    .local v12, date:Ljava/lang/Long;
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 898
    .restart local v19       #values:Landroid/content/ContentValues;
    const-string v3, "date"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 899
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 902
    .end local v12           #date:Ljava/lang/Long;
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_c
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 903
    const-string v3, "GATE"

    const-string v5, "<GATE-M>SMS_SENT_SUCCESS</GATE-M>"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_d
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 907
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 908
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 910
    invoke-static/range {p0 .. p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 812
    .end local v9           #app_id:I
    .end local v16           #msg_id:I
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v15       #messageBoxType:I
    :cond_e
    :try_start_3
    const-string v3, "Mms/SmsReceiverService"

    const-string v5, "no need to update."

    invoke-static {v3, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 820
    if-eqz v11, :cond_0

    .line 821
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 816
    :cond_f
    :try_start_4
    const-string v3, "Mms/SmsReceiverService"

    const-string v5, "lastSentMsg is false set mSending as true.."

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 820
    .end local v15           #messageBoxType:I
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_10

    .line 821
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v3

    .line 825
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDocomoAccountAsDefault()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 826
    const/4 v11, 0x0

    .line 828
    .restart local v11       #cursor:Landroid/database/Cursor;
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "type"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 831
    const/4 v15, 0x0

    .line 833
    .restart local v15       #messageBoxType:I
    if-eqz v11, :cond_12

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 834
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v15

    .line 836
    :cond_12
    const/4 v3, 0x5

    if-ne v15, v3, :cond_13

    .line 840
    if-eqz v11, :cond_0

    .line 841
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 840
    :cond_13
    if-eqz v11, :cond_5

    .line 841
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 840
    .end local v15           #messageBoxType:I
    :catchall_1
    move-exception v3

    if-eqz v11, :cond_14

    .line 841
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v3

    .line 873
    .restart local v9       #app_id:I
    .restart local v16       #msg_id:I
    :catchall_2
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3

    .line 911
    .end local v9           #app_id:I
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v16           #msg_id:I
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_19

    .line 913
    :cond_16
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 914
    const-string v3, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSmsSent: no service, queuing message w/ uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    :cond_17
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 921
    const-string v3, "GATE"

    const-string v5, "<GATE-M>SMS_MSG_ERROR</GATE-M>"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->registerForServiceStateChanges()V

    .line 925
    const/4 v3, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v4, v3, v1}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 926
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/mms/transaction/SmsReceiverService$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/transaction/SmsReceiverService$2;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 932
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_1a

    .line 933
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZ)V

    .line 935
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/mms/transaction/SmsReceiverService$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/transaction/SmsReceiverService$3;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 942
    if-eqz v14, :cond_0

    .line 943
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    goto/16 :goto_0

    .line 947
    :cond_1a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSAC()Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_1b

    .line 950
    const-string v3, "Mms/SmsReceiverService"

    const-string v5, "handleSmsSent : DSAC Failure "

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const/4 v3, 0x5

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v4, v3, v1}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 952
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 953
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 955
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/mms/transaction/SmsReceiverService$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/transaction/SmsReceiverService$4;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 987
    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZ)V

    .line 990
    if-eqz v14, :cond_0

    .line 991
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    goto/16 :goto_0
.end method

.method private handleSmsServiceCenter(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 511
    const-string v4, "smsc"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, Smsc:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 515
    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "[SMS]handleSmsServiceCenter : Smsc == null"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :goto_0
    return-void

    .line 520
    :cond_0
    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SMS]handleSmsServiceCenter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 524
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 526
    .local v1, editprefs:Landroid/content/SharedPreferences$Editor;
    aget-object v4, v0, v7

    const-string v5, "NotSet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 527
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 529
    .local v2, not_set:Ljava/lang/String;
    const-string v4, "pref_key_manage_smsc_address"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 533
    .end local v2           #not_set:Ljava/lang/String;
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 531
    :cond_1
    const-string v4, "pref_key_manage_smsc_address"

    aget-object v5, v0, v7

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;ILjava/lang/String;Z)Landroid/net/Uri;
    .locals 7
    .parameter "context"
    .parameter "msgs"
    .parameter "error"
    .parameter "format"
    .parameter "isSpam"

    .prologue
    .line 1410
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "insertMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    const/4 v0, 0x0

    aget-object v6, p2, v0

    .line 1414
    .local v6, sms:Landroid/telephony/SmsMessage;
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v0

    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v0, v1, :cond_0

    .line 1415
    invoke-direct {p0, p1, p2, p4}, Lcom/android/mms/transaction/SmsReceiverService;->displayClassZeroMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;Ljava/lang/String;)V

    .line 1416
    const/4 v0, 0x0

    .line 1420
    :goto_0
    return-object v0

    .line 1417
    :cond_0
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p4

    .line 1418
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsReceiverService;->replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p4

    .line 1420
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private isRoamGuardPending()Z
    .locals 10

    .prologue
    .line 2235
    const/4 v8, 0x0

    .line 2237
    .local v8, result:Z
    const-string v0, "content://sms/queued"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2238
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2240
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 2241
    .local v7, cur:Landroid/database/Cursor;
    const-string v9, "roam_pending=1"

    .line 2242
    .local v9, where:Ljava/lang/String;
    sget-object v3, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION_ROAMGUARD:[Ljava/lang/String;

    const-string v4, "roam_pending=1"

    const/4 v5, 0x0

    const-string v6, "date ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2244
    if-eqz v7, :cond_1

    .line 2245
    const-string v0, "Mms/SmsReceiverService"

    const-string v3, "sendFirstQueuedMessage() roam_pending = 1"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 2249
    const/4 v8, 0x1

    .line 2251
    :cond_0
    if-eqz v7, :cond_1

    .line 2252
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2256
    :cond_1
    return v8

    .line 2251
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 2252
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private isSimCardChanged()Z
    .locals 2

    .prologue
    .line 2260
    const-string v0, "1"

    const-string v1, "ril.isIccChanged"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private messageFailedToSend(Landroid/net/Uri;IZ)V
    .locals 13
    .parameter "uri"
    .parameter "error"
    .parameter "needToNotify"

    .prologue
    .line 1024
    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageFailedToSend msg failed uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const/4 v0, 0x5

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 1028
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "app_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "msg_id"

    aput-object v3, v2, v1

    const-string v3, "app_id>0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1031
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1034
    .local v9, cursorMsg:Landroid/database/Cursor;
    const-wide/16 v10, -0x1

    .line 1035
    .local v10, failedMsg:J
    if-eqz v9, :cond_1

    .line 1037
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 1041
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1044
    :cond_1
    sput-wide v10, Lcom/android/mms/transaction/SmsReceiverService;->lastFailedMsdId:J

    .line 1046
    const/4 v6, -0x1

    .line 1047
    .local v6, app_id:I
    const/4 v12, -0x1

    .line 1048
    .local v12, msg_id:I
    if-eqz v8, :cond_3

    .line 1050
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1051
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1052
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v12

    .line 1055
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1059
    :cond_3
    if-lez v6, :cond_5

    .line 1060
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1061
    .local v7, broadintent:Landroid/content/Intent;
    const-string v0, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v1, 0x5

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1062
    const-string v0, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1063
    const-string v0, "com.android.mms.transaction.MESSAGE_APP_ID"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1064
    const-string v0, "com.android.mms.transaction.MESSAGE_MSG_ID"

    invoke-virtual {v7, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1066
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1071
    .end local v7           #broadintent:Landroid/content/Intent;
    :cond_4
    :goto_0
    return-void

    .line 1041
    .end local v6           #app_id:I
    .end local v12           #msg_id:I
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1055
    .restart local v6       #app_id:I
    .restart local v12       #msg_id:I
    :catchall_1
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1068
    :cond_5
    if-eqz p3, :cond_4

    .line 1069
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private messageFailedtoDisplay(ILjava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "destAddr"

    .prologue
    .line 998
    iput p1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mCausecode:I

    .line 1000
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/transaction/SmsReceiverService$5;

    invoke-direct {v1, p0, p2}, Lcom/android/mms/transaction/SmsReceiverService$5;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1019
    return-void
.end method

.method private moveMessagetoSentBox(Landroid/net/Uri;I)Z
    .locals 10
    .parameter "uri"
    .parameter "error"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1074
    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveMessagetoSentBox(uri, error) uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const/4 v6, 0x0

    .line 1078
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "type"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1081
    const/4 v7, 0x0

    .line 1083
    .local v7, messageBoxType:I
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1087
    :cond_0
    const/4 v0, 0x5

    if-ne v7, v0, :cond_2

    .line 1088
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "do not need update message box."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    if-eqz v6, :cond_1

    .line 1098
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 1101
    :goto_0
    return v0

    .line 1092
    :cond_2
    const/4 v0, 0x2

    :try_start_1
    invoke-static {p0, p1, v0, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1093
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "move failed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1097
    if-eqz v6, :cond_3

    .line 1098
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    goto :goto_0

    .line 1097
    :cond_4
    if-eqz v6, :cond_5

    .line 1098
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v9

    .line 1101
    goto :goto_0

    .line 1097
    .end local v7           #messageBoxType:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 1098
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private moveOutboxMessagesToFailedBox()I
    .locals 7

    .prologue
    .line 1376
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1378
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "type"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1379
    const-string v0, "error_code"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1380
    const-string v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1382
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "type = 4"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 1387
    .local v6, messageCount:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1388
    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveOutboxMessagesToFailedBox messageCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    :cond_0
    return v6
.end method

.method private registerForServiceStateChanges()V
    .locals 4

    .prologue
    .line 2028
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2029
    .local v0, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForServiceStateChanges()V

    .line 2031
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2037
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2039
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2040
    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "registerForServiceStateChanges"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    :cond_0
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2044
    return-void
.end method

.method public static replaceCarriageReturn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 1510
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1511
    const/16 v0, 0xd

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 1504
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xc

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZLjava/lang/String;)Landroid/net/Uri;
    .locals 26
    .parameter "context"
    .parameter "msgs"
    .parameter "error"
    .parameter "isSpam"
    .parameter "format"

    .prologue
    .line 1432
    const-string v3, "Mms/SmsReceiverService"

    const-string v6, "replaceMessage()"

    invoke-static {v3, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const/4 v3, 0x0

    aget-object v24, p2, v3

    .line 1434
    .local v24, sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v12

    .line 1437
    .local v12, values:Landroid/content/ContentValues;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1438
    .local v15, body:Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    .line 1440
    .local v22, pduCount:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 1441
    aget-object v24, p2, v17

    .line 1442
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1446
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSOSPrefix()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1447
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1448
    .local v20, msgBody:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->isSosMessage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1449
    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/TelephonyUtils;->getMessageFromSos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1451
    :cond_1
    const-string v3, "body"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    .end local v20           #msgBody:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1461
    const-string v3, "callback_number"

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SmsMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    :cond_2
    const-string v3, "error_code"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1466
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1467
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v21

    .line 1468
    .local v21, originatingAddress:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v23

    .line 1469
    .local v23, protocolIdentifier:I
    const-string v7, "address = ? AND protocol = ?"

    .line 1471
    .local v7, selection:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v21, v8, v3

    const/4 v3, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v3

    .line 1475
    .local v8, selectionArgs:[Ljava/lang/String;
    sget-object v5, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 1476
    .local v5, inboxUri:Landroid/net/Uri;
    sget-object v25, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 1477
    .local v25, smsUri:Landroid/net/Uri;
    if-eqz p4, :cond_3

    .line 1478
    sget-object v5, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_INBOX_CONTENT_URI:Landroid/net/Uri;

    .line 1479
    sget-object v25, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    .line 1482
    :cond_3
    sget-object v6, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1485
    .local v16, cursor:Landroid/database/Cursor;
    if-eqz v16, :cond_7

    .line 1487
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1488
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1489
    .local v18, messageId:J
    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 1491
    .local v11, messageUri:Landroid/net/Uri;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p1

    move-object v10, v4

    invoke-static/range {v9 .. v14}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1495
    if-eqz v16, :cond_4

    .line 1496
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1499
    .end local v11           #messageUri:Landroid/net/Uri;
    .end local v18           #messageId:J
    :cond_4
    :goto_2
    return-object v11

    .line 1453
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #inboxUri:Landroid/net/Uri;
    .end local v7           #selection:Ljava/lang/String;
    .end local v8           #selectionArgs:[Ljava/lang/String;
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v21           #originatingAddress:Ljava/lang/String;
    .end local v23           #protocolIdentifier:I
    .end local v25           #smsUri:Landroid/net/Uri;
    :cond_5
    const-string v3, "body"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1495
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #inboxUri:Landroid/net/Uri;
    .restart local v7       #selection:Ljava/lang/String;
    .restart local v8       #selectionArgs:[Ljava/lang/String;
    .restart local v16       #cursor:Landroid/database/Cursor;
    .restart local v21       #originatingAddress:Ljava/lang/String;
    .restart local v23       #protocolIdentifier:I
    .restart local v25       #smsUri:Landroid/net/Uri;
    :cond_6
    if-eqz v16, :cond_7

    .line 1496
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1499
    :cond_7
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    goto :goto_2

    .line 1495
    :catchall_0
    move-exception v3

    if-eqz v16, :cond_8

    .line 1496
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3
.end method

.method private resetCmasSettings(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 2265
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2266
    .local v0, Prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2267
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "#cmas#type##extreme#enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2268
    const-string v3, "#cmas#type##severe#enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2269
    const-string v3, "#cmas#type##amber#enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2270
    const-string v3, "#cmas#type##exercise#enabled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2271
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2275
    .end local v0           #Prefs:Landroid/content/SharedPreferences;
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 2272
    :catch_0
    move-exception v1

    .line 2273
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private retrySendSMSMessage(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 14
    .parameter "context"
    .parameter "uri"
    .parameter "error"

    .prologue
    .line 2133
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2134
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date ASC"

    move-object v1, p0

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2136
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 2138
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2139
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2140
    .local v11, msgText:Ljava/lang/String;
    invoke-direct {p0, v11}, Lcom/android/mms/transaction/SmsReceiverService;->EncodeNonGSMCharater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2141
    const/4 v10, 0x0

    .line 2142
    .local v10, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v13

    .line 2144
    .local v13, smsManager:Landroid/telephony/SmsManager;
    iget v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->userSelectedEncodingType:I

    invoke-virtual {v13, v11, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v10

    .line 2148
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 2149
    .local v9, messageCount:I
    const/4 v1, 0x1

    if-le v9, v1, :cond_1

    .line 2153
    if-eqz v8, :cond_0

    .line 2154
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2164
    .end local v9           #messageCount:I
    .end local v10           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #msgText:Ljava/lang/String;
    .end local v13           #smsManager:Landroid/telephony/SmsManager;
    :cond_0
    :goto_0
    return-void

    .line 2153
    :cond_1
    if-eqz v8, :cond_2

    .line 2154
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2159
    :cond_2
    new-instance v12, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/RetryActivity;

    invoke-direct {v12, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2160
    .local v12, retryIntent:Landroid/content/Intent;
    const/high16 v1, 0x1800

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2161
    const-string v1, "uri"

    move-object/from16 v0, p2

    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2162
    const-string v1, "error"

    move/from16 v0, p3

    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2163
    invoke-virtual {p1, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2153
    .end local v12           #retryIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_3

    .line 2154
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private sendPCWLockMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "recipient"
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 2060
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 2062
    .local v0, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 2064
    .local v10, conManager:Landroid/net/ConnectivityManager;
    if-nez v10, :cond_1

    .line 2065
    const-string v1, "Mms/SmsReceiverService"

    const-string v2, "sendPCWLockMessage : conManager is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    :cond_0
    :goto_0
    return-void

    .line 2069
    :cond_1
    if-eqz p2, :cond_2

    .line 2070
    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2071
    .local v3, sendMessage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v7, 0xff

    const/4 v9, 0x2

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move v8, v6

    invoke-virtual/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V

    .line 2073
    const-string v1, "Mms/SmsReceiverService"

    const-string v2, "sendPCWLockMessage : send SMS complete."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    .end local v3           #sendMessage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 2077
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method private storeCbMessage(Landroid/content/Context;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 10
    .parameter "context"
    .parameter "extras"

    .prologue
    const/4 v7, 0x0

    .line 1982
    const-string v8, "Mms/SmsReceiverService"

    const-string v9, "storeCbMessage()"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1986
    .local v6, values:Landroid/content/ContentValues;
    const-string v8, "message"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SmsCbMessage;

    .line 1988
    .local v4, message:Landroid/telephony/SmsCbMessage;
    if-nez v4, :cond_1

    .line 1989
    const-string v8, "Mms/SmsReceiverService"

    const-string v9, "received SMS_CB_RECEIVED_ACTION with no message extra"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    :cond_0
    :goto_0
    return-object v7

    .line 1993
    :cond_1
    new-instance v1, Landroid/telephony/CellBroadcastMessage;

    invoke-direct {v1, v4}, Landroid/telephony/CellBroadcastMessage;-><init>(Landroid/telephony/SmsCbMessage;)V

    .line 1995
    .local v1, cbm:Landroid/telephony/CellBroadcastMessage;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableSavingInbox4CBChannel()Ljava/lang/String;

    move-result-object v2

    .line 1996
    .local v2, disableCBChannel:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1997
    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getServiceCategory()I

    move-result v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 2003
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBChannel4DisplayInStatusBar()Ljava/lang/String;

    move-result-object v3

    .line 2004
    .local v3, enableDirectDisplayCBCh:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 2005
    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getServiceCategory()I

    move-result v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 2007
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2008
    .local v0, cbintent:Landroid/content/Intent;
    const-string v8, "cbMsgBody"

    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2010
    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2015
    .end local v0           #cbintent:Landroid/content/Intent;
    :cond_3
    const-string v7, "body"

    invoke-virtual {v4}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    const-string v7, "address"

    const-string v8, "CBmessages"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    const-string v7, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2019
    const-string v7, "protocol"

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2020
    const-string v7, "read"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2022
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2023
    .local v5, resolver:Landroid/content/ContentResolver;
    sget-object v7, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v5, v7, v6}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_0
.end method

.method private storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZLjava/lang/String;)Landroid/net/Uri;
    .locals 26
    .parameter "context"
    .parameter "msgs"
    .parameter "error"
    .parameter "isSpam"
    .parameter "format"

    .prologue
    .line 1515
    const-string v22, "Mms/SmsReceiverService"

    const-string v23, "storeMessage()"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    const/16 v22, 0x0

    aget-object v18, p2, v22

    .line 1518
    .local v18, sms:Landroid/telephony/SmsMessage;
    const/4 v14, 0x0

    .line 1522
    .local v14, not_supported_port_message:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1523
    .local v5, body:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v21

    .line 1524
    .local v21, values:Landroid/content/ContentValues;
    const-string v22, "error_code"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1526
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1527
    const-string v22, "Mms/SmsReceiverService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "store message callback = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    const-string v22, "callback_number"

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    :cond_0
    move-object/from16 v0, p2

    array-length v15, v0

    .line 1533
    .local v15, pduCount:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v22

    if-nez v22, :cond_d

    .line 1535
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v7

    .line 1537
    .local v7, header:Lcom/android/internal/telephony/SmsHeader;
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1538
    if-eqz v7, :cond_1

    .line 1539
    iget-object v0, v7, Lcom/android/internal/telephony/SmsHeader;->ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 1540
    const/4 v13, -0x1

    .line 1541
    .local v13, nKtSmsReadConfirmId:I
    iget-object v0, v7, Lcom/android/internal/telephony/SmsHeader;->ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->readConfirmID:I

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v13, v0, 0xff

    .line 1542
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v13, v0, :cond_1

    .line 1543
    const-string v22, "svc_cmd"

    const/16 v23, 0x4

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1545
    const-string v22, "svc_cmd_content"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    .end local v13           #nKtSmsReadConfirmId:I
    :cond_1
    if-eqz v7, :cond_3

    iget-object v0, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 1553
    iget-object v0, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v16, v0

    .line 1554
    .local v16, port:I
    const/16 v22, 0x1580

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x1581

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x1582

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x1583

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x1585

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x1586

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x1589

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x158a

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x15e1

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x15e3

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x2134

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x2135

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x2136

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x2340

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x23f4

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x23f5

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 1558
    :cond_2
    const-string v22, "<<"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    const v22, 0x7f0c011a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    const-string v22, ">>\n"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    const/4 v14, 0x1

    .line 1587
    .end local v7           #header:Lcom/android/internal/telephony/SmsHeader;
    .end local v16           #port:I
    :cond_3
    :goto_0
    if-nez v14, :cond_4

    .line 1588
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_14

    .line 1594
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v12

    .line 1596
    .local v12, msgBody:Ljava/lang/String;
    if-nez v12, :cond_12

    .line 1598
    const-string v22, "<<"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    const v22, 0x7f0c011a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    const-string v22, ">>\n"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    .end local v12           #msgBody:Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSOSPrefix()Z

    move-result v22

    if-eqz v22, :cond_16

    .line 1628
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1630
    .restart local v12       #msgBody:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/mms/util/TelephonyUtils;->isSosMessage(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1631
    invoke-static {v12}, Lcom/android/mms/util/TelephonyUtils;->getMessageFromSos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1634
    :cond_5
    const-string v22, "body"

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    .end local v12           #msgBody:Ljava/lang/String;
    :goto_2
    const-string v22, "thread_id"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    .line 1645
    .local v20, threadId:Ljava/lang/Long;
    const-string v22, "address"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1647
    .local v4, address:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_17

    .line 1648
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-static {v4, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    .line 1649
    .local v6, cacheContact:Lcom/android/mms/data/Contact;
    if-eqz v6, :cond_6

    .line 1651
    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 1652
    invoke-virtual {v6, v4}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->reload()V

    .line 1667
    .end local v6           #cacheContact:Lcom/android/mms/data/Contact;
    :cond_6
    :goto_3
    if-eqz v20, :cond_7

    const-wide/16 v22, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-nez v22, :cond_8

    :cond_7
    if-eqz v4, :cond_8

    if-nez p4, :cond_8

    .line 1668
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 1669
    const-string v22, "thread_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1672
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 1673
    .local v17, resolver:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 1675
    .local v10, insertedUri:Landroid/net/Uri;
    sget-object v9, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 1676
    .local v9, inboxUri:Landroid/net/Uri;
    if-eqz p4, :cond_9

    .line 1677
    sget-object v9, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_INBOX_CONTENT_URI:Landroid/net/Uri;

    .line 1680
    :cond_9
    const-string v22, "ril.sms.gcf-mode"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1682
    .local v3, GcfMode:Ljava/lang/String;
    const-string v22, "On"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 1683
    const-string v22, "Mms/SmsReceiverService"

    const-string v23, "GCF Mode On"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    sget v22, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    add-int/lit8 v22, v22, 0x1

    sput v22, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 1686
    sget v22, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    const/16 v23, 0x14

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_19

    .line 1687
    const-string v22, "Mms/SmsReceiverService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MmsConfig.SMS_DB_COUNT : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-static {v0, v1, v9, v2}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1692
    sget v22, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    const/16 v23, 0x14

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 1693
    new-instance v11, Landroid/content/Intent;

    const-string v22, "android.intent.action.GCF_DEVICE_STORAGE_LOW"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1694
    .local v11, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/transaction/SmsReceiverService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1709
    .end local v11           #intent:Landroid/content/Intent;
    :cond_a
    :goto_4
    if-nez p4, :cond_b

    if-eqz v20, :cond_b

    .line 1711
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-virtual/range {v22 .. v25}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    .line 1714
    .end local v3           #GcfMode:Ljava/lang/String;
    .end local v4           #address:Ljava/lang/String;
    .end local v9           #inboxUri:Landroid/net/Uri;
    .end local v10           #insertedUri:Landroid/net/Uri;
    .end local v17           #resolver:Landroid/content/ContentResolver;
    .end local v20           #threadId:Ljava/lang/Long;
    :cond_b
    :goto_5
    return-object v10

    .line 1564
    .restart local v7       #header:Lcom/android/internal/telephony/SmsHeader;
    .restart local v16       #port:I
    :cond_c
    const/4 v10, 0x0

    goto :goto_5

    .line 1568
    .end local v7           #header:Lcom/android/internal/telephony/SmsHeader;
    .end local v16           #port:I
    :cond_d
    const/16 v19, 0x0

    .line 1569
    .local v19, teleserviceId:I
    const-string v22, "3gpp2"

    move-object/from16 v0, v22

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 1570
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getTeleserviceId()I

    move-result v19

    .line 1578
    :cond_e
    :goto_6
    const-string v22, "teleservice_id"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1579
    const v22, 0xc00a

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 1580
    const-string v22, "link_url"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getSharedAppId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getSharedPayLoad()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1571
    :cond_f
    const-string v22, "3gpp"

    move-object/from16 v0, v22

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 1572
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v22

    if-eqz v22, :cond_e

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e

    .line 1573
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v19, v0

    goto :goto_6

    .line 1575
    :cond_10
    const-string v22, "Mms/SmsReceiverService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "handleSmsReceived...unsupported message format = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1582
    :cond_11
    const-string v22, "link_url"

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getlinkUrl()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1602
    .end local v19           #teleserviceId:I
    .restart local v12       #msgBody:Ljava/lang/String;
    :cond_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplacingCarriageReturnIntoNewLine()Z

    move-result v22

    if-eqz v22, :cond_13

    .line 1603
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/SmsReceiverService;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/SmsReceiverService;->replaceCarriageReturn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1606
    :cond_13
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/SmsReceiverService;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1612
    .end local v12           #msgBody:Ljava/lang/String;
    :cond_14
    const/4 v8, 0x0

    .local v8, i:I
    :goto_7
    if-ge v8, v15, :cond_4

    .line 1613
    aget-object v18, p2, v8

    .line 1614
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplacingCarriageReturnIntoNewLine()Z

    move-result v22

    if-eqz v22, :cond_15

    .line 1615
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/SmsReceiverService;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/SmsReceiverService;->replaceCarriageReturn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1618
    :cond_15
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/SmsReceiverService;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1636
    .end local v8           #i:I
    :cond_16
    const-string v22, "body"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1659
    .restart local v4       #address:Ljava/lang/String;
    .restart local v20       #threadId:Ljava/lang/Long;
    :cond_17
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v22

    if-eqz v22, :cond_18

    .line 1660
    const-string v22, "address"

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1662
    :cond_18
    new-instance v4, Ljava/lang/String;

    .end local v4           #address:Ljava/lang/String;
    const-string v22, "Unknown"

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1663
    .restart local v4       #address:Ljava/lang/String;
    const-string v22, "address"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1697
    .restart local v3       #GcfMode:Ljava/lang/String;
    .restart local v9       #inboxUri:Landroid/net/Uri;
    .restart local v10       #insertedUri:Landroid/net/Uri;
    .restart local v17       #resolver:Landroid/content/ContentResolver;
    :cond_19
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 1701
    :cond_1a
    const-string v22, "Mms/SmsReceiverService"

    const-string v23, "GCF Mode Off"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-static {v0, v1, v9, v2}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    goto/16 :goto_4
.end method

.method private static translateResultCode(I)Ljava/lang/String;
    .locals 1
    .parameter "resultCode"

    .prologue
    .line 311
    packed-switch p0, :pswitch_data_0

    .line 327
    :pswitch_0
    const-string v0, "Unknown error code"

    :goto_0
    return-object v0

    .line 313
    :pswitch_1
    const-string v0, "Activity.RESULT_OK"

    goto :goto_0

    .line 315
    :pswitch_2
    const-string v0, "SmsManager.RESULT_ERROR_GENERIC_FAILURE"

    goto :goto_0

    .line 317
    :pswitch_3
    const-string v0, "SmsManager.RESULT_ERROR_RADIO_OFF"

    goto :goto_0

    .line 319
    :pswitch_4
    const-string v0, "SmsManager.RESULT_ERROR_NULL_PDU"

    goto :goto_0

    .line 321
    :pswitch_5
    const-string v0, "SmsManager.RESULT_ERROR_NO_SERVICE"

    goto :goto_0

    .line 323
    :pswitch_6
    const-string v0, "SmsManager.RESULT_ERROR_LIMIT_EXCEEDED"

    goto :goto_0

    .line 325
    :pswitch_7
    const-string v0, "SmsManager.RESULT_ERROR_FDN_CHECK_FAILURE"

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private unRegisterForServiceStateChanges()V
    .locals 3

    .prologue
    .line 2047
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2048
    const-string v1, "Mms/SmsReceiverService"

    const-string v2, "unRegisterForServiceStateChanges"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2052
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2056
    .end local v0           #context:Landroid/content/Context;
    :goto_0
    return-void

    .line 2053
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateGroupType(Landroid/net/Uri;I)Z
    .locals 18
    .parameter "uri"
    .parameter "resultCode"

    .prologue
    .line 694
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 695
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_1

    .line 696
    const/4 v2, 0x1

    .line 752
    :cond_0
    :goto_0
    return v2

    .line 698
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    .line 699
    .local v14, msgId:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 700
    const/4 v2, 0x1

    goto :goto_0

    .line 702
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group_id=(SELECT group_id FROM sms WHERE _id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AND _id!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 704
    .local v5, selection:Ljava/lang/String;
    const/4 v9, 0x0

    .line 706
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->GROUP_SMS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 709
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_4

    .line 710
    :cond_3
    const/4 v2, 0x1

    .line 748
    if-eqz v9, :cond_0

    .line 749
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 712
    :cond_4
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 713
    const/4 v8, 0x0

    .line 714
    .local v8, count:I
    const/4 v13, 0x0

    .line 715
    .local v13, isFailed:Z
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 717
    .local v11, group_id:J
    :cond_5
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 718
    .local v16, type:I
    packed-switch v16, :pswitch_data_0

    .line 725
    :goto_1
    :pswitch_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 727
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsAddressSeperator()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 728
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v8, v2, :cond_6

    .line 729
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/transaction/SmsReceiverService;->mGroupSendingStatus:I

    .line 733
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ge v8, v2, :cond_7

    .line 734
    const/4 v2, 0x0

    .line 748
    if-eqz v9, :cond_0

    .line 749
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 720
    :pswitch_1
    const/4 v13, 0x1

    .line 722
    :pswitch_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 736
    :cond_7
    const/4 v15, 0x5

    .line 737
    .local v15, newType:I
    if-nez v13, :cond_8

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_8

    .line 738
    const/4 v15, 0x2

    .line 740
    :cond_8
    :try_start_2
    new-instance v17, Landroid/content/ContentValues;

    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 741
    .local v17, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 742
    .local v10, date:Ljava/lang/Long;
    const-string v2, "date"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 743
    const-string v2, "group_type"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 744
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 748
    .end local v8           #count:I
    .end local v10           #date:Ljava/lang/Long;
    .end local v11           #group_id:J
    .end local v13           #isFailed:Z
    .end local v15           #newType:I
    .end local v16           #type:I
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_9
    if-eqz v9, :cond_a

    .line 749
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 752
    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 748
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_b

    .line 749
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    .line 718
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 349
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 270
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Mms/SmsReceiverService"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 271
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 273
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 274
    new-instance v2, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    .line 276
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 278
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mSveConnected:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->myService:Lcom/tencent/engine/IEngineService;

    if-nez v2, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.tencent.engine.IEngineService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->serviceConnection:Landroid/content/ServiceConnection;

    const/16 v5, 0x25

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 281
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 339
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 341
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mSveConnected:Z

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mSveConnected:Z

    .line 345
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x0

    .line 290
    if-eqz p1, :cond_1

    .line 291
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    if-eqz p1, :cond_0

    const-string v3, "result"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :cond_0
    iput v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    .line 297
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-eqz v2, :cond_2

    .line 298
    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStart: #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mResultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-static {v4}, Lcom/android/mms/transaction/SmsReceiverService;->translateResultCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_2
    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v2}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 303
    .local v1, msg:Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 304
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 305
    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v2, v1}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 306
    const/4 v2, 0x2

    return v2
.end method

.method public declared-synchronized sendFirstQueuedMessage()V
    .locals 37

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    const-string v2, "Mms/SmsReceiverService"

    const-string v6, "sendFirstQueuedMessage()"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const/16 v32, 0x1

    .line 571
    .local v32, success:Z
    const-string v2, "content://sms/queued"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 572
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 574
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v36, "roam_pending=0"

    .line 576
    .local v36, where:Ljava/lang/String;
    const/16 v24, 0x0

    .line 577
    .local v24, c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsAddressSeperator()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 578
    sget-object v5, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION_FOR_SVC_CMD:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date ASC"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v24

    .line 587
    :goto_0
    if-eqz v24, :cond_5

    .line 589
    :try_start_1
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 590
    const/4 v2, 0x3

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 591
    .local v8, msgText:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 592
    .local v7, address:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 593
    .local v35, threadId:I
    const/4 v2, 0x4

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 594
    .local v31, status:I
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 595
    .local v30, msgId:I
    const/4 v2, 0x5

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 597
    .local v22, callbackNumber:Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v30

    int-to-long v9, v0

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 599
    .local v12, msgUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsAddressSeperator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 601
    const/4 v2, 0x6

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 602
    .local v27, groupId:J
    const/16 v29, 0x0

    .local v29, index:I
    const/16 v25, 0x0

    .line 604
    .local v25, destCount:I
    const-wide/16 v9, 0x0

    cmp-long v2, v27, v9

    if-nez v2, :cond_9

    .line 605
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/transaction/SmsReceiverService;->mGroupSendingStatus:I

    .line 612
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsReceiverService;->mGroupSendingStatus:I

    packed-switch v2, :pswitch_data_0

    .line 624
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 632
    .end local v25           #destCount:I
    .end local v27           #groupId:J
    .end local v29           #index:I
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 633
    const/4 v2, 0x6

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 634
    .local v13, priority:I
    new-instance v5, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    move/from16 v0, v35

    int-to-long v9, v0

    const/16 v2, 0x20

    move/from16 v0, v31

    if-ne v0, v2, :cond_b

    const/4 v11, 0x1

    :goto_3
    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;I)V

    .line 646
    .end local v13           #priority:I
    .local v5, sender:Lcom/android/mms/transaction/SmsMessageSender;
    :cond_2
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 647
    const-string v2, "Mms/SmsReceiverService"

    const-string v6, "sendFirstQueuedMessage..."

    invoke-static {v2, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v2, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendFirstQueuedMessage "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", address: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", threadId: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", body: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 652
    :cond_3
    const-wide/16 v9, -0x1

    :try_start_2
    invoke-virtual {v5, v9, v10}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->sendMessage(J)Z

    .line 653
    const-string v2, "Mms/SmsReceiverService"

    const-string v6, "sendFirstQueuedMessage set mSending to true"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 669
    .end local v5           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    .end local v7           #address:Ljava/lang/String;
    .end local v8           #msgText:Ljava/lang/String;
    .end local v12           #msgUri:Landroid/net/Uri;
    .end local v22           #callbackNumber:Ljava/lang/String;
    .end local v30           #msgId:I
    .end local v31           #status:I
    .end local v35           #threadId:I
    :cond_4
    :goto_5
    if-eqz v24, :cond_5

    .line 670
    :try_start_3
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 674
    :cond_5
    if-eqz v32, :cond_6

    .line 677
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForServiceStateChanges()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 679
    :cond_6
    monitor-exit p0

    return-void

    .line 579
    :cond_7
    :try_start_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRoamGuard()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 580
    sget-object v5, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION_ROAMGUARD:[Ljava/lang/String;

    const-string v6, "roam_pending=0"

    const/4 v7, 0x0

    const-string v8, "date ASC"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    goto/16 :goto_0

    .line 582
    :cond_8
    sget-object v5, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date ASC"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v24

    goto/16 :goto_0

    .line 607
    .restart local v7       #address:Ljava/lang/String;
    .restart local v8       #msgText:Ljava/lang/String;
    .restart local v12       #msgUri:Landroid/net/Uri;
    .restart local v22       #callbackNumber:Ljava/lang/String;
    .restart local v25       #destCount:I
    .restart local v27       #groupId:J
    .restart local v29       #index:I
    .restart local v30       #msgId:I
    .restart local v31       #status:I
    .restart local v35       #threadId:I
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsReceiverService;->mGroupSendingStatus:I

    const/4 v6, 0x2

    if-eq v2, v6, :cond_0

    .line 608
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/transaction/SmsReceiverService;->mGroupSendingStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 669
    .end local v7           #address:Ljava/lang/String;
    .end local v8           #msgText:Ljava/lang/String;
    .end local v12           #msgUri:Landroid/net/Uri;
    .end local v22           #callbackNumber:Ljava/lang/String;
    .end local v25           #destCount:I
    .end local v27           #groupId:J
    .end local v29           #index:I
    .end local v30           #msgId:I
    .end local v31           #status:I
    .end local v35           #threadId:I
    :catchall_0
    move-exception v2

    if-eqz v24, :cond_a

    .line 670
    :try_start_6
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 567
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #uri:Landroid/net/Uri;
    .end local v24           #c:Landroid/database/Cursor;
    .end local v32           #success:Z
    .end local v36           #where:Ljava/lang/String;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 614
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v7       #address:Ljava/lang/String;
    .restart local v8       #msgText:Ljava/lang/String;
    .restart local v12       #msgUri:Landroid/net/Uri;
    .restart local v22       #callbackNumber:Ljava/lang/String;
    .restart local v24       #c:Landroid/database/Cursor;
    .restart local v25       #destCount:I
    .restart local v27       #groupId:J
    .restart local v29       #index:I
    .restart local v30       #msgId:I
    .restart local v31       #status:I
    .restart local v32       #success:Z
    .restart local v35       #threadId:I
    .restart local v36       #where:Ljava/lang/String;
    :pswitch_0
    const/16 v25, 0x1

    move/from16 v29, v25

    .line 615
    goto/16 :goto_2

    .line 617
    :pswitch_1
    const/16 v29, 0x1

    .line 618
    const/16 v25, 0x2

    .line 619
    goto/16 :goto_2

    .line 621
    :pswitch_2
    const/16 v25, 0x2

    move/from16 v29, v25

    goto/16 :goto_2

    .line 634
    .end local v25           #destCount:I
    .end local v27           #groupId:J
    .end local v29           #index:I
    .restart local v13       #priority:I
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 636
    .end local v13           #priority:I
    :cond_c
    :try_start_7
    new-instance v5, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v2, 0x20

    move/from16 v0, v31

    if-ne v0, v2, :cond_d

    const/16 v20, 0x1

    :goto_6
    const/16 v23, 0x81

    move-object v14, v5

    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v21, v12

    invoke-direct/range {v14 .. v23}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;Ljava/lang/String;I)V

    .line 638
    .restart local v5       #sender:Lcom/android/mms/transaction/SmsMessageSender;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsAddressSeperator()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 639
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 640
    const/4 v2, 0x7

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 641
    .local v33, svcCmd:I
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 642
    .local v34, svcCmdContent:Ljava/lang/String;
    move/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Lcom/android/mms/transaction/SmsMessageSender;->setServiceCommand(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 636
    .end local v5           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    .end local v33           #svcCmd:I
    .end local v34           #svcCmdContent:Ljava/lang/String;
    :cond_d
    const/16 v20, 0x0

    goto :goto_6

    .line 655
    .restart local v5       #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :catch_0
    move-exception v26

    .line 656
    .local v26, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendFirstQueuedMessage: failed to send message "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", caught "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-static {v2, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 658
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    .line 659
    const-string v2, "Mms/SmsReceiverService"

    const-string v6, "sendFirstQueuedMessage set mSending to false"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const/4 v2, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2, v6}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZ)V

    .line 661
    const/16 v32, 0x0

    .line 662
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v9, 0x0

    const-class v10, Lcom/android/mms/transaction/SmsReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v6, v9, v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/SmsReceiverService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    .line 612
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
