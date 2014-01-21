.class public Lcom/android/mms/ui/SlideshowActivity;
.super Landroid/app/Activity;
.source "SlideshowActivity.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/android/mms/ui/ActionbarTitleTextView$SizeChangedListener;
.implements Lcom/android/mms/ui/DirectCallActivityInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;,
        Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;,
        Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x32

.field private static final CLICK_MAX_LENGTH:I = 0x14

.field private static final COL_IDX_ID:I = 0x0

.field private static final COL_IDX_TYPE_DISCRIMINATOR:I = 0x1

.field private static final COL_NORMALIZED_DATE:Ljava/lang/String; = "normalized_date"

.field private static final FINISH_PREVIEW:I = 0x1

.field private static final FLICK_MIN_LENGTH:I = 0x96

.field private static final FLICK_TYPE_CLICK:I = 0x1

.field private static final FLICK_TYPE_NONE:I = 0x0

.field private static final FLICK_TYPE_TO_LEFT:I = 0x3

.field private static final FLICK_TYPE_TO_RIGHT:I = 0x2

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x1b

.field private static final NEXT_MESSAGE_PROJECTION:[Ljava/lang/String; = null

.field private static final REFRESH_PROGRESSBAR_DELAY:I = 0x64

.field private static final REQUEST_CODE_ADD_CONTACT:I = 0x1d

.field private static final TAG:Ljava/lang/String; = "Mms/SlideshowActivity"

.field private static final VIEWER_MODE_LOCKED:I = 0x1

.field private static final VIEWER_MODE_MMS:I = 0x4

.field private static final VIEWER_MODE_NORMAL:I = 0x0

.field private static final VIEWER_MODE_RESERVED:I = 0x2

.field private static final VIEWER_MODE_SPAM:I = 0x3

.field public static mLaunchMode:I


# instance fields
.field RIGHTPADDING:I

.field private endX:I

.field private endY:I

.field private mActionbarNormalListLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListTitle:Landroid/widget/TextView;

.field private mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListTitleNumber:Landroid/widget/TextView;

.field private mAddContactIntent:Landroid/content/Intent;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBlockFlickUntilMillis:J

.field private mCallStateListener:Landroid/telephony/PhoneStateListener;

.field private mContactList:Lcom/android/mms/data/ContactList;

.field private mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

.field private mEndSlideAnim:I

.field private mFinishHandler:Landroid/os/Handler;

.field private mFlick:Z

.field private mFromMmsSinglePageView:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mIntent:Landroid/content/Intent;

.field private mIsAudioFocus:Z

.field protected mIsBlockMenu:Z

.field private mIsNumberHoveredBackground:Z

.field private mIsOnCall:Z

.field private mIsPreview:Z

.field private mIsSelectTextLaunch:Z

.field private mIsSpam:Z

.field private mIsTitleHoveredBackground:Z

.field private mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

.field private mMsgId:J

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgOptions:Lcom/android/mms/ui/MessageOptions;

.field private mMsgUri:Landroid/net/Uri;

.field private mNoRightDrmMediaCount:I

.field private mOptionItemSelected:Z

.field private mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

.field private mRefreshPlayButtons:Z

.field private mRequestLockedMessageView:Z

.field private mRequestReservedMessageView:Z

.field private mShowModel:Lcom/android/mms/model/SlideshowModel;

.field private mSlideView:Lcom/android/mms/ui/SlideView;

.field private mSmilControllerStart:Ljava/lang/Runnable;

.field private mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

.field private mSmilDocListenerAdded:Z

.field private mStartSlideAnim:I

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThreadId:J

.field private mTopLayout:Landroid/widget/RelativeLayout;

.field private mUpdateRead:Z

.field private mUpdateSeen:Z

.field private mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

.field private startX:I

.field private startY:I

.field private final stateChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 133
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "m_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/SlideshowActivity;->NEXT_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 163
    sput v3, Lcom/android/mms/ui/SlideshowActivity;->mLaunchMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 184
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    .line 185
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mFromMmsSinglePageView:Z

    .line 189
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDocListenerAdded:Z

    .line 191
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 192
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 194
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    .line 196
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    .line 201
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    .line 202
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    .line 203
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSelectTextLaunch:Z

    .line 204
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mOptionItemSelected:Z

    .line 214
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    .line 216
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    .line 217
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mRequestLockedMessageView:Z

    .line 218
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mRequestReservedMessageView:Z

    .line 219
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mUpdateRead:Z

    .line 220
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mUpdateSeen:Z

    .line 222
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsBlockMenu:Z

    .line 230
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mBlockFlickUntilMillis:J

    .line 232
    iput v2, p0, Lcom/android/mms/ui/SlideshowActivity;->RIGHTPADDING:I

    .line 239
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$1;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 255
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideshowActivity$2;-><init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    .line 267
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$3;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    .line 797
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$7;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilControllerStart:Ljava/lang/Runnable;

    .line 1393
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsAudioFocus:Z

    .line 2523
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$20;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$20;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mFinishHandler:Landroid/os/Handler;

    .line 2535
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$21;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$21;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method private UpdateActionBarTitleWithNumber()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/high16 v13, 0x4080

    const/high16 v12, 0x4000

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2388
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2389
    .local v0, config:Landroid/content/res/Configuration;
    iget v8, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v14, :cond_4

    move v3, v6

    .line 2391
    .local v3, mIsLandscape:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_hovering"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_5

    move v2, v6

    .line 2393
    .local v2, isSPenHoveringOn:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "finger_air_view"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_6

    move v1, v6

    .line 2396
    .local v1, isFingerHoveringOn:Z
    :goto_2
    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 2398
    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/SlideshowActivity;->getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v5

    .line 2399
    .local v5, recipientsString:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2400
    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2402
    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2403
    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 2405
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDisplayNameAndNumberonTitle()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2406
    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->size()I

    move-result v8

    if-ne v8, v6, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->hasName()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2407
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    .line 2409
    .local v4, phoneNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2410
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2412
    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2413
    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2414
    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2416
    if-eqz v3, :cond_7

    .line 2417
    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v9, 0x4188

    invoke-virtual {v8, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2418
    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v9, 0x4140

    invoke-virtual {v8, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2424
    .end local v4           #phoneNumber:Ljava/lang/String;
    :cond_1
    :goto_3
    if-eqz v3, :cond_8

    .line 2426
    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-static {v12}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v9

    invoke-static {v12}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v10

    invoke-virtual {v8, v9, v7, v10, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2427
    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-static {v12}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v9

    const/high16 v10, 0x3f80

    invoke-static {v10}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v10

    invoke-virtual {v8, v9, v7, v7, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2437
    .end local v5           #recipientsString:Ljava/lang/String;
    :cond_2
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v7

    if-ne v7, v6, :cond_3

    .line 2438
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 2439
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 2441
    :cond_3
    return-void

    .end local v1           #isFingerHoveringOn:Z
    .end local v2           #isSPenHoveringOn:Z
    .end local v3           #mIsLandscape:Z
    :cond_4
    move v3, v7

    .line 2389
    goto/16 :goto_0

    .restart local v3       #mIsLandscape:Z
    :cond_5
    move v2, v7

    .line 2391
    goto/16 :goto_1

    .restart local v2       #isSPenHoveringOn:Z
    :cond_6
    move v1, v7

    .line 2393
    goto/16 :goto_2

    .line 2420
    .restart local v1       #isFingerHoveringOn:Z
    .restart local v4       #phoneNumber:Ljava/lang/String;
    .restart local v5       #recipientsString:Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v9, 0x4198

    invoke-virtual {v8, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2421
    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v9, 0x4160

    invoke-virtual {v8, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    .line 2430
    .end local v4           #phoneNumber:Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-static {v13}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v9

    invoke-static {v12}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v10

    invoke-static {v13}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v11

    invoke-virtual {v8, v9, v10, v11, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2431
    iget-object v8, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-static {v13}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v9

    invoke-static {v12}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v10

    invoke-virtual {v8, v9, v7, v7, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerControllerMulti;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideshowPresenter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->updateControlButtons()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->addEventListenerOfSmilDoc()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SlideshowActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->accquireWakeLock()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->setAudioFocus()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->cancelAudioFocus()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/SlideshowActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/mms/ui/SlideshowActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/SlideshowActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/SlideshowActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mFinishHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/SlideshowActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/SlideshowActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mStartSlideAnim:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/SlideshowActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mEndSlideAnim:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/SlideshowActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mUpdateSeen:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/mms/ui/SlideshowActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mUpdateSeen:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/data/ContactList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->adjustSubjectWidth()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->drawTitle()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideshowActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/SlideshowActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideshowActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideshowActivity;->setMusicMute(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideshowActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSelectTextLaunch:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideshowActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V

    return-void
.end method

.method private accquireWakeLock()V
    .locals 2

    .prologue
    .line 2211
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "accquireWakeLock()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2213
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2216
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2217
    return-void
.end method

.method private addEventListenerOfSmilDoc()V
    .locals 3

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDocListenerAdded:Z

    if-nez v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 867
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "addEventListenerOfSmilDoc() called.. "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDocListenerAdded:Z

    .line 870
    :cond_0
    return-void
.end method

.method private addRecipientsListener()V
    .locals 0

    .prologue
    .line 469
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 470
    return-void
.end method

.method private adjustSubjectWidth()V
    .locals 3

    .prologue
    .line 294
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    invoke-virtual {v1}, Lcom/android/mms/ui/ViewTitleHeader;->getVisibleIconCount()I

    move-result v0

    .line 295
    .local v0, visibleIconNum:I
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    iget v2, p0, Lcom/android/mms/ui/SlideshowActivity;->RIGHTPADDING:I

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/SlideView;->adjustSubjectWidth(II)V

    .line 296
    return-void
.end method

.method private cancelAudioFocus()V
    .locals 2

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideView;->hasSound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1424
    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 1417
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1419
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsAudioFocus:Z

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsAudioFocus:Z

    .line 1422
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "cancelAudioFocus"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createDirectCallingManager()V
    .locals 2

    .prologue
    .line 433
    invoke-static {p0}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Lcom/android/mms/util/DirectCallingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/mms/util/DirectCallingManager;-><init>(ILcom/android/mms/ui/DirectCallActivityInterface;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    goto :goto_0
.end method

.method private createModel()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 709
    iget-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_3

    .line 710
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    .line 718
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_5

    .line 719
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 720
    .local v1, slideCount:I
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 723
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_5

    .line 724
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 725
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    if-ge v2, v3, :cond_0

    .line 726
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    .line 729
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 730
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v2, v6}, Lcom/android/mms/ui/SlideView;->setHasSound(Z)V

    .line 723
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 712
    .end local v0           #i:I
    .end local v1           #slideCount:I
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/mms/model/MediaModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 713
    new-instance v2, Lcom/google/android/mms/MmsException;

    invoke-direct {v2}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v2

    .line 715
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    invoke-static {p0, v2, v6}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    goto :goto_0

    .line 735
    :cond_5
    return-void
.end method

.method private createPresenter(Lcom/android/mms/ui/SlideView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 646
    const-class v0, Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, p0, p1, v1}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideshowPresenter;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 648
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->setPreviewState(Z)V

    .line 651
    :cond_0
    return-void
.end method

.method private drawTitle()V
    .locals 6

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    const-string v5, "mms"

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ViewTitleHeader;->ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ViewTitleHeader;->setVisibility(I)V

    .line 856
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 857
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->initActionBar()V

    .line 861
    :goto_0
    return-void

    .line 859
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    invoke-virtual {v0}, Lcom/android/mms/ui/ViewTitleHeader;->getSenderString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->updateActionBarTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private exitSlideshowActivity()V
    .locals 4

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    .line 2021
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->stopPlayer()V

    .line 2024
    :cond_0
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 2025
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$11;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->markAsRead(Ljava/lang/Runnable;Z)V

    .line 2033
    :goto_0
    return-void

    .line 2031
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto :goto_0
.end method

.method private getAudioService()Landroid/media/IAudioService;
    .locals 3

    .prologue
    .line 2605
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2607
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 2608
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    :cond_0
    return-object v0
.end method

.method private getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 2165
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2166
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 2168
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    if-nez v3, :cond_1

    .line 2169
    :try_start_0
    const-string v1, "Mms/SlideshowActivity"

    const-string v5, "got query result null"

    invoke-static {v1, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2203
    if-eqz v3, :cond_0

    .line 2204
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2207
    :cond_0
    :goto_0
    return-object v2

    .line 2173
    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2177
    new-instance v10, Lcom/android/mms/ui/SlideshowActivity$16;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v10, p0, v1, v2, v5}, Lcom/android/mms/ui/SlideshowActivity$16;-><init>(Lcom/android/mms/ui/SlideshowActivity;IFZ)V

    .line 2186
    .local v10, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 2187
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2189
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_4

    .line 2191
    :try_start_2
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "message item not in cache, create new"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2195
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_3
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2203
    :goto_1
    if-eqz v3, :cond_2

    .line 2204
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v2, v0

    .line 2207
    goto :goto_0

    .line 2196
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 2197
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Landroid/database/CursorIndexOutOfBoundsException;
    :goto_2
    :try_start_4
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "CursorIndexOutOfBoundsException in getCachedMessageItem !"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2198
    const/4 v0, 0x0

    .line 2200
    goto :goto_1

    .line 2203
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v8           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .end local v10           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v3, :cond_3

    .line 2204
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2203
    :cond_3
    throw v1

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v4       #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    .restart local v10       #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_1
    move-exception v1

    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_3

    .line 2199
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_1
    move-exception v1

    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    .line 2196
    :catch_3
    move-exception v8

    goto :goto_2

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :cond_4
    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1
.end method

.method private getCallState()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 621
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 623
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 624
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_1
    const-string v2, "Mms/SlideshowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOnCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    return-void

    .restart local v1       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    move v2, v3

    .line 624
    goto :goto_0

    .line 625
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 627
    .local v0, e1:Landroid/os/RemoteException;
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    .line 628
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private getFlickType(II)I
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/16 v1, 0x14

    .line 1614
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 1615
    const/4 v0, 0x1

    .line 1621
    :goto_0
    return v0

    .line 1616
    :cond_0
    const/16 v0, 0x96

    if-lt p1, v0, :cond_1

    .line 1617
    const/4 v0, 0x2

    goto :goto_0

    .line 1618
    :cond_1
    const/16 v0, -0x96

    if-gt p1, v0, :cond_2

    .line 1619
    const/4 v0, 0x3

    goto :goto_0

    .line 1621
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHasDRMMediaNRightInSlide(Lcom/android/mms/model/SlideshowModel;)Z
    .locals 8
    .parameter "slides"

    .prologue
    .line 1925
    const/4 v0, 0x0

    .line 1926
    .local v0, hasDRMMedia:Z
    const/4 v1, 0x1

    .line 1927
    .local v1, hasRight:Z
    const/4 v5, 0x0

    .line 1929
    .local v5, result:Z
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/SlideModel;

    .line 1930
    .local v6, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 1931
    .local v4, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1932
    const/4 v0, 0x1

    .line 1933
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->hasDrmRight()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1934
    const/4 v1, 0x0

    .line 1935
    iget v7, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    goto :goto_0

    .line 1941
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v6           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    const/4 v5, 0x1

    .line 1942
    :goto_1
    return v5

    .line 1941
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getLCDWakeLock()V
    .locals 3

    .prologue
    .line 634
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 635
    .local v0, pm:Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    .line 636
    const/16 v1, 0xa

    const-string v2, "MMS viewer LCD on wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 638
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 642
    :cond_0
    return-void
.end method

.method private getMessageInformationFromIntent()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 654
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 655
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v0, v2, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    .line 661
    const-string v2, "thread_id"

    invoke-virtual {v0, v2, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mThreadId:J

    .line 663
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 664
    const-string v2, "requestLockedMessageView"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mRequestLockedMessageView:Z

    .line 669
    :cond_0
    const-string v2, "preview"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, previewing:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "previewLaunch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 671
    iput-boolean v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    .line 676
    :goto_0
    const-string v2, "isSpam"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    .line 678
    iget-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_4

    .line 679
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    if-eqz v2, :cond_3

    .line 680
    sget-object v2, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    .line 688
    :goto_1
    const-string v2, "fromMmsSinglePageActivity"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mFromMmsSinglePageView:Z

    .line 689
    const-string v2, "requestReservedMessageView"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mRequestReservedMessageView:Z

    .line 692
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 694
    const-string v2, "fromContactHistory"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v6, :cond_5

    .line 695
    sput v6, Lcom/android/mms/ui/SlideshowActivity;->mLaunchMode:I

    .line 703
    :cond_1
    :goto_2
    const-string v2, "Mms/SlideshowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isSpam:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",fromSPage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mFromMmsSinglePageView:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    return-void

    .line 673
    :cond_2
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    goto :goto_0

    .line 682
    :cond_3
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    goto :goto_1

    .line 685
    :cond_4
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    goto :goto_1

    .line 696
    :cond_5
    const-string v2, "fromFolderView"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v6, :cond_6

    .line 697
    const/4 v2, 0x2

    sput v2, Lcom/android/mms/ui/SlideshowActivity;->mLaunchMode:I

    goto :goto_2

    .line 698
    :cond_6
    const-string v2, "fromSearchListOnFolderView"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v6, :cond_1

    .line 699
    const/4 v2, 0x4

    sput v2, Lcom/android/mms/ui/SlideshowActivity;->mLaunchMode:I

    goto :goto_2
.end method

.method private handleFlick(IIII)V
    .locals 10
    .parameter "startTouchX"
    .parameter "endTouchX"
    .parameter "startTouchY"
    .parameter "endTouchY"

    .prologue
    const/16 v9, 0x14

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    .line 1697
    const/4 v0, 0x0

    .line 1698
    .local v0, bFlicktoNext:Z
    sub-int v1, p1, p2

    .line 1699
    .local v1, movedX:I
    sub-int v2, p3, p4

    .line 1701
    .local v2, movedY:I
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v5, p1, p3}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isInVisibleRect(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1763
    :cond_0
    :goto_0
    return-void

    .line 1709
    :cond_1
    const/4 v3, 0x0

    .line 1711
    .local v3, useFlickPage:Z
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0x96

    if-le v5, v6, :cond_5

    .line 1712
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    .line 1713
    if-gez v1, :cond_3

    .line 1714
    if-eqz v3, :cond_2

    .line 1715
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->doPrevPage()V

    .line 1718
    :cond_2
    const/4 v0, 0x1

    .line 1734
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1735
    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    if-eqz v4, :cond_0

    .line 1736
    if-eqz v0, :cond_7

    .line 1737
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->doPrevPage()V

    goto :goto_0

    .line 1720
    :cond_3
    if-eqz v3, :cond_4

    .line 1721
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->doNextPage()V

    .line 1724
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1726
    :cond_5
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v9, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v9, :cond_0

    .line 1727
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v5}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isShowing()Z

    move-result v5

    if-nez v5, :cond_6

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 1739
    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->doNextPage()V

    goto :goto_0

    .line 1743
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsViewer()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1744
    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    if-eqz v4, :cond_9

    .line 1745
    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    cmp-long v4, v4, v7

    if-lez v4, :cond_0

    .line 1746
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->moveSmsView(Z)V

    goto :goto_0

    .line 1749
    :cond_9
    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    cmp-long v4, v4, v7

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mThreadId:J

    cmp-long v4, v4, v7

    if-lez v4, :cond_0

    .line 1750
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->moveSmsView(Z)V

    goto :goto_0

    .line 1754
    :cond_a
    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    if-eqz v4, :cond_0

    .line 1755
    if-eqz v0, :cond_b

    .line 1756
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->doPrevPage()V

    goto :goto_0

    .line 1758
    :cond_b
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->doNextPage()V

    goto/16 :goto_0
.end method

.method private handleFlick2(IIIIJ)V
    .locals 6
    .parameter "startTouchX"
    .parameter "endTouchX"
    .parameter "startTouchY"
    .parameter "endTouchY"
    .parameter "eventTime"

    .prologue
    .line 1528
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v3, p1, p3}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isInVisibleRect(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1556
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1536
    :cond_1
    sub-int v0, p2, p1

    .line 1537
    .local v0, dx:I
    sub-int v1, p4, p3

    .line 1539
    .local v1, dy:I
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->getFlickType(II)I

    move-result v2

    .line 1540
    .local v2, flickType:I
    const-string v3, "Mms/SlideshowActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flick type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1544
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->toggleMediaController()V

    goto :goto_0

    .line 1546
    :pswitch_2
    iget-wide v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mBlockFlickUntilMillis:J

    cmp-long v3, p5, v3

    if-lez v3, :cond_0

    .line 1547
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/SlideshowActivity;->moveToOtherMessage(Lcom/android/mms/ui/MessageItem;Z)V

    goto :goto_0

    .line 1551
    :pswitch_3
    iget-wide v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mBlockFlickUntilMillis:J

    cmp-long v3, p5, v3

    if-lez v3, :cond_0

    .line 1552
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/SlideshowActivity;->moveToOtherMessage(Lcom/android/mms/ui/MessageItem;Z)V

    goto :goto_0

    .line 1542
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private inflateTitleHeader()V
    .locals 3

    .prologue
    .line 785
    const v2, 0x7f0b0205

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 786
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    .line 792
    :goto_0
    const v2, 0x7f0b0207

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 793
    .local v1, subject:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/SlideshowActivity;->RIGHTPADDING:I

    .line 795
    return-void

    .line 789
    .end local v1           #subject:Landroid/widget/TextView;
    :cond_0
    const v2, 0x7f0b02ad

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    goto :goto_0
.end method

.method private initActionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2331
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2333
    .local v0, bar:Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 2334
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f04

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 2335
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 2336
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 2337
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    .line 2338
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    .line 2342
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2343
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2344
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 2345
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$18;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideshowActivity$18;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2376
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$19;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideshowActivity$19;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2382
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 2384
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->UpdateActionBarTitleWithNumber()V

    .line 2385
    return-void
.end method

.method private initMediaController()V
    .locals 2

    .prologue
    .line 810
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "initMediaController()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    .line 817
    :goto_0
    return-void

    .line 814
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    .line 815
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setMediaPlayer(Lcom/android/mms/ui/MmsPlayerControllerMulti$MediaPlayerControl;)V

    .line 816
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mTopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setAnchorView(Landroid/widget/RelativeLayout;)V

    goto :goto_0
.end method

.method private isExitCase()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 882
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->isMessageExist(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 883
    :cond_0
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "mMsgUri not exist!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :goto_0
    return v0

    .line 887
    :cond_1
    iget-wide v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-wide v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/SlideshowActivity;->isMessageExist(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 889
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "mMsgId not exist!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 893
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMessageExist(J)Z
    .locals 2
    .parameter "msgId"

    .prologue
    .line 897
    const/4 v0, 0x0

    .line 898
    .local v0, msgUri:Landroid/net/Uri;
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    if-eqz v1, :cond_0

    .line 899
    sget-object v1, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 902
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->isMessageExist(Landroid/net/Uri;)Z

    move-result v1

    return v1

    .line 901
    :cond_0
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private isMessageExist(Landroid/net/Uri;)Z
    .locals 9
    .parameter "msgUri"

    .prologue
    const/4 v2, 0x0

    .line 906
    const/4 v7, 0x0

    .line 907
    .local v7, result:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 909
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v8, v7

    .line 921
    .end local v7           #result:Z
    .local v8, result:I
    :goto_0
    return v8

    .line 915
    .end local v8           #result:I
    .restart local v7       #result:Z
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 917
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 920
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMessageExist(),return="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 921
    .restart local v8       #result:I
    goto :goto_0

    .line 917
    .end local v8           #result:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private launchMessageViewer(ZJLjava/lang/String;)V
    .locals 5
    .parameter "newer"
    .parameter "msgId"
    .parameter "type"

    .prologue
    .line 1661
    const-string v2, "Mms/SlideshowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launch id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    const/4 v0, 0x0

    .line 1664
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "sms"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1665
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1673
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_0
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1674
    const-string v2, "msgId"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1675
    const-string v2, "thread_id"

    iget-wide v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mThreadId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1676
    const-string v2, "isSpam"

    iget-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1677
    const-string v2, "requestLockedMessageView"

    iget-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mRequestLockedMessageView:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1678
    const-string v2, "requestReservedMessageView"

    iget-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mRequestReservedMessageView:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1680
    move-object v1, v0

    .line 1681
    .local v1, runIntent:Landroid/content/Intent;
    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$9;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/mms/ui/SlideshowActivity$9;-><init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/content/Intent;Z)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/SlideshowActivity;->markAsRead(Ljava/lang/Runnable;Z)V

    .line 1693
    .end local v1           #runIntent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 1666
    :cond_0
    const-string v2, "mms"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1667
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 1669
    :cond_1
    const-string v2, "Mms/SlideshowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not supported for detail viewer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private makeModelList()V
    .locals 6

    .prologue
    .line 739
    iget-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    .line 740
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 741
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 743
    .local v0, size:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 744
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 745
    new-instance v1, Lcom/android/mms/model/SlideModel;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v1, v2}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 746
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 752
    .end local v0           #size:I
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    :goto_0
    return-void

    .line 748
    .restart local v0       #size:I
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    goto :goto_0
.end method

.method private moveSmsView(Z)V
    .locals 19
    .parameter "bFlicktoNext"

    .prologue
    .line 1766
    const/4 v12, 0x0

    .line 1767
    .local v12, msgCount:I
    const/16 v17, 0x0

    .line 1768
    .local v17, notiIndMmsCount:I
    const/4 v9, 0x0

    .line 1769
    .local v9, curPos:I
    const/16 v16, 0x0

    .line 1775
    .local v16, nextPos:I
    const/4 v8, 0x0

    .line 1776
    .local v8, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    if-eqz v2, :cond_1

    .line 1777
    sget-object v3, Lcom/android/mms/spam/SpamFilter;->SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    .line 1778
    .local v3, contentThreadUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1791
    :goto_0
    if-nez v8, :cond_4

    .line 1918
    :cond_0
    :goto_1
    return-void

    .line 1779
    .end local v3           #contentThreadUri:Landroid/net/Uri;
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SlideshowActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_2

    .line 1780
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1781
    .restart local v3       #contentThreadUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "locked=1 AND hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 1782
    .end local v3           #contentThreadUri:Landroid/net/Uri;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SlideshowActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_3

    .line 1783
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1784
    .restart local v3       #contentThreadUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "reserved=1 AND hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 1787
    .end local v3           #contentThreadUri:Landroid/net/Uri;
    :cond_3
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SlideshowActivity;->mThreadId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1788
    .restart local v3       #contentThreadUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 1794
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 1796
    const/4 v2, 0x1

    if-gt v12, v2, :cond_5

    .line 1797
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1801
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1802
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_6

    if-ge v9, v12, :cond_6

    .line 1803
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_7

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1812
    :cond_6
    move/from16 v16, v9

    .line 1814
    if-eqz p1, :cond_9

    .line 1815
    if-nez v9, :cond_8

    .line 1816
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    .line 1817
    add-int/lit8 v16, v12, -0x1

    .line 1822
    :goto_3
    const v18, 0x7f050005

    .line 1823
    .local v18, startSlideAnim:I
    const v10, 0x7f050006

    .line 1836
    .local v10, endSlideAnim:I
    :goto_4
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1837
    .local v15, nextMsgType:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1843
    .local v13, nextMsgId:J
    :goto_5
    const-string v2, "mms"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1844
    const/16 v2, 0xf

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v4, 0x82

    if-ne v2, v4, :cond_e

    .line 1845
    if-eqz p1, :cond_c

    .line 1846
    if-nez v16, :cond_b

    .line 1847
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    .line 1848
    add-int/lit8 v16, v12, -0x1

    .line 1862
    :goto_6
    add-int/lit8 v17, v17, 0x1

    .line 1863
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1864
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    goto :goto_5

    .line 1806
    .end local v10           #endSlideAnim:I
    .end local v13           #nextMsgId:J
    .end local v15           #nextMsgType:Ljava/lang/String;
    .end local v18           #startSlideAnim:I
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 1807
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1819
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1820
    add-int/lit8 v16, v16, -0x1

    goto :goto_3

    .line 1825
    :cond_9
    add-int/lit8 v2, v12, -0x1

    if-ne v9, v2, :cond_a

    .line 1826
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1827
    const/16 v16, 0x0

    .line 1832
    :goto_7
    const v18, 0x7f050003

    .line 1833
    .restart local v18       #startSlideAnim:I
    const v10, 0x7f050004

    .restart local v10       #endSlideAnim:I
    goto :goto_4

    .line 1829
    .end local v10           #endSlideAnim:I
    .end local v18           #startSlideAnim:I
    :cond_a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 1830
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 1850
    .restart local v10       #endSlideAnim:I
    .restart local v13       #nextMsgId:J
    .restart local v15       #nextMsgType:Ljava/lang/String;
    .restart local v18       #startSlideAnim:I
    :cond_b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1851
    add-int/lit8 v16, v16, -0x1

    goto :goto_6

    .line 1854
    :cond_c
    add-int/lit8 v2, v12, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_d

    .line 1855
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1856
    const/16 v16, 0x0

    goto :goto_6

    .line 1858
    :cond_d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 1859
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 1869
    :cond_e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1871
    add-int/lit8 v2, v12, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_0

    .line 1875
    const/4 v11, 0x0

    .line 1876
    .local v11, intent:Landroid/content/Intent;
    const-string v2, "sms"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1877
    new-instance v11, Landroid/content/Intent;

    .end local v11           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1878
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v11, v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1879
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SlideshowActivity;->mThreadId:J

    invoke-virtual {v11, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1880
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    if-eqz v2, :cond_f

    .line 1881
    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1884
    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SlideshowActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_10

    .line 1885
    const-string v2, "requestLockedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1899
    :cond_10
    :goto_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SlideshowActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_11

    .line 1900
    const-string v2, "requestReservedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1903
    :cond_11
    move/from16 v0, v16

    if-ne v0, v9, :cond_14

    .line 1904
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/SlideshowActivity;->startActivity(Landroid/content/Intent;)V

    .line 1905
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 1906
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/android/mms/ui/SlideshowActivity;->overridePendingTransition(II)V

    goto/16 :goto_1

    .line 1887
    :cond_12
    const-string v2, "mms"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1888
    new-instance v11, Landroid/content/Intent;

    .end local v11           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1889
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v11, v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1890
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SlideshowActivity;->mThreadId:J

    invoke-virtual {v11, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1891
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    if-eqz v2, :cond_13

    .line 1892
    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1894
    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SlideshowActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_10

    .line 1895
    const-string v2, "requestLockedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_8

    .line 1908
    :cond_14
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/mms/ui/SlideshowActivity;->mIntent:Landroid/content/Intent;

    .line 1909
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/SlideshowActivity;->mStartSlideAnim:I

    .line 1910
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/mms/ui/SlideshowActivity;->mEndSlideAnim:I

    .line 1911
    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mms/ui/SlideshowActivity$10;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/mms/ui/SlideshowActivity;->markAsRead(Ljava/lang/Runnable;Z)V

    goto/16 :goto_1
.end method

.method private moveToOtherMessage(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 5
    .parameter "msgItem"
    .parameter "newer"

    .prologue
    const/4 v4, 0x1

    .line 1559
    const-string v1, "Mms/SlideshowActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveToOtherMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    if-nez p1, :cond_1

    .line 1562
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "null message item"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    :cond_0
    :goto_0
    return-void

    .line 1566
    :cond_1
    const/4 v0, 0x0

    .line 1571
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x4

    :try_start_0
    invoke-direct {p0, p2, v1}, Lcom/android/mms/ui/SlideshowActivity;->queryMessageOf(ZI)Landroid/database/Cursor;

    move-result-object v0

    .line 1572
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gt v1, v4, :cond_3

    .line 1573
    :cond_2
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "no other message"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1594
    if-eqz v0, :cond_0

    .line 1595
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1578
    :cond_3
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1579
    iget-wide v1, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1581
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "found current messaage"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1587
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v1, v2, v3}, Lcom/android/mms/ui/SlideshowActivity;->launchMessageViewer(ZJLjava/lang/String;)V

    .line 1594
    :cond_5
    :goto_2
    if-eqz v0, :cond_0

    goto :goto_1

    .line 1589
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1590
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v1, v2, v3}, Lcom/android/mms/ui/SlideshowActivity;->launchMessageViewer(ZJLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1594
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_7

    .line 1595
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1594
    :cond_7
    throw v1
.end method

.method private queryMessageOf(ZI)Landroid/database/Cursor;
    .locals 8
    .parameter "newer"
    .parameter "viewerMode"

    .prologue
    .line 1627
    const/4 v3, 0x0

    .line 1628
    .local v3, where:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v5, "normalized_date ASC, _id ASC"

    .line 1631
    .local v5, orderBy:Ljava/lang/String;
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 1654
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mode not supported"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1628
    .end local v5           #orderBy:Ljava/lang/String;
    :cond_0
    const-string v5, "normalized_date DESC, _id DESC"

    goto :goto_0

    .line 1633
    .restart local v5       #orderBy:Ljava/lang/String;
    :pswitch_0
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mThreadId:J

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1634
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "hidden = 0"

    .line 1657
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/ui/SlideshowActivity;->NEXT_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1637
    .end local v1           #uri:Landroid/net/Uri;
    :pswitch_1
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "complete-conversations"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1638
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v3, "locked = 1 AND hidden = 0"

    .line 1639
    goto :goto_1

    .line 1641
    .end local v1           #uri:Landroid/net/Uri;
    :pswitch_2
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "complete-conversations"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1642
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v3, "reserved = 1 AND hidden = 0"

    .line 1643
    goto :goto_1

    .line 1645
    .end local v1           #uri:Landroid/net/Uri;
    :pswitch_3
    sget-object v1, Lcom/android/mms/spam/SpamFilter;->SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    .line 1646
    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 1648
    .end local v1           #uri:Landroid/net/Uri;
    :pswitch_4
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mThreadId:J

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1649
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v3, "(transport_type LIKE \'mms\' AND m_type != 130) AND hidden = 0"

    .line 1652
    goto :goto_1

    .line 1631
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private registerCallStateListener()V
    .locals 3

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 601
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 607
    :cond_1
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 2220
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "releaseWakeLock()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2222
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2224
    :cond_0
    return-void
.end method

.method private removeEventListenerOfSmilDoc()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 873
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDocListenerAdded:Z

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 876
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "removeEventListenerOfSmilDoc() called.. "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :cond_0
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDocListenerAdded:Z

    .line 879
    return-void
.end method

.method private removeRecipientsListener()V
    .locals 0

    .prologue
    .line 473
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 474
    return-void
.end method

.method private setAudioFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1396
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideView;->hasSound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return-void

    .line 1400
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 1401
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1404
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsAudioFocus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1407
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsAudioFocus:Z

    .line 1408
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "setAudioFocus"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMusicMute(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 611
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 616
    :cond_1
    return-void
.end method

.method private setSubjectToView(Lcom/android/mms/ui/SlideView;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 757
    const/4 v1, 0x0

    .line 761
    .local v1, subject:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/mms/model/SlideshowModel;->getSubject(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 764
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 765
    if-eqz v1, :cond_1

    .line 766
    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>MMSSUBJECT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</GATE-M>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 773
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 774
    invoke-virtual {p1, v1}, Lcom/android/mms/ui/SlideView;->setSlideViewSubject(Ljava/lang/String;)V

    .line 782
    :goto_1
    return-void

    .line 768
    :cond_1
    const-string v2, "GATE"

    const-string v3, "<GATE-M>MMSSUBJECT:NULL</GATE-M>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/SlideshowActivity"

    const-string v3, "Cannot display the slide title."

    invoke-static {v2, v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 776
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :cond_2
    :try_start_1
    invoke-virtual {p1, v1}, Lcom/android/mms/ui/SlideView;->setSlideViewSubject(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private showDrmGetRightsPopup(Lcom/android/mms/model/SlideshowModel;Ljava/lang/Runnable;)V
    .locals 12
    .parameter "slides"
    .parameter "callback"

    .prologue
    .line 1946
    const/4 v3, 0x0

    .line 1947
    .local v3, hasDrmMedia:Z
    const/4 v4, 0x1

    .line 1948
    .local v4, hasRight:Z
    const/4 v5, 0x0

    .line 1949
    .local v5, i:I
    iget v10, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    new-array v2, v10, [Ljava/lang/String;

    .line 1950
    .local v2, filePaths:[Ljava/lang/String;
    iget v10, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    new-array v1, v10, [Ljava/lang/String;

    .line 1952
    .local v1, fileNames:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/model/SlideModel;

    .line 1953
    .local v9, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/model/MediaModel;

    .line 1954
    .local v8, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1955
    const/4 v3, 0x1

    .line 1956
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->hasDrmRight()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1957
    const/4 v4, 0x0

    .line 1958
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getDrmFilePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v5

    .line 1959
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getDrmFileName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v5

    .line 1960
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1966
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #media:Lcom/android/mms/model/MediaModel;
    .end local v9           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    if-eqz v3, :cond_3

    if-nez v4, :cond_3

    .line 1969
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1970
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0c0130

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1971
    const v10, 0x104000a

    new-instance v11, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;

    invoke-direct {v11, p0, v2, v1, p2}, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;-><init>(Lcom/android/mms/ui/SlideshowActivity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1973
    const v10, 0x1040009

    new-instance v11, Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;

    invoke-direct {v11, p0, p2}, Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;-><init>(Lcom/android/mms/ui/SlideshowActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1974
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1976
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    :cond_3
    return-void
.end method

.method private showMediaController(Z)V
    .locals 1
    .parameter "bShow"

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_1

    .line 2313
    if-eqz p1, :cond_2

    .line 2314
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSelectTextLaunch:Z

    if-nez v0, :cond_0

    .line 2315
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show()V

    .line 2317
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSelectTextLaunch:Z

    .line 2322
    :cond_1
    :goto_0
    return-void

    .line 2319
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->hide()V

    goto :goto_0
.end method

.method private showToastUnablePlay()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideView;->hasSound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0367

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 301
    :cond_0
    return-void
.end method

.method private toggleMediaController()V
    .locals 2

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-nez v0, :cond_0

    .line 2304
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "MediaController null for toggle"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    :goto_0
    return-void

    .line 2308
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private touchListener(IIIIJ)V
    .locals 1
    .parameter "startTouchX"
    .parameter "endTouchX"
    .parameter "startTouchY"
    .parameter "endTouchY"
    .parameter "eventTime"

    .prologue
    .line 1519
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1520
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/SlideshowActivity;->handleFlick(IIII)V

    .line 1524
    :goto_0
    return-void

    .line 1522
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/android/mms/ui/SlideshowActivity;->handleFlick2(IIIIJ)V

    goto :goto_0
.end method

.method private unregisterCallstateListener()V
    .locals 3

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 2326
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2328
    :cond_0
    return-void
.end method

.method private updateActionBarTextSize()V
    .locals 8

    .prologue
    const/high16 v7, 0x4080

    const/4 v3, 0x1

    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 2489
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2511
    :cond_0
    :goto_0
    return-void

    .line 2493
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2497
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2498
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2499
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v2, 0x4188

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2500
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v2, 0x4140

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2502
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v2

    invoke-static {v6}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2503
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v2

    const/high16 v3, 0x3f80

    invoke-static {v3}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v3

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 2505
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v2, 0x4198

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2506
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v2, 0x4160

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2508
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v2

    invoke-static {v6}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v3

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2509
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v2

    invoke-static {v6}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v3

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private updateActionBarTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 2514
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2516
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 2517
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2518
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2520
    :cond_0
    return-void
.end method

.method private updateControlButtons()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2228
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->getTotSlideNumber()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 2230
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v2, :cond_0

    .line 2231
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->getLocation()I

    move-result v0

    .line 2232
    .local v0, curLocation:I
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageOptions;->getCurrentSlideLocation()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 2233
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v3}, Lcom/android/mms/ui/SlideshowPresenter;->getLocation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageOptions;->setCurrentSlideLocation(I)V

    .line 2234
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->invalidateOptionsMenu()V

    .line 2238
    .end local v0           #curLocation:I
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->getCurSlideIndex()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 2239
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->getCurSlideIndex()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v3}, Lcom/android/mms/ui/SlideshowPresenter;->getTotSlideNumber()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isStop()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2240
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setStatePrevButton(Z)V

    .line 2248
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->getCurSlideIndex()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v3}, Lcom/android/mms/ui/SlideshowPresenter;->getTotSlideNumber()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 2249
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setStateNextButton(Z)V

    .line 2260
    :cond_1
    :goto_1
    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$17;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideshowActivity$17;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 2268
    .local v1, notification:Ljava/lang/Runnable;
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mRefreshPlayButtons:Z

    if-eqz v2, :cond_2

    .line 2269
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2271
    :cond_2
    return-void

    .line 2242
    .end local v1           #notification:Ljava/lang/Runnable;
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setStatePrevButton(Z)V

    goto :goto_0

    .line 2245
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setStatePrevButton(Z)V

    goto :goto_0

    .line 2251
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isStop()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isPlayed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2252
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setStateNextButton(Z)V

    goto :goto_1

    .line 2255
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setStateNextButton(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected changeFontSize(Z)V
    .locals 8
    .parameter "toBigger"

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1022
    .local v4, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_font_size_by_volume_key_font_size"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1024
    .local v3, idxMsgPreferFontSize:I
    if-eqz p1, :cond_1

    .line 1025
    add-int/lit8 v3, v3, 0x1

    .line 1030
    :goto_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1031
    .local v2, editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1032
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1034
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v5}, Lcom/android/mms/ui/SlideView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 1035
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v5}, Lcom/android/mms/ui/SlideView;->adjustSlideBodyDisplay()V

    .line 1037
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1039
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_2

    .line 1049
    :goto_1
    return-void

    .line 1027
    .end local v0           #audioService:Landroid/media/IAudioService;
    .end local v2           #editprefs:Landroid/content/SharedPreferences$Editor;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1044
    .restart local v0       #audioService:Landroid/media/IAudioService;
    .restart local v2       #editprefs:Landroid/content/SharedPreferences$Editor;
    :cond_2
    :try_start_0
    const-string v5, "Mms/SlideshowActivity"

    const-string v6, "KeyguardGetAudioService.dismissVolumePanel() run"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    invoke-interface {v0}, Landroid/media/IAudioService;->dismissVolumePanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1046
    :catch_0
    move-exception v1

    .line 1047
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "Mms/SlideshowActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyguardGetAudioService.dismissVolumePanel() threw RemoteException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2621
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2624
    const/4 v0, 0x1

    .line 2626
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    .line 821
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 823
    .local v7, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/high16 v1, 0x4312

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 824
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 845
    :goto_0
    return v0

    .line 826
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 845
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 828
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowActivity;->startX:I

    .line 829
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowActivity;->startY:I

    goto :goto_1

    .line 833
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowActivity;->endX:I

    .line 834
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowActivity;->endY:I

    .line 836
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-nez v0, :cond_1

    .line 838
    :cond_2
    iget v1, p0, Lcom/android/mms/ui/SlideshowActivity;->startX:I

    iget v2, p0, Lcom/android/mms/ui/SlideshowActivity;->endX:I

    iget v3, p0, Lcom/android/mms/ui/SlideshowActivity;->startY:I

    iget v4, p0, Lcom/android/mms/ui/SlideshowActivity;->endY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/SlideshowActivity;->touchListener(IIIIJ)V

    goto :goto_1

    .line 826
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 8
    .parameter "contactList"

    .prologue
    const/4 v7, 0x1

    .line 2631
    const-string v4, ""

    .line 2632
    .local v4, recipient:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 2633
    .local v3, paint:Landroid/graphics/Paint;
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x28

    .line 2638
    .local v0, actionbarWidth:I
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 2639
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    .line 2640
    .local v2, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 2642
    .local v1, addr:Ljava/lang/String;
    const-string v5, "CBmessages"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2643
    const v5, 0x7f0c00fb

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SlideshowActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2657
    .end local v1           #addr:Ljava/lang/String;
    .end local v2           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    :goto_0
    return-object v4

    .line 2644
    .restart local v1       #addr:Ljava/lang/String;
    .restart local v2       #contact:Lcom/android/mms/data/Contact;
    :cond_1
    const-string v5, "Pushmessage"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2645
    const v5, 0x7f0c0161

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SlideshowActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2646
    :cond_2
    const-string v5, "#CMAS#"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2647
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SlideshowActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2649
    :cond_3
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2651
    .end local v1           #addr:Ljava/lang/String;
    .end local v2           #contact:Lcom/android/mms/data/Contact;
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-le v5, v7, :cond_0

    .line 2653
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-le v5, v7, :cond_0

    .line 2654
    const-string v5, ", "

    invoke-virtual {p1, v5}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2573
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    .line 2574
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2577
    :goto_0
    return-object v0

    .line 2576
    :cond_0
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "mContactList is null!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2577
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 2567
    :goto_0
    return-object v0

    .line 2566
    :cond_0
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "mRecipients is null!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 3
    .parameter "evt"

    .prologue
    .line 1359
    move-object v0, p1

    .line 1360
    .local v0, event:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/SlideshowActivity$8;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/events/Event;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1391
    return-void
.end method

.method public hasName()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2582
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v1, :cond_0

    .line 2583
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->hasName()Z

    move-result v0

    .line 2586
    :goto_0
    return v0

    .line 2585
    :cond_0
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "mContactList is null!!!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hideSipForDirectCall()V
    .locals 0

    .prologue
    .line 2617
    return-void
.end method

.method public isAvailableDirectCall()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2592
    invoke-static {p0}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2601
    :cond_0
    :goto_0
    return v0

    .line 2596
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2601
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized markAsRead(Ljava/lang/Runnable;Z)V
    .locals 11
    .parameter "callback"
    .parameter "isExit"

    .prologue
    const/4 v10, 0x1

    .line 2037
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "markAsRead()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_1

    .line 2040
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2041
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2042
    sget-object v0, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 2043
    .local v7, SpammsgUri:Landroid/net/Uri;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2044
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2046
    if-eqz p2, :cond_0

    .line 2047
    const-string v0, "seen"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2050
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2051
    if-eqz p2, :cond_2

    .line 2052
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    const/16 v4, 0x80

    new-instance v5, Lcom/android/mms/ui/SlideshowActivity$12;

    invoke-direct {v5, p0, v7, v9, p1}, Lcom/android/mms/ui/SlideshowActivity$12;-><init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1, v4, v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2161
    .end local v7           #SpammsgUri:Landroid/net/Uri;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 2061
    .restart local v7       #SpammsgUri:Landroid/net/Uri;
    .restart local v9       #values:Landroid/content/ContentValues;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v7, v9, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2062
    const-wide/16 v0, -0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 2063
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2037
    .end local v7           #SpammsgUri:Landroid/net/Uri;
    .end local v9           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2066
    .restart local v7       #SpammsgUri:Landroid/net/Uri;
    .restart local v9       #values:Landroid/content/ContentValues;
    :cond_3
    if-eqz p2, :cond_4

    .line 2067
    :try_start_2
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    const/16 v4, 0x80

    new-instance v5, Lcom/android/mms/ui/SlideshowActivity$13;

    invoke-direct {v5, p0, v7, v9, p1}, Lcom/android/mms/ui/SlideshowActivity$13;-><init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1, v4, v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportDataOne(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto :goto_0

    .line 2076
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v7, v9, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2077
    const-wide/16 v0, -0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 2078
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2082
    .end local v7           #SpammsgUri:Landroid/net/Uri;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_5
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2083
    .local v2, msgUri:Landroid/net/Uri;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2084
    .restart local v9       #values:Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 2085
    .local v8, cursor:Landroid/database/Cursor;
    const-string v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2086
    if-eqz p2, :cond_6

    .line 2087
    const-string v0, "seen"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2090
    :cond_6
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "read"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "seen"

    aput-object v1, v3, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2097
    .local v3, PROJECTION_READ_SEEN:[Ljava/lang/String;
    :try_start_3
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2099
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_8

    .line 2100
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2102
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_8

    .line 2103
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v10, :cond_7

    .line 2104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mUpdateRead:Z

    .line 2105
    :cond_7
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v10, :cond_8

    .line 2106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mUpdateSeen:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2110
    :cond_8
    if-eqz v8, :cond_9

    .line 2111
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2115
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2116
    if-eqz p2, :cond_b

    .line 2117
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    const/16 v4, 0x80

    new-instance v5, Lcom/android/mms/ui/SlideshowActivity$14;

    invoke-direct {v5, p0, v2, v9, p1}, Lcom/android/mms/ui/SlideshowActivity$14;-><init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1, v4, v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2110
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_a

    .line 2111
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2110
    :cond_a
    throw v0

    .line 2128
    :cond_b
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v9, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2129
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mUpdateRead:Z

    if-eqz v0, :cond_c

    .line 2130
    const-wide/16 v0, -0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 2131
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mUpdateRead:Z

    .line 2132
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 2135
    :cond_d
    if-eqz p2, :cond_e

    .line 2136
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    const/16 v4, 0x80

    new-instance v5, Lcom/android/mms/ui/SlideshowActivity$15;

    invoke-direct {v5, p0, v2, v9, p1}, Lcom/android/mms/ui/SlideshowActivity$15;-><init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1, v4, v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportDataOne(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2148
    :cond_e
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v9, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2149
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mUpdateRead:Z

    if-eqz v0, :cond_f

    .line 2150
    const-wide/16 v0, -0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 2152
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mUpdateRead:Z

    .line 2153
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 2158
    .end local v2           #msgUri:Landroid/net/Uri;
    .end local v3           #PROJECTION_READ_SEEN:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_10
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public onActionbarTitleSizeChanged()V
    .locals 0

    .prologue
    .line 2661
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->UpdateActionBarTitleWithNumber()V

    .line 2662
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1492
    const-string v2, "Mms/SlideshowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult(),resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    const/16 v2, 0x1d

    if-ne p1, v2, :cond_1

    .line 1501
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 1502
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1504
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1505
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1508
    :cond_0
    if-eqz v0, :cond_1

    .line 1509
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 1510
    .local v1, contact:Lcom/android/mms/data/Contact;
    if-eqz v1, :cond_1

    .line 1511
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->reload()V

    .line 1516
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2276
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2278
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_3

    .line 2279
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> SlideShowActivity -- OnConfiguration Changed to LANDSCAPE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    :cond_0
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v4, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_2

    .line 2289
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->isVideoCurSlideModel()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2291
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->setVideoPausedImage()V

    .line 2292
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->moveToCurrentPosition()V

    .line 2297
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->updateActionBarTextSize()V

    .line 2298
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V

    .line 2299
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->invalidateOptionsMenu()V

    .line 2300
    return-void

    .line 2281
    :cond_3
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    .line 2282
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> SlideShowActivity -- OnConfiguration Changed to PORTRAIT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    .line 305
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 310
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->requestWindowFeature(I)Z

    .line 311
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    .line 313
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->registerCallStateListener()V

    .line 315
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 317
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->getLCDWakeLock()V

    .line 318
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->getCallState()V

    .line 324
    const v0, 0x7f04007f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->setContentView(I)V

    .line 325
    const v0, 0x7f0b027e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mTopLayout:Landroid/widget/RelativeLayout;

    .line 327
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 329
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->getMessageInformationFromIntent()V

    .line 331
    invoke-static {v9}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    .line 333
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    const-string v3, "mms"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/mms/ui/SlideshowActivity;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 335
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 420
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 342
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 343
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    const-string v6, "mms"

    const/4 v7, 0x2

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    .line 349
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->updateFailedFlag()V

    .line 352
    :cond_1
    const v0, 0x7f0b027f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    .line 355
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->createModel()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    if-eqz v0, :cond_2

    .line 363
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->showToastUnablePlay()V

    .line 364
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->setMusicMute(Z)V

    .line 368
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->inflateTitleHeader()V

    .line 369
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->makeModelList()V

    .line 372
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->setSubjectToView(Lcom/android/mms/ui/SlideView;)V

    .line 374
    const v0, 0x7f0c0046

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->updateActionBarTitle(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->createPresenter(Lcom/android/mms/ui/SlideView;)V

    .line 377
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->initMediaController()V

    .line 379
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->getHasDRMMediaNRightInSlide(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 380
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideshowActivity$4;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->showDrmGetRightsPopup(Lcom/android/mms/model/SlideshowModel;Ljava/lang/Runnable;)V

    .line 390
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_3

    .line 391
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    iget-wide v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    iget-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/SlideshowPresenter;->findAttachmentList(JZ)Ljava/util/ArrayList;

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_4

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    .line 396
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "mDirectCallingManager remove"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_5

    .line 400
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {p0, v0, v1, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    .line 401
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 402
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v1, v9}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->createDirectCallingManager()V

    .line 408
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->releaseMenuBlockDelayed()V

    .line 410
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$5;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-virtual {p0, v0, v9}, Lcom/android/mms/ui/SlideshowActivity;->markAsRead(Ljava/lang/Runnable;Z)V

    .line 417
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x320

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mBlockFlickUntilMillis:J

    .line 419
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 345
    :cond_6
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    const-string v6, "mms"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto/16 :goto_1

    .line 347
    :cond_7
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgId:J

    const-string v6, "mms"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto/16 :goto_1

    .line 356
    :catch_0
    move-exception v8

    .line 357
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "Cannot present the slide show."

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto/16 :goto_0

    .line 387
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 555
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 558
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailDialog()V

    .line 559
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDeleteDialog()V

    .line 561
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->removeEventListenerOfSmilDoc()V

    .line 562
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 563
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->stopPlayer()V

    .line 566
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->unregisterCallstateListener()V

    .line 568
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 571
    :cond_1
    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    .line 572
    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    .line 574
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 576
    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 579
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 580
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    .line 582
    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 585
    :cond_3
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 939
    const-string v2, "Mms/SlideshowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown(),keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    sparse-switch p1, :sswitch_data_0

    .line 1011
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    .line 1012
    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V

    .line 1016
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    .line 943
    :sswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-lt v2, v1, :cond_1

    .line 945
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-eq v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 946
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 947
    goto :goto_1

    .line 951
    :sswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 952
    goto :goto_1

    .line 960
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v0, v1

    .line 961
    goto :goto_1

    .line 963
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsBlockMenu:Z

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    .line 964
    :cond_3
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    if-nez v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->hide()V

    .line 969
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->pausePlayer()V

    goto :goto_0

    .line 975
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 977
    const/16 v2, 0xa9

    if-ne p1, v2, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v2

    const/16 v3, 0x222

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 978
    goto :goto_1

    .line 981
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    if-eqz v2, :cond_6

    .line 982
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideView;->isSoundMediaPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 986
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->changeFontSize(Z)V

    move v0, v1

    .line 987
    goto/16 :goto_1

    .line 993
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    const/16 v0, 0xa8

    if-ne p1, v0, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v0

    const/16 v2, 0x221

    if-eq v0, v2, :cond_7

    move v0, v1

    .line 996
    goto/16 :goto_1

    .line 999
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    if-eqz v0, :cond_8

    .line 1000
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideView;->isSoundMediaPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1005
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->changeFontSize(Z)V

    move v0, v1

    .line 1006
    goto/16 :goto_1

    .line 941
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x5 -> :sswitch_1
        0x13 -> :sswitch_2
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_6
        0x19 -> :sswitch_5
        0x52 -> :sswitch_4
        0x6f -> :sswitch_3
        0xa8 -> :sswitch_6
        0xa9 -> :sswitch_5
        0xf1 -> :sswitch_5
        0xf2 -> :sswitch_6
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1053
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "onKeyUp()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    sparse-switch p1, :sswitch_data_0

    .line 1094
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    .line 1060
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1063
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1064
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "exit Slideshow"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->exitSlideshowActivity()V

    goto :goto_1

    .line 1071
    :cond_2
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1072
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    if-eqz v1, :cond_1

    .line 1073
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideView;->isSoundMediaPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1082
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1083
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    if-eqz v1, :cond_1

    .line 1084
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideView;->isSoundMediaPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1055
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x6f -> :sswitch_0
        0xa8 -> :sswitch_2
        0xa9 -> :sswitch_1
        0xf1 -> :sswitch_1
        0xf2 -> :sswitch_2
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/16 v4, 0x1d

    const/4 v0, 0x1

    .line 1445
    const-string v1, "Mms/SlideshowActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOptionsItemSelected(),item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1454
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v1, :cond_4

    .line 1455
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mOptionItemSelected:Z

    .line 1457
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageOptions;->isPlayerStop(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1458
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->stopPlayer()V

    .line 1460
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_2

    .line 1461
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    .line 1462
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Lcom/android/mms/ui/SlideshowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1479
    :cond_1
    :goto_0
    return v0

    .line 1449
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto :goto_0

    .line 1466
    :cond_2
    const/4 v0, 0x0

    .line 1467
    .local v0, result:Z
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    if-eqz v1, :cond_3

    .line 1468
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageOptions;->SpamOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1470
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1471
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mRequestLockedMessageView:Z

    if-eqz v1, :cond_1

    .line 1472
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1473
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto :goto_0

    .line 1479
    .end local v0           #result:Z
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1447
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1484
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1485
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mOptionItemSelected:Z

    if-nez v0, :cond_0

    .line 1486
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V

    .line 1488
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mOptionItemSelected:Z

    .line 1489
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 515
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 519
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->pauseSmilPlayer()V

    .line 522
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mRefreshPlayButtons:Z

    .line 524
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->removeEventListenerOfSmilDoc()V

    .line 525
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 527
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DirectCallingManager;->pause(Landroid/content/Context;)V

    .line 531
    :cond_1
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1429
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1431
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v0, :cond_0

    .line 1435
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsSpam:Z

    if-eqz v0, :cond_1

    .line 1436
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createSpamOptionsMenu(Landroid/view/Menu;)V

    .line 1440
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1438
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 478
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 481
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 483
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->addEventListenerOfSmilDoc()V

    .line 489
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    .line 490
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mRefreshPlayButtons:Z

    .line 491
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->updateControlButtons()V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->isVideoCurSlideModel()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SlideshowPresenter;->getCurrentSlideTime(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->seek(I)V

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->releaseWakeLock()V

    .line 506
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_3

    .line 507
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DirectCallingManager;->resume(Landroid/content/Context;)V

    .line 510
    :cond_3
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 934
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 442
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 445
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowModel:Lcom/android/mms/model/SlideshowModel;

    if-nez v0, :cond_0

    .line 446
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onStart() : model is null. Cannot start activity."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 466
    :goto_0
    return-void

    .line 451
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->isExitCase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto :goto_0

    .line 456
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->addRecipientsListener()V

    .line 459
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    .line 463
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->drawTitle()V

    .line 465
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 535
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 538
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->removeRecipientsListener()V

    .line 540
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->stopSmilPlayer()V

    .line 544
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsOnCall:Z

    if-eqz v0, :cond_1

    .line 545
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->setMusicMute(Z)V

    .line 548
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 550
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 1
    .parameter "updated"

    .prologue
    .line 2554
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$22;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$22;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2559
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 591
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged(),hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 594
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilControllerStart:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 597
    :cond_0
    return-void
.end method

.method protected releaseMenuBlockDelayed()V
    .locals 4

    .prologue
    .line 423
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideshowActivity$6;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 430
    return-void
.end method

.method public viewContactDetailORList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2444
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-nez v3, :cond_1

    .line 2486
    :cond_0
    :goto_0
    return-void

    .line 2448
    :cond_1
    const-string v3, "com.android.contacts"

    invoke-static {p0, v3}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.android.jcontacts"

    invoke-static {p0, v3}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2453
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v4, :cond_5

    .line 2454
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 2456
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2457
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2460
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x2408

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2463
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactReplacePackageAs()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.jcontacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2464
    const-string v3, "com.android.jcontacts"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2466
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2468
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideshowActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2470
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 2471
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v2

    .line 2473
    .local v2, recipients:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2475
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/RecipientListActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2476
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "recipients"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2477
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2480
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2481
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "recipients"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2482
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
