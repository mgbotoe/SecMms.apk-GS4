.class public final Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;
.super Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
.source "SlookAirButtonRecentMediaAdapter.java"


# static fields
.field public static final AUDIO_TYPE:Ljava/lang/String; = "audio"

.field private static final ID:Ljava/lang/String; = "id"

.field public static final IMAGE_TYPE:Ljava/lang/String; = "image"

.field private static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field private static final ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final TAG:Ljava/lang/String; = "AirButtonRecentMediaAdapter"

.field private static final TITLE:Ljava/lang/String; = "title"

.field public static final VIDEO_TYPE:Ljava/lang/String; = "video"

.field private static final VOLUME:Ljava/lang/String; = "external"


# instance fields
.field private DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Ljava/lang/String;

.field private mIsShowing:Z

.field private mMaxCount:I

.field private mNeedUpdate:Z

.field private mSlook:Lcom/samsung/android/sdk/look/Slook;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter "view"
    .parameter "option"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;-><init>()V

    .line 39
    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mMaxCount:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mData:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    .line 73
    iput-boolean v2, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->DEBUG:Z

    .line 75
    iput-boolean v2, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mIsShowing:Z

    .line 76
    iput-boolean v1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mNeedUpdate:Z

    .line 77
    iput v2, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mCount:I

    .line 86
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should set the View and Bundle in Param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->getFilter(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mFilter:Ljava/lang/String;

    .line 97
    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mContext:Landroid/content/Context;

    .line 100
    iput-boolean v1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->DEBUG:Z

    .line 102
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/samsung/android/sdk/look/SlookResourceManager;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mMaxCount:I

    .line 104
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/look/SlookResourceManager;->getText(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->setEmptyText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getAudioDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "title"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xc8

    .line 157
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 159
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/samsung/android/sdk/look/SlookResourceManager;->getDrawableId(I)I

    move-result v3

    .line 160
    .local v3, resourceId:I
    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 162
    .local v2, dr:Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 163
    const v4, -0x222223

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 164
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 165
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v4
.end method

.method private getFilter(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4
    .parameter "option"

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, bAdded:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v2, str:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    const-string v3, "image"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    :cond_0
    const-string v3, "media_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    const/4 v0, 0x1

    .line 194
    :cond_1
    if-eqz p1, :cond_2

    const-string v3, "video"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 195
    :cond_2
    if-eqz v0, :cond_3

    .line 196
    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_3
    const-string v3, "media_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    const/4 v0, 0x1

    .line 203
    :cond_4
    if-eqz p1, :cond_5

    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 204
    :cond_5
    if-eqz v0, :cond_6

    .line 205
    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_6
    const-string v3, "media_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, filter:Ljava/lang/String;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_9

    .line 212
    :cond_8
    const/4 v1, 0x0

    .line 215
    .end local v1           #filter:Ljava/lang/String;
    :cond_9
    return-object v1
.end method

.method private getThumbNail(IILjava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "id"
    .parameter "media_type"
    .parameter "title"
    .parameter "orientation"

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 135
    packed-switch p2, :pswitch_data_0

    .line 154
    :goto_0
    return-object v7

    .line 137
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    int-to-long v3, p1

    invoke-static {v2, v3, v4, v6, v7}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/16 v2, 0x5a

    if-eq p4, v2, :cond_0

    const/16 v2, 0xb4

    if-eq p4, v2, :cond_0

    const/16 v2, 0x10e

    if-ne p4, v2, :cond_1

    .line 139
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 140
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v2, p4

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 141
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 142
    .local v8, rotatedBitmap:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v7, v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 143
    .local v7, dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 145
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #dr:Landroid/graphics/drawable/Drawable;
    .end local v8           #rotatedBitmap:Landroid/graphics/Bitmap;
    :cond_1
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v7, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v7       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 148
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #dr:Landroid/graphics/drawable/Drawable;
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    int-to-long v2, p1

    invoke-static {v1, v2, v3, v6, v7}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v7, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 150
    .restart local v7       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 152
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #dr:Landroid/graphics/drawable/Drawable;
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->getAudioDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getUri(II)Landroid/net/Uri;
    .locals 3
    .parameter "id"
    .parameter "media_type"

    .prologue
    .line 169
    packed-switch p2, :pswitch_data_0

    .line 179
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 171
    :pswitch_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 174
    :pswitch_1
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 177
    :pswitch_2
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private isSupport(I)Z
    .locals 2
    .parameter "ver"

    .prologue
    const/4 v0, 0x1

    .line 282
    iget-object v1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized updateData()V
    .locals 9

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mNeedUpdate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mIsShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 251
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mNeedUpdate:Z

    .line 252
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    const/4 v7, 0x0

    .line 256
    .local v7, c:Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "media_type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "orientation"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mFilter:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "date_modified DESC LIMIT "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mMaxCount:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v7

    .line 261
    if-nez v7, :cond_2

    .line 272
    if-eqz v7, :cond_0

    .line 273
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 248
    .end local v7           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 264
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_2
    :goto_1
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 265
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v6, bundle:Landroid/os/Bundle;
    const-string v0, "id"

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    const-string v0, "mime_type"

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    const-string v0, "orientation"

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 272
    .end local v6           #bundle:Landroid/os/Bundle;
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_3

    .line 273
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 272
    :cond_4
    if-eqz v7, :cond_5

    .line 273
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mCount:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .locals 9
    .parameter "idx"

    .prologue
    .line 113
    iget-object v7, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 114
    .local v0, bundle:Landroid/os/Bundle;
    const-string v7, "id"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 115
    .local v1, id:I
    const-string v7, "mime_type"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 116
    .local v2, media_type:I
    const-string v7, "title"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, title:Ljava/lang/String;
    const-string v7, "orientation"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 118
    .local v3, orientation:I
    invoke-direct {p0, v1, v2, v5, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->getThumbNail(IILjava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 119
    .local v4, thumbnail:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->getUri(II)Landroid/net/Uri;

    move-result-object v6

    .line 120
    .local v6, uri:Landroid/net/Uri;
    new-instance v7, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8, v6}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v7
.end method

.method public onDismiss(Landroid/view/View;)V
    .locals 1
    .parameter "parentView"

    .prologue
    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mIsShowing:Z

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mNeedUpdate:Z

    .line 243
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 244
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onDismiss(Landroid/view/View;)V

    .line 245
    return-void
.end method

.method public onHide(Landroid/view/View;)V
    .locals 1
    .parameter "parentView"

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mIsShowing:Z

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mNeedUpdate:Z

    .line 233
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 234
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHide(Landroid/view/View;)V

    .line 235
    return-void
.end method

.method public onShow(Landroid/view/View;)V
    .locals 1
    .parameter "parentView"

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->updateData()V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonRecentMediaAdapter;->mIsShowing:Z

    .line 224
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onShow(Landroid/view/View;)V

    .line 225
    return-void
.end method
