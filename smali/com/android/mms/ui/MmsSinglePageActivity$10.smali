.class Lcom/android/mms/ui/MmsSinglePageActivity$10;
.super Ljava/lang/Object;
.source "MmsSinglePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageActivity;->setImageWithFrame(Ljava/lang/String;Lcom/android/mms/model/ImageModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field im:Lcom/android/mms/model/ImageModel;

.field private slideIndex:I

.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

.field private uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 2138
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$10;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2140
    sget-object v0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticClickUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$10;->uri:Landroid/net/Uri;

    .line 2142
    sget v0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticSlideIndex:I

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$10;->slideIndex:I

    .line 2145
    sget-object v0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticImageModel:Lcom/android/mms/model/ImageModel;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$10;->im:Lcom/android/mms/model/ImageModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 2152
    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imageArea clicked : uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity$10;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2157
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2158
    const-string v0, ""

    .line 2160
    .local v0, contentType:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity$10;->im:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v3}, Lcom/android/mms/model/ImageModel;->isDrmProtected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2162
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity$10;->im:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v3}, Lcom/android/mms/model/ImageModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2170
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity$10;->im:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v3}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2173
    const-string v3, "android.intent.extra.showActionIcons"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2174
    const-string v3, "single_mode"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2178
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity$10;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2183
    :goto_1
    return-void

    .line 2163
    :catch_0
    move-exception v1

    .line 2165
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2168
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity$10;->im:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v3}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2179
    :catch_1
    move-exception v1

    .line 2181
    .local v1, e:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity$10;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    #calls: Lcom/android/mms/ui/MmsSinglePageActivity;->handlerIfNoActivityFound(Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V
    invoke-static {v3, v1, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$700(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V

    goto :goto_1
.end method
