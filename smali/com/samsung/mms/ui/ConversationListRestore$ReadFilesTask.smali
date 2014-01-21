.class Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;
.super Landroid/os/AsyncTask;
.source "ConversationListRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/ConversationListRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadFilesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mProgressDialog:Landroid/app/ProgressDialog;

.field mSelectedIndex:I

.field final synthetic this$0:Lcom/samsung/mms/ui/ConversationListRestore;


# direct methods
.method private constructor <init>(Lcom/samsung/mms/ui/ConversationListRestore;)V
    .locals 1
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 458
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->mSelectedIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/mms/ui/ConversationListRestore;Lcom/samsung/mms/ui/ConversationListRestore$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;-><init>(Lcom/samsung/mms/ui/ConversationListRestore;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .parameter "params"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/mms/ui/ConversationListRestore;->newArrayFromSelection(Z)Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1102(Lcom/samsung/mms/ui/ConversationListRestore;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 469
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1100(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 456
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 473
    const-string v0, "Mms/ConversationListRestore"

    const-string v1, "ReadFilesTask onCancelled"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 475
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$100(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/samsung/mms/util/SaveRestoreOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->OnDestroy()V

    .line 476
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "count"

    .prologue
    .line 479
    const-string v0, "Mms/ConversationListRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$100(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/samsung/mms/util/SaveRestoreOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1100(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/mms/util/SaveRestoreOperation;->startRestoreOperation(Ljava/util/ArrayList;)V

    .line 484
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;
    invoke-static {v0}, Lcom/samsung/mms/ui/ConversationListRestore;->access$100(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/samsung/mms/util/SaveRestoreOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #calls: Lcom/samsung/mms/ui/ConversationListRestore;->getIds()[J
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$000(Lcom/samsung/mms/ui/ConversationListRestore;)[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/mms/util/SaveRestoreOperation;->checkForDuplicates([J)V

    .line 485
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 456
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 461
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1000(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 462
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$1000(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0180

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 464
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 465
    return-void
.end method
