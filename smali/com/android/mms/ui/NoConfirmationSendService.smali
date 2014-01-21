.class public Lcom/android/mms/ui/NoConfirmationSendService;
.super Landroid/app/IntentService;
.source "NoConfirmationSendService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/NoConfirmationSendService"


# instance fields
.field public mToastHandler:Landroid/os/Handler;

.field private final sDPMToast:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/mms/ui/NoConfirmationSendService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 56
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/mms/ui/NoConfirmationSendService;->sDPMToast:I

    .line 163
    new-instance v0, Lcom/android/mms/ui/NoConfirmationSendService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NoConfirmationSendService$1;-><init>(Lcom/android/mms/ui/NoConfirmationSendService;)V

    iput-object v0, p0, Lcom/android/mms/ui/NoConfirmationSendService;->mToastHandler:Landroid/os/Handler;

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NoConfirmationSendService;->setIntentRedelivery(Z)V

    .line 52
    return-void
.end method

.method private static getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J
    .locals 7
    .parameter "context"
    .parameter "dests"

    .prologue
    .line 155
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 156
    .local v3, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 157
    .local v4, s:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 158
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    invoke-static {p0, v3}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v5

    return-wide v5
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 17
    .parameter "intent"

    .prologue
    .line 60
    const-string v3, "NoConfirmationSendService onHandleIntent"

    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->log(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, action:Ljava/lang/String;
    const-string v3, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NoConfirmationSendService onHandleIntent wrong action: "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->log(Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v3, "device_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/NoConfirmationSendService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/admin/DevicePolicyManager;

    .line 71
    .local v12, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 72
    const-string v3, "Mms/NoConfirmationSendService"

    const-string v15, "message sending is disabled"

    invoke-static {v3, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/NoConfirmationSendService;->mToastHandler:Landroid/os/Handler;

    const/16 v15, 0x64

    invoke-virtual {v3, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 78
    .local v10, extras:Landroid/os/Bundle;
    if-nez v10, :cond_2

    .line 79
    const-string v3, "Called to send SMS but no extras"

    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_2
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, message:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/NoConfirmationSendService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_3

    .line 88
    invoke-static {v5}, Lcom/android/mms/ui/GreekInputHandler;->convertGreekSmallLetterToCapital(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-static {v5}, Lcom/android/mms/ui/GreekInputHandler;->MappingGreekCharater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 94
    .local v11, intentUri:Landroid/net/Uri;
    invoke-static {v11}, Lcom/android/mms/data/Conversation;->getRecipients(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    .line 96
    .local v13, recipients:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 97
    const-string v3, "Recipient(s) cannot be empty"

    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_4
    const-string v3, "showUI"

    const/4 v15, 0x0

    invoke-virtual {v10, v3, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 101
    const-string v3, "com.android.mms.ui.ComposeMessageActivityNoLockScreen"

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const/high16 v3, 0x1000

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/NoConfirmationSendService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 106
    const-string v3, "Message cannot be empty"

    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_6
    const-string v3, ";"

    invoke-static {v13, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, dests:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/ui/NoConfirmationSendService;->getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J

    move-result-wide v6

    .line 117
    .local v6, threadId:J
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDelaySendSMS()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 119
    const-wide/16 v15, 0x5dc

    :try_start_0
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_1
    const-string v3, "Mms/NoConfirmationSendService"

    const-string v15, "@@ NoConfirmationSendService : "

    invoke-static {v3, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRoamGuard()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isInternationalRoaming(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 129
    new-instance v3, Landroid/content/Intent;

    const-class v15, Lcom/android/mms/ui/RoamingGuardPopupActivity;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v15, "recipient"

    invoke-virtual {v3, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v15, "body"

    invoke-virtual {v3, v15, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v15, "threadid"

    invoke-virtual {v3, v15, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    const/high16 v15, 0x1800

    invoke-virtual {v3, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v14

    .line 136
    .local v14, roamingIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/NoConfirmationSendService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 120
    .end local v14           #roamingIntent:Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 121
    .local v9, e:Ljava/lang/InterruptedException;
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 138
    .end local v9           #e:Ljava/lang/InterruptedException;
    :cond_8
    new-instance v2, Lcom/android/mms/transaction/SmsMessageSender;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .line 144
    .local v2, smsMessageSender:Lcom/android/mms/transaction/SmsMessageSender;
    :try_start_1
    invoke-virtual {v2, v6, v7}, Lcom/android/mms/transaction/SmsMessageSender;->sendMessage(J)Z

    .line 146
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v6, v7}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 147
    :catch_1
    move-exception v9

    .line 148
    .local v9, e:Ljava/lang/Exception;
    const-string v3, "Mms/NoConfirmationSendService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to send SMS message, threadId="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v15, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
