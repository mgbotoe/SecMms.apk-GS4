.class public Lcom/android/mms/transaction/MessageBackgroundHiddenKeystringReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessageBackgroundHiddenKeystringReceiver.java"


# static fields
.field private static final ACTION_SEND_MMS_DB_BACKUP:Ljava/lang/String; = "com.android.mms.Intent.ACTION_SEND_MESSAGE_BACKGROUND_KEYSTRING"

.field private static final ACTION_SEND_SECRET_CODE:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field private static final TAG:Ljava/lang/String; = "MessageBackgroundHiddenKeystringReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v7, 0x1000

    .line 24
    if-nez p2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, szAction:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 31
    const-string v6, "com.android.mms.Intent.ACTION_SEND_MESSAGE_BACKGROUND_KEYSTRING"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 32
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageDbBackupKeystring()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 34
    const-string v6, "MODE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, szMode:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 36
    const-string v6, "USER"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "ENG"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 37
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-direct {v0, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v0, dbBackupIntent:Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    const-string v6, "MODE"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 43
    .end local v0           #dbBackupIntent:Landroid/content/Intent;
    .end local v2           #szMode:Ljava/lang/String;
    :cond_3
    const-string v6, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 44
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageDbBackupKeystring()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 48
    .local v5, uriIntent:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, szUriScheme:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, szUriHost:Ljava/lang/String;
    const-string v6, "android_secret_code"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "66723646"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-direct {v0, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .restart local v0       #dbBackupIntent:Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    const-string v6, "MODE"

    const-string v7, "USER"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
