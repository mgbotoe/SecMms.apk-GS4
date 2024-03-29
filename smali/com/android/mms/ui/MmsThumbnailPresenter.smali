.class public Lcom/android/mms/ui/MmsThumbnailPresenter;
.super Lcom/android/mms/ui/Presenter;
.source "MmsThumbnailPresenter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 0
    .parameter "context"
    .parameter "view"
    .parameter "model"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/Presenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 39
    return-void
.end method

.method private presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .locals 1
    .parameter "view"
    .parameter "slide"

    .prologue
    .line 104
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentImageThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V

    .line 108
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/AudioModel;->isDrmProtected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentAudioThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentVideoThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentAudioThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V

    goto :goto_0
.end method

.method private presentImageThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V
    .locals 3
    .parameter "view"
    .parameter "image"

    .prologue
    .line 127
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->showDrmIcon(Lcom/android/mms/ui/SlideViewInterface;Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method private presentLocationSlide(Lcom/android/mms/ui/SlideViewInterface;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 66
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 68
    iget-object v2, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v2, Lcom/android/mms/model/SlideshowModel;

    .line 69
    .local v2, slideShow:Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 71
    .local v1, s:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getLocation()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getLocation()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentLocationThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/samsung/mms/model/LocationVcardModel;)V

    .line 77
    .end local v1           #s:Lcom/android/mms/model/SlideModel;
    :cond_1
    return-void
.end method

.method private presentLocationThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/samsung/mms/model/LocationVcardModel;)V
    .locals 4
    .parameter "view"
    .parameter "location"

    .prologue
    .line 80
    invoke-virtual {p2}, Lcom/samsung/mms/model/LocationVcardModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/mms/model/LocationVcardModel;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/mms/model/LocationVcardModel;->getFormattedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/mms/model/LocationVcardModel;->getContactNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setLocation(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private presentVideoThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V
    .locals 3
    .parameter "view"
    .parameter "video"

    .prologue
    .line 119
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->showDrmIcon(Lcom/android/mms/ui/SlideViewInterface;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setVideo(Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method private showDrmAudioIcon(Lcom/android/mms/ui/SlideViewInterface;Ljava/lang/String;)V
    .locals 5
    .parameter "view"
    .parameter "name"

    .prologue
    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c1

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v2}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "Mms/MmsThunbnailPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutOfMemoryError"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showDrmIcon(Lcom/android/mms/ui/SlideViewInterface;Ljava/lang/String;)V
    .locals 5
    .parameter "view"
    .parameter "name"

    .prologue
    .line 155
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020018

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v2}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "Mms/MmsThunbnailPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutOfMemoryError"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 0
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    .line 165
    return-void
.end method

.method public present()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 45
    const-string v1, "NGM"

    const-string v2, "MMS Thumbnail has location true"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v1, Lcom/android/mms/ui/SlideViewInterface;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentLocationSlide(Lcom/android/mms/ui/SlideViewInterface;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 50
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    invoke-interface {v1}, Lcom/android/mms/ui/ViewInterface;->reset()V

    .line 51
    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v1, Lcom/android/mms/ui/SlideViewInterface;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    goto :goto_0

    .line 57
    .end local v0           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 58
    .restart local v0       #slide:Lcom/android/mms/model/SlideModel;
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    invoke-interface {v1}, Lcom/android/mms/ui/ViewInterface;->reset()V

    .line 59
    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v1, Lcom/android/mms/ui/SlideViewInterface;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    goto :goto_0
.end method

.method public present(Z)V
    .locals 4
    .parameter "firstSlide"

    .prologue
    .line 84
    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->present()V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v3, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 89
    .local v1, size:I
    add-int/lit8 v0, v1, -0x1

    .line 90
    .local v0, index:I
    add-int/lit8 v3, v1, -0x1

    if-gez v3, :cond_2

    .line 91
    const/4 v0, 0x0

    .line 93
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    invoke-interface {v3}, Lcom/android/mms/ui/ViewInterface;->reset()V

    .line 94
    iget-object v3, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v3, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 95
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v2, :cond_0

    .line 96
    iget-object v3, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v3, Lcom/android/mms/ui/SlideViewInterface;

    invoke-direct {p0, v3, v2}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    goto :goto_0
.end method

.method protected presentAudioThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V
    .locals 3
    .parameter "view"
    .parameter "audio"

    .prologue
    .line 135
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->showDrmAudioIcon(Lcom/android/mms/ui/SlideViewInterface;Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
