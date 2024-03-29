.class public Lcom/android/mms/VoLTEStateTracker;
.super Ljava/lang/Object;
.source "VoLTEStateTracker.java"


# static fields
.field private static final ACTION_VOLTE_STATE:Ljava/lang/String; = "com.samsung.volte.state"

.field private static final PROPERTY_IMS_REGISTERED:Ljava/lang/String; = "persist.sys.ims.reg"

.field private static final PROPERTY_IMS_VOLTE_SUPPORTED:Ljava/lang/String; = "persist.sys.ims.volte_supported"

.field private static final TAG:Ljava/lang/String; = "VolteStateTracker"

.field private static final VOICECALL_TYPE_KEY:Ljava/lang/String; = "voicecall_type"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isVoLteEnabled(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 4
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 125
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 126
    const-string v2, "VoLTE_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/mms/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 129
    :cond_1
    const-string v2, "VolteStateTracker"

    const-string v3, "isVoLteEnabled : intent > extra is null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVolteEnabled(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 34
    const-string v10, "VolteStateTracker"

    const-string v11, "isVolteEnabled api called"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/android/mms/VoLTEStateTracker;->mContext:Landroid/content/Context;

    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, isIMSReg:Z
    const/4 v3, -0x1

    .line 40
    .local v3, isVolteSupported:I
    const/4 v7, -0x1

    .line 41
    .local v7, voicecall_type:I
    const/4 v5, 0x0

    .line 43
    .local v5, serviceState:I
    iget-object v10, p0, Lcom/android/mms/VoLTEStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "voicecall_type"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 44
    const-string v10, "phone"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 45
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_2

    move v2, v8

    .line 46
    .local v2, isLTEConnected:Z
    :goto_0
    const-string v10, "VolteStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isLTEConnected - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v10, "persist.sys.ims.volte_supported"

    const-string v11, "-1"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 66
    const-string v10, "true"

    const-string v11, "persist.sys.ims.reg"

    const-string v12, "false"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 69
    const-string v10, "VolteStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Is Ims registered = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v10, "VolteStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isVolteSupported = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v10, "VolteStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Voice Call Setting = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnable3GHDVoice()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 75
    if-eqz v7, :cond_0

    const/4 v10, 0x2

    if-ne v7, v10, :cond_1

    .line 77
    :cond_0
    :try_start_0
    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 78
    .local v4, phone:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I

    move-result v5

    .line 79
    const-string v10, "VolteStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "serviceState : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    if-nez v5, :cond_1

    move v9, v8

    .line 99
    .end local v4           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_1
    return v9

    .end local v2           #isLTEConnected:Z
    :cond_2
    move v2, v9

    .line 45
    goto/16 :goto_0

    .line 85
    .restart local v2       #isLTEConnected:Z
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Landroid/os/RemoteException;
    const-string v8, "VolteStateTracker"

    const-string v10, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v8, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    :goto_2
    const-string v8, "VolteStateTracker"

    const-string v10, "Volte is Disabled"

    invoke-static {v8, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :catch_1
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 93
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    if-eqz v1, :cond_3

    if-nez v3, :cond_3

    if-nez v7, :cond_3

    if-eqz v2, :cond_3

    .line 94
    const-string v9, "VolteStateTracker"

    const-string v10, "Volte is Enabled "

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v8

    .line 95
    goto :goto_1
.end method

.method public startTracking(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 3
    .parameter "context"
    .parameter "receiver"

    .prologue
    .line 103
    const-string v1, "VolteStateTracker"

    const-string v2, "startTracking"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lcom/android/mms/VoLTEStateTracker;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/mms/VoLTEStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, regFilter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.volte.state"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    return-void
.end method

.method public stopTracking()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    const-string v0, "VolteStateTracker"

    const-string v1, "stopTracking"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/mms/VoLTEStateTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/VoLTEStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    iput-object v2, p0, Lcom/android/mms/VoLTEStateTracker;->mContext:Landroid/content/Context;

    .line 120
    iput-object v2, p0, Lcom/android/mms/VoLTEStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    return-void
.end method
