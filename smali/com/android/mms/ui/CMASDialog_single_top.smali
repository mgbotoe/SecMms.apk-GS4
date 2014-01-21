.class public Lcom/android/mms/ui/CMASDialog_single_top;
.super Landroid/app/Activity;
.source "CMASDialog_single_top.java"


# static fields
.field public static final CMAS_USER_PREF:Ljava/lang/String; = "cmas_user_preferences"

.field private static final TAG:Ljava/lang/String; = "Mms/CMASDialog"

.field private static inCall:Z

.field private static instance:Lcom/android/mms/ui/CMASDialog_single_top;

.field public static sIsCMASDialogActivityAlive:Z


# instance fields
.field private listener:Landroid/telephony/PhoneStateListener;

.field private mBody:Ljava/lang/String;

.field public mDialogHandled:Z

.field private mStatusbarManager:Landroid/app/StatusBarManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private messageUri:Landroid/net/Uri;

.field private msgIdentifier:Ljava/lang/String;

.field private sDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Lcom/android/mms/ui/CMASDialog_single_top;->sIsCMASDialogActivityAlive:Z

    .line 69
    sput-boolean v0, Lcom/android/mms/ui/CMASDialog_single_top;->inCall:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/CMASDialog_single_top;->mDialogHandled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/CMASDialog_single_top;)Landroid/app/StatusBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog_single_top;->mStatusbarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/CMASDialog_single_top;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog_single_top;->messageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/CMASDialog_single_top;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/mms/ui/CMASDialog_single_top;->markAsRead(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/mms/ui/CMASDialog_single_top;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/mms/ui/CMASDialog_single_top;->sDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/CMASDialog_single_top;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/ui/CMASDialog_single_top;->checkLockScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/CMASDialog_single_top;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/ui/CMASDialog_single_top;->launchMessage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/CMASDialog_single_top;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/ui/CMASDialog_single_top;->showCMASUserPropmtDialog()V

    return-void
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    sput-boolean p0, Lcom/android/mms/ui/CMASDialog_single_top;->inCall:Z

    return p0
.end method

.method private checkCallState()V
    .locals 1

    .prologue
    .line 389
    new-instance v0, Lcom/android/mms/ui/CMASDialog_single_top$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CMASDialog_single_top$5;-><init>(Lcom/android/mms/ui/CMASDialog_single_top;)V

    iput-object v0, p0, Lcom/android/mms/ui/CMASDialog_single_top;->listener:Landroid/telephony/PhoneStateListener;

    .line 406
    return-void
.end method

.method private checkLockScreenOn()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 353
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CMASDialog_single_top;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 355
    .local v0, mKeyguardManager:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    const-string v1, "Mms/CMASDialog"

    const-string v2, "checkLockScreenOn() - isKeyguardLocked TRUE. Lock Screen ON"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v1, 0x1

    .line 362
    :cond_0
    return v1
.end method

.method public static getInstance()Lcom/android/mms/ui/CMASDialog_single_top;
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/android/mms/ui/CMASDialog_single_top;->instance:Lcom/android/mms/ui/CMASDialog_single_top;

    return-object v0
.end method

.method public static isCMASDialogActivityAlive()Z
    .locals 1

    .prologue
    .line 267
    sget-boolean v0, Lcom/android/mms/ui/CMASDialog_single_top;->sIsCMASDialogActivityAlive:Z

    return v0
.end method

.method private launchMessage()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 366
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 367
    .local v0, clickIntent:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.mms"

    const-string v7, "com.android.mms.ui.ConversationComposer"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 368
    const/high16 v5, 0x3400

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 370
    iget-object v5, p0, Lcom/android/mms/ui/CMASDialog_single_top;->messageUri:Landroid/net/Uri;

    invoke-static {p0, v5}, Lcom/android/mms/transaction/MessagingNotification;->getWpmThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v3

    .line 371
    .local v3, threadId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 372
    invoke-static {v3, v4}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 373
    const-string v5, "thread_id"

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 375
    :cond_0
    const-string v5, "isFromRecvNoti"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 376
    const-string v5, "noti"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 377
    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {p0, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 381
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v1

    .line 383
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private markAsRead(Landroid/net/Uri;)V
    .locals 7
    .parameter "messageUri"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 337
    if-eqz p1, :cond_0

    .line 338
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 339
    .local v0, mReadContentValues:Landroid/content/ContentValues;
    const-string v3, "read"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    const-string v3, "Mms/CMASDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update read for thread uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASDialog_single_top;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 345
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->getWpmThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    .line 347
    .local v1, threadId:J
    const-wide/16 v3, -0x2

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 351
    .end local v0           #mReadContentValues:Landroid/content/ContentValues;
    .end local v1           #threadId:J
    :cond_0
    return-void
.end method

.method private showCMASUserPropmtDialog()V
    .locals 5

    .prologue
    .line 257
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/CMASUserPromptDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    .local v0, cmasDialogIntent:Landroid/content/Intent;
    const/high16 v2, 0x1800

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASDialog_single_top;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v0           #cmasDialogIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "Mms/CMASDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in creating CMAS User Propmt dialog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 3

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog_single_top;->sDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog_single_top;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog_single_top;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 301
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/CMASDialog_single_top;->sDialog:Landroid/app/AlertDialog;

    .line 302
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASDialog_single_top;->finish()V

    .line 305
    :cond_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASDialog_single_top;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 306
    .local v0, mStatusbarManager:Landroid/app/StatusBarManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 308
    const-string v1, "Mms/CMASDialog"

    const-string v2, "dismissDialog"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public dismissDialogForPriority()V
    .locals 2

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog_single_top;->sDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog_single_top;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 318
    :cond_0
    iget-boolean v1, p0, Lcom/android/mms/ui/CMASDialog_single_top;->mDialogHandled:Z

    if-nez v1, :cond_1

    .line 319
    sget-object v1, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 323
    :cond_1
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASDialog_single_top;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 324
    .local v0, mStatusbarManager:Landroid/app/StatusBarManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 326
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASDialog_single_top;->finish()V

    .line 327
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-static {}, Lcom/android/mms/MmsConfig;->CMASDialogMoveToFrontWhenCallingStatus()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/android/mms/ui/CMASDialog_single_top;->checkCallState()V

    .line 79
    iget-object v9, p0, Lcom/android/mms/ui/CMASDialog_single_top;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v9, :cond_0

    .line 80
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/CMASDialog_single_top;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/android/mms/ui/CMASDialog_single_top;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 82
    :cond_0
    iget-object v9, p0, Lcom/android/mms/ui/CMASDialog_single_top;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v10, p0, Lcom/android/mms/ui/CMASDialog_single_top;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v11, 0x20

    invoke-virtual {v9, v10, v11}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 87
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 89
    .local v4, sharedpref:Landroid/content/SharedPreferences;
    const-string v9, "cmas_user_preferences"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 90
    .local v3, isUserPrompt:Z
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 92
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/mms/ui/CMASDialog_single_top;->sIsCMASDialogActivityAlive:Z

    .line 93
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/CMASDialog_single_top;->requestWindowFeature(I)Z

    .line 94
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASDialog_single_top;->getWindow()Landroid/view/Window;

    move-result-object v9

    const v10, 0x7f0202ac

    invoke-virtual {v9, v10}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 95
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLCDOn()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASDialog_single_top;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/high16 v10, 0x28

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASDialog_single_top;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "msgIdentifier"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/CMASDialog_single_top;->msgIdentifier:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASDialog_single_top;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "body"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/CMASDialog_single_top;->mBody:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASDialog_single_top;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "cmas_message_uri"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, uri:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/CMASDialog_single_top;->messageUri:Landroid/net/Uri;

    .line 104
    iget-object v9, p0, Lcom/android/mms/ui/CMASDialog_single_top;->mBody:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/mms/ui/CMASDialog_single_top;->messageUri:Landroid/net/Uri;

    if-nez v9, :cond_4

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASDialog_single_top;->finish()V

    .line 253
    :goto_1
    return-void

    .line 98
    .end local v7           #uri:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASDialog_single_top;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/high16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 110
    .restart local v7       #uri:Ljava/lang/String;
    :cond_4
    sput-object p0, Lcom/android/mms/ui/CMASDialog_single_top;->instance:Lcom/android/mms/ui/CMASDialog_single_top;

    .line 113
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0c007e

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/CMASDialog_single_top;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/CMASDialog_single_top;->msgIdentifier:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, address:Ljava/lang/String;
    const-string v9, "Mms/CMASDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showCMASDialog, msgIdentifier = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/CMASDialog_single_top;->msgIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    .line 118
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASDialog_single_top;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020289

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 120
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v9

    const/4 v10, 0x6

    if-eq v9, v10, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_a

    .line 121
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0c01b5

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/CMASDialog_single_top;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/mms/ui/CMASDialog_single_top;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, title:Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 129
    .end local v5           #title:Ljava/lang/String;
    :goto_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f04001e

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 130
    .local v8, view:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 132
    const-string v9, "statusbar"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/CMASDialog_single_top;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/StatusBarManager;

    iput-object v9, p0, Lcom/android/mms/ui/CMASDialog_single_top;->mStatusbarManager:Landroid/app/StatusBarManager;

    .line 133
    iget-object v9, p0, Lcom/android/mms/ui/CMASDialog_single_top;->mStatusbarManager:Landroid/app/StatusBarManager;

    const/high16 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/StatusBarManager;->disable(I)V

    .line 135
    new-instance v9, Lcom/android/mms/ui/CMASDialog_single_top$1;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/CMASDialog_single_top$1;-><init>(Lcom/android/mms/ui/CMASDialog_single_top;)V

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 151
    const-string v9, "Presidential Alert"

    iget-object v10, p0, Lcom/android/mms/ui/CMASDialog_single_top;->mBody:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 152
    :cond_7
    const v9, 0x7f0b0082

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    .line 155
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCMASTestOnOff()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 157
    const v9, 0x7f0b0082

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/mms/ui/CMASDialog_single_top;->mBody:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v9

    const/4 v10, 0x6

    if-eq v9, v10, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_d

    .line 163
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0c007e

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/CMASDialog_single_top;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/CMASDialog_single_top;->msgIdentifier:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/CMASDialog_single_top;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, translatedAddress:Ljava/lang/String;
    const v9, 0x7f0b0083

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .end local v6           #translatedAddress:Ljava/lang/String;
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASDialogOKisDismiss()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 177
    invoke-static {}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasDialogCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_f

    .line 178
    const v9, 0x7f0c017b

    new-instance v10, Lcom/android/mms/ui/CMASDialog_single_top$2;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/CMASDialog_single_top$2;-><init>(Lcom/android/mms/ui/CMASDialog_single_top;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    :goto_5
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 251
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/CMASDialog_single_top;->sDialog:Landroid/app/AlertDialog;

    .line 252
    iget-object v9, p0, Lcom/android/mms/ui/CMASDialog_single_top;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 123
    .end local v8           #view:Landroid/widget/LinearLayout;
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 124
    const v9, 0x7f0c01ba

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 127
    :cond_b
    const v9, 0x7f0c01b5

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 159
    .restart local v8       #view:Landroid/widget/LinearLayout;
    :cond_c
    const v9, 0x7f0b0082

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/mms/ui/CMASDialog_single_top;->mBody:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 167
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 168
    const v9, 0x7f0b0083

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 172
    :cond_e
    const v9, 0x7f0b0083

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 195
    :cond_f
    const v9, 0x7f0c017b

    new-instance v10, Lcom/android/mms/ui/CMASDialog_single_top$3;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/CMASDialog_single_top$3;-><init>(Lcom/android/mms/ui/CMASDialog_single_top;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    .line 208
    :cond_10
    const v9, 0x7f0c002a

    new-instance v10, Lcom/android/mms/ui/CMASDialog_single_top$4;

    invoke-direct {v10, p0, v0, v3, v2}, Lcom/android/mms/ui/CMASDialog_single_top$4;-><init>(Lcom/android/mms/ui/CMASDialog_single_top;Ljava/lang/String;ZLandroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CMASDialog_single_top;->sDialog:Landroid/app/AlertDialog;

    .line 333
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/CMASDialog_single_top;->sIsCMASDialogActivityAlive:Z

    .line 334
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 273
    const-string v0, "Mms/CMASDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause : inCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/CMASDialog_single_top;->inCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFinishing() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/CMASDialog_single_top;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/android/mms/MmsConfig;->CMASDialogMoveToFrontWhenCallingStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    sget-boolean v0, Lcom/android/mms/ui/CMASDialog_single_top;->inCall:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/CMASDialog_single_top;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog_single_top;->sDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog_single_top;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 281
    :cond_0
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->showCMASDialogAgain(Landroid/content/Context;)V

    .line 285
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 289
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASDialog_single_top;->dismissDialog()V

    .line 290
    return-void
.end method
