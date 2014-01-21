.class public Lcom/android/mms/ui/BubbleTypePicker;
.super Lcom/android/mms/ui/MessageBubbleActivity;
.source "BubbleTypePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;
    }
.end annotation


# static fields
.field private static final BUBBLE_RECEIVE_TYPE:I = 0x1

.field private static final BUBBLE_RECEIVE_VERTICAL_TYPE:I = 0x3

.field private static final BUBBLE_SEND_TYPE:I = 0x0

.field private static final BUBBLE_SEND_VERTICAL_TYPE:I = 0x2

.field private static final BUBBLE_TYPE:[Ljava/lang/String; = null

.field public static final BUBBLE_TYPE_DEFAULT:Ljava/lang/String; = "Default"

.field public static final BUBBLE_TYPE_LABEL:Ljava/lang/String; = "Label"

.field public static final BUBBLE_TYPE_MODERN:Ljava/lang/String; = "Modern"

.field public static final BUBBLE_TYPE_ORIGAMI:Ljava/lang/String; = "Origami"

.field public static final BUBBLE_TYPE_POP:Ljava/lang/String; = "Pop"

.field public static final BUBBLE_TYPE_POST:Ljava/lang/String; = "Post"


# instance fields
.field private final BUBBLE_STYLE_IMAGE_HEIGHT:I

.field private final BUBBLE_STYLE_IMAGE_VERTICAL:I

.field private final BUBBLE_STYLE_IMAGE_WIDTH:I

.field private MoveToSelectedReceive:Z

.field private MoveToSelectedSent:Z

.field private mImageAdapter:[Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;

.field private mIsRecAnimating:Z

.field private mIsSentAnimating:Z

.field private mMenuSave:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Origami"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Label"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Modern"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Post"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Default"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x4d

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/mms/ui/MessageBubbleActivity;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z

    .line 55
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_STYLE_IMAGE_WIDTH:I

    .line 56
    iput v2, p0, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_STYLE_IMAGE_VERTICAL:I

    .line 57
    iput v2, p0, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_STYLE_IMAGE_HEIGHT:I

    .line 58
    iput-boolean v1, p0, Lcom/android/mms/ui/BubbleTypePicker;->mIsSentAnimating:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/mms/ui/BubbleTypePicker;->mIsRecAnimating:Z

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/BubbleTypePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->mIsSentAnimating:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/BubbleTypePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->mIsRecAnimating:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/BubbleTypePicker;)[Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->mImageAdapter:[Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/BubbleTypePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/mms/ui/BubbleTypePicker;->setScrollPosition()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/BubbleTypePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/mms/ui/BubbleTypePicker;->setScrollPositionVertical()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/BubbleTypePicker;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->mMenuSave:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/BubbleTypePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/BubbleTypePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/BubbleTypePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/BubbleTypePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z

    return p1
.end method

.method private makeBubbleVertical(I)V
    .locals 7
    .parameter "type"

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 156
    invoke-virtual {p0}, Lcom/android/mms/ui/BubbleTypePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 158
    .local v0, density:F
    const/4 v1, 0x0

    .line 159
    .local v1, gallery:Landroid/widget/GridView;
    if-ne p1, v5, :cond_4

    .line 160
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    .line 171
    :goto_0
    if-eqz p1, :cond_0

    if-ne p1, v4, :cond_7

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/BubbleTypePicker;->setScrollPosition()V

    .line 176
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker;->mImageAdapter:[Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;

    new-instance v3, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;

    invoke-direct {v3, p0, p0, p1}, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;-><init>(Lcom/android/mms/ui/BubbleTypePicker;Landroid/content/Context;I)V

    aput-object v3, v2, p1

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    new-instance v2, Lcom/android/mms/ui/BubbleTypePicker$5;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/BubbleTypePicker$5;-><init>(Lcom/android/mms/ui/BubbleTypePicker;I)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 240
    new-instance v2, Lcom/android/mms/ui/BubbleTypePicker$6;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/BubbleTypePicker$6;-><init>(Lcom/android/mms/ui/BubbleTypePicker;I)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 254
    new-instance v2, Lcom/android/mms/ui/BubbleTypePicker$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BubbleTypePicker$7;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 300
    if-eqz p1, :cond_2

    if-ne p1, v5, :cond_a

    .line 301
    :cond_2
    iget v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    if-ne v2, v4, :cond_9

    .line 302
    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setSelection(I)V

    .line 314
    :cond_3
    :goto_2
    return-void

    .line 161
    :cond_4
    if-ne p1, v3, :cond_5

    .line 162
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    goto :goto_0

    .line 163
    :cond_5
    if-nez p1, :cond_6

    .line 164
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    goto :goto_0

    .line 165
    :cond_6
    if-ne p1, v4, :cond_3

    .line 166
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    goto :goto_0

    .line 173
    :cond_7
    if-eq p1, v5, :cond_8

    if-ne p1, v3, :cond_1

    .line 174
    :cond_8
    invoke-direct {p0}, Lcom/android/mms/ui/BubbleTypePicker;->setScrollPositionVertical()V

    goto :goto_1

    .line 304
    :cond_9
    iget v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_2

    .line 307
    :cond_a
    iget v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    if-ne v2, v4, :cond_b

    .line 308
    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_2

    .line 310
    :cond_b
    iget v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_2
.end method

.method private saveBubbleReceiveStyle(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 483
    sget-object v3, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_RECEIVE_STYLE_ID:[I

    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 493
    :goto_0
    return-void

    .line 486
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 488
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 489
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_bubble_style"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    rem-int/lit8 v2, v3, 0xa

    .line 491
    .local v2, sendStyle:I
    const-string v3, "pref_key_bubble_style"

    mul-int/lit8 v4, p1, 0xa

    add-int/2addr v4, v2

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 492
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private saveBubbleSentStyle(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 470
    sget-object v3, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_SEND_STYLE_ID:[I

    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 480
    :goto_0
    return-void

    .line 473
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 475
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 476
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_bubble_style"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    div-int/lit8 v2, v3, 0xa

    .line 478
    .local v2, receiveStyle:I
    const-string v3, "pref_key_bubble_style"

    mul-int/lit8 v4, v2, 0xa

    add-int/2addr v4, p1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 479
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setImageView(ILandroid/widget/AdapterView;Landroid/view/View;)V
    .locals 7
    .parameter "position"
    .parameter
    .parameter "v"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 382
    move-object v1, p2

    .line 383
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 384
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 385
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 386
    .local v3, imageView:Landroid/widget/ImageView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 387
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 384
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    .end local v3           #imageView:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BubbleTypePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020245

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 393
    invoke-virtual {p3, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 394
    return-void
.end method

.method private setScrollPosition()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/mms/ui/BubbleTypePicker$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BubbleTypePicker$8;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 335
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/mms/ui/BubbleTypePicker$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BubbleTypePicker$9;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 346
    return-void
.end method

.method private setScrollPositionVertical()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScrollVertical:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/mms/ui/BubbleTypePicker$10;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BubbleTypePicker$10;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 363
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScrollVertical:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/mms/ui/BubbleTypePicker$11;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BubbleTypePicker$11;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 378
    return-void
.end method


# virtual methods
.method public final makeView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 140
    invoke-super {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->makeView()V

    .line 142
    invoke-virtual {p0}, Lcom/android/mms/ui/BubbleTypePicker;->setActionBar()V

    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGSScollVertical:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGSScollVertical:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/mms/ui/BubbleTypePicker;->refreshLayout()V

    .line 153
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x0

    .line 450
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageBubbleActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 451
    iput-boolean v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->mIsSentAnimating:Z

    .line 452
    iput-boolean v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->mIsRecAnimating:Z

    .line 453
    invoke-virtual {p0}, Lcom/android/mms/ui/BubbleTypePicker;->refreshLayout()V

    .line 454
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 82
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageBubbleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f0b0157

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BubbleTypePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/mms/ui/BubbleTypePicker$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BubbleTypePicker$1;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    const v0, 0x7f0b0159

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BubbleTypePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/mms/ui/BubbleTypePicker$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BubbleTypePicker$2;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    const v0, 0x7f0b0161

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BubbleTypePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScrollVertical:Landroid/widget/ScrollView;

    .line 108
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScrollVertical:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/mms/ui/BubbleTypePicker$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BubbleTypePicker$3;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    const v0, 0x7f0b015e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BubbleTypePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScrollVertical:Landroid/widget/ScrollView;

    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScrollVertical:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/mms/ui/BubbleTypePicker$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BubbleTypePicker$4;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->doSentAnimation:Z

    .line 130
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->doReceiveAnimatin:Z

    .line 132
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;

    iput-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->mImageAdapter:[Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;

    .line 133
    invoke-virtual {p0}, Lcom/android/mms/ui/BubbleTypePicker;->makeView()V

    .line 134
    iput-boolean v2, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z

    .line 135
    iput-boolean v2, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z

    .line 136
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keycode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 801
    const/16 v1, 0x14

    if-ne p1, v1, :cond_2

    .line 802
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    sget-object v2, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_SEND_STYLE_ID:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 807
    :cond_0
    :goto_0
    return v0

    .line 804
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    sget-object v2, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 807
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/mms/ui/MessageBubbleActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 458
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 466
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageBubbleActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 460
    :pswitch_0
    iget v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BubbleTypePicker;->saveBubbleSentStyle(I)V

    .line 461
    iget v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BubbleTypePicker;->saveBubbleReceiveStyle(I)V

    .line 462
    invoke-virtual {p0}, Lcom/android/mms/ui/BubbleTypePicker;->finish()V

    .line 463
    const/4 v0, 0x1

    goto :goto_0

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 318
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->mMenuSave:Landroid/view/MenuItem;

    .line 319
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageBubbleActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public refreshLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 397
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 403
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 405
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 406
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 407
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mLayoutHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 410
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BubbleTypePicker;->makeBubbleVertical(I)V

    .line 411
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BubbleTypePicker;->makeBubbleVertical(I)V

    .line 414
    iput-boolean v3, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z

    .line 415
    iput-boolean v3, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z

    .line 416
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScrollVertical:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScrollVertical:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    .line 419
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    .line 446
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 426
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 428
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mLayoutHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 429
    iput-boolean v3, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z

    .line 430
    iput-boolean v3, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z

    .line 431
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 432
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 433
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    .line 436
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    .line 437
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 439
    invoke-direct {p0, v1}, Lcom/android/mms/ui/BubbleTypePicker;->makeBubbleVertical(I)V

    .line 440
    invoke-direct {p0, v3}, Lcom/android/mms/ui/BubbleTypePicker;->makeBubbleVertical(I)V

    goto :goto_0
.end method
