.class Lcom/android/mms/ui/MmsSinglePageFrame$6;
.super Ljava/lang/Object;
.source "MmsSinglePageFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageFrame;->setImageWithFrame(Ljava/lang/String;Lcom/android/mms/model/ImageModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field im:Lcom/android/mms/model/ImageModel;

.field private slideIndex:I

.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

.field private uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V
    .locals 1
    .parameter

    .prologue
    .line 1631
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$6;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1633
    sget-object v0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticClickUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$6;->uri:Landroid/net/Uri;

    .line 1635
    sget v0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticSlideIndex:I

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$6;->slideIndex:I

    .line 1638
    sget-object v0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticImageModel:Lcom/android/mms/model/ImageModel;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$6;->im:Lcom/android/mms/model/ImageModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 1645
    const-string v3, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imageArea clicked : uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame$6;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1650
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1651
    const-string v0, ""

    .line 1653
    .local v0, contentType:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame$6;->im:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v3}, Lcom/android/mms/model/ImageModel;->isDrmProtected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1655
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame$6;->im:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v3}, Lcom/android/mms/model/ImageModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1663
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame$6;->im:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v3}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1666
    const-string v3, "android.intent.extra.showActionIcons"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1667
    const-string v3, "single_mode"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1671
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame$6;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->startActivity(Landroid/content/Intent;)V
    invoke-static {v3, v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$500(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1676
    :goto_1
    return-void

    .line 1656
    :catch_0
    move-exception v1

    .line 1658
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1661
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame$6;->im:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v3}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1672
    :catch_1
    move-exception v1

    .line 1674
    .local v1, e:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame$6;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->handlerIfNoActivityFound(Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V
    invoke-static {v3, v1, v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$600(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V

    goto :goto_1
.end method
