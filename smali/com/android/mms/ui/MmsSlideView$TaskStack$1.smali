.class Lcom/android/mms/ui/MmsSlideView$TaskStack$1;
.super Ljava/lang/Thread;
.source "MmsSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSlideView$TaskStack;->createThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSlideView$TaskStack;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSlideView$TaskStack;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack$1;->this$0:Lcom/android/mms/ui/MmsSlideView$TaskStack;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 589
    const/4 v2, 0x0

    .line 592
    .local v2, task:Ljava/lang/Runnable;
    :goto_0
    invoke-static {}, Lcom/android/mms/ui/MmsSlideView$TaskStack;->access$100()Lcom/android/mms/ui/MmsSlideView$TaskStack;

    move-result-object v4

    monitor-enter v4

    .line 593
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack$1;->this$0:Lcom/android/mms/ui/MmsSlideView$TaskStack;

    #getter for: Lcom/android/mms/ui/MmsSlideView$TaskStack;->mTaskTodo:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/mms/ui/MmsSlideView$TaskStack;->access$200(Lcom/android/mms/ui/MmsSlideView$TaskStack;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-eqz v3, :cond_0

    .line 595
    :try_start_1
    invoke-static {}, Lcom/android/mms/ui/MmsSlideView$TaskStack;->access$100()Lcom/android/mms/ui/MmsSlideView$TaskStack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 601
    :cond_0
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack$1;->this$0:Lcom/android/mms/ui/MmsSlideView$TaskStack;

    #getter for: Lcom/android/mms/ui/MmsSlideView$TaskStack;->mTaskTodo:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/mms/ui/MmsSlideView$TaskStack;->access$200(Lcom/android/mms/ui/MmsSlideView$TaskStack;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 602
    const/4 v2, 0x0

    .line 606
    :goto_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 608
    if-eqz v2, :cond_1

    .line 609
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 612
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack$1;->this$0:Lcom/android/mms/ui/MmsSlideView$TaskStack;

    iget v3, v3, Lcom/android/mms/ui/MmsSlideView$TaskStack;->mRunningState:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 616
    :pswitch_0
    invoke-static {}, Lcom/android/mms/ui/MmsSlideView$TaskStack;->access$100()Lcom/android/mms/ui/MmsSlideView$TaskStack;

    move-result-object v4

    monitor-enter v4

    .line 617
    :try_start_3
    invoke-static {}, Lcom/android/mms/ui/MmsSlideView$TaskStack;->access$100()Lcom/android/mms/ui/MmsSlideView$TaskStack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 619
    :goto_3
    :try_start_4
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 596
    :catch_0
    move-exception v1

    .line 597
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 606
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .line 604
    :cond_2
    :try_start_6
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView$TaskStack$1;->this$0:Lcom/android/mms/ui/MmsSlideView$TaskStack;

    #getter for: Lcom/android/mms/ui/MmsSlideView$TaskStack;->mTaskTodo:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/mms/ui/MmsSlideView$TaskStack;->access$200(Lcom/android/mms/ui/MmsSlideView$TaskStack;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Runnable;

    move-object v2, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 614
    :pswitch_1
    return-void

    .line 618
    :catch_1
    move-exception v3

    goto :goto_3

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
