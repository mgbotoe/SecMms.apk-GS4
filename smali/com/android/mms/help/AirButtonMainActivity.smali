.class public Lcom/android/mms/help/AirButtonMainActivity;
.super Landroid/app/Activity;
.source "AirButtonMainActivity.java"


# static fields
.field static final TAG:Ljava/lang/String; = "Mms/AirButtonMainActivity"

.field public static helpAttachIntent:Z

.field public static helpContactIntent:Z


# instance fields
.field private getEasymodeEnabled:Z

.field private guideView:Landroid/view/View;

.field private helpPopupView:Landroid/widget/LinearLayout;

.field private helpPopupView2:Landroid/widget/LinearLayout;

.field private helpguide:Landroid/widget/RelativeLayout;

.field private helpguide2:Landroid/widget/RelativeLayout;

.field private hoverImage:Landroid/widget/ImageView;

.field private hoverImage2:Landroid/widget/ImageView;

.field private hoverTextLayout:Landroid/widget/TextView;

.field private hoverTextLayout2:Landroid/widget/TextView;

.field private imageView:Landroid/widget/ImageView;

.field private infoCompleteTutorial:Landroid/widget/Button;

.field private mAttachButton:Landroid/widget/Button;

.field private mAttachButtonDisable:Landroid/view/View;

.field private mAttachButtonLeft:Landroid/widget/Button;

.field private mAttachButtonLeftLinear:Landroid/widget/LinearLayout;

.field private mAttachButtonSmall:Landroid/widget/Button;

.field private mBottomPanel:Landroid/view/View;

.field private mComposerLeftMarginEasymodePx:I

.field private mComposerLeftMarginPx:I

.field private mComposerPanel:Landroid/widget/ScrollView;

.field private mComposerbody:Landroid/widget/FrameLayout;

.field private mEachDeliveryReadReportSizeImgHeightPx:I

.field private mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;

.field private mEasyModeCalllogButtonLinear:Landroid/widget/LinearLayout;

.field private mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;

.field private mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;

.field private mEasyModeSendButtonTextView:Landroid/widget/TextView;

.field private mEasyModeTemplateButtonLinear:Landroid/widget/LinearLayout;

.field private mEditField:Landroid/widget/EditText;

.field private mEditorBg:I

.field protected mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

.field private mHoverImageHoverListener:Landroid/view/View$OnHoverListener;

.field private mLocale:Ljava/lang/String;

.field private mMediaView:Landroid/widget/ImageView;

.field private mMessageSizeTextHeightPx:I

.field public mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

.field private mMmsRichContainerLinear:Landroid/widget/LinearLayout;

.field private mMsgListView:Lcom/android/mms/ui/MessageListView;

.field private mPriorityLeftView:Landroid/widget/ImageView;

.field private mPriorityView:Landroid/widget/ImageView;

.field private mRecipientButton:Landroid/widget/ImageView;

.field public mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

.field private mRecipientsField:Landroid/widget/LinearLayout;

.field private mRichContainerMinHeightDefaultPx:I

.field private mRichContainerMinHeightEasymodePx:I

.field private mRichContainerMinHeightLeftAttachPx:I

.field private mRichContainerMinHeightTemplatebuttonPx:I

.field private mRichContainerMinHeightWhenPriority:I

.field private mRichContainerMinHeightWhenPriorityLandscape:I

.field public mSendButton:Landroid/widget/Button;

.field private mSendbuttonBottomMarginPx:I

.field private mShortcutPanel:Landroid/widget/LinearLayout;

.field private mTemplateButton:Landroid/widget/Button;

.field private mTemplateButtonLeft:Landroid/widget/Button;

.field private mTextColor:I

.field public mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

.field private mToLabel:Landroid/widget/TextView;

.field private mTopLayout:Landroid/widget/LinearLayout;

.field private mTopPanel:Landroid/view/View;

.field private mTutorialCallback:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

.field private mView:Landroid/widget/LinearLayout;

