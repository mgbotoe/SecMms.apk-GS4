.class public Lcom/android/mms/ui/ToastHandler;
.super Landroid/os/Handler;
.source "ToastHandler.java"


# static fields
.field private static final KEY_LENGTH:Ljava/lang/String; = "KEY_LENGTH"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "KEY_MESSAGE"

.field private static final TAG:Ljava/lang/String; = "Mms/ToastHandler"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .parameter "looper"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    const-string v0, "Mms/ToastHandler"

    const-string v1, "toast handler created"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static createToastInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .parameter "message"
    .parameter "length"

    .prologue
    .line 51
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 52
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "KEY_MESSAGE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "KEY_LENGTH"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 28
    const-string v6, "Mms/ToastHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage. msg= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31
    .local v4, objActivity:Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 33
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    .line 48
    .end local v4           #objActivity:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 36
    .restart local v4       #objActivity:Ljava/lang/Object;
    :cond_1
    const-string v6, "KEY_MESSAGE"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, message:Ljava/lang/String;
    const-string v6, "KEY_LENGTH"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 40
    .local v2, length:I
    :try_start_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 41
    check-cast v4, Landroid/app/Activity;

    .end local v4           #objActivity:Ljava/lang/Object;
    invoke-static {v4, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 42
    .local v5, toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    .end local v5           #toast:Landroid/widget/Toast;
    :catch_0
    move-exception v1

    .line 45
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
