.class public Lcom/android/mms/model/ImageModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "ImageModel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

#the value of this static final field might be set in the static constructor
.field private static final SLIDESHOW_BOUNDS_LIMIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mms/image"

.field private static final THUMBNAIL_BOUNDS_LIMIT:I

.field private static THUMBNAIL_MAX_LONG:I

.field private static THUMBNAIL_MAX_SHORT:I


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mRotate:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const/high16 v0, 0x434b

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/model/ImageModel;->THUMBNAIL_BOUNDS_LIMIT:I

    .line 62
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    sput v0, Lcom/android/mms/model/ImageModel;->SLIDESHOW_BOUNDS_LIMIT:I

    .line 362
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/mms/model/ImageModel;->THUMBNAIL_MAX_SHORT:I

    .line 363
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/mms/model/ImageModel;->THUMBNAIL_MAX_LONG:I

    return-void

    .line 62
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 2
    .parameter "context"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 75
    const-string v1, "img"

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 76
    invoke-direct {p0, p2}, Lcom/android/mms/model/ImageModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 77
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 78
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 84
    const-string v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 85
    invoke-direct {p0}, Lcom/android/mms/model/ImageModel;->decodeImageBounds()V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;I)V
    .locals 0
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .parameter "region"
    .parameter "parDuation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 97
    iput p6, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "wrapper"
    .parameter "regionModel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const-string v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;I)V
    .locals 0
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "wrapper"
    .parameter "regionModel"
    .parameter "parDuation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .line 103
    iput p6, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    .line 104
    return-void
.end method

.method private cacheBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/mms/model/ImageModel;->mBitmap:Landroid/graphics/Bitmap;

    .line 417
    return-void
.end method

.method public static calcThumbnailImageBounds(Landroid/graphics/Point;II)V
    .locals 8
    .parameter "outPointPx"
    .parameter "widthPx"
    .parameter "heightPx"

    .prologue
    .line 366
    if-gt p1, p2, :cond_1

    const/4 v0, 0x1

    .line 371
    .local v0, isPortrait:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 372
    sget v2, Lcom/android/mms/model/ImageModel;->THUMBNAIL_MAX_SHORT:I

    .line 373
    .local v2, maxWidthPx:I
    sget v1, Lcom/android/mms/model/ImageModel;->THUMBNAIL_MAX_LONG:I

    .line 374
    .local v1, maxHeightPx:I
    int-to-float v6, v2

    int-to-float v7, p1

    div-float v3, v6, v7

    .line 381
    .local v3, scale:F
    :goto_1
    int-to-float v6, p1

    mul-float/2addr v6, v3

    float-to-int v5, v6

    .line 382
    .local v5, scaledWidthPx:I
    int-to-float v6, p2

    mul-float/2addr v6, v3

    float-to-int v4, v6

    .line 384
    .local v4, scaledHeightPx:I
    if-ge v5, v2, :cond_3

    move v6, v5

    :goto_2
    iput v6, p0, Landroid/graphics/Point;->x:I

    .line 385
    if-ge v4, v1, :cond_4

    move v6, v4

    :goto_3
    iput v6, p0, Landroid/graphics/Point;->y:I

    .line 387
    iget v6, p0, Landroid/graphics/Point;->x:I

    if-ne v6, v2, :cond_5

    .line 388
    int-to-float v6, v2

    int-to-float v7, v5

    div-float v3, v6, v7

    .line 389
    iget v6, p0, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    iput v6, p0, Landroid/graphics/Point;->y:I

    .line 396
    :cond_0
    :goto_4
    return-void

    .line 366
    .end local v0           #isPortrait:Z
    .end local v1           #maxHeightPx:I
    .end local v2           #maxWidthPx:I
    .end local v3           #scale:F
    .end local v4           #scaledHeightPx:I
    .end local v5           #scaledWidthPx:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 376
    .restart local v0       #isPortrait:Z
    :cond_2
    sget v2, Lcom/android/mms/model/ImageModel;->THUMBNAIL_MAX_LONG:I

    .line 377
    .restart local v2       #maxWidthPx:I
    sget v1, Lcom/android/mms/model/ImageModel;->THUMBNAIL_MAX_SHORT:I

    .line 378
    .restart local v1       #maxHeightPx:I
    int-to-float v6, v1

    int-to-float v7, p2

    div-float v3, v6, v7

    .restart local v3       #scale:F
    goto :goto_1

    .restart local v4       #scaledHeightPx:I
    .restart local v5       #scaledWidthPx:I
    :cond_3
    move v6, v2

    .line 384
    goto :goto_2

    :cond_4
    move v6, v1

    .line 385
    goto :goto_3

    .line 391
    :cond_5
    iget v6, p0, Landroid/graphics/Point;->y:I

    if-ne v6, v1, :cond_0

    .line 392
    int-to-float v6, v1

    int-to-float v7, v4

    div-float v3, v6, v7

    .line 393
    iget v6, p0, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    iput v6, p0, Landroid/graphics/Point;->x:I

    goto :goto_4