.field private mWidgetAttach:Lcom/samsung/android/airbutton/AirButtonImpl;

.field private mWidgetAttachEasy:Lcom/samsung/android/airbutton/AirButtonImpl;

.field private mWidgetAttachLeft:Lcom/samsung/android/airbutton/AirButtonImpl;

.field private mWidgetRecipientButton:Lcom/samsung/android/airbutton/AirButtonImpl;

.field private mWidgetRecipientButtonEasy:Lcom/samsung/android/airbutton/AirButtonImpl;

.field private mediaViewPort:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    sput-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpContactIntent:Z

    .line 113
    sput-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpAttachIntent:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 114
    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mWidgetAttach:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 115
    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mWidgetAttachEasy:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 116
    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mWidgetAttachLeft:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 117
    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mWidgetRecipientButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 118
    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mWidgetRecipientButtonEasy:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->getEasymodeEnabled:Z

    .line 429
    new-instance v0, Lcom/android/mms/help/AirButtonMainActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/help/AirButtonMainActivity$2;-><init>(Lcom/android/mms/help/AirButtonMainActivity;)V

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHoverImageHoverListener:Landroid/view/View$OnHoverListener;

    .line 715
    new-instance v0, Lcom/android/mms/help/AirButtonMainActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/help/AirButtonMainActivity$4;-><init>(Lcom/android/mms/help/AirButtonMainActivity;)V

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTutorialCallback:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->helpguide:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->helpguide2:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/help/AirButtonMainActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTextColor:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMediaView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mediaViewPort:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->infoCompleteTutorial:Landroid/widget/Button;

    return-object v0
.end method

.method private initComposerDimensions()V
    .locals 2

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 830
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a00bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginPx:I

    .line 831
    const v1, 0x7f0a00bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginEasymodePx:I

    .line 832
    const v1, 0x7f0a00be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendbuttonBottomMarginPx:I

    .line 833
    const v1, 0x7f0a00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRichContainerMinHeightDefaultPx:I

    .line 834
    const v1, 0x7f0a00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRichContainerMinHeightLeftAttachPx:I

    .line 835
    const v1, 0x7f0a00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRichContainerMinHeightEasymodePx:I

    .line 836
    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRichContainerMinHeightTemplatebuttonPx:I

    .line 837
    const v1, 0x7f0a00c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMessageSizeTextHeightPx:I

    .line 838
    const v1, 0x7f0a00c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRichContainerMinHeightWhenPriority:I

    .line 839
    const v1, 0x7f0a00c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRichContainerMinHeightWhenPriorityLandscape:I

    .line 840
    const v1, 0x7f0a00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEachDeliveryReadReportSizeImgHeightPx:I

    .line 841
    return-void
.end method

.method private initContainer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 265
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 266
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f04005b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mView:Landroid/widget/LinearLayout;

    .line 267
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEditField:Landroid/widget/EditText;

    .line 268
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEditField:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 269
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mView:Landroid/widget/LinearLayout;

    const v3, 0x7f0b01ec

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mediaViewPort:Landroid/widget/RelativeLayout;

    .line 270
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mediaViewPort:Landroid/widget/RelativeLayout;

    const v3, 0x7f0b01ee

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMediaView:Landroid/widget/ImageView;

    .line 271
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 272
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/mms/ui/MmsRichContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 273
    return-void
.end method

