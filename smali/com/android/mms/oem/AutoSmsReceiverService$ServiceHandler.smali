.class final Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;
.super Landroid/os/Handler;
.source "AutoSmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/oem/AutoSmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/oem/AutoSmsReceiverService;


# direct methods
.method public constructor <init>(Lcom/android/mms/oem/AutoSmsReceiverService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/oem/AutoSmsReceiverService;

    .line 93
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 94
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 104
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAutoSmsSending()Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 108
    .local v2, serviceId:I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 109
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.android.mms.oem.AUTO_SMS_MESSAGE_SENT_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    iget-object v3, p0, Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/oem/AutoSmsReceiverService;

    #calls: Lcom/android/mms/oem/AutoSmsReceiverService;->handleAutoSmsSent(Landroid/content/Intent;)V
    invoke-static {v3, v1}, Lcom/android/mms/oem/AutoSmsReceiverService;->access$000(Lcom/android/mms/oem/AutoSmsReceiverService;Landroid/content/Intent;)V

    .line 113
    iget-object v3, p0, Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/oem/AutoSmsReceiverService;

    invoke-static {v3, v2}, Lcom/android/mms/oem/AutoSmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto :goto_0

    .line 114
    :cond_2
    const-string v3, "android.intent.action.ACTION_ONALARM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/android/mms/oem/AutoSmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/oem/AutoSmsReceiverService;

    #calls: Lcom/android/mms/oem/AutoSmsReceiverService;->handleAutoSmsAlarm(Landroid/content/Intent;)V
    invoke-static {v3, v1}, Lcom/android/mms/oem/AutoSmsReceiverService;->access$100(Lcom/android/mms/oem/AutoSmsReceiverService;Landroid/content/Intent;)V

    goto :goto_0
.end method
