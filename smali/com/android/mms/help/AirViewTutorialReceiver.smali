.class public Lcom/android/mms/help/AirViewTutorialReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AirViewTutorialReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.mms.help.AirViewMainActivity"

    if-ne v1, v2, :cond_0

    .line 12
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/help/AirViewMainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .local v0, mIntent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 16
    .end local v0           #mIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
