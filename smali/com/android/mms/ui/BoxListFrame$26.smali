.class Lcom/android/mms/ui/BoxListFrame$26;
.super Landroid/os/Handler;
.source "BoxListFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 3819
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$26;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 3822
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 3839
    :cond_0
    :goto_0
    return-void

    .line 3824
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$26;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$5508(Lcom/android/mms/ui/BoxListFrame;)I

    .line 3825
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$26;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->moveMsgCount:I
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$5500(Lcom/android/mms/ui/BoxListFrame;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$26;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectedSMSMsgIds:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$5100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$26;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectedMMSMsgIds:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$5200(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_0

    .line 3827
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$26;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->moveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$5700(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3828
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$26;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->moveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$5700(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3832
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$26;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    .line 3833
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$26;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1, v4, v4}, Lcom/android/mms/ui/BoxListFrame;->setMoveModeLayout(ZZ)V

    .line 3834
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Move mode will be changed to normal and Move dialog will be destroyed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3835
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$26;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$5800(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/util/SecurityMailboxUtils;->sendMoveCompleteBroadCast(Landroid/content/Context;)V

    goto :goto_0

    .line 3829
    :catch_0
    move-exception v0

    .line 3830
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IllegalArgumentException: View not attached to window manager"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3822
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
