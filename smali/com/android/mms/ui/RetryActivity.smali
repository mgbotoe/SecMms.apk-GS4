.class public Lcom/android/mms/ui/RetryActivity;
.super Landroid/app/Activity;
.source "RetryActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/RetryActivity"


# instance fields
.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialog:Landroid/app/AlertDialog;

.field private mError:I

.field private final mRetryListener:Landroid/content/DialogInterface$OnClickListener;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    .line 75
    new-instance v0, Lcom/android/mms/ui/RetryActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RetryActivity$2;-><init>(Lcom/android/mms/ui/RetryActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 84
    new-instance v0, Lcom/android/mms/ui/RetryActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RetryActivity$3;-><init>(Lcom/android/mms/ui/RetryActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mRetryListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/RetryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/mms/ui/RetryActivity;->moveMessageToFail()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/RetryActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/RetryActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/mms/ui/RetryActivity;->mError:I

    return v0
.end method

.method private initResource()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0368

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 59
    const v1, 0x7f0c00ea

    iget-object v2, p0, Lcom/android/mms/ui/RetryActivity;->mRetryListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    const v1, 0x7f0c00eb

    iget-object v2, p0, Lcom/android/mms/ui/RetryActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 62
    const v1, 0x7f0c0369

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    .line 65
    iget-object v1, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 66
    iget-object v1, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/ui/RetryActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/RetryActivity$1;-><init>(Lcom/android/mms/ui/RetryActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 73
    return-void
.end method

.method private moveMessageToFail()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mUri:Landroid/net/Uri;

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/mms/ui/RetryActivity;->mError:I

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 97
    invoke-virtual {p0}, Lcom/android/mms/ui/RetryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v2, 0x0

    const-class v3, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RetryActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RetryActivity;->requestWindowFeature(I)Z

    .line 30
    invoke-virtual {p0}, Lcom/android/mms/ui/RetryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mUri:Landroid/net/Uri;

    .line 31
    invoke-virtual {p0}, Lcom/android/mms/ui/RetryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "error"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/RetryActivity;->mError:I

    .line 32
    invoke-direct {p0}, Lcom/android/mms/ui/RetryActivity;->initResource()V

    .line 33
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 53
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 54
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 38
    invoke-direct {p0}, Lcom/android/mms/ui/RetryActivity;->moveMessageToFail()V

    .line 39
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mUri:Landroid/net/Uri;

    .line 40
    const-string v0, "error"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/RetryActivity;->mError:I

    .line 42
    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/RetryActivity;->initResource()V

    .line 46
    return-void
.end method
