.class Lcom/android/mms/util/DirectCallingManager$3;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/DirectCallingManager;->registerMotionRecognition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DirectCallingManager;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager$3;->this$0:Lcom/android/mms/util/DirectCallingManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isPossibleToCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 505
    sget-boolean v2, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    if-eqz v2, :cond_0

    .line 506
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "onMotionListener() twice"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :goto_0
    return v0

    .line 510
    :cond_0
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager$3;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #calls: Lcom/android/mms/util/DirectCallingManager;->isCall()Z
    invoke-static {v2}, Lcom/android/mms/util/DirectCallingManager;->access$1500(Lcom/android/mms/util/DirectCallingManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 511
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "onMotionListener() isCall"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_1
    sput-boolean v1, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    move v0, v1

    .line 516
    goto :goto_0
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 484
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 486
    :pswitch_0
    const-string v0, "Mms/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMotionListener() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager$3;->isPossibleToCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager$3;->this$0:Lcom/android/mms/util/DirectCallingManager;

    const-string v1, "left"

    #calls: Lcom/android/mms/util/DirectCallingManager;->readyForCall(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/mms/util/DirectCallingManager;->access$1400(Lcom/android/mms/util/DirectCallingManager;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :pswitch_1
    const-string v0, "Mms/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMotionListener() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager$3;->isPossibleToCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager$3;->this$0:Lcom/android/mms/util/DirectCallingManager;

    const-string v1, "right"

    #calls: Lcom/android/mms/util/DirectCallingManager;->readyForCall(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/mms/util/DirectCallingManager;->access$1400(Lcom/android/mms/util/DirectCallingManager;Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
