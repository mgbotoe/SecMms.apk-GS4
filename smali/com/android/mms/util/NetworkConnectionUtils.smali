.class public Lcom/android/mms/util/NetworkConnectionUtils;
.super Ljava/lang/Object;
.source "NetworkConnectionUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/NetworkConnectionUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDataNetworkDisable(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    const-string v4, "ril.currentplmn"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "oversea"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    invoke-static {p0}, Lcom/android/mms/util/TelephonyUtils;->getDataRoamingEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 179
    goto :goto_0

    .line 183
    :cond_2
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 184
    .local v1, mConnMgr:Landroid/net/ConnectivityManager;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 186
    .local v0, isUsingMobile:Z
    :goto_1
    if-nez v0, :cond_0

    move v2, v3

    .line 187
    goto :goto_0

    .end local v0           #isUsingMobile:Z
    :cond_3
    move v0, v2

    .line 184
    goto :goto_1
.end method

.method public static isMmsNetworkAvailable(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 39
    if-nez p0, :cond_0

    .line 60
    :goto_0
    return v4

    .line 43
    :cond_0
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 44
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 48
    .local v2, ni:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 50
    .local v3, ni2:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 51
    const-string v5, "Mms/NetworkConnectionUtils"

    const-string v6, "[NetworkConnectionUtils] wifi network available!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 59
    .local v1, networkAvailable:Z
    :cond_3
    :goto_1
    const-string v4, "Mms/NetworkConnectionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMmsAvailable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    .line 60
    goto :goto_0

    .end local v1           #networkAvailable:Z
    :cond_4
    move v1, v4

    .line 54
    goto :goto_1
.end method

.method public static isMobileAvailable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 82
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 84
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 88
    :cond_0
    return v1
.end method

.method public static isMsgNetworkAvailable(Landroid/content/Context;Z)Z
    .locals 11
    .parameter "context"
    .parameter "isSms"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 92
    if-eqz p1, :cond_3

    .line 93
    const/4 v1, 0x1

    .line 94
    .local v1, isMessageNetworkAvailable:Z
    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 97
    .local v6, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v6, :cond_0

    .line 98
    :try_start_0
    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->getPhoneServiceState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_2

    move v1, v7

    .line 103
    :cond_0
    :goto_0
    const-string v7, "Mms/NetworkConnectionUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isMessageNetworkAvailable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v1

    .line 139
    .end local v1           #isMessageNetworkAvailable:Z
    .end local v6           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_1
    return v8

    .restart local v1       #isMessageNetworkAvailable:Z
    .restart local v6       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    move v1, v8

    .line 98
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "Mms/NetworkConnectionUtils"

    const-string v8, "isMsgNetworkAvailable RemoteException"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #isMessageNetworkAvailable:Z
    .end local v6           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_3
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 107
    .local v2, mConnMgr:Landroid/net/ConnectivityManager;
    if-nez v2, :cond_4

    .line 108
    const-string v7, "Mms/NetworkConnectionUtils"

    const-string v9, "mConnMgr is null return false"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 111
    :cond_4
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 112
    .local v4, ni:Landroid/net/NetworkInfo;
    const/4 v3, 0x0

    .line 116
    .local v3, networkIsAvaliable:Z
    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 117
    .local v5, ni2:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 118
    const-string v9, "Mms/NetworkConnectionUtils"

    const-string v10, "wifi network available!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-nez v9, :cond_7

    :cond_6
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_7
    move v3, v7

    .line 122
    :goto_2
    if-nez v3, :cond_8

    .line 132
    :cond_8
    if-eqz v3, :cond_1

    .line 133
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    if-eqz v9, :cond_1

    move v8, v7

    .line 134
    goto :goto_1

    :cond_9
    move v3, v8

    .line 120
    goto :goto_2
.end method

.method public static isNetWorkConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 65
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 67
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 68
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 144
    if-nez p0, :cond_0

    move v2, v3

    .line 170
    :goto_0
    return v2

    .line 149
    :cond_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 150
    .local v1, connMgr:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 152
    .local v2, isNetworkAvailable:Z
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 153
    .local v0, activeNetwork:Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    move v2, v3

    .line 154
    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 167
    const/4 v2, 0x0

    goto :goto_0

    .line 158
    :sswitch_0
    const/4 v2, 0x1

    .line 159
    goto :goto_0

    .line 161
    :sswitch_1
    const/4 v2, 0x1

    .line 162
    goto :goto_0

    .line 164
    :sswitch_2
    const/4 v2, 0x1

    .line 165
    goto :goto_0

    .line 156
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isWifiAvailable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 72
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 74
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 78
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
