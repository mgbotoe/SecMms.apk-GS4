.class Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;
.super Landroid/os/AsyncTask;
.source "SavedMsgsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/SavedMsgsList;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mProgressDialog:Landroid/app/ProgressDialog;

.field mSelectedIndex:I

.field final synthetic this$0:Lcom/samsung/mms/ui/SavedMsgsList;


# direct methods
.method private constructor <init>(Lcom/samsung/mms/ui/SavedMsgsList;)V
    .locals 1
    .parameter

    .prologue
    .line 854
    iput-object p1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 855
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 856
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->mSelectedIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/mms/ui/SavedMsgsList;Lcom/samsung/mms/ui/SavedMsgsList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 854
    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;-><init>(Lcom/samsung/mms/ui/SavedMsgsList;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 854
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .parameter "params"

    .prologue
    .line 866
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 867
    .local v1, position:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->mSelectedIndex:I

    .line 868
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    #calls: Lcom/samsung/mms/ui/SavedMsgsList;->constructFileName(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1200(Lcom/samsung/mms/ui/SavedMsgsList;I)Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, completeFileName:Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->readXmlFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/samsung/mms/ui/SavedMsgsList;->array:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1902(Lcom/samsung/mms/ui/SavedMsgsList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 870
    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 874
    const-string v0, "Mms/SavedMsgsList"

    const-string v1, "ReadFilesTask onCancelled"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 876
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;
    invoke-static {v0}, Lcom/samsung/mms/ui/SavedMsgsList;->access$100(Lcom/samsung/mms/ui/SavedMsgsList;)Lcom/samsung/mms/util/SaveRestoreOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->OnDestroy()V

    .line 877
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 854
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .parameter "completeFileName"

    .prologue
    const/4 v3, 0x0

    .line 880
    const-string v1, "Mms/SavedMsgsList"

    const-string v2, "onPostExecute called"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 882
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 884
    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mOperation:I
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$900(Lcom/samsung/mms/ui/SavedMsgsList;)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    .line 885
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->array:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1900(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->array:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1900(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 886
    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1600(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0396

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 909
    :cond_2
    :goto_0
    return-void

    .line 888
    :cond_3
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$100(Lcom/samsung/mms/ui/SavedMsgsList;)Lcom/samsung/mms/util/SaveRestoreOperation;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->array:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1900(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/mms/util/SaveRestoreOperation;->startRestoreOperation(Ljava/util/ArrayList;)V

    .line 889
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$100(Lcom/samsung/mms/ui/SavedMsgsList;)Lcom/samsung/mms/util/SaveRestoreOperation;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #calls: Lcom/samsung/mms/ui/SavedMsgsList;->getIds()[J
    invoke-static {v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$000(Lcom/samsung/mms/ui/SavedMsgsList;)[J

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/mms/util/SaveRestoreOperation;->checkForDuplicates([J)V

    goto :goto_0

    .line 893
    :cond_4
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mOperation:I
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$900(Lcom/samsung/mms/ui/SavedMsgsList;)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 894
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->array:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1900(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->array:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1900(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->mSelectedIndex:I

    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1300(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_6

    .line 895
    :cond_5
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1600(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0393

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 898
    :cond_6
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    iget-object v2, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->array:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1900(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v2

    #calls: Lcom/samsung/mms/ui/SavedMsgsList;->isMultipleConversations(Ljava/util/ArrayList;Z)Z
    invoke-static {v1, v2, v3}, Lcom/samsung/mms/ui/SavedMsgsList;->access$2000(Lcom/samsung/mms/ui/SavedMsgsList;Ljava/util/ArrayList;Z)Z

    move-result v1

    if-nez v1, :cond_7

    .line 899
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    const-class v2, Lcom/samsung/mms/ui/RestorePreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 900
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "file_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-virtual {v1, v0}, Lcom/samsung/mms/ui/SavedMsgsList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 903
    .end local v0           #intent:Landroid/content/Intent;
    :cond_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    const-class v2, Lcom/samsung/mms/ui/ConversationListRestore;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 904
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "file_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 905
    const-string v2, "file_date"

    iget-object v3, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1300(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v1

    iget v4, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->mSelectedIndex:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1600(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3, v4, v5, v1}, Lcom/samsung/mms/ui/SavedMsgsList;->formatDate(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 906
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-virtual {v1, v0}, Lcom/samsung/mms/ui/SavedMsgsList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 859
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1600(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 860
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1600(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0180

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 861
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 862
    iget-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$ReadFilesTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 863
    return-void
.end method
