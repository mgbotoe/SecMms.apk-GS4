.class Lcom/samsung/mms/util/SaveRestoreOperation$12;
.super Landroid/content/BroadcastReceiver;
.source "SaveRestoreOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/util/SaveRestoreOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/util/SaveRestoreOperation;


# direct methods
.method constructor <init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$12;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 582
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 584
    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$12;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iput-boolean v5, v1, Lcom/samsung/mms/util/SaveRestoreOperation;->mNoSdCard:Z

    .line 585
    const-string v1, "Mms/SaveRestoreOperation"

    const-string v2, "Inside mSdCardReceiver, disable the positive button now"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$12;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v1, v1, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$12;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v1, v1, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 595
    :cond_1
    :goto_0
    return-void

    .line 589
    :cond_2
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$12;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iput-boolean v4, v1, Lcom/samsung/mms/util/SaveRestoreOperation;->mNoSdCard:Z

    .line 591
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$12;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v1, v1, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$12;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v1, v1, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 592
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$12;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v1, v1, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
