.class public Lcom/android/mms/ui/SecretModeHandler;
.super Landroid/content/BroadcastReceiver;
.source "SecretModeHandler.java"


# static fields
.field public static final SECRET_MODE_CHANGED:I = 0x64

.field public static final SECRET_MODE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.SECRET_MODE_OFF"

.field public static final SECRET_MODE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.SECRET_MODE_ON"

.field public static final SECRET_OPEN_THREAD:Ljava/lang/String; = "com.samsung.android.intent.action.SECRET_OPEN_MESSAGE_THREAD"

.field private static final TAG:Ljava/lang/String; = "Mms/SecretModeHandler"

.field public static mIsSecretMode:Z


# instance fields
.field private COLUMNS:[Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    .line 56
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_priavte"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/SecretModeHandler;->COLUMNS:[Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/android/mms/ui/SecretModeHandler$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SecretModeHandler$1;-><init>(Lcom/android/mms/ui/SecretModeHandler;)V

    iput-object v0, p0, Lcom/android/mms/ui/SecretModeHandler;->mHandler:Landroid/os/Handler;

    .line 71
    iput-object p1, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    .line 72
    return-void
.end method


# virtual methods
.method public isPrivateContact(Ljava/lang/String;)Z
    .locals 12
    .parameter "mNumber"

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 156
    const-string v0, "content://com.android.contacts/private"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 157
    .local v8, isPrivateUri:Landroid/net/Uri;
    move-object v6, p1

    .line 159
    .local v6, filter:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v10

    .line 183
    :goto_0
    return v0

    .line 162
    :cond_0
    invoke-static {v8, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 163
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/SecretModeHandler;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 165
    .local v9, phoneCursor:Landroid/database/Cursor;
    if-nez v9, :cond_1

    move v0, v10

    .line 166
    goto :goto_0

    .line 170
    :cond_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    const/16 v0, 0xa

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 173
    .local v7, isPrivate:I
    if-ne v7, v11, :cond_2

    .line 180
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move v0, v11

    goto :goto_0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move v0, v10

    goto :goto_0

    .end local v7           #isPrivate:I
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 183
    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public isSecret(J)Z
    .locals 1
    .parameter "mThreadId"

    .prologue
    .line 187
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 190
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 76
    const-string v0, "com.samsung.android.intent.action.SECRET_MODE_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SecretModeHandler;->scheduleSecretModeChanged(Z)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-string v0, "com.samsung.android.intent.action.SECRET_MODE_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SecretModeHandler;->scheduleSecretModeChanged(Z)V

    goto :goto_0
.end method

.method public registerSecretModeReceiver()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.intent.action.SECRET_MODE_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "com.samsung.android.intent.action.SECRET_MODE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    return-void
.end method

.method public requestIdentifyFingerPrint(JLandroid/content/Intent;)V
    .locals 6
    .parameter "mThreadId"
    .parameter "currIntent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 140
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    :goto_0
    return-void

    .line 145
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 146
    move-object v1, p3

    .line 147
    .local v1, mIntent:Landroid/content/Intent;
    const-string v2, "com.samsung.android.intent.action.SECRET_OPEN_MESSAGE_THREAD"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v2, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 149
    .local v0, SuccessPendingIndent:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v4}, Lcom/samsung/android/secretmode/SecretModeManager;->showVisualCue(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    goto :goto_0

    .line 151
    .end local v0           #SuccessPendingIndent:Landroid/app/PendingIntent;
    .end local v1           #mIntent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v4}, Lcom/samsung/android/secretmode/SecretModeManager;->showVisualCue(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    goto :goto_0
.end method

.method public scheduleSecretModeChanged(Z)V
    .locals 5
    .parameter "secretMode"

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v3, p0, Lcom/android/mms/ui/SecretModeHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 136
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 137
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 135
    goto :goto_0
.end method

.method public unregisterSecretModeReceiver()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    return-void
.end method

.method public updateSecretMode(ZZ)V
    .locals 5
    .parameter "secretMode"
    .parameter "updateNoti"

    .prologue
    const/4 v4, 0x1

    .line 99
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v1, "Mms/SecretModeHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSecretMode secretMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sput-boolean p1, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    .line 106
    sput-boolean v4, Lcom/android/mms/data/Contact;->isInvalid:Z

    .line 107
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 108
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 110
    sget-boolean v1, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-nez v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageFragment()Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    .line 112
    .local v0, mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/SecretModeHandler;->isSecret(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    .line 114
    iget-object v1, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    .line 118
    .end local v0           #mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    :cond_2
    if-eqz p2, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    goto :goto_0
.end method
