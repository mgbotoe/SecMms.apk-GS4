.class public Lcom/android/mms/ui/MmsSlideView;
.super Landroid/widget/LinearLayout;
.source "MmsSlideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsSlideView$TaskStack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsSlideView"

.field private static sEmptyBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private locationModel:Lcom/samsung/mms/model/LocationVcardModel;

.field private mActiveTextView:Landroid/widget/TextView;

.field private mAudioInfoView:Landroid/view/View;

.field private mAudioPlay:Landroid/widget/ImageView;

.field private mAudioText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHighlight:Ljava/util/regex/Pattern;

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private mImageModel:Lcom/android/mms/model/ImageModel;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsFailedMessage:Z

.field private mIsScheduledMessage:Z

.field private mIsTopLayout:Z

.field private mLocationAddressView:Landroid/widget/TextView;

.field private mLocationImageView:Landroid/widget/ImageView;

.field private mLocationTitleView:Landroid/widget/TextView;

.field private mLocationView:Landroid/widget/LinearLayout;

.field private mMsgListItem:Lcom/android/mms/ui/MessageListItem;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSlide:Lcom/android/mms/model/SlideModel;

.field private mSlideMediaView:Landroid/widget/FrameLayout;

.field private mTempPoint:Landroid/graphics/Point;

.field private mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

.field private mTextViewBottom:Landroid/widget/TextView;

.field private mTextViewTop:Landroid/widget/TextView;

