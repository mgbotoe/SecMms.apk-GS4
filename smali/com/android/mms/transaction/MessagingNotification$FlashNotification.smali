.class public Lcom/android/mms/transaction/MessagingNotification$FlashNotification;
.super Ljava/lang/Thread;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlashNotification"
.end annotation


# instance fields
.field private mFlashcontext:Landroid/content/Context;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private motionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 2098
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2083
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessagingNotification$FlashNotification$1;-><init>(Lcom/android/mms/transaction/MessagingNotification$FlashNotification;)V

    iput-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 2099
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->mFlashcontext:Landroid/content/Context;

    .line 2100
    return-void
.end method


# virtual methods
.method public flashOff()V
    .locals 2

    .prologue
    .line 2120
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 2121
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->motionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 2122
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2123
    return-void
.end method

.method public flashOn()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-wide/16 v1, 0xfa

    .line 2110
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 2111
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 2112
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 2113
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 2114
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 2115
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 2116
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->flashOff()V

    .line 2117
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->mFlashcontext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->motionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 2104
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->motionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 2105
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->flashOn()V

    .line 2106
    return-void
.end method
