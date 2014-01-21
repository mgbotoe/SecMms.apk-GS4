.class public Lcom/android/mms/ui/RoamingGuardPopupActivity;
.super Landroid/app/Activity;
.source "RoamingGuardPopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RoamingGuardPopupActivity$RoamingPopupDismissListener;,
        Lcom/android/mms/ui/RoamingGuardPopupActivity$CancelSendingListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/RoamingGuardPopupActivity"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mMessage:Ljava/lang/String;

.field private mRecipients:[Ljava/lang/String;

.field private mThreadId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mDialog:Landroid/app/AlertDialog;

    .line 39
    iput-object v0, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mRecipients:[Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mMessage:Ljava/lang/String;

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mThreadId:J

    .line 140
    return-void
.end method

.method private sendMessage(Z)V
    .locals 8
    .parameter "isSendNow"

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    if-eqz p1, :cond_0

    .line 117
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    .end local v0           #sender:Lcom/android/mms/transaction/MessageSender;
    iget-object v2, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mRecipients:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mMessage:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mThreadId:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .line 125
    .restart local v0       #sender:Lcom/android/mms/transaction/MessageSender;
    :goto_0
    :try_start_0
    iget-wide v1, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mThreadId:J

    invoke-interface {v0, v1, v2}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 127
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mThreadId:J

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_1
    return-void

    .line 119
    :cond_0
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    .end local v0           #sender:Lcom/android/mms/transaction/MessageSender;
    iget-object v2, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mRecipients:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mMessage:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mThreadId:J

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JZ)V

    .restart local v0       #sender:Lcom/android/mms/transaction/MessageSender;
    goto :goto_0

    .line 128
    :catch_0
    move-exception v7

    .line 129
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "Mms/RoamingGuardPopupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mThreadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/RoamingGuardPopupActivity;->requestWindowFeature(I)Z

    .line 47
    invoke-virtual {p0}, Lcom/android/mms/ui/RoamingGuardPopupActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f0202ac

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/mms/ui/RoamingGuardPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "recipient"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, recipients:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/RoamingGuardPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "body"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mMessage:Ljava/lang/String;

    .line 51
    const-string v3, ";"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mRecipients:[Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/android/mms/ui/RoamingGuardPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "threadid"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mThreadId:J

    .line 54
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040082

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 56
    .local v2, roamGuardView:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 58
    const v3, 0x7f080015

    new-instance v4, Lcom/android/mms/ui/RoamingGuardPopupActivity$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/RoamingGuardPopupActivity$1;-><init>(Lcom/android/mms/ui/RoamingGuardPopupActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    const v3, 0x7f0c0050

    new-instance v4, Lcom/android/mms/ui/RoamingGuardPopupActivity$CancelSendingListener;

    invoke-direct {v4, p0, v7}, Lcom/android/mms/ui/RoamingGuardPopupActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/RoamingGuardPopupActivity;Lcom/android/mms/ui/RoamingGuardPopupActivity$1;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mDialog:Landroid/app/AlertDialog;

    .line 65
    iget-object v3, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/mms/ui/RoamingGuardPopupActivity$RoamingPopupDismissListener;

    invoke-direct {v4, p0, v7}, Lcom/android/mms/ui/RoamingGuardPopupActivity$RoamingPopupDismissListener;-><init>(Lcom/android/mms/ui/RoamingGuardPopupActivity;Lcom/android/mms/ui/RoamingGuardPopupActivity$1;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 66
    iget-object v3, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 67
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 94
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 72
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/RoamingGuardPopupActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/RoamingGuardPopupActivity;->finish()V

    .line 86
    return-void
.end method

.method protected sendSmsInInternationalRoaming(I)V
    .locals 3
    .parameter "item"

    .prologue
    .line 97
    const-string v0, "Mms/RoamingGuardPopupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSmsInInternationalRoaming : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    packed-switch p1, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 101
    :pswitch_0
    const-string v0, "Mms/RoamingGuardPopupActivity"

    const-string v1, "saveSmsToPending: call WorkingMessage.saveSmsToPending"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/RoamingGuardPopupActivity;->sendMessage(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/android/mms/ui/RoamingGuardPopupActivity;->finish()V

    goto :goto_0

    .line 108
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/RoamingGuardPopupActivity;->sendMessage(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/android/mms/ui/RoamingGuardPopupActivity;->finish()V

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
