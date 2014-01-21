.class public Lcom/android/mms/ui/MmsRichContainer;
.super Landroid/widget/LinearLayout;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;,
        Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;,
        Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;
    }
.end annotation


# static fields
.field private static final LOCATION_INDEX:I = 0x0

.field public static final MENU_REMOVE_MEDIA:I = 0x16

.field public static final MENU_REPLACE_MEDIA:I = 0x15

.field public static final MENU_VIEW_MEDIA:I = 0x14

.field public static final MSG_DPAD_DOWN:I = 0x33

.field public static final MSG_DPAD_LEFT:I = 0x35

.field public static final MSG_DPAD_RIGHT:I = 0x34

.field public static final MSG_DPAD_UP:I = 0x32

.field public static final MSG_FOCUS_CHANGED:I = 0x28

.field public static final MSG_REMOVE_CURRENT_SLIDE:I = 0x5

.field public static final MSG_REMOVE_MEDIA:I = 0x3

.field public static final MSG_REMOVE_PREVIOUS_SLIDE:I = 0x4

.field public static final MSG_REPLACE_MEDIA:I = 0x2

.field public static final MSG_TYPE_AUDIO:I = 0xc

.field public static final MSG_TYPE_IMAGE:I = 0xa

.field public static final MSG_TYPE_LOCATION:I = 0xe

.field public static final MSG_TYPE_TEXT:I = 0xd

.field public static final MSG_TYPE_VIDEO:I = 0xb

.field public static final MSG_VIEW_MEDIA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/MmsRichContainer"

.field public static final UPDATE_CHANGE_MMS_TO_SMS:I = 0x20

.field public static final UPDATE_DEFAULT:I = 0x1e

.field public static final UPDATE_DEFAULT_WITHOUT_ANIMATION:I = 0x21

.field public static final UPDATE_REMOVE_CURRENT_SLIDE:I = 0x23

.field public static final UPDATE_REMOVE_IMAGE_VIDEO:I = 0x1f

.field public static final UPDATE_REMOVE_PREVIOUS_SLIDE:I = 0x22


# instance fields
.field private isNeedToBlockTheKey:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBottomEditorTouchListener:Landroid/view/View$OnTouchListener;

.field private mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mEditTextWatcher:Landroid/text/TextWatcher;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mEditorTouchListener:Landroid/view/View$OnTouchListener;

.field private mHandler:Landroid/os/Handler;

.field private mHintResId:I

.field private mMediaTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

.field private mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

.field private mParentTextWatcher:Landroid/text/TextWatcher;

.field private mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

.field private mTextColor:I

.field private mTextEditorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mTextSize:F

