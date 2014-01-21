.class public Lcom/android/mms/oem/AutoSms;
.super Ljava/lang/Object;
.source "AutoSms.java"


# static fields
.field private static final AUTOSMS_DEST_ADDRESS_REAL:Ljava/lang/String; = "106598490002"

.field private static final AUTOSMS_DEST_ADDRESS_TEST:Ljava/lang/String; = "106598490002"

.field private static final DEBUG:Z = true

.field private static FIRSTDELAY:I = 0x0

.field private static final KEY_HW:Ljava/lang/String; = "ril.hw_ver"

.field private static final KEY_MODEL:Ljava/lang/String; = "ro.product.model"

.field private static final KEY_SW:Ljava/lang/String; = "ro.build.PDA"

.field private static final KEY_UNKNOWN:Ljava/lang/String; = "Unknown"

.field private static OTHERDELAY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AutoSms"

.field private static mTimer:Ljava/util/Timer;

.field private static sInstance:Lcom/android/mms/oem/AutoSms;

.field private static sNextMsgCount:I

.field private static sNextMsgId:J


# instance fields
.field private mAutoSmsData:Ljava/lang/String;

.field private mAutoSmsEnable:Ljava/lang/String;

.field private mAutoSmsType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHWVersion:Ljava/lang/String;

.field private mMeidNumber:Ljava/lang/String;

.field private mModelName:Ljava/lang/String;

.field private mSWVersion:Ljava/lang/String;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const v0, 0x6ddd00

    sput v0, Lcom/android/mms/oem/AutoSms;->FIRSTDELAY:I

    .line 64
    const v0, 0xea60

    sput v0, Lcom/android/mms/oem/AutoSms;->OTHERDELAY:I

    .line 66
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/mms/oem/AutoSms;->sNextMsgId:J

    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/oem/AutoSms;->sNextMsgCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isRestart"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/mms/oem/AutoSms;->mContext:Landroid/content/Context;

    .line 80
    iget-object v0, p0, Lcom/android/mms/oem/AutoSms;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getAutoSmsType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/oem/AutoSms;->mAutoSmsType:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/android/mms/oem/AutoSms;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getAutoSmsEnabled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/oem/AutoSms;->mAutoSmsEnable:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutoSmsType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mAutoSmsType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAutoSmsEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mAutoSmsEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/oem/AutoSms;->log(Ljava/lang/String;)V

    .line 85
    const-string v0, "AutoSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRestart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 87
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/android/mms/oem/AutoSms;->setAutoSmsTimerDelay(I)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    sget v0, Lcom/android/mms/oem/AutoSms;->FIRSTDELAY:I

    invoke-direct {p0, v0}, Lcom/android/mms/oem/AutoSms;->setAutoSmsTimerDelay(I)V

    goto :goto_0
.end method

