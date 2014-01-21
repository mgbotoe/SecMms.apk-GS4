.class public Lcom/android/mms/transaction/MMSStateBroadcaster$InstanceLock;
.super Ljava/lang/Object;
.source "MMSStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MMSStateBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceLock"
.end annotation


# static fields
.field private static sLockCount:I

.field private static sMutex:Ljava/lang/Object;


# instance fields
.field locked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/transaction/MMSStateBroadcaster$InstanceLock;->sLockCount:I

    .line 274
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MMSStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 246
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster$InstanceLock;->locked:Z

    .line 247
    sget-object v1, Lcom/android/mms/transaction/MMSStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_0
    sget v0, Lcom/android/mms/transaction/MMSStateBroadcaster$InstanceLock;->sLockCount:I

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcom/android/mms/transaction/MMSStateBroadcaster;

    invoke-direct {v0, p1}, Lcom/android/mms/transaction/MMSStateBroadcaster;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/mms/transaction/MMSStateBroadcaster;->access$002(Lcom/android/mms/transaction/MMSStateBroadcaster;)Lcom/android/mms/transaction/MMSStateBroadcaster;

    .line 251
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster$InstanceLock;->locked:Z

    .line 252
    sget v0, Lcom/android/mms/transaction/MMSStateBroadcaster$InstanceLock;->sLockCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mms/transaction/MMSStateBroadcaster$InstanceLock;->sLockCount:I

    .line 253
    monitor-exit v1

    .line 254
    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/mms/transaction/MMSStateBroadcaster$InstanceLock;->unlock()V

    .line 271
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster$InstanceLock;->locked:Z

    if-eqz v0, :cond_1

    .line 259
    sget-object v1, Lcom/android/mms/transaction/MMSStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    sget v0, Lcom/android/mms/transaction/MMSStateBroadcaster$InstanceLock;->sLockCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/mms/transaction/MMSStateBroadcaster$InstanceLock;->sLockCount:I

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/transaction/MMSStateBroadcaster;->access$002(Lcom/android/mms/transaction/MMSStateBroadcaster;)Lcom/android/mms/transaction/MMSStateBroadcaster;

    .line 263
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/MMSStateBroadcaster$InstanceLock;->locked:Z

    .line 264
    monitor-exit v1

    .line 266
    :cond_1
    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
