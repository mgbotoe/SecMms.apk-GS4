.class public Lcom/android/mms/transaction/SimChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimChangeReceiver.java"


# static fields
.field private static mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    const-string v0, "CMAS/SimChangeReceiver"

    iput-object v0, p0, Lcom/android/mms/transaction/SimChangeReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/SimChangeReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/mms/transaction/SimChangeReceiver;->isOperatorChanged()Z

    move-result v0

    return v0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isOperatorChanged()Z
    .locals 6

    .prologue
    .line 80
    const-string v3, "gsm.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, newNumeric:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, oldNumeric:Ljava/lang/String;
    const/4 v0, 0x0

    .line 83
    .local v0, bRet:Z
    if-nez v1, :cond_1

    .line 84
    if-nez v2, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 98
    :goto_0
    const-string v3, "CMAS/SimChangeReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOperatorChanged :  return : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {v1}, Lcom/android/mms/MmsConfig;->setOperatorNumeric(Ljava/lang/String;)V

    .line 100
    return v0

    .line 87
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    if-nez v2, :cond_2

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 93
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    sget-object v0, Lcom/android/mms/transaction/SimChangeReceiver;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/mms/transaction/SimChangeReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/SimChangeReceiver$1;-><init>(Lcom/android/mms/transaction/SimChangeReceiver;)V

    sput-object v0, Lcom/android/mms/transaction/SimChangeReceiver;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    .line 50
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/SimChangeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 51
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/mms/transaction/SimChangeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 52
    sget-object v0, Lcom/android/mms/transaction/SimChangeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lcom/android/mms/transaction/SimChangeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/android/mms/transaction/SimChangeReceiver;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 58
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    const-string v0, "CMAS/SimChangeReceiver"

    const-string v1, "AIRPLANE MODE CHANGED"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Lcom/android/mms/transaction/SimChangeReceiver;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    const-string v0, "CMAS/SimChangeReceiver"

    const-string v1, "AIRPLANE MODE ON"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_2
    :goto_0
    return-void

    .line 65
    :cond_3
    const-string v0, "CMAS/SimChangeReceiver"

    const-string v1, "AIRPLANE MODE OFF"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/android/mms/ui/ChannelUtils;->resetCMASSettings()V

    goto :goto_0
.end method