.method private initEventForHelpIntent()V
    .locals 8

    .prologue
    const v7, 0x7f04000b

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 355
    .local v0, actionbar:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 356
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 357
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/RecipientsEditor;->setInputType(I)V

    .line 358
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/RecipientsEditor;->setWritingBuddyEnabled(Z)V

    .line 359
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 360
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setWritingBuddyEnabled(Z)V

    .line 361
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 362
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 363
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 364
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLeft:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 366
    iget-boolean v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->getEasymodeEnabled:Z

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeCalllogButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 368
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 369
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 370
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 371
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeTemplateButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 375
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 376
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 377
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButtonLeft:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 382
    .local v1, inflater:Landroid/view/LayoutInflater;
    sget-boolean v2, Lcom/android/mms/help/AirButtonMainActivity;->helpAttachIntent:Z

    if-eqz v2, :cond_6

    .line 383
    iget-boolean v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->getEasymodeEnabled:Z

    if-eqz v2, :cond_4

    .line 384
    const v2, 0x7f040008

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    .line 385
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 386
    const v2, 0x7f040009

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    .line 388
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 389
    invoke-virtual {v1, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    .line 413
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/mms/help/AirButtonMainActivity;->showDialog(Landroid/view/View;)V

    .line 414
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->helpguide:Landroid/widget/RelativeLayout;

    .line 415
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->helpPopupView:Landroid/widget/LinearLayout;

    .line 416
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b0021

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->hoverImage:Landroid/widget/ImageView;

    .line 417
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b0004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->hoverTextLayout:Landroid/widget/TextView;

    .line 418
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b0022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->helpguide2:Landroid/widget/RelativeLayout;

    .line 419
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b0023

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->helpPopupView2:Landroid/widget/LinearLayout;

    .line 420
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b0027

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->hoverImage2:Landroid/widget/ImageView;

    .line 421
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b0025

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->hoverTextLayout2:Landroid/widget/TextView;

    .line 422
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->helpguide:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 423
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->helpguide2:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 424
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->hoverImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHoverImageHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 425
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->hoverImage2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHoverImageHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 426
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b0029

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->infoCompleteTutorial:Landroid/widget/Button;

    .line 427
    return-void

    .line 392
    :cond_4
    const v2, 0x7f040007

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    .line 393
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 394
    const v2, 0x7f04000a

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    .line 396
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 397
    invoke-virtual {v1, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    goto/16 :goto_0

    .line 401
    :cond_6
    iget-boolean v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->getEasymodeEnabled:Z

    if-eqz v2, :cond_7

    .line 402
    const v2, 0x7f04000d

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    .line 403
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 404
    const v2, 0x7f04000e

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    goto/16 :goto_0

    .line 407
    :cond_7
    const v2, 0x7f04000c

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    .line 408
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 409
    const v2, 0x7f04000f

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->guideView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method private initRecipientsEditor()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 276
    const-string v2, "Mms/AirButtonMainActivity"

    const-string v3, "initRecipientsEditor()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    .line 279
    const v2, 0x7f0b00ad

    invoke-virtual {p0, v2}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 283
    .local v1, lpRecipientsEdit:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    iget v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginPx:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-nez v2, :cond_2

    .line 291
    const v2, 0x7f0b00af

    invoke-virtual {p0, v2}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    .line 292
    const v2, 0x7f0b00b0

    invoke-virtual {p0, v2}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientsEditor;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    .line 293
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEditorBg:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/RecipientsEditor;->setBackgroundResource(I)V

    .line 294
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTextColor:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/RecipientsEditor;->setTextColor(I)V

    .line 296
    :cond_2
    const v2, 0x7f0b00b2

    invoke-virtual {p0, v2}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientButton:Landroid/widget/ImageView;

    .line 298
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v2, :cond_3

    .line 299
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v2, v6}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    .line 301
    :cond_3
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v6}, Lcom/android/mms/ui/RecipientsEditor;->setVisibility(I)V

    .line 303
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v2

    if-ne v2, v7, :cond_4

    .line 304
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 305
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDocomoAccountAsDefault()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 310
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 311
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v7}, Lcom/android/mms/ui/RecipientsEditor;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 312
    const-string v2, "forceHalfNumber"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_5
    iget-object v2, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const v3, 0x7f0c0181

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/RecipientsEditor;->setHint(I)V

    .line 316
    return-void
.end method

