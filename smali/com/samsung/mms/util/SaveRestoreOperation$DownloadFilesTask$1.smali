.class Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask$1;
.super Ljava/lang/Object;
.source "SaveRestoreOperation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;


# direct methods
.method constructor <init>(Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;)V
    .locals 0
    .parameter

    .prologue
    .line 845
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask$1;->this$1:Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask$1;->this$1:Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->cancel(Z)Z

    .line 849
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 850
    return-void
.end method
