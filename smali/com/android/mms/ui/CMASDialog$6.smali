.class Lcom/android/mms/ui/CMASDialog$6;
.super Landroid/telephony/PhoneStateListener;
.source "CMASDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CMASDialog;->checkCallState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CMASDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/mms/ui/CMASDialog$6;->this$0:Lcom/android/mms/ui/CMASDialog;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v3, 0x1

    .line 428
    const-string v0, "Mms/CMASDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in on call state changed, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    packed-switch p1, :pswitch_data_0

    .line 440
    :goto_0
    return-void

    .line 431
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/ui/CMASDialog;->access$702(Z)Z

    goto :goto_0

    .line 434
    :pswitch_1
    invoke-static {v3}, Lcom/android/mms/ui/CMASDialog;->access$702(Z)Z

    goto :goto_0

    .line 437
    :pswitch_2
    invoke-static {v3}, Lcom/android/mms/ui/CMASDialog;->access$702(Z)Z

    goto :goto_0

    .line 429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
