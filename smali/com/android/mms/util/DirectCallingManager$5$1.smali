.class Lcom/android/mms/util/DirectCallingManager$5$1;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/DirectCallingManager$5;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/util/DirectCallingManager$5;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DirectCallingManager$5;)V
    .locals 0
    .parameter

    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager$5$1;->this$1:Lcom/android/mms/util/DirectCallingManager$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 621
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager$5$1;->this$1:Lcom/android/mms/util/DirectCallingManager$5;

    iget-object v0, v0, Lcom/android/mms/util/DirectCallingManager$5;->this$0:Lcom/android/mms/util/DirectCallingManager;

    iget-boolean v0, v0, Lcom/android/mms/util/DirectCallingManager;->mIsProximityCloseDistance:Z

    if-nez v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager$5$1;->this$1:Lcom/android/mms/util/DirectCallingManager$5;

    iget-object v0, v0, Lcom/android/mms/util/DirectCallingManager$5;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #calls: Lcom/android/mms/util/DirectCallingManager;->registerAccelerometer()V
    invoke-static {v0}, Lcom/android/mms/util/DirectCallingManager;->access$2400(Lcom/android/mms/util/DirectCallingManager;)V

    .line 623
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$202(Z)Z

    .line 624
    sput-boolean v1, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager$5$1;->this$1:Lcom/android/mms/util/DirectCallingManager$5;

    iget-object v0, v0, Lcom/android/mms/util/DirectCallingManager$5;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #calls: Lcom/android/mms/util/DirectCallingManager;->isCall()Z
    invoke-static {v0}, Lcom/android/mms/util/DirectCallingManager;->access$1500(Lcom/android/mms/util/DirectCallingManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager$5$1;->this$1:Lcom/android/mms/util/DirectCallingManager$5;

    iget-object v0, v0, Lcom/android/mms/util/DirectCallingManager$5;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #calls: Lcom/android/mms/util/DirectCallingManager;->unregisterAccelerometer()V
    invoke-static {v0}, Lcom/android/mms/util/DirectCallingManager;->access$2500(Lcom/android/mms/util/DirectCallingManager;)V

    .line 636
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager$5$1;->this$1:Lcom/android/mms/util/DirectCallingManager$5;

    iget-object v0, v0, Lcom/android/mms/util/DirectCallingManager$5;->this$0:Lcom/android/mms/util/DirectCallingManager;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/util/DirectCallingManager;->readyForCall(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/mms/util/DirectCallingManager;->access$1400(Lcom/android/mms/util/DirectCallingManager;Ljava/lang/String;)V

    goto :goto_0
.end method
