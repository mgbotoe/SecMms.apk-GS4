.class Lcom/android/mms/ui/MmsPlayerController$2;
.super Landroid/os/Handler;
.source "MmsPlayerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPlayerController;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPlayerController;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController$2;->this$0:Lcom/android/mms/ui/MmsPlayerController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 381
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 383
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController$2;->this$0:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->hide()V

    goto :goto_0

    .line 386
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController$2;->this$0:Lcom/android/mms/ui/MmsPlayerController;

    #calls: Lcom/android/mms/ui/MmsPlayerController;->setProgress()I
    invoke-static {v1}, Lcom/android/mms/ui/MmsPlayerController;->access$100(Lcom/android/mms/ui/MmsPlayerController;)I

    move-result v0

    .line 387
    .local v0, pos:I
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController$2;->this$0:Lcom/android/mms/ui/MmsPlayerController;

    #getter for: Lcom/android/mms/ui/MmsPlayerController;->mDragging:Z
    invoke-static {v1}, Lcom/android/mms/ui/MmsPlayerController;->access$200(Lcom/android/mms/ui/MmsPlayerController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController$2;->this$0:Lcom/android/mms/ui/MmsPlayerController;

    #getter for: Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z
    invoke-static {v1}, Lcom/android/mms/ui/MmsPlayerController;->access$000(Lcom/android/mms/ui/MmsPlayerController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerController$2;->this$0:Lcom/android/mms/ui/MmsPlayerController;

    #getter for: Lcom/android/mms/ui/MmsPlayerController;->mPlayer:Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;
    invoke-static {v1}, Lcom/android/mms/ui/MmsPlayerController;->access$300(Lcom/android/mms/ui/MmsPlayerController;)Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsPlayerController$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 389
    rem-int/lit16 v1, v0, 0x3e8

    rsub-int v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/mms/ui/MmsPlayerController$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
