.class public Lcom/android/mms/ui/MessageBubbleActivity;
.super Landroid/app/Activity;
.source "MessageBubbleActivity.java"


# static fields
.field protected static final BG_STYLE_ID:[I = null

.field protected static final BUBBLE_BG_ID:[I = null

.field protected static final BUBBLE_RECEIVE_STYLE_H_ID:[I = null

.field protected static final BUBBLE_RECEIVE_STYLE_ID:[I = null

.field protected static final BUBBLE_SEND_STYLE_H_ID:[I = null

.field protected static final BUBBLE_SEND_STYLE_ID:[I = null

.field protected static final CUSTOM2_BG_STYLE_ID:[I = null

.field protected static final CUSTOM2_BUBBLE_BG_ID:[I = null

.field protected static final CUSTOM_BG_STYLE_ID:[I = null

.field protected static final CUSTOM_BUBBLE_BG_ID:[I = null

.field protected static CUSTOM_ITEM_INDEX:I = 0x0

.field private static final ITEM_BETWEEN_GAP:I = 0x1e

.field private static final ITEM_BETWEEN_GAP_LAND:F = 7.5f

.field protected static final ITEM_WIDTH:I = 0x64

.field protected static final MENU_SELECTION_CANCEL:I = 0x2

.field protected static final MENU_SELECTION_SAVE:I = 0x1

.field protected static final NEW_CUSTOM_ITEM_INDEX:I = 0x0

.field private static final SIDE_PADDING:I = 0xe

.field private static final SIDE_PADDING_LAND:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Mms/MessageBubbleActivity"

.field protected static mBGImageArray:[I = null

.field protected static mBGStyleArray:[I = null

.field private static mGridHeightLand:I = 0x0

.field protected static mGridWidth:I = 0x0

.field protected static mIsCustomItemExist:Z = false

.field protected static mMaxItemCount:I = 0x0

.field protected static final mMinTime_BG:I = 0x64

.field protected static final mMinTime_Bubble:I = 0xc8

.field protected static final mTimeFactor_BG:F = 1.5f

.field protected static final mTimeFactor_Bubble:F = 2.0f

.field protected static final originalTarget:Ljava/lang/String; = "/data/data/com.android.mms/message_background_image_original.jpg"

.field protected static final originalTargetFileName:Ljava/lang/String; = "message_background_image_original.jpg"

.field protected static sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable; = null

.field protected static sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable; = null

.field protected static final source:Ljava/lang/String; = "/mnt/sdcard/message_background_image.jpg"

.field protected static source_origin:Ljava/lang/String; = null

.field protected static final target:Ljava/lang/String; = "/data/data/com.android.mms/message_background_image.jpg"

.field protected static final targetDirPath:Ljava/lang/String; = "/data/data/com.android.mms/"

.field protected static final targetFileName:Ljava/lang/String; = "message_background_image.jpg"

.field protected static targetOriginFileName:Ljava/lang/String;


# instance fields
.field protected BUBBLE_GRID_HEIGHT:I

.field protected BUBBLE_GRID_WIDTH:I

.field protected NO_OF_ITEMS_NO_ANIMATION:I

.field protected doReceiveAnimatin:Z

.field protected doSentAnimation:Z

.field protected doanimation:Z

.field protected mAnimationTime:I

.field protected mAnimationValue:I

.field protected mBGSScollVertical:Landroid/widget/ScrollView;

.field protected mBGScroll:Landroid/widget/HorizontalScrollView;

.field protected mBackgroundVertical:Landroid/widget/LinearLayout;

.field protected mCurrentScrollPosition:I

.field mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field protected mGridViewHorizontal_BG:Landroid/widget/GridView;

.field protected mGridViewHorizontal_Receice:Landroid/widget/GridView;

.field protected mGridViewHorizontal_Sent:Landroid/widget/GridView;

.field protected mGridViewVertical_BG:Landroid/widget/GridView;

.field protected mGridViewVertical_Reveice:Landroid/widget/GridView;

.field protected mGridViewVertical_Sent:Landroid/widget/GridView;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mIsLandscape:Z

.field protected mLayoutHorizontal:Landroid/widget/LinearLayout;

.field private mMessageFakeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageSkinBubbleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageSkinFakeItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageSkinFakeItem;",
            ">;"
        }
    .end annotation
.end field

.field public mPrevSelectedBGIndex:I

.field protected mReceiveScroll:Landroid/widget/HorizontalScrollView;

.field protected mReceiveScrollVertical:Landroid/widget/ScrollView;

.field public mSelectedBGIndex:I

.field public mSelectedBubbleReceiveIndex:I

.field public mSelectedBubbleSentIndex:I

.field protected mSentScroll:Landroid/widget/HorizontalScrollView;

.field protected mSentScrollVertical:Landroid/widget/ScrollView;

.field protected mSmoothHoriScroll:Landroid/view/animation/Animation;

.field protected mSmoothVerticalScroll:Landroid/view/animation/Animation;

.field protected mVto:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x5

    .line 73
    const/16 v0, 0x320

    sput v0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridHeightLand:I

    .line 77
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_BG_ID:[I

    .line 85
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BG_STYLE_ID:[I

    .line 93
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_BUBBLE_BG_ID:[I

    .line 102
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_BG_STYLE_ID:[I

    .line 110
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM2_BUBBLE_BG_ID:[I

    .line 120
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM2_BG_STYLE_ID:[I

    .line 130
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    .line 138
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_H_ID:[I

    .line 146
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    .line 154
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_H_ID:[I

    .line 198
    const-string v0, "/mnt/sdcard/message_background_image_origin.jpg"

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->source_origin:Ljava/lang/String;

    .line 199
    const-string v0, "message_background_image_origin.jpg"

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->targetOriginFileName:Ljava/lang/String;

    .line 209
    const/16 v0, 0x38c

    sput v0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridWidth:I

    .line 210
    sput v3, Lcom/android/mms/ui/MessageBubbleActivity;->mMaxItemCount:I

    .line 217
    const/4 v0, 0x1

    sput v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_ITEM_INDEX:I

    .line 219
    sput-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    .line 220
    sput-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->mBGImageArray:[I

    .line 221
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsCustomItemExist:Z

    .line 223
    sput-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    .line 224
    sput-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    return-void

    .line 77
    nop

    :array_0
    .array-data 0x4
        0x47t 0x1t 0x2t 0x7ft
        0x48t 0x1t 0x2t 0x7ft
        0x49t 0x1t 0x2t 0x7ft
        0x4at 0x1t 0x2t 0x7ft
        0x4bt 0x1t 0x2t 0x7ft
    .end array-data

    .line 85
    :array_1
    .array-data 0x4
        0xf2t 0x1t 0x2t 0x7ft
        0xf3t 0x1t 0x2t 0x7ft
        0xf4t 0x1t 0x2t 0x7ft
        0xf5t 0x1t 0x2t 0x7ft
        0xf6t 0x1t 0x2t 0x7ft
    .end array-data

    .line 93
    :array_2
    .array-data 0x4
        0x4ct 0x1t 0x2t 0x7ft
        0x4dt 0x1t 0x2t 0x7ft
        0x4et 0x1t 0x2t 0x7ft
        0x4ft 0x1t 0x2t 0x7ft
        0x50t 0x1t 0x2t 0x7ft
        0x51t 0x1t 0x2t 0x7ft
    .end array-data

    .line 102
    :array_3
    .array-data 0x4
        0xf7t 0x1t 0x2t 0x7ft
        0xf2t 0x1t 0x2t 0x7ft
        0xf3t 0x1t 0x2t 0x7ft
        0xf4t 0x1t 0x2t 0x7ft
        0xf5t 0x1t 0x2t 0x7ft
        0xf6t 0x1t 0x2t 0x7ft
    .end array-data

    .line 110
    :array_4
    .array-data 0x4
        0x4ct 0x1t 0x2t 0x7ft
        0x4ct 0x1t 0x2t 0x7ft
        0x4dt 0x1t 0x2t 0x7ft
        0x4et 0x1t 0x2t 0x7ft
        0x4ft 0x1t 0x2t 0x7ft
        0x50t 0x1t 0x2t 0x7ft
        0x51t 0x1t 0x2t 0x7ft
    .end array-data

    .line 120
    :array_5
    .array-data 0x4
        0xf7t 0x1t 0x2t 0x7ft
        0xf7t 0x1t 0x2t 0x7ft
        0xf2t 0x1t 0x2t 0x7ft
        0xf3t 0x1t 0x2t 0x7ft
        0xf4t 0x1t 0x2t 0x7ft
        0xf5t 0x1t 0x2t 0x7ft
        0xf6t 0x1t 0x2t 0x7ft
    .end array-data

    .line 130
    :array_6
    .array-data 0x4
        0xb0t 0x1t 0x2t 0x7ft
        0xb2t 0x1t 0x2t 0x7ft
        0xb4t 0x1t 0x2t 0x7ft
        0xb6t 0x1t 0x2t 0x7ft
        0xb8t 0x1t 0x2t 0x7ft
    .end array-data

    .line 138
    :array_7
    .array-data 0x4
        0xb1t 0x1t 0x2t 0x7ft
        0xb3t 0x1t 0x2t 0x7ft
        0xb5t 0x1t 0x2t 0x7ft
        0xb7t 0x1t 0x2t 0x7ft
        0xb9t 0x1t 0x2t 0x7ft
    .end array-data

    .line 146
    :array_8
    .array-data 0x4
        0xbbt 0x1t 0x2t 0x7ft
        0xbdt 0x1t 0x2t 0x7ft
        0xbft 0x1t 0x2t 0x7ft
        0xc1t 0x1t 0x2t 0x7ft
        0xc3t 0x1t 0x2t 0x7ft
    .end array-data

    .line 154
    :array_9
    .array-data 0x4
        0xbct 0x1t 0x2t 0x7ft
        0xbet 0x1t 0x2t 0x7ft
        0xc0t 0x1t 0x2t 0x7ft
        0xc2t 0x1t 0x2t 0x7ft
        0xc4t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->NO_OF_ITEMS_NO_ANIMATION:I

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageSkinFakeItemList:Ljava/util/ArrayList;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    .line 229
    return-void
.end method

.method private static createBackgroundBitmapDrawable(Landroid/app/Activity;ZZ)Lcom/android/mms/ui/FixedSizeBitmapDrawable;
    .locals 24
    .parameter "activity"
    .parameter "isLandscape"
    .parameter "isDownSizing"

    .prologue
    .line 590
    new-instance v19, Ljava/io/File;

    const-string v20, "/data/data/com.android.mms/"

    const-string v21, "message_background_image.jpg"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    .line 592
    .local v11, mImageOutputUri:Landroid/net/Uri;
    const/16 v17, 0x0

    .line 593
    .local v17, photo:Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    .line 594
    .local v18, photoTemp:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 596
    .local v5, d:Lcom/android/mms/ui/FixedSizeBitmapDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display;->getWidth()I

    move-result v15

    .line 597
    .local v15, mScreenWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display;->getHeight()I

    move-result v14

    .line 598
    .local v14, mScreenHeight:I
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getTopLayoutSizeWithStatusBar(Landroid/app/Activity;)I

    move-result v9

    .line 599
    .local v9, gap:I
    move v12, v14

    .line 600
    .local v12, mNewScreenHeight:I
    move v13, v15

    .line 603
    .local v13, mNewScreenWidth:I
    if-nez p2, :cond_0

    .line 604
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 613
    :goto_0
    if-nez v17, :cond_1

    .line 614
    const-string v19, "Mms/MessageBubbleActivity"

    const-string v20, "photo is null. return null"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const/16 v19, 0x0

    .line 678
    :goto_1
    return-object v19

    .line 606
    :cond_0
    const/4 v10, 0x0

    .line 607
    .local v10, input:Ljava/io/InputStream;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 608
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 609
    .local v16, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v19, 0x8

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 610
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v10, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v17

    goto :goto_0

    .line 618
    .end local v10           #input:Ljava/io/InputStream;
    .end local v16           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    sub-int v12, v14, v9

    .line 620
    invoke-static {}, Lcom/android/mms/MmsConfig;->isLandscapeBaseModel()Z

    move-result v19

    if-nez v19, :cond_5

    .line 621
    if-eqz p1, :cond_2

    .line 623
    int-to-float v0, v14

    move/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    div-float v8, v19, v20

    .line 626
    .local v8, factor:F
    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    mul-int/lit8 v22, v22, 0x2

    div-int/lit8 v22, v22, 0x3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 633
    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageBubbleActivity;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 634
    const/16 v17, 0x0

    .line 635
    move-object/from16 v17, v18

    .line 653
    .end local v8           #factor:F
    :cond_2
    :goto_2
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    if-lt v0, v12, :cond_3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    if-ge v0, v13, :cond_4

    .line 654
    :cond_3
    const-string v19, "Mms/MessageBubbleActivity"

    const-string v20, "setBackground photo.getHeight() < mNewScreenHeight || photo.getWidth() < mNewScreenWidth"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v15, v14, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 657
    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageBubbleActivity;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 658
    const/16 v17, 0x0

    .line 659
    move-object/from16 v17, v18

    .line 662
    :cond_4
    new-instance v6, Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Lcom/android/mms/ui/FixedSizeBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v5           #d:Lcom/android/mms/ui/FixedSizeBitmapDrawable;
    .local v6, d:Lcom/android/mms/ui/FixedSizeBitmapDrawable;
    move-object v5, v6

    .end local v6           #d:Lcom/android/mms/ui/FixedSizeBitmapDrawable;
    .restart local v5       #d:Lcom/android/mms/ui/FixedSizeBitmapDrawable;
    :goto_3
    move-object/from16 v19, v5

    .line 678
    goto/16 :goto_1

    .line 638
    :cond_5
    if-nez p1, :cond_2

    .line 639
    int-to-float v0, v15

    move/from16 v19, v0

    int-to-float v0, v14

    move/from16 v20, v0

    div-float v8, v19, v20

    .line 640
    .restart local v8       #factor:F
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x3

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    div-int/lit8 v21, v21, 0x3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v8

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 647
    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageBubbleActivity;->recycleBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 648
    const/16 v17, 0x0

    .line 649
    move-object/from16 v17, v18

    goto/16 :goto_2

    .line 664
    .end local v8           #factor:F
    :catch_0
    move-exception v7

    .line 665
    .local v7, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 666
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    .line 667
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 668
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 669
    .local v7, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 670
    const/16 v19, 0x1

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    if-nez v5, :cond_6

    .line 671
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    .line 672
    const-string v19, "Mms/MessageBubbleActivity"

    const-string v20, "OutOfMemoryError caught @ getCropedBackground() and throw"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 673
    throw v7

    .line 675
    :cond_6
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageBubbleActivity;->createBackgroundBitmapDrawable(Landroid/app/Activity;ZZ)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v5

    goto :goto_3
.end method

.method public static getBGStyleArray()[I
    .locals 1

    .prologue
    .line 305
    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->updateBGStyleArray()V

    .line 306
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    return-object v0
.end method

.method protected static getCropedBackground(Landroid/app/Activity;Z)Lcom/android/mms/ui/FixedSizeBitmapDrawable;
    .locals 6
    .parameter "activity"
    .parameter "useCache"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 558
    const/4 v0, 0x0

    .line 560
    .local v0, bitmapDrawable:Lcom/android/mms/ui/FixedSizeBitmapDrawable;
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v1, v2

    .line 561
    .local v1, isLandscape:Z
    :goto_0
    if-eqz p1, :cond_4

    .line 562
    if-eqz v1, :cond_2

    .line 563
    sget-object v4, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    if-nez v4, :cond_0

    .line 564
    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageBubbleActivity;->createBackgroundBitmapDrawable(Landroid/app/Activity;ZZ)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    .line 566
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    .line 584
    :goto_1
    return-object v0

    .end local v1           #isLandscape:Z
    :cond_1
    move v1, v3

    .line 560
    goto :goto_0

    .line 568
    .restart local v1       #isLandscape:Z
    :cond_2
    sget-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    if-nez v2, :cond_3

    .line 569
    invoke-static {p0, v3, v3}, Lcom/android/mms/ui/MessageBubbleActivity;->createBackgroundBitmapDrawable(Landroid/app/Activity;ZZ)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    .line 571
    :cond_3
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    goto :goto_1

    .line 574
    :cond_4
    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->releaseBackgroundBitmapDrawable()V

    .line 575
    if-eqz v1, :cond_5

    .line 576
    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageBubbleActivity;->createBackgroundBitmapDrawable(Landroid/app/Activity;ZZ)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    .line 577
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    goto :goto_1

    .line 579
    :cond_5
    invoke-static {p0, v3, v3}, Lcom/android/mms/ui/MessageBubbleActivity;->createBackgroundBitmapDrawable(Landroid/app/Activity;ZZ)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    .line 580
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    goto :goto_1
.end method

.method public static getTopLayoutSizeWithStatusBar(Landroid/app/Activity;)I
    .locals 9
    .parameter "activity"

    .prologue
    .line 713
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 714
    .local v1, rectgle:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 715
    .local v5, window:Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 716
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 717
    .local v2, statusBarHeight:I
    const/4 v0, 0x0

    .line 718
    .local v0, contentViewTop:I
    const v6, 0x1020002

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 719
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 720
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    .line 722
    :cond_0
    sub-int v3, v0, v2

    .line 724
    .local v3, titleBarHeight:I
    const-string v6, "StatusBarTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StatusBar Height= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " TitleBar Height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    return v0
.end method

.method protected static isCustomItemExist()Z
    .locals 2

    .prologue
    .line 272
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/ui/MessageBubbleActivity;->mIsCustomItemExist:Z

    .line 273
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, targetFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/ui/MessageBubbleActivity;->mIsCustomItemExist:Z

    .line 278
    :cond_0
    sget-boolean v1, Lcom/android/mms/ui/MessageBubbleActivity;->mIsCustomItemExist:Z

    return v1
.end method

.method protected static recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 730
    if-nez p0, :cond_0

    .line 734
    :goto_0
    return-void

    .line 733
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected static recycleBitmap(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 750
    if-nez p0, :cond_0

    .line 756
    :goto_0
    return-void

    .line 753
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 754
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 755
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method protected static recycleBitmap(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 738
    if-nez p0, :cond_0

    .line 746
    :goto_0
    return-void

    .line 741
    :cond_0
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    move-object v1, p0

    .line 742
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 743
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 745
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method protected static releaseBackgroundBitmapDrawable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 759
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    if-eqz v0, :cond_0

    .line 760
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    invoke-static {v0}, Lcom/android/mms/ui/MessageBubbleActivity;->recycleBitmap(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 761
    sput-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Land:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    .line 763
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    if-eqz v0, :cond_1

    .line 764
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    invoke-static {v0}, Lcom/android/mms/ui/MessageBubbleActivity;->recycleBitmap(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 765
    sput-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->sBitmapDrawable_Port:Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    .line 767
    :cond_1
    return-void
.end method

.method private setDateSeperator()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method protected static updateBGStyleArray()V
    .locals 3

    .prologue
    .line 283
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableBackgroundStyleWithImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BG_STYLE_ID:[I

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    .line 285
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_BG_ID:[I

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGImageArray:[I

    .line 297
    :goto_0
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v0, v0

    sput v0, Lcom/android/mms/ui/MessageBubbleActivity;->mMaxItemCount:I

    .line 298
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x64

    sget-object v1, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x1e

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1c

    sput v0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridWidth:I

    .line 300
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    const/high16 v1, 0x40f0

    sget-object v2, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x41a0

    add-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridHeightLand:I

    .line 302
    return-void

    .line 288
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM2_BG_STYLE_ID:[I

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    .line 290
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM2_BUBBLE_BG_ID:[I

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGImageArray:[I

    goto :goto_0

    .line 293
    :cond_1
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_BG_STYLE_ID:[I

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    .line 294
    sget-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_BUBBLE_BG_ID:[I

    sput-object v0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGImageArray:[I

    goto :goto_0
.end method


# virtual methods
.method protected calculateAnimationValues(IIIIZ)V
    .locals 2
    .parameter "screenSize"
    .parameter "length"
    .parameter "gridSize"
    .parameter "index"
    .parameter "isBackground"

    .prologue
    .line 245
    iget v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mCurrentScrollPosition:I

    sub-int v0, p3, v0

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mAnimationValue:I

    .line 246
    if-eqz p5, :cond_0

    .line 247
    iget v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mAnimationValue:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v1, p4, 0x64

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mAnimationTime:I

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mAnimationValue:I

    int-to-float v0, v0

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit16 v1, p4, 0xc8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mAnimationTime:I

    goto :goto_0
.end method

.method protected calculateScrollPosition(IIII)I
    .locals 2
    .parameter "screenSize"
    .parameter "length"
    .parameter "index"
    .parameter "gridSize"

    .prologue
    .line 236
    div-int v0, p4, p2

    mul-int/2addr v0, p3

    div-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    div-int v1, p4, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public makeView()V
    .locals 13

    .prologue
    const v12, 0x7f02005b

    const v11, 0x7f02005a

    const/4 v6, 0x1

    const/16 v10, 0x8

    const/4 v7, 0x0

    .line 310
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleBackgroundStyle(Landroid/content/Context;)I

    move-result v2

    .line 311
    .local v2, selectedBGIndex:I
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleSentStyle(Landroid/content/Context;)I

    move-result v4

    .line 312
    .local v4, selectedBubbleSentIndex:I
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v3

    .line 314
    .local v3, selectedBubbleReceiveIndex:I
    sget-object v5, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    invoke-static {v2, v5}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 315
    const/4 v2, 0x1

    .line 316
    :cond_0
    sget-object v5, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 317
    const/4 v4, 0x0

    .line 318
    :cond_1
    sget-object v5, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    invoke-static {v3, v5}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 319
    const/4 v3, 0x0

    .line 321
    :cond_2
    if-nez v2, :cond_3

    .line 322
    const/4 v2, 0x1

    .line 324
    :cond_3
    iput v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    .line 325
    iput v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mPrevSelectedBGIndex:I

    .line 326
    iput v4, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    .line 327
    iput v3, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    .line 331
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 332
    const v5, 0x7f0b0155

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    .line 334
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageSkinFakeItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 335
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040056

    iget-object v9, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageSkinBubbleItem;

    .line 336
    .local v1, messageList:Lcom/android/mms/ui/MessageSkinBubbleItem;
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageSkinFakeItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/MessageSkinFakeItem;

    invoke-virtual {v1, v5}, Lcom/android/mms/ui/MessageSkinBubbleItem;->bind(Lcom/android/mms/ui/MessageSkinFakeItem;)V

    .line 337
    invoke-virtual {v1, v7}, Lcom/android/mms/ui/MessageSkinBubbleItem;->setVisibility(I)V

    .line 338
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    .end local v1           #messageList:Lcom/android/mms/ui/MessageSkinBubbleItem;
    :cond_4
    iget v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    iget v8, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    invoke-virtual {p0, v5, v8}, Lcom/android/mms/ui/MessageBubbleActivity;->setBubbleImage(II)V

    .line 345
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_5

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    .line 347
    const v5, 0x7f0b015b

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    .line 348
    const v5, 0x7f0b0157

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    .line 350
    const v5, 0x7f0b0163

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGSScollVertical:Landroid/widget/ScrollView;

    .line 351
    const v5, 0x7f0b0161

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScrollVertical:Landroid/widget/ScrollView;

    .line 352
    const v5, 0x7f0b015e

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScrollVertical:Landroid/widget/ScrollView;

    .line 354
    const v5, 0x7f0b0159

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    .line 356
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5, v7}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    .line 357
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5, v7}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    .line 358
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5, v7}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    .line 359
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGSScollVertical:Landroid/widget/ScrollView;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 360
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScrollVertical:Landroid/widget/ScrollView;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 361
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScrollVertical:Landroid/widget/ScrollView;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 363
    const v5, 0x7f0b015c

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    .line 364
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v5, v11}, Landroid/widget/GridView;->setBackgroundResource(I)V

    .line 366
    const v5, 0x7f0b0158

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    .line 367
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v5, v11}, Landroid/widget/GridView;->setBackgroundResource(I)V

    .line 369
    const v5, 0x7f0b015a

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    .line 370
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v5, v11}, Landroid/widget/GridView;->setBackgroundResource(I)V

    .line 371
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_GRID_WIDTH:I

    .line 372
    const v5, 0x7f0b0164

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    .line 373
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v5, v12}, Landroid/widget/GridView;->setBackgroundResource(I)V

    .line 375
    const v5, 0x7f0b0162

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    .line 376
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v5, v12}, Landroid/widget/GridView;->setBackgroundResource(I)V

    .line 378
    const v5, 0x7f0b0160

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    .line 379
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v5, v12}, Landroid/widget/GridView;->setBackgroundResource(I)V

    .line 380
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_GRID_HEIGHT:I

    .line 382
    const v5, 0x7f0b015f

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageBubbleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mLayoutHorizontal:Landroid/widget/LinearLayout;

    .line 384
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->updateGridViewLayout()V

    .line 386
    iget v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    sget v8, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_ITEM_INDEX:I

    if-ne v5, v8, :cond_6

    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 387
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageBubbleActivity;->setBackground(Z)V

    .line 388
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageBubbleActivity;->setShadowOnText(Z)V

    .line 396
    :goto_2
    iget-boolean v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v5, :cond_7

    .line 397
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v5, v10}, Landroid/widget/GridView;->setVisibility(I)V

    .line 398
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v5, v10}, Landroid/widget/GridView;->setVisibility(I)V

    .line 399
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v5, v10}, Landroid/widget/GridView;->setVisibility(I)V

    .line 404
    :goto_3
    invoke-direct {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->setDateSeperator()V

    .line 405
    return-void

    :cond_5
    move v5, v7

    .line 345
    goto/16 :goto_1

    .line 390
    :cond_6
    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->releaseBackgroundBitmapDrawable()V

    .line 391
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v8, Lcom/android/mms/ui/MessageBubbleActivity;->mBGStyleArray:[I

    iget v9, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    aget v8, v8, v9

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 393
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessageBubbleActivity;->setShadowOnText(Z)V

    goto :goto_2

    .line 401
    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mLayoutHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    const/4 v1, 0x1

    .line 465
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 467
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    .line 469
    iget v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBGIndex:I

    sget v2, Lcom/android/mms/ui/MessageBubbleActivity;->CUSTOM_ITEM_INDEX:I

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageBubbleActivity;->setBackground(Z)V

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->invalidateOptionsMenu()V

    .line 474
    return-void

    .line 467
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 258
    const v2, 0x7f040049

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageBubbleActivity;->setContentView(I)V

    .line 260
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0347

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, meString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0348

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, youString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageSkinFakeItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/mms/ui/MessageSkinFakeItem;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/mms/ui/MessageSkinFakeItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageSkinFakeItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/mms/ui/MessageSkinFakeItem;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lcom/android/mms/ui/MessageSkinFakeItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->updateBGStyleArray()V

    .line 268
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->setWindowResizingEventHandler()V

    .line 269
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 492
    const/4 v2, 0x2

    const v3, 0x7f0c017c

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 493
    .local v0, menuCancel:Landroid/view/MenuItem;
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 495
    const/4 v2, 0x1

    const v3, 0x7f0c00dd

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 496
    .local v1, menuSave:Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 498
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 521
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 523
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mVto:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mVto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 526
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 478
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 487
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 480
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->finish()V

    goto :goto_0

    .line 483
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->finish()V

    goto :goto_0

    .line 478
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 503
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 504
    .local v0, menuCancel:Landroid/view/MenuItem;
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 506
    .local v1, menuSave:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 507
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v2, :cond_1

    .line 508
    const v2, 0x7f02022c

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 509
    const v2, 0x7f02022d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 516
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 511
    :cond_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 512
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setActionBar()V
    .locals 2

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 454
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 455
    return-void
.end method

.method protected setBackground(Z)V
    .locals 8
    .parameter "useCache"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 682
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageBubbleActivity;->getCropedBackground(Landroid/app/Activity;Z)Lcom/android/mms/ui/FixedSizeBitmapDrawable;

    move-result-object v0

    .line 684
    .local v0, customDrawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 697
    :goto_0
    return-void

    .line 688
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 689
    .local v1, lo:[I
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 691
    aget v2, v1, v7

    neg-int v2, v2

    aget v3, v1, v6

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    aget v5, v1, v7

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    aget v6, v1, v6

    sub-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/mms/ui/FixedSizeBitmapDrawable;->setBounds(IIII)V

    .line 693
    const/high16 v2, 0x3300

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/FixedSizeBitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 694
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 695
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setBubbleImage(I)V
    .locals 3
    .parameter "style"

    .prologue
    .line 420
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 421
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageSkinBubbleItem;

    .line 422
    .local v1, messageBubbleItem:Lcom/android/mms/ui/MessageSkinBubbleItem;
    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageSkinBubbleItem;->setBubbleImage(I)V

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    .end local v1           #messageBubbleItem:Lcom/android/mms/ui/MessageSkinBubbleItem;
    :cond_0
    return-void
.end method

.method public setBubbleImage(II)V
    .locals 3
    .parameter "sendStyle"
    .parameter "receiveStyle"

    .prologue
    .line 427
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 428
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageSkinBubbleItem;

    .line 429
    .local v1, messageBubbleItem:Lcom/android/mms/ui/MessageSkinBubbleItem;
    invoke-virtual {v1}, Lcom/android/mms/ui/MessageSkinBubbleItem;->getIsNew()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    invoke-virtual {v1, p2}, Lcom/android/mms/ui/MessageSkinBubbleItem;->setBubbleImage(I)V

    .line 427
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageSkinBubbleItem;->setBubbleImage(I)V

    goto :goto_1

    .line 434
    .end local v1           #messageBubbleItem:Lcom/android/mms/ui/MessageSkinBubbleItem;
    :cond_1
    return-void
.end method

.method public setShadowOnText(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 437
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 438
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mMessageFakeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageSkinBubbleItem;

    .line 439
    .local v1, messageBubbleItem:Lcom/android/mms/ui/MessageSkinBubbleItem;
    invoke-virtual {v1}, Lcom/android/mms/ui/MessageSkinBubbleItem;->getIsNew()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageSkinBubbleItem;->setShadowOnText(Z)V

    .line 437
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageSkinBubbleItem;->setShadowOnText(Z)V

    goto :goto_1

    .line 444
    .end local v1           #messageBubbleItem:Lcom/android/mms/ui/MessageSkinBubbleItem;
    :cond_1
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 459
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 461
    :cond_0
    return-void
.end method

.method protected setWindowResizingEventHandler()V
    .locals 2

    .prologue
    .line 530
    new-instance v0, Lcom/android/mms/ui/MessageBubbleActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageBubbleActivity$1;-><init>(Lcom/android/mms/ui/MessageBubbleActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 553
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mVto:Landroid/view/ViewTreeObserver;

    .line 554
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 555
    return-void
.end method

.method protected updateGridViewLayout()V
    .locals 4

    .prologue
    .line 408
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 409
    .local v1, newLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/android/mms/ui/MessageBubbleActivity;->mGridWidth:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 410
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    sget v3, Lcom/android/mms/ui/MessageBubbleActivity;->mMaxItemCount:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 413
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 414
    .local v0, layoutParamsLand:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/android/mms/ui/MessageBubbleActivity;->mGridHeightLand:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 415
    iget-object v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    return-void
.end method