.method private initResourceRefs()V
    .locals 11

    .prologue
    const v10, 0x7f0c0216

    const v9, 0x7f0b00bd

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 167
    const v3, 0x7f0b00b3

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerbody:Landroid/widget/FrameLayout;

    .line 168
    const v3, 0x7f0b00a5

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTopLayout:Landroid/widget/LinearLayout;

    .line 169
    const v3, 0x7f0b00cf

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/MessageListView;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    .line 170
    const v3, 0x7f0b00b9

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mBottomPanel:Landroid/view/View;

    .line 171
    const v3, 0x7f0b00ab

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerPanel:Landroid/widget/ScrollView;

    .line 172
    const v3, 0x7f0b00c7

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendButton:Landroid/widget/Button;

    .line 173
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 174
    .local v2, lpSendButton:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #lpSendButton:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 177
    .restart local v2       #lpSendButton:Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->getEasymodeEnabled:Z

    if-eqz v3, :cond_1

    .line 178
    const v3, 0x7f0b00d1

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;

    .line 179
    const v3, 0x7f0b00d3

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeCalllogButtonLinear:Landroid/widget/LinearLayout;

    .line 180
    const v3, 0x7f0b00d8

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;

    .line 182
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    const v3, 0x7f0b00db

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeTemplateButtonLinear:Landroid/widget/LinearLayout;

    .line 185
    :cond_0
    const v3, 0x7f0b00de

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;

    .line 186
    const v3, 0x7f0b00df

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeSendButtonTextView:Landroid/widget/TextView;

    .line 187
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeSendButtonTextView:Landroid/widget/TextView;

    const v4, 0x7f02023a

    invoke-virtual {v3, v4, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 188
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeSendButtonTextView:Landroid/widget/TextView;

    const v4, 0x7f0c002d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 191
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v3

    if-nez v3, :cond_2

    .line 192
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendbuttonBottomMarginPx:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 197
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v3

    if-ne v3, v8, :cond_5

    .line 199
    :cond_4
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 201
    :cond_5
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendButton:Landroid/widget/Button;

    const v4, 0x7f020248

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 202
    const v3, 0x7f0b00bf

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    .line 203
    const v3, 0x7f0b00c0

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/MmsRichContainer;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    .line 204
    invoke-direct {p0}, Lcom/android/mms/help/AirButtonMainActivity;->initContainer()V

    .line 205
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 206
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 208
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteTheme()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 209
    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTextColor:I

    .line 213
    :goto_0
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget v4, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTextColor:I

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MmsRichContainer;->setTextColor(I)V

    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, lpContainerLinear:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lpContainerLinear:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 218
    .restart local v1       #lpContainerLinear:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v3

    if-nez v3, :cond_6

    .line 219
    iget v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginPx:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 223
    :cond_6
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEditorBg:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 224
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v4, p0, Lcom/android/mms/help/AirButtonMainActivity;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setHint(I)V

    .line 225
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v4, p0, Lcom/android/mms/help/AirButtonMainActivity;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 226
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v3, v10}, Lcom/android/mms/ui/MmsRichContainer;->setHintRes(I)V

    .line 227
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v3, v7}, Lcom/android/mms/ui/MmsRichContainer;->setVisibility(I)V

    .line 228
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 229
    const v3, 0x7f0b00c5

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mPriorityView:Landroid/widget/ImageView;

    .line 230
    const v3, 0x7f0b00bb

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mPriorityLeftView:Landroid/widget/ImageView;

    .line 232
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 233
    .local v0, lc:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mLocale:Ljava/lang/String;

    .line 235
    const v3, 0x7f0b00ac

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTopPanel:Landroid/view/View;

    .line 236
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTopPanel:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTopPanel:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 239
    const v3, 0x7f0b00ca

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    .line 240
    const v3, 0x7f0b00cb

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonDisable:Landroid/view/View;

    .line 241
    const v3, 0x7f0b00ba

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLeftLinear:Landroid/widget/LinearLayout;

    .line 242
    const v3, 0x7f0b00bc

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLeft:Landroid/widget/Button;

    .line 244
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 245
    const v3, 0x7f0b00cc

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mShortcutPanel:Landroid/widget/LinearLayout;

    .line 246
    const v3, 0x7f0b00cd

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonSmall:Landroid/widget/Button;

    .line 247
    const v3, 0x7f0b00ce

    invoke-virtual {p0, v3}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButton:Landroid/widget/Button;

    .line 248
    invoke-virtual {p0, v9}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButtonLeft:Landroid/widget/Button;

    .line 251
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v3

    if-ne v3, v8, :cond_9

    .line 252
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 253
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButtonLeft:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 261
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/help/AirButtonMainActivity;->screenLayoutUpdate()V

    .line 262
    return-void

    .line 211
    .end local v0           #lc:Ljava/util/Locale;
    .end local v1           #lpContainerLinear:Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTextColor:I

    goto/16 :goto_0

    .line 255
    .restart local v0       #lc:Ljava/util/Locale;
    .restart local v1       #lpContainerLinear:Landroid/widget/LinearLayout$LayoutParams;
    :cond_b
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButtonLeft:Landroid/widget/Button;

    if-nez v3, :cond_c

    .line 256
    invoke-virtual {p0, v9}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButtonLeft:Landroid/widget/Button;

    .line 258
    :cond_c
    iget-object v3, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButtonLeft:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private screenLayoutUpdate()V
    .locals 12

    .prologue
    .line 473
    const v8, 0x7f0b00c0

    invoke-virtual {p0, v8}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 474
    .local v0, editor:Landroid/view/View;
    iget v7, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRichContainerMinHeightDefaultPx:I

    .line 476
    .local v7, pxMinimumEditorHeight:I
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 477
    .local v1, lpContainerLinear:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 478
    .local v5, lpSendButton:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_19

    .line 480
    :cond_1
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    if-nez v8, :cond_2

    .line 481
    const v8, 0x7f0b00af

    invoke-virtual {p0, v8}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    .line 483
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 484
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    :goto_0
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_3

    .line 489
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 490
    .local v4, lpRecipientsField:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x0

    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 493
    .end local v4           #lpRecipientsField:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v8, :cond_4

    .line 494
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v8}, Lcom/android/mms/ui/RecipientsEditor;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 495
    .local v3, lpRecipientsEdit:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x0

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 498
    .end local v3           #lpRecipientsEdit:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 499
    .local v6, lpToLabel:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x40e0

    invoke-static {v8}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v8

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 v10, 0x40c0

    invoke-static {v10}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v10

    iget v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 501
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lpContainerLinear:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 503
    .restart local v1       #lpContainerLinear:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x0

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 505
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5           #lpSendButton:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 506
    .restart local v5       #lpSendButton:Landroid/widget/LinearLayout$LayoutParams;
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 509
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 510
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLeftLinear:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_6

    .line 511
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLeftLinear:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 512
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLeft:Landroid/widget/Button;

    if-eqz v8, :cond_5

    .line 513
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLeft:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 514
    :cond_5
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->hasFocus()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 515
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLeftLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 523
    :cond_6
    :goto_1
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    if-eqz v8, :cond_7

    .line 524
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 525
    :cond_7
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonDisable:Landroid/view/View;

    if-eqz v8, :cond_8

    .line 526
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonDisable:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 529
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 530
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mShortcutPanel:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_9

    .line 531
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mShortcutPanel:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 532
    :cond_9
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButtonLeft:Landroid/widget/Button;

    if-eqz v8, :cond_a

    .line 533
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTemplateButtonLeft:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 535
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 536
    invoke-virtual {v0, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 588
    .end local v6           #lpToLabel:Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    iget-boolean v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->getEasymodeEnabled:Z

    if-eqz v8, :cond_15

    .line 589
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    if-nez v8, :cond_b

    .line 590
    const v8, 0x7f0b00af

    invoke-virtual {p0, v8}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    .line 591
    :cond_b
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 592
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientButton:Landroid/widget/ImageView;

    if-eqz v8, :cond_c

    .line 593
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientButton:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 594
    :cond_c
    const v8, 0x7f0b00c4

    invoke-virtual {p0, v8}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 595
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLeftLinear:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_d

    .line 596
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLeftLinear:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 598
    :cond_d
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v8, :cond_e

    .line 599
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lpContainerLinear:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 601
    .restart local v1       #lpContainerLinear:Landroid/widget/LinearLayout$LayoutParams;
    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginEasymodePx:I

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 603
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_e

    .line 604
    iget v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginPx:I

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 608
    :cond_e
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_f

    .line 609
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 610
    .restart local v4       #lpRecipientsField:Landroid/widget/LinearLayout$LayoutParams;
    iget v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginEasymodePx:I

    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginEasymodePx:I

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 614
    .end local v4           #lpRecipientsField:Landroid/widget/LinearLayout$LayoutParams;
    :cond_f
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v8, :cond_10

    .line 615
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v8}, Lcom/android/mms/ui/RecipientsEditor;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 616
    .restart local v3       #lpRecipientsEdit:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x0

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 618
    .end local v3           #lpRecipientsEdit:Landroid/widget/LinearLayout$LayoutParams;
    :cond_10
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_12

    .line 619
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 620
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_11

    .line 621
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;

    const v9, 0x7f0b00da

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 622
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;

    const v9, 0x7f0b00d9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 624
    :cond_11
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_12

    .line 625
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;

    const v9, 0x7f0b00da

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 626
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;

    const v9, 0x7f0b00d9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 633
    :cond_12
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 634
    const v8, 0x7f0b00db

    invoke-virtual {p0, v8}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 636
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeTemplateButtonLinear:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_14

    .line 637
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeTemplateButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 638
    .local v2, lpEasyTemplateLinear:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_13

    .line 639
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeTemplateButtonLinear:Landroid/widget/LinearLayout;

    const v9, 0x7f0b00dd

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 640
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeTemplateButtonLinear:Landroid/widget/LinearLayout;

    const v9, 0x7f0b00dc

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 642
    :cond_13
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_14

    .line 643
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeTemplateButtonLinear:Landroid/widget/LinearLayout;

    const v9, 0x7f0b00dd

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 644
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeTemplateButtonLinear:Landroid/widget/LinearLayout;

    const v9, 0x7f0b00dc

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 648
    .end local v2           #lpEasyTemplateLinear:Landroid/widget/LinearLayout$LayoutParams;
    :cond_14
    const v8, 0x7f0b00d0

    invoke-virtual {p0, v8}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 649
    const v8, 0x7f0b00d7

    invoke-virtual {p0, v8}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 650
    invoke-virtual {v0, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 652
    :cond_15
    return-void

    .line 486
    :cond_16
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 518
    .restart local v6       #lpToLabel:Landroid/widget/LinearLayout$LayoutParams;
    :cond_17
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLeftLinear:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_6

    .line 519
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLeftLinear:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 538
    :cond_18
    iget v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMessageSizeTextHeightPx:I

    invoke-virtual {v0, v8}, Landroid/view/View;->setMinimumHeight(I)V

    goto/16 :goto_2

    .line 541
    .end local v6           #lpToLabel:Landroid/widget/LinearLayout$LayoutParams;
    :cond_19
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    if-nez v8, :cond_1a

    .line 542
    const v8, 0x7f0b00af

    invoke-virtual {p0, v8}, Lcom/android/mms/help/AirButtonMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    .line 543
    :cond_1a
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mToLabel:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_1b

    .line 546
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 547
    .restart local v4       #lpRecipientsField:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x0

    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 550
    .end local v4           #lpRecipientsField:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1b
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v8, :cond_1c

    .line 551
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v8}, Lcom/android/mms/ui/RecipientsEditor;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 552
    .restart local v3       #lpRecipientsEdit:Landroid/widget/LinearLayout$LayoutParams;
    iget v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginPx:I

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 556
    .end local v3           #lpRecipientsEdit:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1c
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainerLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lpContainerLinear:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 558
    .restart local v1       #lpContainerLinear:Landroid/widget/LinearLayout$LayoutParams;
    iget v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mComposerLeftMarginPx:I

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 560
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, p0, Lcom/android/mms/help/AirButtonMainActivity;->mSendbuttonBottomMarginPx:I

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 561
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLeftLinear:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_1d

    .line 562
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLeftLinear:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 566
    :cond_1d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 567
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    if-eqz v8, :cond_1e

    .line 568
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 569
    :cond_1e
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonDisable:Landroid/view/View;

    if-eqz v8, :cond_1f

    .line 570
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonDisable:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 571
    :cond_1f
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mShortcutPanel:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_20

    .line 572
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mShortcutPanel:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 585
    :cond_20
    :goto_4
    invoke-virtual {v0, v7}, Landroid/view/View;->setMinimumHeight(I)V

    goto/16 :goto_2

    .line 574
    :cond_21
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    if-eqz v8, :cond_22

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v8

    if-eqz v8, :cond_22

    .line 575
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 576
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonDisable:Landroid/view/View;

    if-eqz v8, :cond_20

    .line 577
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonDisable:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 580
    :cond_22
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 581
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonDisable:Landroid/view/View;

    if-eqz v8, :cond_20

    .line 582
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonDisable:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 629
    :cond_23
    iget-object v8, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3
