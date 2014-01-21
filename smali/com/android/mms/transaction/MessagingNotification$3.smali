.class final Lcom/android/mms/transaction/MessagingNotification$3;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification;->playInConversationNotificationSound(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$player:Lcom/android/mms/transaction/NotificationPlayer;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/NotificationPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$player:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$player:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-virtual {v0}, Lcom/android/mms/transaction/NotificationPlayer;->stop()V

    .line 834
    return-void
.end method
