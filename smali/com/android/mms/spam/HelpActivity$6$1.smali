.class Lcom/android/mms/spam/HelpActivity$6$1;
.super Lcom/tencent/update/IBinderCheckListener$Stub;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/HelpActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/spam/HelpActivity$6;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/HelpActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/mms/spam/HelpActivity$6$1;->this$1:Lcom/android/mms/spam/HelpActivity$6;

    invoke-direct {p0}, Lcom/tencent/update/IBinderCheckListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckCanceled()V
    .locals 2

    .prologue
    .line 294
    const-string v0, "demo1"

    const-string v1, "onCheckCanceled"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public onCheckEvent(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity$6$1;->this$1:Lcom/android/mms/spam/HelpActivity$6;

    iget-object v1, v1, Lcom/android/mms/spam/HelpActivity$6;->this$0:Lcom/android/mms/spam/HelpActivity;

    iget-object v1, v1, Lcom/android/mms/spam/HelpActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 285
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 286
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 287
    return-void
.end method

.method public onCheckFinished(Lcom/tencent/update/BinderCheckResult;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 298
    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity$6$1;->this$1:Lcom/android/mms/spam/HelpActivity$6;

    iget-object v0, v0, Lcom/android/mms/spam/HelpActivity$6;->this$0:Lcom/android/mms/spam/HelpActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/spam/HelpActivity;->mCheckResults:Lcom/tencent/update/BinderCheckResult;
    invoke-static {v0, v1}, Lcom/android/mms/spam/HelpActivity;->access$102(Lcom/android/mms/spam/HelpActivity;Lcom/tencent/update/BinderCheckResult;)Lcom/tencent/update/BinderCheckResult;

    .line 299
    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity$6$1;->this$1:Lcom/android/mms/spam/HelpActivity$6;

    iget-object v0, v0, Lcom/android/mms/spam/HelpActivity$6;->this$0:Lcom/android/mms/spam/HelpActivity;

    #setter for: Lcom/android/mms/spam/HelpActivity;->mCheckResults:Lcom/tencent/update/BinderCheckResult;
    invoke-static {v0, p1}, Lcom/android/mms/spam/HelpActivity;->access$102(Lcom/android/mms/spam/HelpActivity;Lcom/tencent/update/BinderCheckResult;)Lcom/tencent/update/BinderCheckResult;

    .line 300
    if-nez p1, :cond_0

    .line 301
    const-string v0, "demo1"

    const-string v1, "onCheckFinished result is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity$6$1;->this$1:Lcom/android/mms/spam/HelpActivity$6;

    iget-object v0, v0, Lcom/android/mms/spam/HelpActivity$6;->this$0:Lcom/android/mms/spam/HelpActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/spam/HelpActivity;->removeDialog(I)V

    .line 304
    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity$6$1;->this$1:Lcom/android/mms/spam/HelpActivity$6;

    iget-object v0, v0, Lcom/android/mms/spam/HelpActivity$6;->this$0:Lcom/android/mms/spam/HelpActivity;

    invoke-virtual {v0, v2}, Lcom/android/mms/spam/HelpActivity;->removeDialog(I)V

    .line 305
    sput-boolean v2, Lcom/android/mms/spam/HelpActivity;->bCheckError:Z

    .line 307
    :cond_0
    return-void
.end method

.method public onCheckStarted()V
    .locals 2

    .prologue
    .line 290
    const-string v0, "demo1"

    const-string v1, "onCheckStarted"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method
