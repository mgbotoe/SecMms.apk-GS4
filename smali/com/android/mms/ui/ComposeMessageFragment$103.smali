.class Lcom/android/mms/ui/ComposeMessageFragment$103;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 9808
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$103;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 9825
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "mDataSetChangedListener.onContentChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9826
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$103;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startMsgListQuery()V

    .line 9827
    return-void
.end method

.method public onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    .line 9810
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "mDataSetChangedListener.onDataSetChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9811
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$103;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mPossiblePendingNotification:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6902(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 9813
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$103;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->isEnter:Z

    if-eqz v0, :cond_0

    .line 9814
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$103;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->isEnter:Z

    .line 9815
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$103$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$103$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$103;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9822
    :cond_0
    return-void
.end method