.end method


# virtual methods
.method public createAirButtonWidget()V
    .locals 1

    .prologue
    .line 455
    sget-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpContactIntent:Z

    if-eqz v0, :cond_0

    .line 456
    iget-boolean v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->getEasymodeEnabled:Z

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeContactButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/mms/help/AirButtonMainActivity;->createWidgetFromView(Landroid/view/View;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mWidgetRecipientButtonEasy:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 462
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpAttachIntent:Z

    if-eqz v0, :cond_1

    .line 463
    iget-boolean v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->getEasymodeEnabled:Z

    if-eqz v0, :cond_3

    .line 464
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/mms/help/AirButtonMainActivity;->createWidgetFromView(Landroid/view/View;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mWidgetAttachEasy:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 470
    :cond_1
    :goto_1
    return-void

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/mms/help/AirButtonMainActivity;->createWidgetFromView(Landroid/view/View;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mWidgetRecipientButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    goto :goto_0

    .line 466
    :cond_3
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/android/mms/help/AirButtonMainActivity;->createWidgetFromView(Landroid/view/View;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mWidgetAttach:Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 467
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mAttachButtonLeft:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/android/mms/help/AirButtonMainActivity;->createWidgetFromView(Landroid/view/View;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mWidgetAttachLeft:Lcom/samsung/android/airbutton/AirButtonImpl;

    goto :goto_1
.end method

.method public createWidgetFromView(Landroid/view/View;)Lcom/samsung/android/airbutton/AirButtonImpl;
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x2

    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, airButtonWidget:Lcom/samsung/android/airbutton/AirButtonImpl;
    sget-boolean v1, Lcom/android/mms/help/AirButtonMainActivity;->helpContactIntent:Z

    if-eqz v1, :cond_1

    .line 657
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl;

    .end local v0           #airButtonWidget:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getAdapterRecipientList()Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    .line 658
    .restart local v0       #airButtonWidget:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-virtual {v0, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->setGravity(I)V

    .line 663
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mTutorialCallback:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setOnItemSelectedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;)V

    .line 664
    invoke-virtual {v0, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->setDirection(I)V

    .line 665
    new-instance v1, Lcom/android/mms/help/AirButtonMainActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/help/AirButtonMainActivity$3;-><init>(Lcom/android/mms/help/AirButtonMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setOnStateChangedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;)V

    .line 688
    return-object v0

    .line 659
    :cond_1
    sget-boolean v1, Lcom/android/mms/help/AirButtonMainActivity;->helpAttachIntent:Z

    if-eqz v1, :cond_0

    .line 660
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl;

    .end local v0           #airButtonWidget:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getAdapterImageList()Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    .line 661
    .restart local v0       #airButtonWidget:Lcom/samsung/android/airbutton/AirButtonImpl;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setGravity(I)V

    goto :goto_0
.end method

.method public getAdapterImageList()Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 692
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .local v0, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;>;"
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;-><init>(Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public getAdapterRecipientList()Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .locals 8

    .prologue
    const v7, 0x7f0c0442

    const/4 v6, 0x0

    .line 706
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .local v0, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;>;"
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0441

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0444

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0445

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v6}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0443

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0446

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;-><init>(Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public hideInfoBubble(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 821
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/help/AirButtonMainActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/help/AirButtonMainActivity$5;-><init>(Lcom/android/mms/help/AirButtonMainActivity;Landroid/app/Activity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 826
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 349
    invoke-direct {p0}, Lcom/android/mms/help/AirButtonMainActivity;->initEventForHelpIntent()V

    .line 350
    invoke-direct {p0}, Lcom/android/mms/help/AirButtonMainActivity;->screenLayoutUpdate()V

    .line 351
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisableEasyModeForComposer()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->getEasymodeEnabled:Z

    .line 138
    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 139
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/mms/help/AirButtonMainActivity;->initComposerDimensions()V

    .line 140
    const-string v1, "helpAttachTutorial"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/help/AirButtonMainActivity;->helpAttachIntent:Z

    .line 141
    const-string v1, "helpContactTutorial"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/help/AirButtonMainActivity;->helpContactIntent:Z

    .line 142
    const v1, 0x7f02024e

    iput v1, p0, Lcom/android/mms/help/AirButtonMainActivity;->mEditorBg:I

    .line 144
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisableEasyModeForComposer()Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    const v1, 0x7f040022

    invoke-virtual {p0, v1}, Lcom/android/mms/help/AirButtonMainActivity;->setContentView(I)V

    .line 150
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableLandscapeModeonActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0, v2}, Lcom/android/mms/help/AirButtonMainActivity;->setRequestedOrientation(I)V

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/help/AirButtonMainActivity;->initRecipientsEditor()V

    .line 154
    invoke-direct {p0}, Lcom/android/mms/help/AirButtonMainActivity;->initResourceRefs()V

    .line 155
    invoke-direct {p0}, Lcom/android/mms/help/AirButtonMainActivity;->initEventForHelpIntent()V

    .line 156
    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->createAirButtonWidget()V

    .line 157
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    move v1, v3

    .line 137
    goto :goto_0

    .line 147
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_2
    const v1, 0x7f040021

    invoke-virtual {p0, v1}, Lcom/android/mms/help/AirButtonMainActivity;->setContentView(I)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 162
    sput-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpAttachIntent:Z

    .line 163
    sput-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpContactIntent:Z

    .line 164
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 341
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 342
    invoke-virtual {p0}, Lcom/android/mms/help/AirButtonMainActivity;->finish()V

    .line 343
    return-void
.end method

.method protected showDialog(Landroid/view/View;)V
    .locals 2
    .parameter "guide_view"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->dismiss()V

    .line 323
    :cond_0
    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog;

    const v1, 0x7f0e0013

    invoke-direct {v0, p0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    .line 324
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0, p1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 325
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    sget-object v1, Lcom/android/mms/help/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/mms/help/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/mms/help/TwHelpDialog$TouchMode;)V

    .line 326
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 327
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->show()V

    .line 328
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    new-instance v1, Lcom/android/mms/help/AirButtonMainActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/help/AirButtonMainActivity$1;-><init>(Lcom/android/mms/help/AirButtonMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 337
    return-void
.end method