.field mTextTop:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    .line 108
    iput-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 112
    iput-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 115
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    .line 119
    iput-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mBitmap:Landroid/graphics/Bitmap;

    .line 257
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$3;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    .line 1585
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$4;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    .line 1599
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$5;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 1640
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$6;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    .line 1669
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$7;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    .line 1689
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$8;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextEditorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1714
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$9;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mBottomEditorTouchListener:Landroid/view/View$OnTouchListener;

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    .line 108
    iput-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 112
    iput-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 115
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    .line 119
    iput-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mBitmap:Landroid/graphics/Bitmap;

    .line 257
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$3;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    .line 1585
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$4;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    .line 1599
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$5;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 1640
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$6;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    .line 1669
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$7;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    .line 1689
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$8;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextEditorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1714
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$9;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mBottomEditorTouchListener:Landroid/view/View$OnTouchListener;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/text/TextWatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/OnEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsRichContainer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/MmsRichContainer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getFocussedLocationView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MmsRichContainer;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsRichContainer;->setDeleteAnimation(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsRichContainer;->pageHasContents(Landroid/view/View;Z)Z

    move-result v0

    return v0
.end method

.method private calcParams(Landroid/graphics/Bitmap;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 13
    .parameter "bitmap"
    .parameter "params"

    .prologue
    const/high16 v12, 0x4310

    const/high16 v11, 0x42a2

    .line 1994
    const/4 v3, 0x0

    .line 1995
    .local v3, maxHeight:F
    const/4 v4, 0x0

    .line 1996
    .local v4, maxWidth:F
    const/4 v5, 0x0

    .line 1998
    .local v5, scale:F
    const/4 v7, 0x0

    .line 1999
    .local v7, tempWidth:I
    const/4 v6, 0x0

    .line 2001
    .local v6, tempHeight:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v1, v8

    .line 2002
    .local v1, bitmapWidth:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v0, v8

    .line 2004
    .local v0, bitmapHeight:F
    const-string v8, "Mms/MmsRichContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calcParams bitmap.w = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", bitmap.h = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    cmpg-float v8, v1, v0

    if-gtz v8, :cond_1

    .line 2007
    invoke-static {v11}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v8

    int-to-float v4, v8

    .line 2008
    invoke-static {v12}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v8

    int-to-float v3, v8

    .line 2009
    const/4 v2, 0x1

    .line 2016
    .local v2, isPortrait:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 2017
    div-float v5, v4, v1

    .line 2018
    mul-float v8, v0, v5

    float-to-int v6, v8

    .line 2019
    int-to-float v8, v6

    cmpg-float v8, v8, v3

    if-gez v8, :cond_0

    .line 2020
    int-to-float v3, v6

    .line 2030
    :cond_0
    :goto_1
    float-to-int v8, v4

    iput v8, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2031
    float-to-int v8, v3

    iput v8, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2032
    const-string v8, "Mms/MmsRichContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calcParams w = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", h = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    return-object p2

    .line 2011
    .end local v2           #isPortrait:Z
    :cond_1
    invoke-static {v12}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v8

    int-to-float v4, v8

    .line 2012
    invoke-static {v11}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v8

    int-to-float v3, v8

    .line 2013
    const/4 v2, 0x0

    .restart local v2       #isPortrait:Z
    goto :goto_0

    .line 2023
    :cond_2
    div-float v5, v3, v0

    .line 2024
    mul-float v8, v1, v5

    float-to-int v7, v8

    .line 2025
    int-to-float v8, v7

    cmpg-float v8, v8, v4

    if-gez v8, :cond_0

    .line 2026
    int-to-float v4, v7

    goto :goto_1
.end method

.method private getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 2
    .parameter "mView"

    .prologue
    .line 550
    if-nez p1, :cond_0

    .line 551
    const/4 v0, 0x0

    .line 555
    :goto_0
    return-object v0

    .line 554
    :cond_0
    const v1, 0x7f0b01f9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 555
    .local v0, audioView:Landroid/widget/LinearLayout;
    goto :goto_0
.end method

.method private getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 2
    .parameter "mView"

    .prologue
    .line 540
    if-eqz p1, :cond_0

    .line 542
    const v1, 0x7f0b01ec

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 545
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 2
    .parameter "mView"

    .prologue
    .line 574
    const v1, 0x7f0b01fc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 575
    .local v0, pageDivider:Landroid/widget/RelativeLayout;
    return-object v0
.end method

.method private getFocussedLocationView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 2
    .parameter "mView"

    .prologue
    const/4 v0, 0x0

    .line 559
    if-nez p1, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-object v0

    .line 563
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    const v1, 0x7f0b01f1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 567
    .local v0, locationView:Landroid/widget/RelativeLayout;
    goto :goto_0
.end method

.method private getSignatureText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1729
    iget-object v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1730
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_signature_text"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1731
    .local v1, signature:Ljava/lang/String;
    return-object v1
.end method

.method private getVisibleEditText(IZ)Landroid/widget/EditText;
    .locals 7
    .parameter "index"
    .parameter "addWatcher"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1832
    const/4 v1, 0x0

    .line 1837
    .local v1, mView:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1839
    if-nez v1, :cond_0

    .line 1840
    const-string v4, "Mms/MmsRichContainer"

    const-string v5, "mView is null. just return"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    const/4 v3, 0x0

    .line 1883
    :goto_0
    return-object v3

    .line 1844
    :cond_0
    const v4, 0x7f0b01eb

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1845
    .local v2, topEditText:Landroid/widget/EditText;
    const v4, 0x7f0b01f8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1847
    .local v0, bottomEditText:Landroid/widget/EditText;
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mBottomEditorTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1848
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mBottomEditorTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1851
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1852
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1854
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextEditorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1855
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextEditorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1857
    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 1858
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1863
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1864
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1865
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1866
    move-object v3, v2

    .line 1873
    .local v3, visibleEditText:Landroid/widget/EditText;
    :goto_2
    if-eqz p2, :cond_2

    .line 1874
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1878
    :cond_2
    const v4, 0x2000004

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1881
    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 1859
    .end local v3           #visibleEditText:Landroid/widget/EditText;
    :cond_3
    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 1860
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 1868
    :cond_4
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1869
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1870
    move-object v3, v0

    .restart local v3       #visibleEditText:Landroid/widget/EditText;
    goto :goto_2
.end method

.method private isSignatureEnabled()Z
    .locals 2

    .prologue
    .line 1735
    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1736
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureEnabledValue(Landroid/content/SharedPreferences;)Z

    move-result v1

    return v1
.end method

.method private pageHasContents(Landroid/view/View;Z)Z
    .locals 10
    .parameter "page"
    .parameter "checkFirstText"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1775
    const/4 v1, 0x0

    .line 1778
    .local v1, edit:Landroid/widget/EditText;
    const v9, 0x7f0b01ec

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v3

    .line 1780
    .local v3, mediaVisibility:I
    if-nez v3, :cond_1

    .line 1815
    :cond_0
    :goto_0
    return v7

    .line 1784
    :cond_1
    const v9, 0x7f0b01f9

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 1786
    .local v0, audioVisibility:I
    if-eqz v0, :cond_0

    .line 1789
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1790
    const v9, 0x7f0b01f1

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1791
    .local v2, locationVisibility:I
    if-eqz v2, :cond_0

    .line 1795
    .end local v2           #locationVisibility:I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    .line 1798
    if-eqz p2, :cond_3

    .line 1799
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v6

    .line 1800
    .local v6, textLength:I
    if-lez v6, :cond_3

    .line 1801
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->isSignatureAdded()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1803
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1804
    .local v5, text:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->getSignatureText()Ljava/lang/String;

    move-result-object v4

    .line 1805
    .local v4, signature:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsRichContainer;->hasOnlySignatureText(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    .line 1806
    goto :goto_0

    .end local v4           #signature:Ljava/lang/String;
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #textLength:I
    :cond_3
    move v7, v8

    .line 1815
    goto :goto_0
.end method

.method private resetLayoutAttr()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 1538
    const/4 v7, 0x0

    .line 1539
    .local v7, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v6

    .line 1542
    .local v6, pageNumber:I
    move v2, v6

    .local v2, i:I
    :goto_0
    if-lez v2, :cond_0

    .line 1543
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->removeView(Landroid/view/View;)V

    .line 1542
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1546
    :cond_0
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1548
    invoke-direct {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v4

    .line 1549
    .local v4, mediaViewPort:Landroid/widget/RelativeLayout;
    invoke-direct {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1550
    .local v0, audioInfo:Landroid/widget/LinearLayout;
    invoke-direct {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v5

    .line 1551
    .local v5, pageDivider:Landroid/widget/RelativeLayout;
    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v1

    .line 1553
    .local v1, editText:Landroid/widget/EditText;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 1554
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1555
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1556
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1559
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 1560
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1563
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1564
    invoke-direct {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->getFocussedLocationView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 1565
    .local v3, locationViewPort:Landroid/widget/RelativeLayout;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 1566
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1570
    .end local v3           #locationViewPort:Landroid/widget/RelativeLayout;
    :cond_3
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4

    .line 1571
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1574
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v8

    if-nez v8, :cond_5

    .line 1575
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1578
    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1579
    const/high16 v8, 0x3f80

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 1580
    invoke-virtual {p0, v10, v11}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 1582
    return-void
.end method

.method private resetLayoutAttr(Lcom/android/mms/model/SlideModel;I)V
    .locals 6
    .parameter "slide"
    .parameter "index"

    .prologue
    const/16 v5, 0x8

    .line 1497
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1498
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 1499
    .local v3, mediaViewPort:Landroid/widget/RelativeLayout;
    if-nez v3, :cond_0

    .line 1531
    .end local v3           #mediaViewPort:Landroid/widget/RelativeLayout;
    :goto_0
    return-void

    .line 1502
    .restart local v3       #mediaViewPort:Landroid/widget/RelativeLayout;
    :cond_0
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1503
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1504
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1507
    .end local v3           #mediaViewPort:Landroid/widget/RelativeLayout;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1508
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1509
    .local v0, audioInfo:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_2

    .line 1510
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1514
    .end local v0           #audioInfo:Landroid/widget/LinearLayout;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1515
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasLocation()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1516
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocussedLocationView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 1517
    .local v2, locationViewPort:Landroid/widget/RelativeLayout;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 1518
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1523
    .end local v2           #locationViewPort:Landroid/widget/RelativeLayout;
    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1526
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    .line 1527
    .local v1, editText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    .line 1530
    .end local v1           #editText:Landroid/widget/EditText;
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private setAddAnimation()V
    .locals 5

    .prologue
    .line 1891
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 1892
    .local v1, mediaViewPort:Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1893
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1894
    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/mms/animation/MsgObjectAnimation;->createAddEffect(JLandroid/view/animation/Interpolator;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 1895
    .local v0, addAnimation:Landroid/view/animation/AnimationSet;
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1898
    .end local v0           #addAnimation:Landroid/view/animation/AnimationSet;
    :cond_0
    return-void
.end method

.method private setDeleteAnimation(II)V
    .locals 5
    .parameter "slideIndex"
    .parameter "type"

    .prologue
    .line 1901
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 1902
    .local v1, mediaViewPort:Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1903
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1904
    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/mms/animation/MsgObjectAnimation;->createDeleteEffect(JLandroid/view/animation/Interpolator;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 1906
    .local v0, deleteAnimation:Landroid/view/animation/AnimationSet;
    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$10;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/mms/ui/MmsRichContainer$10;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1919
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1922
    .end local v0           #deleteAnimation:Landroid/view/animation/AnimationSet;
    :cond_0
    return-void
.end method

.method private setWeight(Landroid/view/View;F)V
    .locals 2
    .parameter "childAt"
    .parameter "weight"

    .prologue
    .line 1470
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1471
    .local v0, l:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1473
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1474
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1475
    return-void
.end method

.method private updateWBInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1371
    const/4 v0, 0x0

    .line 1372
    .local v0, b:Landroid/os/Bundle;
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    .line 1373
    .local v5, slideShow:Lcom/android/mms/model/SlideshowModel;
    if-eqz v5, :cond_4

    .line 1374
    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    .line 1375
    .local v4, slideCount:I
    const/4 v3, 0x0

    .line 1376
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    const/4 v2, 0x0

    .line 1377
    .local v2, mTempEdit:Landroid/widget/EditText;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_5

    .line 1378
    invoke-direct {p0, v1, v7}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v2

    .line 1379
    if-eqz v2, :cond_0

    .line 1380
    invoke-virtual {v2, v7}, Landroid/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 1382
    :cond_0
    invoke-virtual {v5, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 1383
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 1384
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasLocation()Z

    move-result v6

    if-nez v6, :cond_1

    if-le v4, v7, :cond_3

    .line 1385
    :cond_1
    const-string v6, "isMmsMode"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1377
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1387
    :cond_3
    const-string v6, "isMmsMode"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1391
    .end local v1           #i:I
    .end local v2           #mTempEdit:Landroid/widget/EditText;
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    .end local v4           #slideCount:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 1392
    .restart local v2       #mTempEdit:Landroid/widget/EditText;
    if-eqz v2, :cond_5

    .line 1393
    invoke-virtual {v2, v7}, Landroid/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 1394
    if-eqz v0, :cond_5

    .line 1395
    const-string v6, "isMmsMode"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1398
    :cond_5
    return-void
.end method


# virtual methods
.method public addPage(I)V
    .locals 12
    .parameter "index"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 158
    .local v0, factory:Landroid/view/LayoutInflater;
    const v8, 0x7f04005b

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 164
    .local v5, mView:Landroid/widget/LinearLayout;
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v2

    .line 165
    .local v2, mEditField:Landroid/widget/EditText;
    const/4 v7, 0x0

    .line 166
    .local v7, size:F
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportBubbleViewPinchZoom()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v8

    const/16 v9, 0xff

    if-eq v8, v9, :cond_1

    .line 167
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v8

    invoke-static {v11, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v7

    .line 170
    :goto_0
    invoke-virtual {p0, v5, v7}, Lcom/android/mms/ui/MmsRichContainer;->setEditTextSize(Landroid/view/View;F)V

    .line 172
    new-instance v8, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v9, 0xd

    invoke-direct {v8, p0, v9, p1}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 173
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 175
    const v8, 0x2000004

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 176
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 177
    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setVisibility(I)V

    .line 179
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    invoke-virtual {p0, v2, v10}, Lcom/android/mms/ui/MmsRichContainer;->setWritingBuddy(Landroid/widget/EditText;Z)V

    .line 182
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v8, :cond_0

    .line 183
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 185
    :cond_0
    const v8, 0x7f0b01ee

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 186
    .local v3, mMediaView:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 188
    const v8, 0x7f0b01f9

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 189
    .local v1, mAudioInfo:Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    const v8, 0x7f0b01ed

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 194
    .local v4, mMediaViewBackground:Landroid/widget/ImageView;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 196
    .local v6, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x3f80

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 197
    invoke-virtual {p0, v5, p1, v6}, Lcom/android/mms/ui/MmsRichContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 198
    return-void

    .line 169
    .end local v1           #mAudioInfo:Landroid/widget/LinearLayout;
    .end local v3           #mMediaView:Landroid/widget/ImageView;
    .end local v4           #mMediaViewBackground:Landroid/widget/ImageView;
    .end local v6           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v8

    invoke-static {v11, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v7

    goto :goto_0
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .parameter "watcher"

    .prologue
    .line 246
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "addTextChangedListener()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    .line 248
    return-void
.end method

.method public changeLayout(Lcom/android/mms/data/WorkingMessage;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1401
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 1403
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    .line 1405
    .local v4, slideShow:Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v0

    .line 1406
    .local v0, focusedSlideIndex:I
    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    .line 1407
    .local v3, slideCount:I
    const/4 v2, 0x0

    .line 1409
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 1410
    invoke-virtual {p0, v1, v8}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 1411
    invoke-virtual {v4, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 1416
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1417
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v7

    if-ne v7, v9, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasLocation()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1409
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1422
    :cond_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1426
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1427
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v7

    if-ne v7, v9, :cond_3

    .line 1428
    move v5, v1

    .line 1429
    .local v5, t:I
    if-lt v1, v9, :cond_2

    add-int/lit8 v5, v1, -0x1

    .line 1430
    :cond_2
    invoke-direct {p0, v5, v8}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v6

    .line 1439
    .end local v5           #t:I
    .local v6, visibleEditText:Landroid/widget/EditText;
    :goto_2
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v1}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    .line 1440
    iget-object v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 1433
    .end local v6           #visibleEditText:Landroid/widget/EditText;
    :cond_3
    invoke-direct {p0, v1, v8}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v6

    .restart local v6       #visibleEditText:Landroid/widget/EditText;
    goto :goto_2

    .line 1437
    .end local v6           #visibleEditText:Landroid/widget/EditText;
    :cond_4
    invoke-direct {p0, v1, v8}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v6

    .restart local v6       #visibleEditText:Landroid/widget/EditText;
    goto :goto_2

    .line 1445
    .end local v6           #visibleEditText:Landroid/widget/EditText;
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1446
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v7

    if-ne v7, v9, :cond_6

    .line 1447
    add-int/lit8 v7, v3, -0x2

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7, v10}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 1454
    :cond_6
    :goto_3
    invoke-virtual {p0, v0, v9}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 1456
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1457
    const-string v7, ""

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    .line 1467
    .end local v0           #focusedSlideIndex:I
    .end local v1           #i:I
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    .end local v3           #slideCount:I
    .end local v4           #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_7
    :goto_4
    return-void

    .line 1451
    .restart local v0       #focusedSlideIndex:I
    .restart local v1       #i:I
    .restart local v2       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v3       #slideCount:I
    .restart local v4       #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_8
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7, v10}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    goto :goto_3

    .line 1460
    :cond_9
    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    if-nez v7, :cond_a

    .line 1461
    const-string v7, ""

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1463
    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto :goto_4
.end method

.method public changeTextColor(I)V
    .locals 8
    .parameter "textColor"

    .prologue
    .line 1929
    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    .line 1930
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v2

    .line 1937
    .local v2, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 1938
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1940
    .local v6, view:Landroid/view/View;
    const v7, 0x7f0b01eb

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 1941
    .local v5, topEditText:Landroid/widget/EditText;
    const v7, 0x7f0b01f8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1942
    .local v1, bottomEditText:Landroid/widget/EditText;
    const v7, 0x7f0b01f9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1943
    .local v0, audioInfo:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_3

    .line 1944
    const v7, 0x7f0b01fb

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1948
    .local v3, fileName:Landroid/widget/TextView;
    :goto_1
    if-eqz v5, :cond_0

    .line 1949
    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1951
    :cond_0
    if-eqz v1, :cond_1

    .line 1952
    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1954
    :cond_1
    if-eqz v3, :cond_2

    .line 1955
    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1937
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1946
    .end local v3           #fileName:Landroid/widget/TextView;
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #fileName:Landroid/widget/TextView;
    goto :goto_1

    .line 1957
    .end local v0           #audioInfo:Landroid/widget/LinearLayout;
    .end local v1           #bottomEditText:Landroid/widget/EditText;
    .end local v3           #fileName:Landroid/widget/TextView;
    .end local v5           #topEditText:Landroid/widget/EditText;
    .end local v6           #view:Landroid/view/View;
    :cond_4
    return-void
.end method

.method public changeTextSize(F)V
    .locals 3
    .parameter "textSize"

    .prologue
    .line 1960
    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextSize:F

    .line 1962
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    .line 1963
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v0

    .line 1965
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1966
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/mms/ui/MmsRichContainer;->setEditTextSize(Landroid/view/View;F)V

    .line 1965
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1968
    :cond_0
    return-void
.end method

.method public clearFocusEditText(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    add-int/lit8 p1, v1, -0x1

    .line 349
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 355
    :goto_0
    return-void

    .line 352
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 354
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method

.method public getBitmapforWB()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getEditText(Landroid/view/View;)Landroid/widget/EditText;
    .locals 3
    .parameter "mView"

    .prologue
    .line 520
    if-nez p1, :cond_0

    .line 521
    const-string v1, "Mms/MmsRichContainer"

    const-string v2, "mView is null. just return"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const/4 v0, 0x0

    .line 536
    :goto_0
    return-object v0

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    const v1, 0x7f0b01eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 531
    .local v0, mEdit:Landroid/widget/EditText;
    :goto_1
    iget v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 527
    .end local v0           #mEdit:Landroid/widget/EditText;
    :cond_1
    const v1, 0x7f0b01f8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .restart local v0       #mEdit:Landroid/widget/EditText;
    goto :goto_1
.end method

.method public getFocusedEditText()Landroid/widget/EditText;
    .locals 3

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 508
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 513
    .local v1, mFocusedChild:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 515
    .local v0, mEdit:Landroid/widget/EditText;
    return-object v0

    .line 510
    .end local v0           #mEdit:Landroid/widget/EditText;
    .end local v1           #mFocusedChild:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .restart local v1       #mFocusedChild:Landroid/view/View;
    goto :goto_0
.end method

.method public getFocusedSlideIndex()I
    .locals 3

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v0

    .line 580
    .local v0, count:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 581
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v0

    .line 583
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 584
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 596
    .end local v1           #i:I
    :goto_1
    return v1

    .line 583
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getMMSLayout()Z
    .locals 1

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 280
    .local v0, mString:Landroid/text/Editable;
    return-object v0
.end method

.method public getTotalPageCount()I
    .locals 1

    .prologue
    .line 1492
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v0

    .line 1493
    .local v0, totalPage:I
    return v0
.end method

.method public hasContents(Z)Z
    .locals 6
    .parameter "checkFirstText"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1758
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v0

    .line 1759
    .local v0, cnt:I
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1760
    .local v2, text:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->getSignatureText()Ljava/lang/String;

    move-result-object v1

    .line 1761
    .local v1, signature:Ljava/lang/String;
    if-le v0, v3, :cond_2

    .line 1762
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->isSignatureAdded()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    .line 1764
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1771
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 1767
    goto :goto_0

    .line 1771
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/mms/ui/MmsRichContainer;->pageHasContents(Landroid/view/View;Z)Z

    move-result v3

    goto :goto_0
.end method

.method public hasOnlySignatureText(Ljava/lang/String;)Z
    .locals 4
    .parameter "text"

    .prologue
    .line 1740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1741
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->getSignatureText()Ljava/lang/String;

    move-result-object v1

    .line 1743
    .local v1, signatureText:Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1746
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1747
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1748
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1749
    const/4 v2, 0x1

    .line 1753
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public initContainer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    .line 143
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->removePage(I)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->addPage(I)V

    .line 153
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 398
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 399
    .local v0, action:I
    const/4 v1, 0x0

    .line 401
    .local v1, result:Z
    packed-switch v0, :pswitch_data_0

    .line 427
    const-string v2, "DragDrop"

    const-string v3, "Unknown action type received by OnDragListener."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :goto_0
    return v1

    .line 403
    :pswitch_0
    const/4 v1, 0x0

    .line 404
    goto :goto_0

    .line 407
    :pswitch_1
    const/4 v1, 0x0

    .line 408
    goto :goto_0

    .line 411
    :pswitch_2
    const/4 v1, 0x0

    .line 412
    goto :goto_0

    .line 415
    :pswitch_3
    const/4 v1, 0x0

    .line 416
    goto :goto_0

    .line 419
    :pswitch_4
    iget-object v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v1

    .line 420
    goto :goto_0

    .line 423
    :pswitch_5
    const/4 v1, 0x0

    .line 424
    goto :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 132
    return-void
.end method

.method public release()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, child:Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 360
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 361
    const v5, 0x7f0b01eb

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 362
    .local v4, topEditText:Landroid/widget/EditText;
    const v5, 0x7f0b01f8

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 364
    .local v0, bottomEditText:Landroid/widget/EditText;
    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 365
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 359
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 367
    .end local v0           #bottomEditText:Landroid/widget/EditText;
    .end local v4           #topEditText:Landroid/widget/EditText;
    :cond_0
    return-void
.end method

.method public removePage(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, newIndex:I
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->removeView(Landroid/view/View;)V

    .line 229
    add-int/lit8 v0, p1, -0x1

    .line 230
    if-gez v0, :cond_0

    .line 231
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto :goto_0
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .parameter "watcher"

    .prologue
    .line 251
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "removeTextChangedListener()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    .line 255
    :cond_0
    return-void
.end method

.method public setAudioAndKeyListener(Ljava/lang/String;I)V
    .locals 4
    .parameter "audioFileName"
    .parameter "index"

    .prologue
    const/16 v3, 0xc

    .line 1144
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1145
    .local v0, audioInfo:Landroid/widget/LinearLayout;
    if-nez v0, :cond_0

    .line 1146
    const-string v2, "Mms/MmsRichContainer"

    const-string v3, "audioInfo is null just return!!!"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    :goto_0
    return-void

    .line 1149
    :cond_0
    const v2, 0x7f0b01fb

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1150
    .local v1, fileName:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    iget v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1154
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1155
    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1156
    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0
.end method

.method public setBitmapforWB(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 2038
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mBitmap:Landroid/graphics/Bitmap;

    .line 2039
    return-void
.end method

.method public setClipExMgr(Landroid/sec/clipboard/ClipboardExManager;)V
    .locals 0
    .parameter "cipExMgr"

    .prologue
    .line 1989
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    .line 1990
    return-void
.end method

.method public setComposer(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "composer"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 243
    return-void
.end method

.method public setEditTextSize(Landroid/view/View;F)V
    .locals 4
    .parameter "view"
    .parameter "size"

    .prologue
    const/4 v3, 0x1

    .line 1973
    if-nez p1, :cond_0

    .line 1974
    const-string v2, "Mms/MmsRichContainer"

    const-string v3, "view is null. just return"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    :goto_0
    return-void

    .line 1977
    :cond_0
    const v2, 0x7f0b01eb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1978
    .local v1, topEdit:Landroid/widget/EditText;
    invoke-virtual {v1, v3, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1980
    const v2, 0x7f0b01f8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1981
    .local v0, bottomEdit:Landroid/widget/EditText;
    invoke-virtual {v0, v3, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    goto :goto_0
.end method

.method public setFocusEditText()V
    .locals 2

    .prologue
    .line 392
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "setFocusEditText() on first"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 394
    return-void
.end method

.method public setFocusEditText(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v1

    add-int/lit8 p1, v1, -0x1

    .line 334
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 340
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 339
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method public setFocusEditText(IZ)V
    .locals 7
    .parameter "index"
    .parameter "setLastPos"

    .prologue
    const/4 v6, 0x0

    .line 286
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    .line 289
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 292
    .local v0, editText:Landroid/widget/EditText;
    if-nez v0, :cond_2

    .line 325
    :cond_1
    :goto_0
    return-void

    .line 295
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    if-eqz v3, :cond_3

    .line 296
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 297
    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-virtual {v3, v4, v5}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 303
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 304
    if-eqz p2, :cond_8

    .line 306
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 307
    .local v1, editTextLength:I
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->isSignatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 308
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->getSignatureText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 309
    .local v2, signatureTextLength:I
    if-lez v2, :cond_6

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->getSignatureText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 311
    sub-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_5

    .line 312
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 299
    .end local v1           #editTextLength:I
    .end local v2           #signatureTextLength:I
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-virtual {v3, v4, v5}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_1

    .line 313
    .restart local v1       #editTextLength:I
    .restart local v2       #signatureTextLength:I
    :cond_5
    sub-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_1

    .line 314
    sub-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 317
    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 320
    .end local v2           #signatureTextLength:I
    :cond_7
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 323
    .end local v1           #editTextLength:I
    :cond_8
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;

    .line 239
    return-void
.end method

.method public setHint()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 443
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportBubbleViewPinchZoom()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v3

    const/16 v4, 0xff

    if-eq v3, v4, :cond_1

    .line 444
    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v0

    .line 449
    .local v0, fontSize:I
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 451
    .local v2, mFocusedChild:Landroid/view/View;
    if-nez v2, :cond_2

    .line 474
    :cond_0
    :goto_1
    return-void

    .line 446
    .end local v0           #fontSize:I
    .end local v2           #mFocusedChild:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    .restart local v0       #fontSize:I
    goto :goto_0

    .line 454
    .restart local v2       #mFocusedChild:Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    .line 456
    .local v1, mEdit:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 459
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 460
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x7

    if-ne v0, v3, :cond_4

    .line 463
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 465
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 466
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 468
    :cond_5
    iget v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    if-eqz v3, :cond_0

    .line 469
    iget v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 470
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_1
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "hint"

    .prologue
    .line 479
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 481
    .local v1, mFocusedChild:Landroid/view/View;
    if-nez v1, :cond_0

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    .line 485
    .local v0, mEdit:Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setHintRes(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 435
    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    .line 436
    return-void
.end method

.method public setImageAndKeyListener(Landroid/graphics/Bitmap;I)V
    .locals 11
    .parameter "img"
    .parameter "index"

    .prologue
    .line 1043
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v5

    .line 1045
    .local v5, mediaViewPort:Landroid/widget/RelativeLayout;
    if-nez v5, :cond_0

    .line 1090
    :goto_0
    return-void

    .line 1048
    :cond_0
    const v8, 0x7f0b01ed

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1049
    .local v4, imageViewBackground:Landroid/widget/ImageView;
    const v8, 0x7f0b01ee

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1050
    .local v3, imageView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c00a9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1051
    const v8, 0x7f0b01ef

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1052
    .local v7, playButton:Landroid/widget/ImageView;
    const v8, 0x7f0b01f0

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1055
    .local v1, dummyView:Landroid/view/View;
    if-nez p1, :cond_1

    .line 1056
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02003d

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1063
    :cond_1
    :goto_1
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1066
    if-eqz p1, :cond_2

    .line 1067
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1069
    .local v6, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {p0, p1, v6}, Lcom/android/mms/ui/MmsRichContainer;->calcParams(Landroid/graphics/Bitmap;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    .line 1070
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1071
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1074
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1075
    .local v0, dummyParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1076
    const/4 v8, 0x1

    const v9, 0x7f0b01ee

    invoke-virtual {v0, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1077
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1081
    .end local v0           #dummyParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1082
    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 1083
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1086
    :cond_3
    new-instance v8, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v9, 0xa

    invoke-direct {v8, p0, v9, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1087
    new-instance v8, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    const/16 v9, 0xa

    invoke-direct {v8, p0, v9, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1089
    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0

    .line 1059
    :catch_0
    move-exception v2

    .line 1060
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v8, "Mms/MmsRichContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OutOfMemoryError"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setLastElementFocus(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "mView"

    .prologue
    .line 489
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 491
    .local v0, childCount:I
    add-int/lit8 v2, v0, -0x2

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 492
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 493
    .local v1, childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 494
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 495
    instance-of v3, v1, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 496
    check-cast v3, Landroid/widget/EditText;

    check-cast v1, Landroid/widget/EditText;

    .end local v1           #childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 501
    :cond_0
    return-void

    .line 491
    .restart local v1       #childView:Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public setLocationAndKeyListener(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .parameter "location"
    .parameter "locationName"
    .parameter "locationAddr"
    .parameter "phone"
    .parameter "index"

    .prologue
    const/16 v8, 0xe

    const/4 v7, 0x0

    .line 1167
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1168
    invoke-virtual {p0, p5}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocussedLocationView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 1169
    .local v0, locationInfo:Landroid/widget/RelativeLayout;
    const v6, 0x7f0b01f2

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1170
    .local v1, mImage:Landroid/widget/ImageView;
    const v6, 0x7f0b01f3

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1171
    .local v3, mLocationName:Landroid/widget/TextView;
    const v6, 0x7f0b01f4

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1172
    .local v2, mLocationAddress:Landroid/widget/TextView;
    const v6, 0x7f0b01f5

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1173
    .local v5, mPhoneView:Landroid/view/View;
    const v6, 0x7f0b01f7

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1174
    .local v4, mPhone:Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1176
    const v6, 0x7f0200cf

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1177
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1179
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1181
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1182
    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1189
    :goto_0
    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v6, p0, v8, p5}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1190
    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v6, p0, v8, p5}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1192
    .end local v0           #locationInfo:Landroid/widget/RelativeLayout;
    .end local v1           #mImage:Landroid/widget/ImageView;
    .end local v2           #mLocationAddress:Landroid/widget/TextView;
    .end local v3           #mLocationName:Landroid/widget/TextView;
    .end local v4           #mPhone:Landroid/widget/TextView;
    .end local v5           #mPhoneView:Landroid/view/View;
    :cond_0
    return-void

    .line 1186
    .restart local v0       #locationInfo:Landroid/widget/RelativeLayout;
    .restart local v1       #mImage:Landroid/widget/ImageView;
    .restart local v2       #mLocationAddress:Landroid/widget/TextView;
    .restart local v3       #mLocationName:Landroid/widget/TextView;
    .restart local v4       #mPhone:Landroid/widget/TextView;
    .restart local v5       #mPhoneView:Landroid/view/View;
    :cond_1
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMMSLayout(Z)V
    .locals 2
    .parameter "textTop"

    .prologue
    .line 1823
    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "setMMSLayout()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    .line 1825
    return-void
.end method

.method public setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0
    .parameter "onEventListener"

    .prologue
    .line 1887
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 1888
    return-void
.end method

.method public setPageDivider(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 1478
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v2

    .line 1479
    .local v2, total:I
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 1480
    .local v0, pageDivider:Landroid/widget/RelativeLayout;
    const v3, 0x7f0b01fd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1481
    .local v1, pageInfo:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1482
    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1484
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    if-eq v3, v2, :cond_0

    .line 1485
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1489
    :goto_0
    return-void

    .line 1487
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPasteEvent(Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;)V
    .locals 0
    .parameter "pasteEvent"

    .prologue
    .line 1985
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    .line 1986
    return-void
.end method

.method public setRichEditorAction(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 0
    .parameter "editorActionListener"

    .prologue
    .line 1819
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1820
    return-void
.end method

.method public setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V
    .locals 2
    .parameter "editText"
    .parameter "text"
    .parameter "index"

    .prologue
    .line 1161
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1162
    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1, p3}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1164
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 1925
    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    .line 1926
    return-void
.end method

.method public setVideoAndKeyListener(Landroid/net/Uri;I)V
    .locals 12
    .parameter "videoUri"
    .parameter "index"

    .prologue
    .line 1093
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v5

    .line 1095
    .local v5, mediaViewPort:Landroid/widget/RelativeLayout;
    if-nez v5, :cond_0

    .line 1140
    :goto_0
    return-void

    .line 1098
    :cond_0
    const v9, 0x7f0b01ed

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1099
    .local v4, imageViewBackground:Landroid/widget/ImageView;
    const v9, 0x7f0b01ee

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 1100
    .local v8, videoView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c00ab

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1101
    const v9, 0x7f0b01ef

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1102
    .local v7, playButton:Landroid/widget/ImageView;
    const v9, 0x7f0b01f0

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1104
    .local v2, dummyView:Landroid/view/View;
    iget-object v9, p0, Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;

    invoke-static {v9, p1}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1107
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 1108
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020222

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1115
    :cond_1
    :goto_1
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1118
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1120
    .local v6, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {p0, v0, v6}, Lcom/android/mms/ui/MmsRichContainer;->calcParams(Landroid/graphics/Bitmap;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    .line 1121
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1122
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1126
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1127
    .local v1, dummyParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v9, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1128
    const/4 v9, 0x1

    const v10, 0x7f0b01ee

    invoke-virtual {v1, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1129
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1131
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1132
    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_2

    .line 1133
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1134
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0201e7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1136
    :cond_2
    new-instance v9, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v10, 0xb

    invoke-direct {v9, p0, v10, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1137
    new-instance v9, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    const/16 v10, 0xb

    invoke-direct {v9, p0, v10, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1139
    iget-object v9, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0

    .line 1111
    .end local v1           #dummyParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v3

    .line 1112
    .local v3, e:Ljava/lang/OutOfMemoryError;
    const-string v9, "Mms/MmsRichContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OutOfMemoryError"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setWritingBuddy(Landroid/widget/EditText;Z)V
    .locals 2
    .parameter "editText"
    .parameter "show"

    .prologue
    .line 201
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableWritingBuddy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/mms/ui/MessageUtils;->setMaximumLengthforWB(Landroid/widget/EditText;I)V

    .line 203
    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;-><init>(Landroid/view/View;)V

    .line 204
    .local v0, mWrintingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setImageWritingEnabled(Z)V

    .line 205
    new-instance v1, Lcom/android/mms/ui/MmsRichContainer$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsRichContainer$1;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnImageWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;)V

    .line 211
    new-instance v1, Lcom/android/mms/ui/MmsRichContainer$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsRichContainer$2;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;)V

    .line 219
    if-eqz p2, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->show()Z

    .line 223
    .end local v0           #mWrintingBuddy:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    :cond_0
    return-void
.end method

.method public update(Lcom/android/mms/data/WorkingMessage;I)V
    .locals 19
    .parameter "msg"
    .parameter "type"

    .prologue
    .line 1196
    const-string v2, "Mms/MmsRichContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update(),type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    if-eqz p1, :cond_4

    .line 1199
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1201
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v16

    .line 1203
    .local v16, slideShow:Lcom/android/mms/model/SlideshowModel;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v13

    .line 1204
    .local v13, mTempIndex:I
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v15

    .line 1205
    .local v15, slideCount:I
    const/4 v14, 0x0

    .line 1207
    .local v14, slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v2

    if-ge v2, v15, :cond_0

    .line 1209
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->addPage(I)V

    goto :goto_0

    .line 1211
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->getChildCount()I

    move-result v2

    if-le v2, v15, :cond_1

    .line 1212
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 1214
    :cond_1
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v15, :cond_2

    .line 1216
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 1218
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-lt v11, v2, :cond_5

    .line 1219
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v15

    .line 1274
    :cond_2
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1275
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 1276
    add-int/lit8 v2, v15, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 1284
    :goto_4
    packed-switch p2, :pswitch_data_0

    .line 1311
    :goto_5
    :pswitch_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1312
    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    .line 1322
    :goto_6
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 1323
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 1324
    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    .line 1326
    :cond_3
    const/16 v2, 0x1e

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1327
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setAddAnimation()V

    .line 1367
    .end local v11           #i:I
    .end local v13           #mTempIndex:I
    .end local v14           #slide:Lcom/android/mms/model/SlideModel;
    .end local v15           #slideCount:I
    .end local v16           #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_4
    :goto_7
    return-void

    .line 1222
    .restart local v11       #i:I
    .restart local v13       #mTempIndex:I
    .restart local v14       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v15       #slideCount:I
    .restart local v16       #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v14

    .line 1226
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1227
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1228
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getLocation()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1229
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getLocation()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/mms/model/LocationVcardModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getLocation()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/mms/model/LocationVcardModel;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getLocation()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/mms/model/LocationVcardModel;->getFormattedAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getLocation()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/mms/model/LocationVcardModel;->getContactNumber()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/ui/MmsRichContainer;->setLocationAndKeyListener(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1238
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MmsRichContainer;->removePage(I)V

    .line 1214
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 1244
    :cond_7
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1245
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/android/mms/ui/MmsRichContainer;->setImageAndKeyListener(Landroid/graphics/Bitmap;I)V

    .line 1247
    :cond_8
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1248
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getVideoUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/android/mms/ui/MmsRichContainer;->setVideoAndKeyListener(Landroid/net/Uri;I)V

    .line 1250
    :cond_9
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1251
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/android/mms/ui/MmsRichContainer;->setAudioAndKeyListener(Ljava/lang/String;I)V

    .line 1254
    :cond_a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v12

    .line 1256
    .local v12, mTempEdit:Landroid/widget/EditText;
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1257
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v18

    .line 1258
    .local v18, text:Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v17

    .line 1259
    .local v17, string:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v12, :cond_b

    .line 1260
    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v3, 0xd

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v11}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v12, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1268
    .end local v17           #string:Ljava/lang/String;
    .end local v18           #text:Lcom/android/mms/model/TextModel;
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr(Lcom/android/mms/model/SlideModel;I)V

    .line 1270
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MmsRichContainer;->setPageDivider(I)V

    goto :goto_8

    .line 1262
    .restart local v17       #string:Ljava/lang/String;
    .restart local v18       #text:Lcom/android/mms/model/TextModel;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1, v11}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    goto :goto_9

    .line 1265
    .end local v17           #string:Ljava/lang/String;
    .end local v18           #text:Lcom/android/mms/model/TextModel;
    :cond_c
    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2, v11}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    goto :goto_9

    .line 1278
    .end local v12           #mTempEdit:Landroid/widget/EditText;
    :cond_d
    add-int/lit8 v2, v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    goto/16 :goto_4

    .line 1281
    :cond_e
    add-int/lit8 v2, v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    goto/16 :goto_4

    .line 1287
    :pswitch_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_5

    .line 1291
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1292
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_5

    .line 1294
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_5

    .line 1299
    :pswitch_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setLastElementFocus(Landroid/view/ViewGroup;)V

    .line 1300
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    goto/16 :goto_5

    .line 1304
    :pswitch_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    goto/16 :goto_5

    .line 1315
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    if-nez v2, :cond_11

    .line 1316
    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 1318
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_6

    .line 1329
    .end local v11           #i:I
    .end local v13           #mTempIndex:I
    .end local v14           #slide:Lcom/android/mms/model/SlideModel;
    .end local v15           #slideCount:I
    .end local v16           #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_12
    const/16 v2, 0x23

    move/from16 v0, p2

    if-ne v0, v2, :cond_13

    .line 1331
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    .line 1332
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1333
    .local v10, firstView:Landroid/view/View;
    if-eqz v10, :cond_4

    .line 1334
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v8

    .line 1335
    .local v8, firstEditText:Landroid/widget/EditText;
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1337
    .local v9, firstText:Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1340
    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    .line 1341
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setPageDivider(I)V

    .line 1342
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_7

    .line 1344
    .end local v8           #firstEditText:Landroid/widget/EditText;
    .end local v9           #firstText:Ljava/lang/String;
    .end local v10           #firstView:Landroid/view/View;
    :cond_13
    const/16 v2, 0x20

    move/from16 v0, p2

    if-ne v0, v2, :cond_14

    .line 1345
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    .line 1346
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr()V

    .line 1347
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_7

    .line 1348
    :cond_14
    const/16 v2, 0x1e

    move/from16 v0, p2

    if-eq v0, v2, :cond_15

    const/16 v2, 0x21

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    .line 1351
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr()V

    .line 1352
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1353
    .restart local v10       #firstView:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v8

    .line 1354
    .restart local v8       #firstEditText:Landroid/widget/EditText;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1355
    .local v18, text:Ljava/lang/CharSequence;
    if-eqz v18, :cond_16

    .line 1356
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1357
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1363
    :cond_16
    :goto_a
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_7

    .line 1359
    :cond_17
    invoke-static {v8}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    .line 1360
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto :goto_a

    .line 1284
    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
