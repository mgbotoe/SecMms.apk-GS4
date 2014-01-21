.class public Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;
.super Landroid/os/Handler;
.source "MmsSystemEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MmsSystemEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeUpHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 102
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 106
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 149
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MmsSystemEventReceiver] what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 108
    :pswitch_0
    const-string v2, "Mms:transaction"

    const-string v5, "[MmsSystemEventReceiver] EVENT_WAKE_UP_SERVICE"

    invoke-static {v2, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$000()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    .line 111
    const-string v2, "Mms:transaction"

    const-string v3, "[MmsSystemEventReceiver] context null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$000()Landroid/content/Context;

    move-result-object v2

    const-string v5, "connectivity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-static {v2}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$102(Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    .line 115
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$100()Landroid/net/ConnectivityManager;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 117
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v3

    .line 131
    .local v0, networkAvailable:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 132
    invoke-static {v4}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$202(I)I

    .line 133
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$000()Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;)V
    invoke-static {v2}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$300(Landroid/content/Context;)V

    goto :goto_0

    .end local v0           #networkAvailable:Z
    :cond_1
    move v0, v4

    .line 117
    goto :goto_1

    .line 135
    .restart local v0       #networkAvailable:Z
    :cond_2
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$200()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_3

    .line 136
    const-string v2, "Mms:transaction"

    const-string v3, "[MmsSystemEventReceiver] cannot use mobile_mms"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v4}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$402(Z)Z

    goto :goto_0

    .line 140
    :cond_3
    const-string v2, "Mms:transaction"

    const-string v4, "[MmsSystemEventReceiver] mobile_mms is not available"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$208()I

    .line 143
    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 144
    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
