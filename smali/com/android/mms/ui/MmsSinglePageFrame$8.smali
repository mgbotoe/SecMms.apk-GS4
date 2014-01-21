.class Lcom/android/mms/ui/MmsSinglePageFrame$8;
.super Ljava/lang/Object;
.source "MmsSinglePageFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageFrame;->setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/mms/model/VideoModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mm:Lcom/android/mms/model/MediaModel;

.field private slideIndex:I

.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

.field private uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V
    .locals 1
    .parameter

    .prologue
    .line 1764
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$8;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1766
    sget-object v0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticClickUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$8;->uri:Landroid/net/Uri;

    .line 1768
    sget v0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticSlideIndex:I

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$8;->slideIndex:I

    .line 1770
    sget-object v0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticVideoModel:Lcom/android/mms/model/VideoModel;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$8;->mm:Lcom/android/mms/model/MediaModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1780
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1781
    .local v2, intent:Landroid/content/Intent;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1782
    const-string v0, ""

    .line 1784
    .local v0, contentType:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame$8;->mm:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1786
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame$8;->mm:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1794
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame$8;->mm:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1801
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame$8;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->startActivity(Landroid/content/Intent;)V
    invoke-static {v3, v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$500(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1806
    :goto_1
    return-void

    .line 1787
    :catch_0
    move-exception v1

    .line 1789
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1792
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame$8;->mm:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1802
    :catch_1
    move-exception v1

    .line 1804
    .local v1, e:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame$8;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->handlerIfNoActivityFound(Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V
    invoke-static {v3, v1, v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$600(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V

    goto :goto_1
.end method
