.class final Lcom/android/mms/transaction/NotificationPlayer$CmdThread;
.super Ljava/lang/Thread;
.source "NotificationPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/NotificationPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CmdThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/NotificationPlayer;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/NotificationPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationPlayer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    #getter for: Lcom/android/mms/transaction/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/transaction/NotificationPlayer;->access$200(Lcom/android/mms/transaction/NotificationPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 161
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 166
    :goto_0
    const/4 v1, 0x0

    .line 168
    .local v1, cmd:Lcom/android/mms/transaction/NotificationPlayer$Command;
    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #getter for: Lcom/android/mms/transaction/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/mms/transaction/NotificationPlayer;->access$400(Lcom/android/mms/transaction/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 170
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #getter for: Lcom/android/mms/transaction/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/mms/transaction/NotificationPlayer;->access$400(Lcom/android/mms/transaction/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/mms/transaction/NotificationPlayer$Command;

    move-object v1, v0

    .line 171
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget v4, v1, Lcom/android/mms/transaction/NotificationPlayer$Command;->code:I

    packed-switch v4, :pswitch_data_0

    .line 200
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #getter for: Lcom/android/mms/transaction/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/mms/transaction/NotificationPlayer;->access$400(Lcom/android/mms/transaction/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 201
    :try_start_1
    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #getter for: Lcom/android/mms/transaction/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/mms/transaction/NotificationPlayer;->access$400(Lcom/android/mms/transaction/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 206
    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    const/4 v6, 0x0

    #setter for: Lcom/android/mms/transaction/NotificationPlayer;->mThread:Lcom/android/mms/transaction/NotificationPlayer$CmdThread;
    invoke-static {v4, v6}, Lcom/android/mms/transaction/NotificationPlayer;->access$602(Lcom/android/mms/transaction/NotificationPlayer;Lcom/android/mms/transaction/NotificationPlayer$CmdThread;)Lcom/android/mms/transaction/NotificationPlayer$CmdThread;

    .line 207
    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #calls: Lcom/android/mms/transaction/NotificationPlayer;->releaseWakeLock()V
    invoke-static {v4}, Lcom/android/mms/transaction/NotificationPlayer;->access$700(Lcom/android/mms/transaction/NotificationPlayer;)V

    .line 208
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 171
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 176
    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #calls: Lcom/android/mms/transaction/NotificationPlayer;->startSound(Lcom/android/mms/transaction/NotificationPlayer$Command;)V
    invoke-static {v4, v1}, Lcom/android/mms/transaction/NotificationPlayer;->access$500(Lcom/android/mms/transaction/NotificationPlayer;Lcom/android/mms/transaction/NotificationPlayer$Command;)V

    goto :goto_1

    .line 180
    :pswitch_1
    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #getter for: Lcom/android/mms/transaction/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/android/mms/transaction/NotificationPlayer;->access$100(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/android/mms/transaction/NotificationPlayer$Command;->requestTime:J

    sub-long v2, v4, v6

    .line 182
    .local v2, delay:J
    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 183
    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #getter for: Lcom/android/mms/transaction/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/transaction/NotificationPlayer;->access$200(Lcom/android/mms/transaction/NotificationPlayer;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notification stop delayed by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "msecs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_1
    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #getter for: Lcom/android/mms/transaction/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/android/mms/transaction/NotificationPlayer;->access$100(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 186
    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #getter for: Lcom/android/mms/transaction/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/android/mms/transaction/NotificationPlayer;->access$100(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 187
    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #setter for: Lcom/android/mms/transaction/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4, v8}, Lcom/android/mms/transaction/NotificationPlayer;->access$102(Lcom/android/mms/transaction/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 188
    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #getter for: Lcom/android/mms/transaction/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/mms/transaction/NotificationPlayer;->access$300(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 189
    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #setter for: Lcom/android/mms/transaction/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4, v8}, Lcom/android/mms/transaction/NotificationPlayer;->access$302(Lcom/android/mms/transaction/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 190
    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #getter for: Lcom/android/mms/transaction/NotificationPlayer;->mLooper:Landroid/os/Looper;
    invoke-static {v4}, Lcom/android/mms/transaction/NotificationPlayer;->access$000(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #getter for: Lcom/android/mms/transaction/NotificationPlayer;->mLooper:Landroid/os/Looper;
    invoke-static {v4}, Lcom/android/mms/transaction/NotificationPlayer;->access$000(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    sget-object v5, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v4, v5, :cond_0

    .line 192
    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #getter for: Lcom/android/mms/transaction/NotificationPlayer;->mLooper:Landroid/os/Looper;
    invoke-static {v4}, Lcom/android/mms/transaction/NotificationPlayer;->access$000(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    goto/16 :goto_1

    .line 195
    .end local v2           #delay:J
    :cond_2
    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #getter for: Lcom/android/mms/transaction/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/transaction/NotificationPlayer;->access$200(Lcom/android/mms/transaction/NotificationPlayer;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "STOP command without a player"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 210
    :cond_3
    :try_start_3
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
