.class Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "BackgroundColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BackgroundColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field final synthetic this$0:Lcom/android/mms/ui/BackgroundColorPicker;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BackgroundColorPicker;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 692
    iput-object p2, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->mContext:Landroid/content/Context;

    .line 693
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->mDensity:F

    .line 694
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 698
    sget v0, Lcom/android/mms/ui/MessageBubbleActivity;->mMaxItemCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 702
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGImageArray:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 706
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v4, 0x7f0c0229

    const/high16 v3, 0x42c8

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 712
    if-nez p2, :cond_7

    .line 713
    new-instance v8, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 718
    .local v8, imageView:Landroid/widget/ImageView;
    :goto_0
    const-string v0, "cane3gzn"

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableBackgroundStyleWithImage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v8}, Landroid/widget/ImageView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    const/4 v8, 0x0

    .line 721
    new-instance v8, Landroid/widget/ImageView;

    .end local v8           #imageView:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 724
    .restart local v8       #imageView:Landroid/widget/ImageView;
    :cond_0
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->mDensity:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    if-ne p1, v0, :cond_8

    .line 730
    const v0, 0x7f020243

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 735
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableBackgroundStyleWithImage()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 736
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/BackgroundColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c036f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 739
    :cond_1
    if-lez p1, :cond_2

    .line 740
    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 741
    if-ne p1, v5, :cond_9

    .line 742
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/BackgroundColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 754
    :cond_2
    :goto_2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 756
    sget v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_ITEM_INDEX:I

    if-ne p1, v0, :cond_b

    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 757
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    #getter for: Lcom/android/mms/ui/BackgroundColorPicker;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/mms/ui/BackgroundColorPicker;->access$700(Lcom/android/mms/ui/BackgroundColorPicker;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 768
    :goto_3
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 771
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    if-lt v0, v5, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-nez v0, :cond_4

    .line 774
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    sget-object v3, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    iget-object v9, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v9, v9, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v9}, Landroid/widget/GridView;->getWidth()I

    move-result v9

    invoke-virtual {v1, v2, v3, v4, v9}, Lcom/android/mms/ui/BackgroundColorPicker;->calculateScrollPosition(IIII)I

    move-result v1

    iput v1, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    .line 778
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    if-gt v0, v5, :cond_3

    .line 779
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iput v11, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    .line 781
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    invoke-virtual {v0, v1, v11}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 783
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    #getter for: Lcom/android/mms/ui/BackgroundColorPicker;->mEnableAnimation:Z
    invoke-static {v0}, Lcom/android/mms/ui/BackgroundColorPicker;->access$800(Lcom/android/mms/ui/BackgroundColorPicker;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 784
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    sget v1, Lcom/android/mms/ui/MessageBubbleActivity;->mMaxItemCount:I

    iget-object v2, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v2, v2, Lcom/android/mms/ui/MessageBubbleActivity;->NO_OF_ITEMS_NO_ANIMATION:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->doanimation:Z

    if-eqz v0, :cond_4

    .line 787
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    sget-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v3, v3, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/BackgroundColorPicker;->calculateAnimationValues(IIIIZ)V

    .line 790
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v2, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mAnimationValue:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v1, v2, v10, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mSmoothHoriScroll:Landroid/view/animation/Animation;

    .line 793
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mSmoothHoriScroll:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mAnimationTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 795
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mSmoothHoriScroll:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter$1;-><init>(Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 812
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mSmoothHoriScroll:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 813
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iput-boolean v11, v0, Lcom/android/mms/ui/MessageBubbleActivity;->doanimation:Z

    .line 818
    :cond_4
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    if-lt v0, v5, :cond_6

    .line 821
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v2, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v2, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    sget-object v3, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    iget-object v9, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v9, v9, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v9}, Landroid/widget/GridView;->getHeight()I

    move-result v9

    invoke-virtual {v1, v2, v3, v4, v9}, Lcom/android/mms/ui/BackgroundColorPicker;->calculateScrollPosition(IIII)I

    move-result v1

    iput v1, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    .line 825
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    if-gt v0, v5, :cond_5

    .line 826
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iput v11, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    .line 828
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGSScollVertical:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    invoke-virtual {v0, v11, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 830
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    #getter for: Lcom/android/mms/ui/BackgroundColorPicker;->mEnableAnimation:Z
    invoke-static {v0}, Lcom/android/mms/ui/BackgroundColorPicker;->access$800(Lcom/android/mms/ui/BackgroundColorPicker;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 831
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    sget v1, Lcom/android/mms/ui/MessageBubbleActivity;->mMaxItemCount:I

    iget-object v2, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v2, v2, Lcom/android/mms/ui/MessageBubbleActivity;->NO_OF_ITEMS_NO_ANIMATION:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->doanimation:Z

    if-eqz v0, :cond_6

    .line 833
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sget-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v3, v3, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/BackgroundColorPicker;->calculateAnimationValues(IIIIZ)V

    .line 836
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v2, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mAnimationValue:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v1, v10, v10, v2, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mSmoothVerticalScroll:Landroid/view/animation/Animation;

    .line 839
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mSmoothVerticalScroll:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mAnimationTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 841
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mSmoothVerticalScroll:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter$2;-><init>(Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 856
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v0, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mSmoothVerticalScroll:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 859
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iput-boolean v11, v0, Lcom/android/mms/ui/MessageBubbleActivity;->doanimation:Z

    .line 867
    :cond_6
    return-object v8

    .end local v8           #imageView:Landroid/widget/ImageView;
    :cond_7
    move-object v8, p2

    .line 715
    check-cast v8, Landroid/widget/ImageView;

    .restart local v8       #imageView:Landroid/widget/ImageView;
    goto/16 :goto_0

    .line 732
    :cond_8
    const v0, 0x7f020111

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 744
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/BackgroundColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 745
    .local v6, backgroundTitle:Ljava/lang/String;
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 748
    .end local v6           #backgroundTitle:Ljava/lang/String;
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/BackgroundColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 749
    .restart local v6       #backgroundTitle:Ljava/lang/String;
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 761
    .end local v6           #backgroundTitle:Ljava/lang/String;
    :cond_b
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/BackgroundColorPicker$ImageAdapter;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/BackgroundColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->mBGImageArray:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 762
    :catch_0
    move-exception v7

    .line 763
    .local v7, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 764
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3
.end method
