.class public Lcom/android/mms/ui/FixedSizeBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "FixedSizeBitmapDrawable.java"


# instance fields
.field private mFiexRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "resources"
    .parameter "bitmap"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 20
    return-void
.end method


# virtual methods
.method public setBounds(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/mms/ui/FixedSizeBitmapDrawable;->mFiexRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/FixedSizeBitmapDrawable;->mFiexRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/mms/ui/FixedSizeBitmapDrawable;->mFiexRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/mms/ui/FixedSizeBitmapDrawable;->mFiexRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/mms/ui/FixedSizeBitmapDrawable;->mFiexRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, v0, v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public setFixedBounds(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/mms/ui/FixedSizeBitmapDrawable;->mFiexRect:Landroid/graphics/Rect;

    .line 33
    return-void
.end method
