.class Lcom/android/mms/ui/MmsPlayerControllerMulti$6;
.super Landroid/os/Handler;
.source "MmsPlayerControllerMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsPlayerControllerMulti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$6;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 386
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 388
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$6;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->hide()V

    goto :goto_0

    .line 391
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$6;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    #calls: Lcom/android/mms/ui/MmsPlayerControllerMulti;->setProgress()I
    invoke-static {v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->access$300(Lcom/android/mms/ui/MmsPlayerControllerMulti;)I

    move-result v0

    .line 392
    .local v0, pos:I
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$6;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    #getter for: Lcom/android/mms/ui/MmsPlayerControllerMulti;->mDragging:Z
    invoke-static {v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->access$400(Lcom/android/mms/ui/MmsPlayerControllerMulti;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$6;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    #getter for: Lcom/android/mms/ui/MmsPlayerControllerMulti;->mShowing:Z
    invoke-static {v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->access$000(Lcom/android/mms/ui/MmsPlayerControllerMulti;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$6;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    #getter for: Lcom/android/mms/ui/MmsPlayerControllerMulti;->mPlayer:Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;
    invoke-static {v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->access$500(Lcom/android/mms/ui/MmsPlayerControllerMulti;)Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti$6;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 394
    rem-int/lit16 v1, v0, 0x3e8

    rsub-int v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/mms/ui/MmsPlayerControllerMulti$6;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
