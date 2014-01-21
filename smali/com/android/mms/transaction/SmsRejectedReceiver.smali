.class public Lcom/android/mms/transaction/SmsRejectedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsRejectedReceiver.java"


# static fields
.field public static final SMS_REJECTED_NOTIFICATION_ID:I = 0xef

.field private static final TAG:Ljava/lang/String; = "Mms/SmsRejectedReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    const-string v14, "Mms/SmsRejectedReceiver"

    const-string v15, "onReceive"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "device_provisioned"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    const-string v14, "android.provider.Telephony.SMS_REJECTED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 55
    const-string v14, "result"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 56
    .local v8, reason:I
    const/4 v14, 0x3

    if-ne v8, v14, :cond_1

    const/4 v5, 0x1

    .line 57
    .local v5, outOfMemory:Z
    :goto_0
    if-nez v5, :cond_2

    .line 120
    .end local v5           #outOfMemory:Z
    .end local v8           #reason:I
    :cond_0
    :goto_1
    return-void

    .line 56
    .restart local v8       #reason:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 62
    .restart local v5       #outOfMemory:Z
    :cond_2
    const-string v14, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 65
    .local v3, nm:Landroid/app/NotificationManager;
    new-instance v12, Landroid/content/Intent;

    const-class v14, Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v12, viewConvIntent:Landroid/content/Intent;
    const-string v14, "android.intent.action.VIEW"

    invoke-virtual {v12, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const/high16 v14, 0x3400

    invoke-virtual {v12, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v12, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 71
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 73
    .local v4, notification:Landroid/app/Notification;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 74
    invoke-static/range {p1 .. p1}, Lcom/android/mms/transaction/MessagingNotification;->isBlockingModeEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 75
    .local v2, enableBlockingMode:Z
    const/4 v9, 0x1

    .line 76
    .local v9, sEnableBacklight:Z
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 77
    .local v10, sp:Landroid/content/SharedPreferences;
    const-string v14, "pref_key_backlight"

    invoke-interface {v10, v14, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 78
    if-nez v2, :cond_3

    .line 79
    if-eqz v9, :cond_3

    .line 81
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLCDOn()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 82
    const-string v14, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 83
    .local v7, pm:Landroid/os/PowerManager;
    const v14, 0x1000001a

    const-string v15, "New message notification LCD on"

    invoke-virtual {v7, v14, v15}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    .line 85
    .local v13, wl:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v14, 0x1388

    invoke-virtual {v13, v14, v15}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 91
    .end local v2           #enableBlockingMode:Z
    .end local v7           #pm:Landroid/os/PowerManager;
    .end local v9           #sEnableBacklight:Z
    .end local v10           #sp:Landroid/content/SharedPreferences;
    .end local v13           #wl:Landroid/os/PowerManager$WakeLock;
    :cond_3
    const v14, 0x7f020270

    iput v14, v4, Landroid/app/Notification;->icon:I

    .line 94
    if-eqz v5, :cond_4

    .line 95
    const v11, 0x7f0c00ba

    .line 96
    .local v11, titleId:I
    const v1, 0x7f0c00bb

    .line 101
    .local v1, bodyId:I
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 102
    const/4 v14, -0x1

    iput v14, v4, Landroid/app/Notification;->defaults:I

    .line 108
    iget v14, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v14, v14, -0x3

    iput v14, v4, Landroid/app/Notification;->defaults:I

    .line 109
    const/16 v14, 0x11

    iput v14, v4, Landroid/app/Notification;->haptic:I

    .line 112
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v14, v15, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 114
    const/4 v14, 0x2

    iput v14, v4, Landroid/app/Notification;->priority:I

    .line 116
    const/16 v14, 0xef

    invoke-virtual {v3, v14, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 118
    const-string v14, "Mms/SmsRejectedReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "notify outOfMemory="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 98
    .end local v1           #bodyId:I
    .end local v11           #titleId:I
    :cond_4
    const v11, 0x7f0c00bc

    .line 99
    .restart local v11       #titleId:I
    const v1, 0x7f0c00bd

    .restart local v1       #bodyId:I
    goto :goto_2
.end method