.field private mVideoPlayButton:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MmsSlideView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    .line 49
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    .line 50
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    .line 51
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    .line 52
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    .line 53
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    .line 60
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    .line 61
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsTopLayout:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsFailedMessage:Z

    .line 64
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTempPoint:Landroid/graphics/Point;

    .line 70
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    .line 71
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsScheduledMessage:Z

    .line 502
    new-instance v0, Lcom/android/mms/ui/MmsSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSlideView$1;-><init>(Lcom/android/mms/ui/MmsSlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    .line 49
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    .line 50
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    .line 51
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    .line 52
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    .line 53
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    .line 60
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    .line 61
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsTopLayout:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsFailedMessage:Z

    .line 64
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTempPoint:Landroid/graphics/Point;

    .line 70
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    .line 71
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsScheduledMessage:Z

    .line 502
    new-instance v0, Lcom/android/mms/ui/MmsSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSlideView$1;-><init>(Lcom/android/mms/ui/MmsSlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    .line 49
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    .line 50
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    .line 51
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    .line 52
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    .line 53
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    .line 60
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    .line 61
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsTopLayout:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsFailedMessage:Z

    .line 64
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTempPoint:Landroid/graphics/Point;

    .line 70
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    .line 71
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSlideView;->mIsScheduledMessage:Z

    .line 502
    new-instance v0, Lcom/android/mms/ui/MmsSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSlideView$1;-><init>(Lcom/android/mms/ui/MmsSlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsSlideView;)Lcom/android/mms/ui/MessageListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    return-object v0
.end method

.method private calculateDrmImageBounds(Landroid/widget/ImageView;)V
    .locals 2
    .parameter "imageview"

    .prologue
    const/4 v1, -0x2

    .line 355
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 356
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 357
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 359
    return-void
.end method

.method private static getEmptyImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "resources"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 76
    sget-object v1, Lcom/android/mms/ui/MmsSlideView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 78
    const v1, 0x7f020019

    :try_start_0
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MmsSlideView;->sEmptyBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    sget-object v1, Lcom/android/mms/ui/MmsSlideView;->sEmptyBitmap:Landroid/graphics/Bitmap;

    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    .line 82
    const-string v1, "Mms/MmsSlideView"

    const-string v2, "OutOfMemoryError caught @ BitmapFactory.decodeResource and throw"

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    throw v0
.end method

.method private loadImage()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 535
    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    if-nez v4, :cond_1

    .line 556
    :cond_0
    :goto_0
    return v3

    .line 539
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 540
    .local v2, uriBefore:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->isDrmProtected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 541
    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020018

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 546
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    if-eqz v4, :cond_0

    .line 550
    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 551
    .local v1, uriAfter:Landroid/net/Uri;
    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 555
    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageBitmap:Landroid/graphics/Bitmap;

    .line 556
    const/4 v3, 0x1

    goto :goto_0

    .line 543
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #uriAfter:Landroid/net/Uri;
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private preCalculateImageBoudns(Landroid/widget/ImageView;II)V
    .locals 3
    .parameter "imageView"
    .parameter "currentWidth"
    .parameter "currentHeight"

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTempPoint:Landroid/graphics/Point;

    invoke-static {v1, p2, p3}, Lcom/android/mms/model/ImageModel;->calcThumbnailImageBounds(Landroid/graphics/Point;II)V

    .line 275
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 276
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 277
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 278
    return-void
.end method

.method private setImage(Lcom/android/mms/model/ImageModel;Z)V
    .locals 7
    .parameter "image"
    .parameter "async"

    .prologue
    const/4 v6, 0x0

    .line 230
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {p1, v3}, Lcom/android/mms/model/ImageModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 231
    .local v1, isImageSame:Z
    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    .line 233
    const-string v3, "Mms/MmsSlideView"

    const-string v4, "setImage"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 237
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 239
    if-eqz v1, :cond_0

    .line 240
    const-string v3, "Mms/MmsSlideView"

    const-string v4, "same image"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->isDrmProtected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsSlideView;->calculateDrmImageBounds(Landroid/widget/ImageView;)V

    .line 250
    :goto_1
    if-eqz p2, :cond_3

    .line 251
    invoke-static {}, Lcom/android/mms/ui/MmsSlideView$TaskStack;->getInstance()Lcom/android/mms/ui/MmsSlideView$TaskStack;

    move-result-object v2

    .line 252
    .local v2, taskStack:Lcom/android/mms/ui/MmsSlideView$TaskStack;
    invoke-virtual {v2, p0}, Lcom/android/mms/ui/MmsSlideView$TaskStack;->removeTask(Ljava/lang/Runnable;)V

    .line 254
    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->hasCachedBitmap()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSlideView;->loadImage()Z

    .line 256
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->onImageLoaded()V

    .line 265
    .end local v2           #taskStack:Lcom/android/mms/ui/MmsSlideView$TaskStack;
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "Mms/MmsSlideView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 269
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 247
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getHeight()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/mms/ui/MmsSlideView;->preCalculateImageBoudns(Landroid/widget/ImageView;II)V

    goto :goto_1

    .line 258
    .restart local v2       #taskStack:Lcom/android/mms/ui/MmsSlideView$TaskStack;
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 259
    invoke-virtual {v2, p0}, Lcom/android/mms/ui/MmsSlideView$TaskStack;->addTask(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 262
    .end local v2           #taskStack:Lcom/android/mms/ui/MmsSlideView$TaskStack;
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSlideView;->loadImage()Z

    .line 263
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->onImageLoaded()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private setIsTopLayout(Z)V
    .locals 2
    .parameter "isTop"

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsSlideView;->mIsTopLayout:Z

    if-eq v0, p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 222
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewTop:Landroid/widget/TextView;

    :goto_0
    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    .line 223
    iput-boolean p1, p0, Lcom/android/mms/ui/MmsSlideView;->mIsTopLayout:Z

    .line 224
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->applyTextProperty(Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;)V

    .line 227
    :cond_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewBottom:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private syncModel()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    .line 217
    return-void
.end method


# virtual methods
.method public applyTextProperty(Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;)V
    .locals 3
    .parameter "textProperty"

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    .line 487
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget v1, v1, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextSizeUnit:I

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget v2, v2, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextSize:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 488
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 495
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iget v1, v1, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mLinkMask:I

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    .line 496
    return-void
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageUtils;->openModel(Landroid/content/Context;Lcom/android/mms/model/Model;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 121
    const v0, 0x7f0b020f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    .line 122
    const v0, 0x7f0b0210

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    .line 123
    const v0, 0x7f0b0213

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0b0214

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0b0211

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    .line 126
    const v0, 0x7f0b01f1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    .line 127
    const v0, 0x7f0b01e2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    .line 128
    const v0, 0x7f0b0199

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioInfoView:Landroid/view/View;

    .line 129
    const v0, 0x7f0b0215

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    .line 130
    const v0, 0x7f0b0216

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioText:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0b0196

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewTop:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0b01be

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewBottom:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewBottom:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewTop:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 135
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewBottom:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 137
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method protected onImageLoaded()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mImageBitmap:Landroid/graphics/Bitmap;

    .line 285
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MmsSlideView;->getEmptyImageBitmap(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 302
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mImageModel:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public present(ILcom/android/mms/model/SlideModel;Lcom/android/mms/ui/MessageListItem;)Z
    .locals 1
    .parameter "layoutType"
    .parameter "slide"
    .parameter "listItem"

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/ui/MmsSlideView;->present(ILcom/android/mms/model/SlideModel;Lcom/android/mms/ui/MessageListItem;Z)Z

    move-result v0

    return v0
.end method

.method public present(ILcom/android/mms/model/SlideModel;Lcom/android/mms/ui/MessageListItem;Z)Z
    .locals 6
    .parameter "layoutType"
    .parameter "slide"
    .parameter "listItem"
    .parameter "truncateLongMessages"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, hasVisibleContent:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->reset()V

    .line 168
    if-ne p1, v2, :cond_3

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MmsSlideView;->setIsTopLayout(Z)V

    .line 169
    const-string v1, "NGM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "present layoutType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iput-object p2, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    .line 171
    iput-object p3, p0, Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    .line 173
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasLocation()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getLocation()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    .line 175
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    invoke-virtual {v1}, Lcom/samsung/mms/model/LocationVcardModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    invoke-virtual {v2}, Lcom/samsung/mms/model/LocationVcardModel;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    invoke-virtual {v4}, Lcom/samsung/mms/model/LocationVcardModel;->getFormattedAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    invoke-virtual {v5}, Lcom/samsung/mms/model/LocationVcardModel;->getContactNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/mms/ui/MmsSlideView;->setLocation(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x1

    .line 185
    :cond_0
    :goto_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSlideView;->setAudio(Lcom/android/mms/model/AudioModel;)V

    .line 187
    const/4 v0, 0x1

    .line 190
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 193
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 194
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/android/mms/ui/MmsSlideView;->setText(Lcom/android/mms/model/TextModel;Z)V

    .line 199
    :goto_2
    if-nez v0, :cond_2

    .line 200
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/android/mms/ui/MmsSlideView;->setPadding(IIII)V

    .line 202
    :cond_2
    const/4 v0, 0x1

    .line 210
    :goto_3
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSlideView;->syncModel()V

    .line 212
    return v0

    :cond_3
    move v1, v3

    .line 168
    goto/16 :goto_0

    .line 177
    :cond_4
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 178
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MmsSlideView;->setImage(Lcom/android/mms/model/ImageModel;Z)V

    .line 179
    const/4 v0, 0x1

    goto :goto_1

    .line 180
    :cond_5
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSlideView;->setVideo(Lcom/android/mms/model/VideoModel;)V

    .line 182
    const/4 v0, 0x1

    goto :goto_1

    .line 197
    :cond_6
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSlideView;->setText(Lcom/android/mms/model/TextModel;)V

    goto :goto_2

    .line 204
    :cond_7
    if-nez v0, :cond_8

    .line 205
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/android/mms/ui/MmsSlideView;->setPadding(IIII)V

    .line 207
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSlideView;->setTextVisibility(Z)V

    goto :goto_3
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioInfoView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 153
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 155
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSlideView;->loadImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/MmsSlideView$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsSlideView$2;-><init>(Lcom/android/mms/ui/MmsSlideView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setAudio(Lcom/android/mms/model/AudioModel;)V
    .locals 4
    .parameter "audio"

    .prologue
    const v3, 0x7f0c00b4

    const/4 v2, 0x0

    .line 362
    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "Mms/MmsSlideView"

    const-string v1, "set DRM Audio"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 365
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 377
    :goto_0
    return-void

    .line 370
    :cond_0
    const-string v0, "Mms/MmsSlideView"

    const-string v1, "set Audio"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    const v1, 0x7f02024b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 372
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mAudioPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setHighlight(Ljava/util/regex/Pattern;)V
    .locals 0
    .parameter "highlight"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView;->mHighlight:Ljava/util/regex/Pattern;

    .line 115
    return-void
.end method

.method public setIsFailedMessage(Z)V
    .locals 0
    .parameter "isFailed"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/mms/ui/MmsSlideView;->mIsFailedMessage:Z

    .line 107
    return-void
.end method

.method public setIsReservedMessage(Z)V
    .locals 0
    .parameter "isReserved"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/mms/ui/MmsSlideView;->mIsScheduledMessage:Z

    .line 111
    return-void
.end method

.method public setLocation(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "location"
    .parameter "locationName"
    .parameter "locationAddr"
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    .line 445
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 446
    const-string v1, "NGM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLocation Called: locationName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " locationAddr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    const v2, 0x7f0200cf

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 448
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 449
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 451
    const-string v0, ""

    .line 452
    .local v0, locationInfo:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 457
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 458
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 464
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationAddressView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 473
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->locationModel:Lcom/samsung/mms/model/LocationVcardModel;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 474
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mLocationView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 476
    .end local v0           #locationInfo:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public setText(Lcom/android/mms/model/TextModel;)V
    .locals 1
    .parameter "textModel"

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MmsSlideView;->setText(Lcom/android/mms/model/TextModel;Z)V

    .line 383
    return-void
.end method

.method public setText(Lcom/android/mms/model/TextModel;Z)V
    .locals 11
    .parameter "textModel"
    .parameter "truncateLongMessages"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 387
    if-nez p1, :cond_0

    .line 388
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MmsSlideView;->setTextVisibility(Z)V

    .line 433
    :goto_0
    return-void

    .line 392
    :cond_0
    const-string v1, "Mms/MmsSlideView"

    const-string v2, "set text"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v8

    .line 399
    .local v8, text:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 404
    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->getBytesForDisplayFolding()I

    move-result v1

    invoke-static {v8, v1}, Lcom/android/mms/util/TelephonyUtils;->substringByByteSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 410
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MmsSlideView;->setTextVisibility(Z)V

    goto :goto_0

    .line 413
    :cond_2
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v7

    .line 414
    .local v7, parser:Lcom/android/mms/util/SmileyParser;
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 416
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mSlide:Lcom/android/mms/model/SlideModel;

    iget-object v1, v1, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v1

    invoke-static {v8, v10, v1, v0, v7}, Lcom/android/mms/ui/MessageListItem;->formatBody(Ljava/lang/String;ZZLandroid/content/Context;Lcom/android/mms/util/SmileyParser;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/SpannableStringBuilder;

    .line 419
    .local v4, bodyText:Landroid/text/SpannableStringBuilder;
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual {v7}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v3

    const-string v5, "Mms/MmsSlideView"

    invoke-static/range {v0 .. v5}, Lcom/android/mms/util/UIUtils;->highlightMessage(Landroid/content/Context;Ljava/util/regex/Pattern;[I[ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 424
    .local v6, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isTextRTL(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 425
    const/4 v1, 0x5

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 429
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    iget-object v2, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/mms/ui/MmsSlideView;->mIsFailedMessage:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/mms/ui/MmsSlideView;->mIsScheduledMessage:Z

    if-eqz v1, :cond_5

    :cond_3
    move v1, v10

    :goto_2
    invoke-static {v2, v1}, Lcom/android/mms/ui/MessageListItem;->applyBodyTextViewColor(Landroid/widget/TextView;Z)V

    .line 431
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MmsSlideView;->setTextVisibility(Z)V

    goto/16 :goto_0

    .line 427
    :cond_4
    const/4 v1, 0x3

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_5
    move v1, v9

    .line 430
    goto :goto_2
.end method

.method public setTextVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 436
    if-eqz p1, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mActiveTextView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 442
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewTop:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 440
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView;->mTextViewBottom:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setVideo(Lcom/android/mms/model/VideoModel;)V
    .locals 7
    .parameter "video"

    .prologue
    const/4 v6, 0x0

    .line 308
    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 310
    .local v2, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 311
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->isDrmProtected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    const-string v3, "Mms/MmsSlideView"

    const-string v4, "set DRM Video"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020018

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 314
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsSlideView;->calculateDrmImageBounds(Landroid/widget/ImageView;)V

    .line 320
    :goto_0
    if-nez v0, :cond_3

    .line 321
    const-string v3, "Mms/MmsSlideView"

    const-string v4, "video thumbnail not created"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020020

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 323
    if-nez v2, :cond_2

    .line 324
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 325
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 326
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    :goto_1
    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->isDrmProtected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 339
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/mms/ui/MmsSlideView;->preCalculateImageBoudns(Landroid/widget/ImageView;II)V

    .line 341
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 342
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mSlideMediaView:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 346
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    :goto_2
    return-void

    .line 316
    :cond_1
    const-string v3, "Mms/MmsSlideView"

    const-string v4, "set Video"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 329
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 330
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "Mms/MmsSlideView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 350
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 333
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 334
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mVideoPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 335
    iget-object v3, p0, Lcom/android/mms/ui/MmsSlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public setVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 499
    invoke-static {p0, p1}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    .line 500
    return-void
.end method
