.class public Lcom/android/mms/transaction/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 12
    const-string v2, "AlarmReceiver"

    const-string v3, "Alarm Fire"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string v2, "threadId"

    const-wide/16 v3, -0x1

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 14
    .local v0, threadId:J
    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->cancelAlarm(Landroid/content/Context;)V

    .line 15
    invoke-static {p1, v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->updateRepeatNotifications(Landroid/content/Context;J)V

    .line 16
    return-void
.end method
