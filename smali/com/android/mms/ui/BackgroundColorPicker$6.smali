.class Lcom/android/mms/ui/BackgroundColorPicker$6;
.super Ljava/lang/Object;
.source "BackgroundColorPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BackgroundColorPicker;->makeBackgourndVertical(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BackgroundColorPicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BackgroundColorPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/mms/ui/BackgroundColorPicker$6;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    const/4 v5, 0x0

    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, grid:Landroid/widget/GridView;
    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$6;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-boolean v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-nez v4, :cond_0

    .line 272
    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$6;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v1, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    .line 276
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v1}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_2

    .line 277
    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$6;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v4}, Lcom/android/mms/ui/BackgroundColorPicker;->showBackgroundSelectorDialog()V

    .line 279
    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$6;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iput v5, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    .line 280
    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setSelection(I)V

    .line 282
    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 283
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 284
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 285
    .local v3, imageView:Landroid/widget/ImageView;
    const v4, 0x7f020111

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 274
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #imageView:Landroid/widget/ImageView;
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$6;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v1, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    goto :goto_0

    .line 288
    .restart local v0       #count:I
    .restart local v2       #i:I
    :cond_1
    invoke-virtual {v1}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 289
    .restart local v3       #imageView:Landroid/widget/ImageView;
    if-eqz v3, :cond_2

    .line 290
    const v4, 0x7f020243

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #imageView:Landroid/widget/ImageView;
    :cond_2
    return-void
.end method
