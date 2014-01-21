.class Lcom/android/mms/spam/HelpActivity$6;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/HelpActivity;->checkRuleStore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/HelpActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/HelpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/mms/spam/HelpActivity$6;->this$0:Lcom/android/mms/spam/HelpActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 282
    :try_start_0
    sget-object v1, Lcom/android/mms/spam/HelpActivity;->myService:Lcom/tencent/update/IUpdateService;

    new-instance v2, Lcom/android/mms/spam/HelpActivity$6$1;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/HelpActivity$6$1;-><init>(Lcom/android/mms/spam/HelpActivity$6;)V

    invoke-interface {v1, v2}, Lcom/tencent/update/IUpdateService;->check(Lcom/tencent/update/IBinderCheckListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    sget-boolean v1, Lcom/android/mms/spam/HelpActivity;->bCheckError:Z

    if-nez v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity$6;->this$0:Lcom/android/mms/spam/HelpActivity;

    iget-object v1, v1, Lcom/android/mms/spam/HelpActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 315
    :cond_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
