.class Lcom/android/mms/spam/HelpActivity$7$1;
.super Lcom/tencent/update/IBinderUpdateListener$Stub;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/HelpActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/spam/HelpActivity$7;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/HelpActivity$7;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/mms/spam/HelpActivity$7$1;->this$1:Lcom/android/mms/spam/HelpActivity$7;

    invoke-direct {p0}, Lcom/tencent/update/IBinderUpdateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/tencent/update/BinderUpdateInfo;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity$7$1;->this$1:Lcom/android/mms/spam/HelpActivity$7;

    iget-object v1, v1, Lcom/android/mms/spam/HelpActivity$7;->this$0:Lcom/android/mms/spam/HelpActivity;

    iget-object v1, v1, Lcom/android/mms/spam/HelpActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 341
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 342
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 343
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 344
    return-void
.end method

.method public onUpdateCanceled()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public onUpdateEvent(Lcom/tencent/update/BinderUpdateInfo;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 347
    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity$7$1;->this$1:Lcom/android/mms/spam/HelpActivity$7;

    iget-object v1, v1, Lcom/android/mms/spam/HelpActivity$7;->this$0:Lcom/android/mms/spam/HelpActivity;

    iget-object v1, v1, Lcom/android/mms/spam/HelpActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 348
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 349
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 350
    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity$7$1;->this$1:Lcom/android/mms/spam/HelpActivity$7;

    iget-object v1, v1, Lcom/android/mms/spam/HelpActivity$7;->this$0:Lcom/android/mms/spam/HelpActivity;

    iget-object v1, v1, Lcom/android/mms/spam/HelpActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 351
    return-void
.end method

.method public onUpdateFinished()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public onUpdateStarted()V
    .locals 0

    .prologue
    .line 358
    return-void
.end method