.method private static declared-synchronized genMsgCount()I
    .locals 3

    .prologue
    .line 100
    const-class v1, Lcom/android/mms/oem/AutoSms;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/mms/oem/AutoSms;->sNextMsgCount:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/android/mms/oem/AutoSms;->sNextMsgCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized genMsgId()J
    .locals 6

    .prologue
    .line 96
    const-class v1, Lcom/android/mms/oem/AutoSms;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/android/mms/oem/AutoSms;->sNextMsgId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/android/mms/oem/AutoSms;->sNextMsgId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getAutoSmsData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/mms/oem/AutoSms;->getMeidNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/oem/AutoSms;->mMeidNumber:Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Lcom/android/mms/oem/AutoSms;->getModelName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/oem/AutoSms;->mModelName:Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Lcom/android/mms/oem/AutoSms;->getAutoSmsSWVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/oem/AutoSms;->mSWVersion:Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Lcom/android/mms/oem/AutoSms;->getAutoSmsHWVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/oem/AutoSms;->mHWVersion:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/android/mms/oem/AutoSms;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getAutoSmsType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/oem/AutoSms;->mAutoSmsType:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getAutoSmsData] : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mMeidNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mModelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mSWVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mHWVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mAutoSmsType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/oem/AutoSms;->log(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mMeidNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mModelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mSWVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mHWVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mAutoSmsType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAutoSmsHWVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 156
    const-string v2, "ril.hw_ver"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, hwVersion:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 159
    .local v1, versionLen:I
    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REV"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REV"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getAutoSmsSWVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 144
    const-string v2, "ro.build.PDA"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, swVersion:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 147
    .local v1, versionLen:I
    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 148
    add-int/lit8 v2, v1, -0x3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 151
    .end local v0           #swVersion:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/android/mms/oem/AutoSms;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/mms/oem/AutoSms;->sInstance:Lcom/android/mms/oem/AutoSms;

    return-object v0
.end method

.method private getMeidNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/mms/oem/AutoSms;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 135
    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, sMeid:Ljava/lang/String;
    return-object v0
.end method

.method private getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "isRestart"

    .prologue
    .line 74
    new-instance v0, Lcom/android/mms/oem/AutoSms;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/oem/AutoSms;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/android/mms/oem/AutoSms;->sInstance:Lcom/android/mms/oem/AutoSms;

    .line 75
    return-void
.end method

.method private isTest()Z
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getAutoSmsType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, autoSmsType:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isTest] autoSmsType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/oem/AutoSms;->log(Ljava/lang/String;)V

    .line 217
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 221
    const-string v0, "AutoSms"

    invoke-static {v0, p0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method private sendAutoSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "dest"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 104
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 107
    .local v0, smsManager:Landroid/telephony/SmsManager;
    invoke-static {}, Lcom/android/mms/oem/AutoSms;->genMsgId()J

    move-result-wide v6

    .line 108
    .local v6, msgId:J
    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.mms.oem.AUTO_SMS_MESSAGE_SENT_ACTION"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://sms/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/oem/AutoSms;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/mms/oem/AutoSmsReceiver;

    invoke-direct {v3, v5, v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v11, v3, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 115
    .local v4, sentIntent:Landroid/app/PendingIntent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message ID:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",Dest Address:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",Message:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/oem/AutoSms;->log(Ljava/lang/String;)V

    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    .line 117
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 121
    return-void
.end method

.method private setAutoSmsTimerDelay(I)V
    .locals 11
    .parameter "delay"

    .prologue
    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 170
    .local v1, currentTime:J
    int-to-long v7, p1

    add-long v4, v1, v7

    .line 172
    .local v4, retryAt:J
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_ONALARM"

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/mms/oem/AutoSms;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/mms/oem/AutoSmsReceiverService;

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v6, service:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/mms/oem/AutoSms;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x4000

    invoke-static {v7, v8, v6, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 176
    .local v3, operation:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/mms/oem/AutoSms;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 178
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 180
    const-string v7, "AutoSms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Next retry is scheduled at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms from now"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method


# virtual methods
.method public processAlarm()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 185
    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getAutoSmsEnabled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/oem/AutoSms;->mAutoSmsEnable:Ljava/lang/String;

    .line 186
    invoke-direct {p0}, Lcom/android/mms/oem/AutoSms;->getAutoSmsData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/oem/AutoSms;->mAutoSmsData:Ljava/lang/String;

    .line 188
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "00000000000000"

    aput-object v1, v0, v4

    const-string v1, "B0000000000000"

    aput-object v1, v0, v3

    .line 190
    .local v0, InvaildMeid:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[processAlarm] check mMeidNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/oem/AutoSms;->mMeidNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " InvaildMeid[0] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " InvaildMeid[1] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/oem/AutoSms;->log(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mAutoSmsEnable:Ljava/lang/String;

    const-string v2, "Disabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/android/mms/oem/AutoSms;->sNextMsgCount:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    aget-object v1, v0, v4

    iget-object v2, p0, Lcom/android/mms/oem/AutoSms;->mMeidNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v0, v3

    iget-object v2, p0, Lcom/android/mms/oem/AutoSms;->mMeidNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mMeidNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 193
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[processAlarm] do not send auto sms!!! mMeidNumber =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/oem/AutoSms;->mMeidNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/oem/AutoSms;->log(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/android/mms/oem/AutoSms;->mContext:Landroid/content/Context;

    const-string v2, "Disabled"

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->setAutoSmsEnabled(Landroid/content/Context;Ljava/lang/String;)V

    .line 211
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[processAlarm] run sNextMsgCount ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/oem/AutoSms;->sNextMsgCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " genMsgCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/oem/AutoSms;->genMsgCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/oem/AutoSms;->log(Ljava/lang/String;)V

    .line 212
    return-void

    .line 197
    :cond_1
    const-string v1, "[processAlarm] send auto sms!!!!"

    invoke-static {v1}, Lcom/android/mms/oem/AutoSms;->log(Ljava/lang/String;)V

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[processAlarm] SMS Data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/oem/AutoSms;->mAutoSmsData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/oem/AutoSms;->log(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/android/mms/oem/AutoSms;->isTest()Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AUTOSMS_DEST_ADDRESS_TEST] isTest() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/oem/AutoSms;->isTest()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/oem/AutoSms;->log(Ljava/lang/String;)V

    .line 202
    const-string v1, "[processAlarm] test auto sms dest = Test [106598490002]"

    invoke-static {v1}, Lcom/android/mms/oem/AutoSms;->log(Ljava/lang/String;)V

    .line 203
    const-string v1, "106598490002"

    iget-object v2, p0, Lcom/android/mms/oem/AutoSms;->mAutoSmsData:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/mms/oem/AutoSms;->sendAutoSms(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_1
    sget v1, Lcom/android/mms/oem/AutoSms;->OTHERDELAY:I

    invoke-direct {p0, v1}, Lcom/android/mms/oem/AutoSms;->setAutoSmsTimerDelay(I)V

    goto :goto_0

    .line 205
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AUTOSMS_DEST_ADDRESS_REAL] isTest() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/oem/AutoSms;->isTest()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/oem/AutoSms;->log(Ljava/lang/String;)V

    .line 206
    const-string v1, "[processAlarm] test auto sms dest = Real [106598490002]"

    invoke-static {v1}, Lcom/android/mms/oem/AutoSms;->log(Ljava/lang/String;)V

    .line 207
    const-string v1, "106598490002"

    iget-object v2, p0, Lcom/android/mms/oem/AutoSms;->mAutoSmsData:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/mms/oem/AutoSms;->sendAutoSms(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
