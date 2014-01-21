.class final Lcom/android/mms/transaction/MessagingNotification$6;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification;->foregroundPresidentialAlert(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3831
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3835
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/mms/transaction/MessagingNotification;->getNewCMASPresidentialCount(Landroid/content/Context;)I
    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->access$1000(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1100()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3836
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1100()Landroid/app/Notification;

    move-result-object v1

    iput-object v2, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3837
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1100()Landroid/app/Notification;

    move-result-object v1

    iput-object v2, v1, Landroid/app/Notification;->vibrate:[J

    .line 3838
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1100()Landroid/app/Notification;

    move-result-object v1

    const v2, 0x7f020031

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 3839
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1100()Landroid/app/Notification;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->priority:I

    .line 3841
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3843
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v1, 0x41c

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1100()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3845
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method
