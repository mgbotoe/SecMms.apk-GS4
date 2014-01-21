.class public Lcom/android/mms/ui/PDPResetDialog;
.super Landroid/app/Activity;
.source "PDPResetDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/PDPResetDialog"

.field private static instance:Lcom/android/mms/ui/PDPResetDialog;


# instance fields
.field private sDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/mms/ui/PDPResetDialog;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/mms/ui/PDPResetDialog;->instance:Lcom/android/mms/ui/PDPResetDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/PDPResetDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/mms/ui/PDPResetDialog;->sDialog:Landroid/app/AlertDialog;

    return-object p1
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/PDPResetDialog;->sDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/PDPResetDialog;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/mms/ui/PDPResetDialog;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/PDPResetDialog;->sDialog:Landroid/app/AlertDialog;

    .line 67
    invoke-virtual {p0}, Lcom/android/mms/ui/PDPResetDialog;->finish()V

    .line 69
    :cond_0
    const-string v0, "Mms/PDPResetDialog"

    const-string v1, "dismissDialog"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/PDPResetDialog;->requestWindowFeature(I)Z

    .line 26
    sput-object p0, Lcom/android/mms/ui/PDPResetDialog;->instance:Lcom/android/mms/ui/PDPResetDialog;

    .line 27
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c006a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 29
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 30
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 31
    const v1, 0x7f0c0404

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 33
    const v1, 0x7f0c00ea

    new-instance v2, Lcom/android/mms/ui/PDPResetDialog$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/PDPResetDialog$1;-><init>(Lcom/android/mms/ui/PDPResetDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 41
    const v1, 0x7f0c00eb

    new-instance v2, Lcom/android/mms/ui/PDPResetDialog$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/PDPResetDialog$2;-><init>(Lcom/android/mms/ui/PDPResetDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 48
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/PDPResetDialog;->sDialog:Landroid/app/AlertDialog;

    .line 49
    iget-object v1, p0, Lcom/android/mms/ui/PDPResetDialog;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/PDPResetDialog;->sDialog:Landroid/app/AlertDialog;

    .line 76
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 55
    const-string v0, "Mms/PDPResetDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause : inCall = , isFinishing() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/PDPResetDialog;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 60
    invoke-virtual {p0}, Lcom/android/mms/ui/PDPResetDialog;->dismissDialog()V

    .line 61
    return-void
.end method

.method protected sendIntentPDPReset(Lcom/android/mms/ui/PDPResetDialog;)V
    .locals 3
    .parameter "instance"

    .prologue
    .line 79
    const-string v1, "Mms/PDPResetDialog"

    const-string v2, "sendIntentPDPReset"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PDP_RESET_TEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "actionNum"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/PDPResetDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    return-void
.end method