.end method

.method private createBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bitmapLimit"
    .parameter "uri"

    .prologue
    .line 240
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 241
    .local v1, outWidth:I
    iget v0, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 243
    .local v0, outHeight:I
    const/4 v2, 0x1

    .line 245
    .local v2, s:I
    :goto_0
    div-int v3, v1, v2

    if-gt v3, p1, :cond_0

    div-int v3, v0, v2

    if-le v3, p1, :cond_1

    .line 246
    :cond_0
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 249
    :cond_1
    const-string v3, "Mms:app"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 250
    const-string v3, "Mms/image"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createThumbnailBitmap: scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_2
    invoke-direct {p0, p2, v2}, Lcom/android/mms/model/ImageModel;->decodeBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method private createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "thumbnailBoundsLimit"
    .parameter "uri"

    .prologue
    .line 256
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 257
    .local v1, outWidth:I
    iget v0, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 259
    .local v0, outHeight:I
    const/4 v2, 0x1

    .line 261
    .local v2, s:I
    :goto_0
    div-int v3, v1, v2

    if-gt v3, p1, :cond_0

    div-int v3, v0, v2

    if-le v3, p1, :cond_1

    .line 262
    :cond_0
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 265
    :cond_1
    const-string v3, "Mms:app"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 266
    const-string v3, "Mms/image"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createThumbnailBitmap: scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_2
    invoke-direct {p0, p2, v2}, Lcom/android/mms/model/ImageModel;->decodeBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method private decodeBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "uri"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 272
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 273
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    iput p2, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 275
    const/4 v9, 0x0

    .line 277
    .local v9, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 278
    const/4 v1, 0x0

    invoke-static {v9, v1, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 279
    .local v0, b:Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 280
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 281
    .local v5, m:Landroid/graphics/Matrix;
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 282
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 292
    .end local v5           #m:Landroid/graphics/Matrix;
    :cond_0
    if-eqz v9, :cond_1

    .line 294
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v0

    .line 295
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v7

    .line 296
    .local v7, e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 285
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v7           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 286
    .local v7, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    if-eqz v9, :cond_2

    .line 294
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v7           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_1
    move-object v0, v11

    .line 297
    goto :goto_0

    .line 295
    .restart local v7       #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    .line 296
    .local v7, e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 288
    .end local v7           #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 290
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 292
    .end local v8           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    .line 294
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 297
    :cond_3
    :goto_2
    throw v1

    .line 295
    :catch_4
    move-exception v7

    .line 296
    .restart local v7       #e:Ljava/io/IOException;
    const-string v2, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private decodeImageBounds()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 132
    .local v0, uriImage:Lcom/android/mms/ui/UriImage;
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 133
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 134
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getRotate()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    .line 139
    return-void
.end method

.method private getCachedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/mms/model/ImageModel;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 110
    .local v0, uriImage:Lcom/android/mms/ui/UriImage;
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Type of media is unknown."

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 115
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 116
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 117
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getRotate()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    .line 125
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/drm/DrmWrapper;->IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    if-gez v1, :cond_1

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    if-gez v1, :cond_1

    .line 126
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Decode failed, so donot attach file"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_1
    return-void
.end method

.method private internalGetBitmap(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "uri"
    .parameter "thumbnail"

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/mms/model/ImageModel;->getCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 222
    if-eqz p2, :cond_1

    .line 223
    :try_start_0
    sget v1, Lcom/android/mms/model/ImageModel;->THUMBNAIL_BOUNDS_LIMIT:I

    invoke-direct {p0, v1, p1}, Lcom/android/mms/model/ImageModel;->createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 228
    :goto_0
    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0, v0}, Lcom/android/mms/model/ImageModel;->cacheBitmap(Landroid/graphics/Bitmap;)V

    .line 236
    :cond_0
    :goto_1
    return-object v0

    .line 225
    :cond_1
    sget v1, Lcom/android/mms/model/ImageModel;->SLIDESHOW_BOUNDS_LIMIT:I

    invoke-direct {p0, v1, p1}, Lcom/android/mms/model/ImageModel;->createBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public checkContentRestriction()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 183
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public checkCreationMode()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 189
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/mms/model/ContentRestriction;->checkImageCreationMode(Ljava/lang/String;I)V

    .line 192
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    iget-object v3, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mms/model/ContentRestriction;->checkResolution(III)V

    .line 194
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageRotation(I)V

    .line 196
    return-void
.end method

.method public checkResolution()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 201
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    iget-object v3, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mms/model/ContentRestriction;->checkResolution(III)V

    .line 202
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 400
    instance-of v2, p1, Lcom/android/mms/model/ImageModel;

    if-nez v2, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 405
    check-cast v0, Lcom/android/mms/model/ImageModel;

    .line 406
    .local v0, other:Lcom/android/mms/model/ImageModel;
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->isDrmProtected()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->isDrmProtected()Z

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/model/ImageModel;->internalGetBitmap(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapWithDrmCheck()Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/model/ImageModel;->internalGetBitmap(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    if-nez v0, :cond_0

    .line 305
    invoke-super {p0}, Lcom/android/mms/model/RegionMediaModel;->getDuration()I

    move-result v0

    .line 307
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    return v0
.end method

.method public getMediaResizable()Z
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMediaResizableForRetry()Z
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    const-string v1, "image/jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    :cond_0
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/model/ImageModel;->internalGetBitmap(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    return v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 5
    .parameter "evt"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 149
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 150
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 152
    iput-boolean v3, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 165
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/model/ImageModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 166
    invoke-virtual {p0, v4}, Lcom/android/mms/model/ImageModel;->notifyModelChanged(Z)V

    .line 167
    return-void

    .line 153
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmilMediaPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 155
    iput-boolean v3, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0

    .line 156
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmilMediaEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 158
    iget-short v1, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    if-eq v1, v3, :cond_0

    .line 159
    iput-boolean v4, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0

    .line 161
    :cond_3
    iget-short v1, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    if-eq v1, v3, :cond_0

    .line 162
    iput-boolean v4, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0
.end method

.method public hasCachedBitmap()Z
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/android/mms/model/ImageModel;->getCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected resizeMedia(IJ)V
    .locals 7
    .parameter "byteLimit"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 323
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v4, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 324
    .local v0, image:Lcom/android/mms/ui/UriImage;
    if-nez v0, :cond_0

    .line 325
    new-instance v4, Lcom/android/mms/ExceedMessageSizeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No room to resize picture: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 327
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v5

    invoke-virtual {v0, v4, v5, p1}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 330
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v4

    if-nez v4, :cond_2

    .line 331
    :cond_1
    new-instance v4, Lcom/android/mms/ExceedMessageSizeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not enough memory to turn image into part: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 342
    :cond_2
    iget-object v4, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    .line 343
    .local v3, persister:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v4

    array-length v4, v4

    iput v4, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 344
    const/4 v4, 0x0

    invoke-virtual {v3, v2, p2, p3, v4}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v1

    .line 345
    .local v1, newUri:Landroid/net/Uri;
    invoke-virtual {p0, v1}, Lcom/android/mms/model/ImageModel;->setUri(Landroid/net/Uri;)V

    .line 346
    return-void
.end method

.method public setResizeImageSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 350
    iput p1, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 351
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/ImageModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/model/ImageModel;->notifyModelChanged(Z)V

    .line 145
    return-void
.end method
