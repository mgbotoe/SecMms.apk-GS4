.class public Lcom/android/mms/ui/SweepHandler;
.super Ljava/lang/Object;
.source "SweepHandler.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SweepHandler$ListCheckInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SweepHandler"


# instance fields
.field private currentIndex:I

.field private isCallable:Z

.field private isVoLTEAvailable:Z

.field private isVoiceCallAvailabe:Z

.field private mCallBg:Landroid/graphics/drawable/Drawable;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mCallText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLastDrawRcHeight:I

.field private mLastDrawRcWidth:I

.field private mMsgBg:Landroid/graphics/drawable/Drawable;

.field private mMsgIcon:Landroid/graphics/drawable/Drawable;

.field private mMsgText:Ljava/lang/String;

.field private mSweepHandlerInterface:Lcom/android/mms/ui/SweepHandler$ListCheckInterface;

.field private mTempRect:Landroid/graphics/Rect;

.field private mVoLTEStateTracker:Lcom/android/mms/VoLTEStateTracker;

.field private mWidthPadding:I

.field private mWrongCallText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/SweepHandler$ListCheckInterface;)V
    .locals 2
    .parameter "context"
    .parameter "sweepHandlerInterface"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SweepHandler;->isVoiceCallAvailabe:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/mms/ui/SweepHandler;->isVoLTEAvailable:Z

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    .line 134
    iput v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    .line 135
    iput v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    .line 136
    iput v1, p0, Lcom/android/mms/ui/SweepHandler;->mWidthPadding:I

    .line 185
    iput-boolean v1, p0, Lcom/android/mms/ui/SweepHandler;->isCallable:Z

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SweepHandler;->currentIndex:I

    .line 53
    iput-object p1, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/mms/ui/SweepHandler;->mSweepHandlerInterface:Lcom/android/mms/ui/SweepHandler$ListCheckInterface;

    .line 56
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVoLTE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/mms/VoLTEStateTracker;

    invoke-direct {v0}, Lcom/android/mms/VoLTEStateTracker;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mVoLTEStateTracker:Lcom/android/mms/VoLTEStateTracker;

    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mVoLTEStateTracker:Lcom/android/mms/VoLTEStateTracker;

    iget-object v1, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/mms/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SweepHandler;->isVoLTEAvailable:Z

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->initResources()V

    .line 61
    return-void
.end method

.method private adjustDrawableBound(Landroid/graphics/drawable/Drawable;II)V
    .locals 4
    .parameter "d"
    .parameter "height"
    .parameter "wPadding"

    .prologue
    const/4 v3, 0x0

    .line 139
    const-string v0, "SweepHandler"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "SweepHandler"

    const-string v1, "adjustDrawableBound"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    int-to-float v0, p3

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SweepHandler;->mWidthPadding:I

    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/mms/ui/SweepHandler;->mWidthPadding:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 143
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lcom/android/mms/ui/SweepHandler;->mWidthPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 147
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 148
    return-void
.end method

