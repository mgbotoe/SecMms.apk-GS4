.class public Lcom/android/mms/ui/MmsSlideView$TaskStack;
.super Ljava/lang/Object;
.source "MmsSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsSlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskStack"
.end annotation


# static fields
.field public static final PAUSE:I = 0x2

.field public static final RUN:I = 0x1

.field public static final STOP:I = 0x3

.field private static sInstance:Lcom/android/mms/ui/MmsSlideView$TaskStack;


# instance fields
.field protected mRunningState:I

.field private mTaskTodo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 579
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 568
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->mRunningState:I

    .line 580
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->mTaskTodo:Ljava/util/LinkedList;

    .line 581
    return-void
.end method

.method static synthetic access$100()Lcom/android/mms/ui/MmsSlideView$TaskStack;
    .locals 1

    .prologue
    .line 560
    sget-object v0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->sInstance:Lcom/android/mms/ui/MmsSlideView$TaskStack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsSlideView$TaskStack;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->mTaskTodo:Ljava/util/LinkedList;

    return-object v0
.end method

.method private createThread()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 584
    new-instance v0, Lcom/android/mms/ui/MmsSlideView$TaskStack$1;

    const-string v1, "slide bitmap loader"

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MmsSlideView$TaskStack$1;-><init>(Lcom/android/mms/ui/MmsSlideView$TaskStack;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/android/mms/ui/MmsSlideView$TaskStack;
    .locals 1

    .prologue
    .line 571
    sget-object v0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->sInstance:Lcom/android/mms/ui/MmsSlideView$TaskStack;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Lcom/android/mms/ui/MmsSlideView$TaskStack;

    invoke-direct {v0}, Lcom/android/mms/ui/MmsSlideView$TaskStack;-><init>()V

    sput-object v0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->sInstance:Lcom/android/mms/ui/MmsSlideView$TaskStack;

    .line 573
    sget-object v0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->sInstance:Lcom/android/mms/ui/MmsSlideView$TaskStack;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSlideView$TaskStack;->start()V

    .line 576
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->sInstance:Lcom/android/mms/ui/MmsSlideView$TaskStack;

    return-object v0
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 628
    sget-object v1, Lcom/android/mms/ui/MmsSlideView$TaskStack;->sInstance:Lcom/android/mms/ui/MmsSlideView$TaskStack;

    monitor-enter v1

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->mTaskTodo:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 630
    iget v0, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->mRunningState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 631
    sget-object v0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->sInstance:Lcom/android/mms/ui/MmsSlideView$TaskStack;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 633
    :cond_0
    monitor-exit v1

    .line 634
    return-void

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 664
    iget v0, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->mRunningState:I

    if-ne v0, v1, :cond_0

    .line 667
    :goto_0
    return-void

    .line 666
    :cond_0
    iput v1, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->mRunningState:I

    goto :goto_0
.end method

.method public removeTask(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 637
    sget-object v1, Lcom/android/mms/ui/MmsSlideView$TaskStack;->sInstance:Lcom/android/mms/ui/MmsSlideView$TaskStack;

    monitor-enter v1

    .line 638
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->mTaskTodo:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 639
    monitor-exit v1

    .line 640
    return-void

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 670
    iget v0, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->mRunningState:I

    if-ne v0, v1, :cond_0

    .line 676
    :goto_0
    return-void

    .line 672
    :cond_0
    iput v1, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->mRunningState:I

    .line 673
    sget-object v1, Lcom/android/mms/ui/MmsSlideView$TaskStack;->sInstance:Lcom/android/mms/ui/MmsSlideView$TaskStack;

    monitor-enter v1

    .line 674
    :try_start_0
    sget-object v0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->sInstance:Lcom/android/mms/ui/MmsSlideView$TaskStack;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 675
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 643
    iget v0, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->mRunningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView$TaskStack;->resume()V

    .line 646
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 647
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSlideView$TaskStack;->createThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    .line 648
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 653
    iget v0, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->mRunningState:I

    if-ne v0, v1, :cond_0

    .line 661
    :goto_0
    return-void

    .line 655
    :cond_0
    sget-object v1, Lcom/android/mms/ui/MmsSlideView$TaskStack;->sInstance:Lcom/android/mms/ui/MmsSlideView$TaskStack;

    monitor-enter v1

    .line 656
    const/4 v0, 0x3

    :try_start_0
    iput v0, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->mRunningState:I

    .line 657
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    .line 658
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->mTaskTodo:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 659
    sget-object v0, Lcom/android/mms/ui/MmsSlideView$TaskStack;->sInstance:Lcom/android/mms/ui/MmsSlideView$TaskStack;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 660
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
