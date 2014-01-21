.class Lcom/android/mms/util/DownloadManager$6;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DownloadManager;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DownloadManager;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/mms/util/DownloadManager$6;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 269
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    const v0, 0x7f0c01ae

    .line 275
    .local v0, downloadExpired:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/util/DownloadManager$6;->this$0:Lcom/android/mms/util/DownloadManager;

    #getter for: Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/util/DownloadManager;->access$300(Lcom/android/mms/util/DownloadManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 276
    return-void

    .line 272
    .end local v0           #downloadExpired:I
    :cond_0
    const v0, 0x7f0c00c7

    .restart local v0       #downloadExpired:I
    goto :goto_0
.end method