.method private drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V
    .locals 9
    .parameter "canvas"
    .parameter "msgText"
    .parameter "opacity"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 369
    const-string v6, "SweepHandler"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 370
    const-string v6, "wangear"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 373
    .local v1, ss:I
    const/high16 v5, 0x41c8

    .line 374
    .local v5, textSizeDp:F
    invoke-static {v5}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v4

    .line 376
    .local v4, textSize:I
    new-instance v3, Landroid/graphics/Paint;

    const/16 v6, 0x101

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 379
    .local v3, textPaint:Landroid/graphics/Paint;
    int-to-float v6, v4

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 380
    const-string v6, "SweepHandler"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 381
    const-string v6, "wangear"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "opa = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_1
    const/high16 v6, 0x437f

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 383
    .local v2, textColor:I
    const/high16 v6, 0x437f

    mul-float/2addr v6, p3

    float-to-int v0, v6

    .line 384
    .local v0, shadowColor:I
    shl-int/lit8 v6, v2, 0x18

    const v7, 0xffffff

    add-int v2, v6, v7

    .line 385
    shl-int/lit8 v6, v0, 0x18

    add-int/lit8 v0, v6, 0x0

    .line 386
    const-string v6, "SweepHandler"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 387
    const-string v6, "wangear"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "textcolor = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_2
    const-string v6, "SweepHandler"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 389
    const-string v6, "wangear"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shadowColor = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_3
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    const/high16 v6, 0x4040

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    invoke-virtual {v3, v6, v7, v8, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 393
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 395
    const/high16 v6, 0x4040

    div-float v6, v5, v6

    invoke-static {v6}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, p5

    invoke-virtual {p1, p2, p4, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 397
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 398
    return-void
.end method

.method private getCallBg()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020276

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallBg:Landroid/graphics/drawable/Drawable;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getCallIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVoLTE()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/SweepHandler;->isVoLTEAvailable:Z

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 89
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getMsgBg()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020277

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgBg:Landroid/graphics/drawable/Drawable;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getMsgIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgIcon:Landroid/graphics/drawable/Drawable;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private initResources()V
    .locals 3

    .prologue
    const v2, 0x7f0c0143

    .line 113
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVoLTE()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/mms/ui/SweepHandler;->isVoLTEAvailable:Z

    if-eqz v0, :cond_3

    .line 114
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallText:Ljava/lang/String;

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0147

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mWrongCallText:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0146

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgText:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/util/TelephonyUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SweepHandler;->isVoiceCallAvailabe:Z

    .line 130
    return-void

    .line 116
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0144

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallText:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGU+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0145

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallText:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallText:Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallText:Ljava/lang/String;

    goto :goto_0
.end method

.method private setupDrawablesBound(II)V
    .locals 5
    .parameter "height"
    .parameter "width"

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0xc

    const/4 v2, 0x0

    .line 151
    const-string v0, "SweepHandler"

    const-string v1, "setupDrawablesBound"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 153
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getCallBg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getCallBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isWVGAModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p1, v3}, Lcom/android/mms/ui/SweepHandler;->adjustDrawableBound(Landroid/graphics/drawable/Drawable;II)V

    .line 156
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getCallIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p1, v3}, Lcom/android/mms/ui/SweepHandler;->adjustDrawableBound(Landroid/graphics/drawable/Drawable;II)V

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p1, v4}, Lcom/android/mms/ui/SweepHandler;->adjustDrawableBound(Landroid/graphics/drawable/Drawable;II)V

    .line 159
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getCallIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p1, v4}, Lcom/android/mms/ui/SweepHandler;->adjustDrawableBound(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_0
.end method


# virtual methods
.method public onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 164
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;-><init>()V

    .line 168
    .local v0, info:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    iget-object v2, p0, Lcom/android/mms/ui/SweepHandler;->mSweepHandlerInterface:Lcom/android/mms/ui/SweepHandler$ListCheckInterface;

    invoke-interface {v2, p1}, Lcom/android/mms/ui/SweepHandler$ListCheckInterface;->isListIndex(I)Z

    move-result v1

    .line 171
    .local v1, isListIndex:Z
    if-eqz v1, :cond_1

    .line 174
    iput-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    .line 175
    iput-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    .line 180
    :goto_0
    iget-boolean v2, p0, Lcom/android/mms/ui/SweepHandler;->isVoiceCallAvailabe:Z

    if-nez v2, :cond_0

    .line 181
    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    .line 182
    :cond_0
    return-object v0

    .line 177
    :cond_1
    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    .line 178
    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    goto :goto_0
.end method

.method public onDrawSweepActionBar(Landroid/content/Context;IFILandroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "ctx"
    .parameter "itemIndex"
    .parameter "sweepProgress"
    .parameter "sweepState"
    .parameter "rc"
    .parameter "canvas"

    .prologue
    .line 194
    iget-boolean v1, p0, Lcom/android/mms/ui/SweepHandler;->isVoiceCallAvailabe:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    new-instance v10, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v10, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 199
    .local v10, sb:Ljava/lang/StringBuffer;
    const-string v1, "onDrawSweepActionBar(), itemIndex:"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "sweepProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", sweepState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 202
    const-string v1, "SweepHandler"

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v9, 0x0

    .line 206
    .local v9, needBoundUpdate:Z
    iget v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 207
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    .line 208
    const/4 v9, 0x1

    .line 212
    :cond_2
    iget v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 213
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    .line 214
    const/4 v9, 0x1

    .line 217
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVoLTE()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/SweepHandler;->mVoLTEStateTracker:Lcom/android/mms/VoLTEStateTracker;

    if-eqz v1, :cond_4

    .line 219
    iget-object v1, p0, Lcom/android/mms/ui/SweepHandler;->mVoLTEStateTracker:Lcom/android/mms/VoLTEStateTracker;

    invoke-virtual {v1, p1}, Lcom/android/mms/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v8

    .line 220
    .local v8, isNowVoLTE:Z
    iget-boolean v1, p0, Lcom/android/mms/ui/SweepHandler;->isVoLTEAvailable:Z

    if-eq v1, v8, :cond_4

    .line 221
    iput-boolean v8, p0, Lcom/android/mms/ui/SweepHandler;->isVoLTEAvailable:Z

    .line 222
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 223
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/SweepHandler;->mCallBg:Landroid/graphics/drawable/Drawable;

    .line 224
    const/4 v9, 0x1

    .line 228
    .end local v8           #isNowVoLTE:Z
    :cond_4
    if-eqz v9, :cond_5

    .line 229
    iget v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    iget v2, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/SweepHandler;->setupDrawablesBound(II)V

    .line 238
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/SweepHandler;->mSweepHandlerInterface:Lcom/android/mms/ui/SweepHandler$ListCheckInterface;

    invoke-interface {v1, p2}, Lcom/android/mms/ui/SweepHandler$ListCheckInterface;->isCallable(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/SweepHandler;->isCallable:Z

    .line 239
    iput p2, p0, Lcom/android/mms/ui/SweepHandler;->currentIndex:I

    .line 243
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_6

    .line 244
    const-string v1, "SweepHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSweepDraw start :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_6
    const/high16 v1, 0x3f80

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_7

    const/high16 v1, -0x4080

    cmpl-float v1, p3, v1

    if-nez v1, :cond_8

    .line 247
    :cond_7
    const-string v1, "SweepHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSweepDraw done :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_8
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_9

    .line 254
    const/high16 v4, 0x3f80

    .line 255
    .local v4, opacity:F
    move v7, p3

    .line 258
    .local v7, drawProgress:F
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 261
    .local v11, ss:I
    neg-float v1, v7

    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 262
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 263
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 285
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getMsgIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 309
    iget-object v3, p0, Lcom/android/mms/ui/SweepHandler;->mMsgText:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/SweepHandler;->drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_0

    .line 312
    .end local v4           #opacity:F
    .end local v7           #drawProgress:F
    .end local v11           #ss:I
    :cond_9
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_a

    const/4 v1, 0x2

    move/from16 v0, p4

    if-eq v0, v1, :cond_0

    .line 316
    :cond_a
    const/high16 v4, 0x3f80

    .line 319
    .restart local v4       #opacity:F
    const/high16 v1, -0x4080

    mul-float v7, v1, p3

    .line 322
    .restart local v7       #drawProgress:F
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 325
    .restart local v11       #ss:I
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getCallBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v1

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    sub-float v2, v7, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 326
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->getCallBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 327
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 330
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 331
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/android/mms/ui/SweepHandler;->mWidthPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 333
    iget-object v1, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 334
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 359
    iget-boolean v1, p0, Lcom/android/mms/ui/SweepHandler;->isCallable:Z

    if-eqz v1, :cond_b

    .line 360
    iget-object v3, p0, Lcom/android/mms/ui/SweepHandler;->mCallText:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/SweepHandler;->drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_0

    .line 362
    :cond_b
    iget-object v3, p0, Lcom/android/mms/ui/SweepHandler;->mWrongCallText:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/SweepHandler;->drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_0
.end method

.method public onListShouldDrawSelector(IFI)Z
    .locals 4
    .parameter "itemIndex"
    .parameter "sweepProgress"
    .parameter "sweepState"

    .prologue
    const/4 v0, 0x1

    .line 401
    const-string v1, "SweepHandler"

    invoke-static {v1, v0}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    const-string v1, "SweepHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShouldDrawSelector(), itemIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sweepState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
