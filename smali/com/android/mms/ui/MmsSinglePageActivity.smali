.class public Lcom/android/mms/ui/MmsSinglePageActivity;
.super Landroid/app/Activity;
.source "MmsSinglePageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/DirectCallActivityInterface;
.implements Lcom/android/mms/data/Contact$UpdateListener;


# static fields
.field private static final CREATE_MODEL_TOLERANCY:Z = true

.field private static DEBUG_LOG:Z = false

.field private static final FAST_PINCH_ZOOM:Z = true

.field public static final FOLDER_NAVI_COLUMN_MSG_ID:I = 0x1

.field public static final FOLDER_NAVI_COLUMN_MSG_TYPE:I = 0x0

.field public static final FOLDER_NAVI_COLUMN_THREAD_ID:I = 0x2

.field static final LISTEN_AUDIO:I = 0x3

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x1b

.field public static final MENU_PLAY_SLIDESHOW:I = 0x64

.field public static final REQUEST_CODE_ADD_CONTACT:I = 0x1d

.field public static final RESULT_FINISH_ALL:I = 0x2

.field public static final RESULT_NORMAL:I = 0x1

.field public static final SIZE_DOWN:I = 0x1

.field public static final SIZE_UP:I = 0x0

.field private static final START_ACTIVITY_SLIDE_PLAY:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Mms/MmsSinglePageActivity"

.field static final VIEW_IMAGE:I = 0x1

.field private static final VIEW_TITLE_ICON_DEFAULT_MARGIN_RIGHT:F = 16.0f

.field private static final VIEW_TITLE_ICON_WIDTH:F = 25.0f

.field static final VIEW_VIDEO:I = 0x2

.field public static bMultiTouch:Z

.field public static bMultiTouchFinished:Z

.field private static mIsSpam:Z

.field public static staticAttachment:Lcom/android/mms/model/AttachmentModel;

.field public static staticAudioModel:Lcom/android/mms/model/AudioModel;

.field public static staticClickUri:Landroid/net/Uri;

.field public static staticImageModel:Lcom/android/mms/model/ImageModel;

.field public static staticSlideIndex:I

.field public static staticVideoModel:Lcom/android/mms/model/VideoModel;


# instance fields
.field private DEBUG:Z

.field private final DEFAULT_FONT_SIZE_FOR_TEXT:F

.field private final MAX_TEXT_ZOOM_LEVEL:F

.field private final MIN_TEXT_ZOOM_LEVEL:F

.field private final POINTER_COUNT:I

.field private PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

.field private RIGHTPADDING:I

.field private final SCROLL_MODE_KEEP_LATEST_POS:I

.field private final SCROLL_MODE_TOP:I

.field private final ZOOM_STEP:F

.field private attachmentInfoArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private attachmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private bar:Landroid/app/ActionBar;

.field private currentEmailPage:I

.field private currentScrollY:I

.field private currentScrollY_changed:I

.field private endX:I

.field private endY:I

.field firstFingerX:F

.field firstFingerY:F

.field private firstVisibleTextViewId:I

.field private mActionbarNormalListLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListTitle:Landroid/widget/TextView;

.field private mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListTitleNumber:Landroid/widget/TextView;

.field private mAddContactIntent:Landroid/content/Intent;

.field private mAudioInfoView:Landroid/view/View;

.field mBlockFlickUntilMillis:J

.field private mCheckTextViewSelectable:Z

.field mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

.field private mContactList:Lcom/android/mms/data/ContactList;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

.field private mEmailView:Z

.field private mEndSlideAnim:I

.field mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mIsPreview:Z

.field private mMainLinearLayout:Landroid/widget/LinearLayout;

.field private mMainScrollView:Landroid/widget/ScrollView;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgOptions:Lcom/android/mms/ui/MessageOptions;

.field private mMsgUri:Landroid/net/Uri;

.field private final mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

.field private final mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

.field private mRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestLockedMessageView:Z

.field private mRequestReservedMessageView:Z

.field private mScrollHandler:Landroid/os/Handler;

.field private mSeen:I

.field private mSelectedText:Ljava/lang/String;

.field private mSelectedUrl:Ljava/lang/String;

.field private mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSlideShowModelLen:I

.field private mStartSlideAnim:I

.field private mSubject:Landroid/widget/TextView;

.field mTitleIcon01:Landroid/widget/ImageView;

.field mTitleIcon02:Landroid/widget/ImageView;

.field mTitleIcon03:Landroid/widget/ImageView;

.field private mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

.field misTalkbackOn:Z

.field private model:Lcom/android/mms/model/SlideshowModel;

.field private msgId:J

.field private scale1:F

.field private scrollY:F

.field secondFingerX_new:F

.field secondFingerX_old:F

.field secondFingerY_new:F

.field secondFingerY_old:F

.field private startX:I

.field private startY:I

.field private final stateChangeObserver:Landroid/database/ContentObserver;

.field private threadId:J

.field private totalEmailPages:I

.field private totalHeightY:I

.field private totalHeightY_changed:I

.field update_read:Z

.field update_seen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 226
    sput-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    .line 1188
    sput-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    .line 1192
    sput-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    .line 1193
    sput-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouchFinished:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/high16 v5, 0x41a0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 178
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 190
    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->model:Lcom/android/mms/model/SlideshowModel;

    .line 191
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSlideShowModelLen:I

    .line 194
    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    .line 195
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsPreview:Z

    .line 228
    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    .line 229
    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 230
    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 231
    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    .line 232
    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    .line 236
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestLockedMessageView:Z

    .line 237
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestReservedMessageView:Z

    .line 240
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_read:Z

    .line 241
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_seen:Z

    .line 243
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mBlockFlickUntilMillis:J

    .line 244
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSeen:I

    .line 245
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->misTalkbackOn:Z

    .line 246
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mCheckTextViewSelectable:Z

    .line 248
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity$1;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    .line 973
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$6;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mHandler:Landroid/os/Handler;

    .line 1187
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG:Z

    .line 1200
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 1346
    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEFAULT_FONT_SIZE_FOR_TEXT:F

    .line 1347
    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 1349
    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    .line 1350
    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerY:F

    .line 1352
    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_old:F

    .line 1353
    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_old:F

    .line 1355
    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_new:F

    .line 1356
    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_new:F

    .line 1398
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->ZOOM_STEP:F

    .line 1399
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->MAX_TEXT_ZOOM_LEVEL:F

    .line 1400
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->MIN_TEXT_ZOOM_LEVEL:F

    .line 1453
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->POINTER_COUNT:I

    .line 1525
    iput v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    .line 1526
    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scrollY:F

    .line 1801
    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    .line 1802
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->SCROLL_MODE_TOP:I

    .line 1803
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->SCROLL_MODE_KEEP_LATEST_POS:I

    .line 2662
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$16;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$16;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 2742
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$17;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$17;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

    .line 3739
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "m_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

    return-void
.end method

.method private LogForMotionEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 1337
    const/4 v1, 0x0

    .line 1338
    .local v1, size:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 1340
    const/4 v0, 0x0

    .line 1341
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1342
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogForMotionEvent ev["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1344
    :cond_1
    return-void
.end method

.method private UpdateActionBarTitleWithNumber()V
    .locals 11

    .prologue
    const/16 v8, 0x8

    const/high16 v10, 0x4080

    const/high16 v9, 0x4000

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 551
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 552
    .local v0, config:Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    move v1, v4

    .line 554
    .local v1, mIsLandscape:Z
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 556
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, recipientsString:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 560
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 561
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 563
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDisplayNameAndNumberonTitle()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 564
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-ne v6, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->hasName()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 565
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, phoneNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 568
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 570
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    if-eqz v1, :cond_3

    .line 575
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v7, 0x4188

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 576
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v7, 0x4140

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 579
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-static {v9}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    invoke-static {v9}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v7

    invoke-virtual {v4, v6, v5, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 580
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-static {v9}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    const/high16 v7, 0x3f80

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v7

    invoke-virtual {v4, v6, v5, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 597
    .end local v2           #phoneNumber:Ljava/lang/String;
    .end local v3           #recipientsString:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .end local v1           #mIsLandscape:Z
    :cond_2
    move v1, v5

    .line 552
    goto/16 :goto_0

    .line 582
    .restart local v1       #mIsLandscape:Z
    .restart local v2       #phoneNumber:Ljava/lang/String;
    .restart local v3       #recipientsString:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v7, 0x4198

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 583
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v7, 0x4160

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 585
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-static {v10}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    invoke-static {v9}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v7

    invoke-static {v10}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v8

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 586
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-static {v10}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    invoke-static {v9}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v7

    invoke-virtual {v4, v6, v5, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 590
    .end local v2           #phoneNumber:Ljava/lang/String;
    .end local v3           #recipientsString:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 591
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const v6, 0x7f0c013b

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MmsSinglePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 595
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MmsSinglePageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/MmsSinglePageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MmsSinglePageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/MmsSinglePageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MmsSinglePageActivity;)Landroid/text/style/ForegroundColorSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->saveAttachFile(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MmsSinglePageActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MmsSinglePageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mStartSlideAnim:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MmsSinglePageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mEndSlideAnim:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->initActionBar()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->drawTitle_Subject()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->adjustSubjectWidth()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/data/ContactList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MmsSinglePageActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MmsSinglePageActivity;Lcom/android/mms/model/MediaModel;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentType(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsSinglePageActivity;->getTypeIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsSinglePageActivity;->handlerIfNoActivityFound(Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MmsSinglePageActivity;Lcom/android/mms/model/MediaModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->saveAttachFile(Lcom/android/mms/model/MediaModel;)V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 178
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    return v0
.end method

.method private addMmsInfoLayer()V
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 1711
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 1712
    .local v5, factory:Landroid/view/LayoutInflater;
    new-instance v6, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1713
    .local v6, infoArea:Landroid/view/View;
    const v9, 0x7f04005d

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1714
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1716
    const v9, 0x7f0b0203

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1717
    .local v4, dateTime:Landroid/widget/TextView;
    const v9, 0x7f0b0204

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1719
    .local v2, button:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v10, v10, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v9, v10, v11}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 1720
    .local v1, Time:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v10, v10, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-direct {p0, v9, v10, v11}, Lcom/android/mms/ui/MmsSinglePageActivity;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1721
    .local v0, Date:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 1723
    .local v3, currentLanguage:Ljava/lang/String;
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1725
    sget-object v9, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1726
    :cond_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 1727
    .local v7, result:Ljava/lang/StringBuffer;
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1732
    .end local v7           #result:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v10}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v9, v10, v12}, Lcom/samsung/mms/content/MmsPartExport;->getMmsAttachmentsAsModelList(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/util/ArrayList;

    move-result-object v8

    .line 1735
    .local v8, showAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1736
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0c0415

    new-array v11, v12, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1737
    new-instance v9, Lcom/android/mms/ui/MmsSinglePageActivity$8;

    invoke-direct {v9, p0, v8}, Lcom/android/mms/ui/MmsSinglePageActivity$8;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1753
    :goto_1
    iget-object v9, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v9, :cond_1

    .line 1754
    const v9, 0x7f0b0043

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 1756
    :cond_1
    iget-object v9, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1757
    return-void

    .line 1729
    .end local v8           #showAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1750
    .restart local v8       #showAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    :cond_3
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private addRecipientsListener()V
    .locals 0

    .prologue
    .line 3994
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 3995
    return-void
.end method

.method private adjustSubjectWidth()V
    .locals 9

    .prologue
    .line 734
    const/4 v5, 0x0

    .line 735
    .local v5, visibleIconNum:I
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 736
    add-int/lit8 v5, v5, 0x1

    .line 738
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 739
    add-int/lit8 v5, v5, 0x1

    .line 741
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon03:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 742
    add-int/lit8 v5, v5, 0x1

    .line 746
    :cond_2
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->RIGHTPADDING:I

    .line 747
    .local v4, rightPaddingCur:I
    if-lez v5, :cond_3

    .line 748
    const/high16 v6, 0x41c8

    invoke-static {v6}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    mul-int/2addr v6, v5

    const/high16 v7, 0x4180

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v7

    add-int v4, v6, v7

    .line 752
    :goto_0
    const-string v6, "Mms/MmsSinglePageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjustSubjectWidth(),visibleIconNum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", rightPaddingCur="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    .line 754
    .local v1, originPaddingLeft:I
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 755
    .local v3, originPaddingTop:I
    move v2, v4

    .line 756
    .local v2, originPaddingRight:I
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    .line 758
    .local v0, originPaddingBottom:I
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v3, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 760
    return-void

    .line 750
    .end local v0           #originPaddingBottom:I
    .end local v1           #originPaddingLeft:I
    .end local v2           #originPaddingRight:I
    .end local v3           #originPaddingTop:I
    :cond_3
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->RIGHTPADDING:I

    goto :goto_0
.end method

.method private clearArrayListsForSinglePage()V
    .locals 1

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1798
    return-void
.end method

.method private createDirectCallingManager()V
    .locals 2

    .prologue
    .line 375
    invoke-static {p0}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Lcom/android/mms/util/DirectCallingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/mms/util/DirectCallingManager;-><init>(ILcom/android/mms/ui/DirectCallActivityInterface;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    goto :goto_0
.end method

.method private createModel()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 396
    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createModel(), msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSlideShowModelLen:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 406
    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "createModel(), [1] use mMsgItem.mSlideshow"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->model:Lcom/android/mms/model/SlideshowModel;

    .line 412
    :goto_0
    return-void

    .line 409
    :cond_0
    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "createModel(), [2] load from createFromMessageUri"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->model:Lcom/android/mms/model/SlideshowModel;

    goto :goto_0
.end method

.method public static createVideoThumbnailForManualPlay(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2265
    const/4 v0, 0x0

    .line 2266
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2268
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2269
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2293
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2298
    :goto_0
    return-object v0

    .line 2292
    :catchall_0
    move-exception v2

    .line 2293
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2292
    :goto_1
    throw v2

    .line 2289
    :catch_0
    move-exception v2

    .line 2293
    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 2294
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method private createViewTitleHeader()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 680
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "createViewTitleHeader"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_0
    const v0, 0x7f0b0209

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon01:Landroid/widget/ImageView;

    .line 683
    const v0, 0x7f0b020a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon02:Landroid/widget/ImageView;

    .line 684
    const v0, 0x7f0b020b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon03:Landroid/widget/ImageView;

    .line 686
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon03:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 692
    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 693
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->setTitleIcon()V

    .line 695
    :cond_1
    return-void
.end method

.method private decideModeForZoom()I
    .locals 8

    .prologue
    .line 1457
    const/4 v4, -0x1

    .line 1459
    .local v4, retVal:I
    const/4 v3, 0x0

    .line 1460
    .local v3, distancePrevious:F
    const/4 v2, 0x0

    .line 1462
    .local v2, distanceCurrent:F
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_old:F

    sub-float v0, v5, v6

    .line 1463
    .local v0, dis_x:F
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerY:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_old:F

    sub-float v1, v5, v6

    .line 1465
    .local v1, dis_y:F
    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    .line 1467
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_new:F

    sub-float v0, v5, v6

    .line 1468
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerY:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_new:F

    sub-float v1, v5, v6

    .line 1470
    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    .line 1472
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    const-string v5, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "distancePrevious="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",distanceCurrent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    :cond_0
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_old:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 1475
    const/4 v4, -0x1

    .line 1486
    :goto_0
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_1

    const-string v5, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decideModeForZoom, retVal ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    :cond_1
    return v4

    .line 1477
    :cond_2
    cmpg-float v5, v3, v2

    if-gez v5, :cond_3

    .line 1478
    const/4 v4, 0x0

    goto :goto_0

    .line 1479
    :cond_3
    cmpl-float v5, v3, v2

    if-lez v5, :cond_4

    .line 1480
    const/4 v4, 0x1

    goto :goto_0

    .line 1482
    :cond_4
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private drawTitle_Subject()V
    .locals 7

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-string v5, "mms"

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ViewTitleHeader;->ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ViewTitleHeader;->setVisibility(I)V

    .line 470
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getSubject()Ljava/lang/String;

    move-result-object v6

    .line 471
    .local v6, subject:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSubject:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->formatMessage_smiley(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    :cond_0
    return-void
.end method

.method private dumpLogs(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 1169
    const-string v0, "Mms/MmsSinglePageActivity"

    invoke-static {v0, p1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    return-void
.end method

.method private enqueueMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1373
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->checkTextSelectorState()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1374
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    const-string v1, "invokeDispatchTouchEventAllChildTextArea: checkTextSelectorState()=true [RETURN]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    :cond_0
    sput-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    .line 1396
    :cond_1
    :goto_0
    return-void

    .line 1379
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 1381
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    .line 1382
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerY:F

    .line 1385
    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_new:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_old:F

    .line 1386
    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_new:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_old:F

    .line 1389
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_new:F

    .line 1390
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_new:F

    .line 1393
    :cond_3
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_4

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueMotionEvent() firstFingerX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",firstFingerY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    :cond_4
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_5

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueMotionEvent() secondFingerX_old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_old:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",secondFingerY_old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_old:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    :cond_5
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueMotionEvent() secondFingerX_new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_new:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",secondFingerY_new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_new:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private exitMmsSinglePageActivity()V
    .locals 4

    .prologue
    .line 3508
    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3509
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$21;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$21;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->markAsRead(Ljava/lang/Runnable;Z)V

    .line 3517
    :goto_0
    return-void

    .line 3515
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    goto :goto_0
.end method

.method private findCurrentScrollPos()V
    .locals 6

    .prologue
    .line 1311
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v3, :cond_0

    .line 1312
    const v3, 0x7f0b020c

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    .line 1314
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY:I

    .line 1317
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY:I

    .line 1318
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 1319
    const v3, 0x7f0b0043

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 1321
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    .line 1322
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1323
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1325
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1326
    .local v2, viewObject:Landroid/view/View;
    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY:I

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY:I

    .line 1323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1331
    .end local v0           #childCount:I
    .end local v1           #i:I
    .end local v2           #viewObject:Landroid/view/View;
    :cond_2
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_3

    const-string v3, "Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findCurrentScrollPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    :cond_3
    return-void
.end method

.method private findFirstVisibleTextView()V
    .locals 7

    .prologue
    .line 1532
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v4, :cond_0

    .line 1533
    const v4, 0x7f0b020c

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    .line 1535
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scrollY:F

    .line 1537
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_1

    .line 1538
    const v4, 0x7f0b0043

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 1540
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1541
    .local v0, childCount:I
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_2

    const-string v4, "FAST_PINCH_ZOOM/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findFirstVisibleTextView: childCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", scrollY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scrollY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    :cond_2
    const/4 v2, 0x0

    .line 1544
    .local v2, i:I
    const/4 v1, 0x0

    .line 1546
    .local v1, heightSum:F
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_a

    .line 1547
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1552
    .local v3, viewObject:Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_5

    if-lez v2, :cond_5

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scrollY:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_5

    .line 1553
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_3

    const-string v4, "FAST_PINCH_ZOOM/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findFirstVisibleTextView: [found case #1 ^_^] valid firstVisibleTextViewId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    :cond_3
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    .line 1569
    .end local v3           #viewObject:Landroid/view/View;
    :cond_4
    :goto_1
    return-void

    .line 1557
    .restart local v3       #viewObject:Landroid/view/View;
    :cond_5
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_6

    const-string v4, "FAST_PINCH_ZOOM/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findFirstVisibleTextView<LOOP>, i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", viewObject.getHeight()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 1559
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_8

    if-lez v2, :cond_8

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scrollY:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_8

    .line 1560
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_7

    const-string v4, "FAST_PINCH_ZOOM/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findFirstVisibleTextView: [found case #2 ^_^] valid firstVisibleTextViewId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    :cond_7
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    goto :goto_1

    .line 1564
    :cond_8
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_9

    const-string v4, "FAST_PINCH_ZOOM/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findFirstVisibleTextView<LOOP>, i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", heightSum"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1567
    .end local v3           #viewObject:Landroid/view/View;
    :cond_a
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    .line 1568
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_4

    const-string v4, "FAST_PINCH_ZOOM/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findFirstVisibleTextView: [not found T_T] valid firstVisibleTextViewId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4
    .parameter "baseContext"
    .parameter "mTimeMills"

    .prologue
    .line 1760
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 1763
    .local v0, df:Ljava/text/DateFormat;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1765
    .local v1, formatedDate:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1767
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getBoxUriFromBoxId(I)Landroid/net/Uri;
    .locals 4
    .parameter "boxId"

    .prologue
    .line 3881
    const-string v1, "Mms/MmsSinglePageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBoxUriFromBoxId, boxId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3882
    const/4 v0, 0x0

    .line 3884
    .local v0, uri:Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 3908
    :goto_0
    return-object v0

    .line 3886
    :pswitch_0
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_MESSAGE_URI:Landroid/net/Uri;

    .line 3887
    goto :goto_0

    .line 3890
    :pswitch_1
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_MESSAGE_URI:Landroid/net/Uri;

    .line 3891
    goto :goto_0

    .line 3894
    :pswitch_2
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_MESSAGE_URI:Landroid/net/Uri;

    .line 3895
    goto :goto_0

    .line 3898
    :pswitch_3
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_DRAFT_MESSAGE_URI:Landroid/net/Uri;

    .line 3899
    goto :goto_0

    .line 3902
    :pswitch_4
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_PUSH_MESSAGE_URI:Landroid/net/Uri;

    .line 3903
    goto :goto_0

    .line 3884
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 919
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 921
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 923
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    if-nez v3, :cond_1

    .line 954
    if-eqz v3, :cond_0

    .line 955
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 958
    :cond_0
    :goto_0
    return-object v2

    .line 926
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 928
    const-string v1, "seen"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSeen:I

    .line 932
    new-instance v10, Lcom/android/mms/ui/MmsSinglePageActivity$5;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v10, p0, v1, v2, v5}, Lcom/android/mms/ui/MmsSinglePageActivity$5;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;IFZ)V

    .line 941
    .local v10, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 942
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 944
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    sget-boolean v6, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 945
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_2
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_3

    .line 954
    :goto_1
    if-eqz v3, :cond_2

    .line 955
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v10           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v2, v0

    .line 958
    goto :goto_0

    .line 946
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v4       #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    .restart local v10       #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 947
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Landroid/database/CursorIndexOutOfBoundsException;
    :goto_3
    :try_start_3
    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "CursorIndexOutOfBoundsException in getCachedMessageItem !"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 948
    const/4 v0, 0x0

    .line 950
    goto :goto_1

    .line 951
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v8           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .end local v10           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catch_1
    move-exception v8

    .line 952
    .restart local v8       #e:Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_4
    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "CursorIndexOutOfBoundsException in getCachedMessageItem !"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 954
    if-eqz v3, :cond_2

    goto :goto_2

    .end local v8           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v1

    :goto_4
    if-eqz v3, :cond_3

    .line 955
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 954
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
    goto :goto_4

    .line 949
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_2
    move-exception v1

    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1

    .line 946
    :catch_4
    move-exception v8

    goto :goto_3
.end method

.method private getContentType(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;
    .locals 3
    .parameter "model"

    .prologue
    .line 1050
    const/4 v0, 0x0

    .line 1052
    .local v0, contentType:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1053
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1058
    :goto_0
    return-object v0

    .line 1055
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1057
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMessageInformationFromIntent()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 763
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 764
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    .line 765
    const-string v2, "thread_id"

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    .line 767
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 768
    const-string v2, "requestLockedMessageView"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestLockedMessageView:Z

    .line 771
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 772
    const-string v2, "requestReservedMessageView"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestReservedMessageView:Z

    .line 775
    :cond_1
    const-string v2, "preview"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, previewing:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "previewLaunch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 777
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsPreview:Z

    .line 782
    :goto_0
    const-string v2, "isSpam"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    .line 784
    iget-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_4

    .line 785
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v2, :cond_3

    .line 786
    sget-object v2, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    .line 792
    :goto_1
    return-void

    .line 779
    :cond_2
    iput-boolean v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsPreview:Z

    goto :goto_0

    .line 788
    :cond_3
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    goto :goto_1

    .line 790
    :cond_4
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method private getSubject()Ljava/lang/String;
    .locals 6

    .prologue
    .line 806
    const/4 v2, 0x0

    .line 808
    .local v2, subject:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c015e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, preSubject:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/android/mms/model/SlideshowModel;->getSubject(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 810
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 811
    if-eqz v2, :cond_2

    .line 812
    const-string v3, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>MMSSUBJECT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</GATE-M>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 818
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 826
    .end local v1           #preSubject:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v2

    .line 814
    .restart local v1       #preSubject:Ljava/lang/String;
    :cond_2
    const-string v3, "GATE"

    const-string v4, "<GATE-M>MMSSUBJECT:NULL</GATE-M>"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 823
    .end local v1           #preSubject:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 824
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/MmsSinglePageActivity"

    const-string v4, "Cannot display the slide title."

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getTypeIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 1068
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1069
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1070
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1072
    return-object v0
.end method

.method private handlerIfNoActivityFound(Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V
    .locals 3
    .parameter "e"
    .parameter "intent"

    .prologue
    .line 3917
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "ActivityNotFoundException"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3926
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c011a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3929
    return-void
.end method

.method private hasTopText(Lcom/android/mms/model/SlideshowModel;)Z
    .locals 2
    .parameter "model"

    .prologue
    const/4 v0, 0x1

    .line 425
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 428
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateTitleHeader_Subject()V
    .locals 2

    .prologue
    .line 795
    const v1, 0x7f0b0205

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 796
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 797
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    .line 801
    :goto_0
    const v1, 0x7f0b0207

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSubject:Landroid/widget/TextView;

    .line 802
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->RIGHTPADDING:I

    .line 803
    return-void

    .line 799
    :cond_0
    const v1, 0x7f0b02ad

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    .line 422
    return-void
.end method

.method private initActionBar()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 488
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 490
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v1, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    .line 494
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f04

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 495
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 496
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 497
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    .line 498
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    .line 499
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 501
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 502
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/MmsSinglePageActivity$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$3;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 534
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/MmsSinglePageActivity$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$4;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v1, v1, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    if-eqz v1, :cond_3

    .line 542
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 544
    :cond_3
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 545
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 547
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->UpdateActionBarTitleWithNumber()V

    goto/16 :goto_0
.end method

.method private initMotionEventForPinchZoom()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1360
    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    .line 1361
    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerY:F

    .line 1363
    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_old:F

    .line 1364
    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_old:F

    .line 1366
    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_new:F

    .line 1367
    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_new:F

    .line 1368
    return-void
.end method

.method private invokeRefreshTextArea()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1618
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->checkTextSelectorState()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1619
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    const-string v4, "invokeDispatchTouchEventAllChildTextArea: checkTextSelectorState()=true [RETURN]"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    :cond_0
    sput-boolean v6, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    .line 1670
    :goto_0
    return-void

    .line 1624
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_2

    .line 1625
    const v3, 0x7f0b0043

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 1628
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1629
    .local v0, childCount:I
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_3

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invokeRefreshTextArea: childCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    :cond_3
    const/4 v1, 0x0

    .line 1648
    .local v1, i:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    .line 1650
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1653
    .local v2, viewObject:Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    if-lez v1, :cond_5

    .line 1656
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_4

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hit TextView, i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", viewObject.isFocused="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1648
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1666
    .end local v2           #viewObject:Landroid/view/View;
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v3, :cond_7

    .line 1667
    const v3, 0x7f0b020c

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    .line 1669
    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scrollY:F

    float-to-int v4, v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method private invokeResizeTextArea()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x4234

    const/high16 v8, 0x4120

    const/high16 v7, 0x3f80

    .line 1405
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->checkTextSelectorState()Z

    move-result v4

    if-ne v4, v10, :cond_2

    .line 1406
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_0

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    const-string v5, "invokeDispatchTouchEventAllChildTextArea: checkTextSelectorState()=true [RETURN]"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    :cond_0
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    .line 1451
    :cond_1
    return-void

    .line 1411
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_3

    .line 1412
    const v4, 0x7f0b0043

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 1415
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1416
    .local v0, childCount:I
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_4

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invokeResizeTextArea: childCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    :cond_4
    const/4 v1, 0x0

    .line 1419
    .local v1, i:I
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->decideModeForZoom()I

    move-result v3

    .line 1421
    .local v3, zoomMode:I
    if-nez v3, :cond_9

    .line 1422
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    add-float/2addr v4, v7

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 1423
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_5

    .line 1424
    iput v9, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 1425
    :cond_5
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_6

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIZE_UP:scale1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    :cond_6
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 1437
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1440
    .local v2, viewObject:Landroid/view/View;
    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_8

    if-lez v1, :cond_8

    .line 1443
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_7

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hit TextView, i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", viewObject.isFocused="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1435
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1426
    .end local v2           #viewObject:Landroid/view/View;
    :cond_9
    if-ne v3, v10, :cond_1

    .line 1427
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    sub-float/2addr v4, v7

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 1428
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_a

    .line 1429
    iput v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 1430
    :cond_a
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_6

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIZE_DOWN:scale1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private invokeResizeTextAreaOnlySelectedItem()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x4234

    const/high16 v7, 0x4120

    const/high16 v6, 0x3f80

    .line 1573
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->checkTextSelectorState()Z

    move-result v3

    if-ne v3, v9, :cond_2

    .line 1574
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    const-string v4, "invokeResizeTextAreaOnlySelectedItem: checkTextSelectorState()=true [RETURN]"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    :cond_0
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    .line 1614
    :cond_1
    :goto_0
    return-void

    .line 1579
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_3

    .line 1580
    const v3, 0x7f0b0043

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 1583
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1584
    .local v0, childCount:I
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_4

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invokeResizeTextAreaOnlySelectedItem: childCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", firstVisibleTextViewId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    :cond_4
    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    if-ltz v3, :cond_1

    .line 1589
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->decideModeForZoom()I

    move-result v2

    .line 1591
    .local v2, zoomMode:I
    if-nez v2, :cond_8

    .line 1592
    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    add-float/2addr v3, v6

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 1593
    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_5

    .line 1594
    iput v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 1595
    :cond_5
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_6

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIZE_UP:scale1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1608
    .local v1, viewObject:Landroid/view/View;
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    if-lez v3, :cond_1

    .line 1611
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_7

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invokeResizeTextAreaOnlySelectedItem: firstVisibleTextViewId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    :cond_7
    check-cast v1, Landroid/widget/TextView;

    .end local v1           #viewObject:Landroid/view/View;
    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 1596
    :cond_8
    if-ne v2, v9, :cond_1

    .line 1597
    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    sub-float/2addr v3, v6

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 1598
    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_9

    .line 1599
    iput v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 1600
    :cond_9
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_6

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIZE_DOWN:scale1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isExitCase()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 4029
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->isMessageExist(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4030
    :cond_0
    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "mMsgUri not exist!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4039
    :goto_0
    return v0

    .line 4034
    :cond_1
    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->isMessageExist(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4036
    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "mMsgId not exist!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4039
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMessageExist(J)Z
    .locals 2
    .parameter "msgId"

    .prologue
    .line 4043
    const/4 v0, 0x0

    .line 4044
    .local v0, msgUri:Landroid/net/Uri;
    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v1, :cond_0

    .line 4045
    sget-object v1, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 4048
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->isMessageExist(Landroid/net/Uri;)Z

    move-result v1

    return v1

    .line 4047
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

    .line 4053
    const/4 v7, 0x0

    .line 4054
    .local v7, result:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4056
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v8, v7

    .line 4066
    .end local v7           #result:Z
    .local v8, result:I
    :goto_0
    return v8

    .line 4060
    .end local v8           #result:I
    .restart local v7       #result:Z
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 4062
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4065
    const-string v0, "Mms/MmsSinglePageActivity"

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

    .line 4066
    .restart local v8       #result:I
    goto :goto_0

    .line 4062
    .end local v8           #result:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isValidSlideShow()Z
    .locals 4

    .prologue
    .line 383
    const/4 v0, 0x1

    .line 384
    .local v0, retVal:Z
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v1, :cond_3

    .line 385
    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "isValidSlideShow(),[1] mMsgItem=null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_0
    const/4 v0, 0x0

    .line 391
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v1, :cond_2

    const-string v1, "Mms/MmsSinglePageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidSlideShow(),[3] retVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_2
    return v0

    .line 387
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v1, :cond_1

    .line 388
    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v1, :cond_4

    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "isValidSlideShow(),[2] mMsgItem.mSlideshow=null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadPart(Landroid/content/Context;JLandroid/net/Uri;)Lcom/google/android/mms/pdu/PduPart;
    .locals 12
    .parameter "context"
    .parameter "msgId"
    .parameter "uri"

    .prologue
    const/4 v8, 0x0

    .line 2227
    const/4 v2, 0x0

    .line 2229
    .local v2, body:Lcom/google/android/mms/pdu/PduBody;
    :try_start_0
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v9, :cond_1

    .line 2230
    sget-object v9, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    .line 2238
    :goto_0
    if-nez v2, :cond_2

    move-object v5, v8

    .line 2259
    :cond_0
    :goto_1
    return-object v5

    .line 2233
    :cond_1
    sget-object v9, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 2235
    :catch_0
    move-exception v3

    .line 2236
    .local v3, e:Lcom/google/android/mms/MmsException;
    const-string v9, "Mms/MmsSinglePageActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isDrmRingtoneWithRights can\'t load pdu body: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2242
    .end local v3           #e:Lcom/google/android/mms/MmsException;
    :cond_2
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2243
    .local v1, UriStringSrc:Ljava/lang/String;
    const-string v9, "Mms/MmsSinglePageActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadPart(),UriStringSrc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v6

    .line 2246
    .local v6, partNum:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v6, :cond_4

    .line 2247
    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 2248
    .local v5, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    .line 2249
    .local v7, partUri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2250
    .local v0, UriStringPart:Ljava/lang/String;
    const-string v9, "Mms/MmsSinglePageActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadPart(),part.getDataUri()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 2253
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2246
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2258
    .end local v0           #UriStringPart:Ljava/lang/String;
    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v7           #partUri:Landroid/net/Uri;
    :cond_4
    const-string v9, "Mms/MmsSinglePageActivity"

    const-string v10, "loadPart(),part not found : should not reach here"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v8

    .line 2259
    goto/16 :goto_1
.end method

.method private moveSmsView(Z)V
    .locals 19
    .parameter "bFlicktoNext"

    .prologue
    .line 3348
    const/4 v12, 0x0

    .line 3349
    .local v12, msgCount:I
    const/16 v17, 0x0

    .line 3350
    .local v17, notiIndMmsCount:I
    const/4 v9, 0x0

    .line 3351
    .local v9, curPos:I
    const/16 v16, 0x0

    .line 3357
    .local v16, nextPos:I
    const/4 v8, 0x0

    .line 3359
    .local v8, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3360
    sget-object v3, Lcom/android/mms/spam/SpamFilter;->SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    .line 3361
    .local v3, contentThreadUri:Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 3502
    :cond_0
    :goto_0
    return-void

    .line 3363
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3381
    :goto_1
    if-eqz v8, :cond_0

    .line 3384
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 3386
    const/4 v2, 0x1

    if-ne v12, v2, :cond_5

    .line 3387
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3364
    .end local v3           #contentThreadUri:Landroid/net/Uri;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_3

    .line 3365
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3366
    .restart local v3       #contentThreadUri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 3368
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "locked=1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    .line 3369
    .end local v3           #contentThreadUri:Landroid/net/Uri;
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_4

    .line 3370
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3371
    .restart local v3       #contentThreadUri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 3373
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "reserved=1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    .line 3375
    .end local v3           #contentThreadUri:Landroid/net/Uri;
    :cond_4
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 3376
    .restart local v3       #contentThreadUri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 3378
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    .line 3391
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3392
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_6

    if-ge v9, v12, :cond_6

    .line 3393
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

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

    .line 3402
    :cond_6
    move/from16 v16, v9

    .line 3404
    if-eqz p1, :cond_9

    .line 3405
    if-nez v9, :cond_8

    .line 3406
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    .line 3407
    add-int/lit8 v16, v12, -0x1

    .line 3412
    :goto_3
    const v18, 0x7f050005

    .line 3413
    .local v18, startSlideAnim:I
    const v10, 0x7f050006

    .line 3426
    .local v10, endSlideAnim:I
    :goto_4
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 3427
    .local v15, nextMsgType:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 3433
    .local v13, nextMsgId:J
    :goto_5
    const-string v2, "mms"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3434
    const/16 v2, 0xf

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v4, 0x82

    if-ne v2, v4, :cond_e

    .line 3435
    if-eqz p1, :cond_c

    .line 3436
    if-nez v16, :cond_b

    .line 3437
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    .line 3438
    add-int/lit8 v16, v12, -0x1

    .line 3452
    :goto_6
    add-int/lit8 v17, v17, 0x1

    .line 3453
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 3454
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    goto :goto_5

    .line 3396
    .end local v10           #endSlideAnim:I
    .end local v13           #nextMsgId:J
    .end local v15           #nextMsgType:Ljava/lang/String;
    .end local v18           #startSlideAnim:I
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 3397
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3409
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 3410
    add-int/lit8 v16, v16, -0x1

    goto :goto_3

    .line 3415
    :cond_9
    add-int/lit8 v2, v12, -0x1

    if-ne v9, v2, :cond_a

    .line 3416
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3417
    const/16 v16, 0x0

    .line 3422
    :goto_7
    const v18, 0x7f050003

    .line 3423
    .restart local v18       #startSlideAnim:I
    const v10, 0x7f050004

    .restart local v10       #endSlideAnim:I
    goto :goto_4

    .line 3419
    .end local v10           #endSlideAnim:I
    .end local v18           #startSlideAnim:I
    :cond_a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 3420
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 3440
    .restart local v10       #endSlideAnim:I
    .restart local v13       #nextMsgId:J
    .restart local v15       #nextMsgType:Ljava/lang/String;
    .restart local v18       #startSlideAnim:I
    :cond_b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 3441
    add-int/lit8 v16, v16, -0x1

    goto :goto_6

    .line 3444
    :cond_c
    add-int/lit8 v2, v12, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_d

    .line 3445
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3446
    const/16 v16, 0x0

    goto :goto_6

    .line 3448
    :cond_d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 3449
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 3459
    :cond_e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3461
    add-int/lit8 v2, v12, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_0

    .line 3463
    const/4 v11, 0x0

    .line 3464
    .local v11, intent:Landroid/content/Intent;
    const-string v2, "sms"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3465
    new-instance v11, Landroid/content/Intent;

    .end local v11           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3466
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v11, v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3467
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    invoke-virtual {v11, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3469
    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3470
    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_10

    .line 3471
    const-string v2, "requestLockedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3472
    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_11

    .line 3473
    const-string v2, "requestReservedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3486
    :cond_11
    :goto_8
    move/from16 v0, v16

    if-eq v0, v9, :cond_15

    .line 3487
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIntent:Landroid/content/Intent;

    .line 3488
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MmsSinglePageActivity;->mStartSlideAnim:I

    .line 3489
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mEndSlideAnim:I

    .line 3490
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    .line 3491
    new-instance v2, Lcom/android/mms/ui/MmsSinglePageActivity$20;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mms/ui/MmsSinglePageActivity$20;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->markAsRead(Ljava/lang/Runnable;Z)V

    goto/16 :goto_0

    .line 3474
    :cond_12
    const-string v2, "mms"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3475
    new-instance v11, Landroid/content/Intent;

    .end local v11           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/MmsSinglePageActivity;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3476
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v11, v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3477
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    invoke-virtual {v11, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3479
    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3480
    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_14

    .line 3481
    const-string v2, "requestLockedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3482
    :cond_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_11

    .line 3483
    const-string v2, "requestReservedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_8

    .line 3498
    :cond_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivity(Landroid/content/Intent;)V

    .line 3499
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    .line 3500
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/android/mms/ui/MmsSinglePageActivity;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method

.method private navigateMsgFolderViewMode(Z)V
    .locals 21
    .parameter "bFlicktoNext"

    .prologue
    .line 3747
    const/4 v14, 0x0

    .line 3748
    .local v14, msgCount:I
    const/16 v19, 0x0

    .line 3749
    .local v19, notiIndMmsCount:I
    const/4 v10, 0x0

    .line 3750
    .local v10, curPos:I
    const/16 v18, 0x0

    .line 3755
    .local v18, nextPos:I
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->getBoxId()I

    move-result v8

    .line 3756
    .local v8, boxId:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBoxUriFromBoxId(I)Landroid/net/Uri;

    move-result-object v3

    .line 3757
    .local v3, contentThreadUri:Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 3878
    :cond_0
    :goto_0
    return-void

    .line 3760
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3762
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 3765
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 3767
    const/4 v2, 0x1

    if-ge v14, v2, :cond_2

    .line 3768
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3772
    :cond_2
    const/4 v2, 0x1

    if-ne v14, v2, :cond_3

    .line 3773
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3777
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3778
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    if-ge v10, v14, :cond_4

    .line 3779
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_5

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3788
    :cond_4
    move/from16 v18, v10

    .line 3790
    if-eqz p1, :cond_7

    .line 3791
    if-nez v10, :cond_6

    .line 3792
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 3793
    add-int/lit8 v18, v14, -0x1

    .line 3798
    :goto_2
    const v20, 0x7f050005

    .line 3799
    .local v20, startSlideAnim:I
    const v11, 0x7f050006

    .line 3812
    .local v11, endSlideAnim:I
    :goto_3
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 3813
    .local v17, nextMsgType:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 3819
    .local v15, nextMsgId:J
    const/4 v13, -0x1

    .line 3820
    .local v13, mmsMsgType:I
    :goto_4
    const-string v2, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3821
    const-string v2, "m_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 3822
    const-string v2, "Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mmsMsgType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " /MESSAGE_TYPE_NOTIFICATION_IND:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x82

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3823
    const/16 v2, 0x82

    if-ne v13, v2, :cond_c

    .line 3824
    if-eqz p1, :cond_a

    .line 3825
    if-nez v18, :cond_9

    .line 3826
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 3827
    add-int/lit8 v18, v14, -0x1

    .line 3841
    :goto_5
    add-int/lit8 v19, v19, 0x1

    .line 3842
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 3843
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    goto :goto_4

    .line 3782
    .end local v11           #endSlideAnim:I
    .end local v13           #mmsMsgType:I
    .end local v15           #nextMsgId:J
    .end local v17           #nextMsgType:Ljava/lang/String;
    .end local v20           #startSlideAnim:I
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 3783
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 3795
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 3796
    add-int/lit8 v18, v18, -0x1

    goto :goto_2

    .line 3801
    :cond_7
    add-int/lit8 v2, v14, -0x1

    if-ne v10, v2, :cond_8

    .line 3802
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3803
    const/16 v18, 0x0

    .line 3808
    :goto_6
    const v20, 0x7f050003

    .line 3809
    .restart local v20       #startSlideAnim:I
    const v11, 0x7f050004

    .restart local v11       #endSlideAnim:I
    goto :goto_3

    .line 3805
    .end local v11           #endSlideAnim:I
    .end local v20           #startSlideAnim:I
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 3806
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 3829
    .restart local v11       #endSlideAnim:I
    .restart local v13       #mmsMsgType:I
    .restart local v15       #nextMsgId:J
    .restart local v17       #nextMsgType:Ljava/lang/String;
    .restart local v20       #startSlideAnim:I
    :cond_9
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 3830
    add-int/lit8 v18, v18, -0x1

    goto :goto_5

    .line 3833
    :cond_a
    add-int/lit8 v2, v14, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_b

    .line 3834
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3835
    const/16 v18, 0x0

    goto :goto_5

    .line 3837
    :cond_b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 3838
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 3848
    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3850
    add-int/lit8 v2, v14, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_0

    .line 3852
    const/4 v12, 0x0

    .line 3853
    .local v12, intent:Landroid/content/Intent;
    const-string v2, "sms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3854
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3855
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3856
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3863
    :cond_d
    :goto_7
    move/from16 v0, v18

    if-eq v0, v10, :cond_f

    .line 3864
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIntent:Landroid/content/Intent;

    .line 3865
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MmsSinglePageActivity;->mStartSlideAnim:I

    .line 3866
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mEndSlideAnim:I

    .line 3867
    new-instance v2, Lcom/android/mms/ui/MmsSinglePageActivity$27;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mms/ui/MmsSinglePageActivity$27;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->markAsRead(Ljava/lang/Runnable;Z)V

    goto/16 :goto_0

    .line 3857
    :cond_e
    const-string v2, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3858
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/MmsSinglePageActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3859
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3860
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    .line 3874
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivity(Landroid/content/Intent;)V

    .line 3875
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    .line 3876
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lcom/android/mms/ui/MmsSinglePageActivity;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method

.method private preCalculateImageBoudns(Landroid/widget/ImageView;II)V
    .locals 4
    .parameter "imageView"
    .parameter "currentWidth"
    .parameter "currentHeight"

    .prologue
    .line 2302
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2303
    .local v1, tempPoint:Landroid/graphics/Point;
    invoke-static {v1, p2, p3}, Lcom/android/mms/model/ImageModel;->calcThumbnailImageBounds(Landroid/graphics/Point;II)V

    .line 2304
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2305
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2306
    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2307
    return-void
.end method

.method private presentAttachmentList()V
    .locals 4

    .prologue
    .line 2027
    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findAttachmentList(JZ)Ljava/util/ArrayList;

    .line 2030
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2031
    .local v0, lenOfAttah:I
    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presentAttachmentList:lenOfAttah="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    :cond_0
    if-lez v0, :cond_1

    .line 2034
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->addAttachmentListView(Ljava/util/ArrayList;)V

    .line 2036
    :cond_1
    return-void
.end method

.method private presentModel(Lcom/android/mms/model/SlideshowModel;)V
    .locals 12
    .parameter "mSlideShowModel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1855
    const/4 v7, 0x0

    .line 1856
    .local v7, slidePageIndex:I
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v8

    .line 1857
    .local v8, slideTotalNum:I
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v9, :cond_0

    const-string v9, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:presentModel() slideTotalNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_10

    .line 1861
    invoke-virtual {p1, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    .line 1862
    .local v6, slideModel:Lcom/android/mms/model/SlideModel;
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v9, :cond_1

    const-string v9, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:[1]slideModel:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    :cond_1
    const/4 v3, 0x0

    .line 1871
    .local v3, mTextModel:Lcom/android/mms/model/TextModel;
    const/4 v2, 0x0

    .line 1872
    .local v2, mImageModel:Lcom/android/mms/model/ImageModel;
    const/4 v4, 0x0

    .line 1873
    .local v4, mVideoModel:Lcom/android/mms/model/VideoModel;
    const/4 v1, 0x0

    .line 1875
    .local v1, mAudioModel:Lcom/android/mms/model/AudioModel;
    if-eqz v6, :cond_6

    .line 1876
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/MediaModel;

    .line 1877
    .local v5, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v3, v5

    .line 1878
    check-cast v3, Lcom/android/mms/model/TextModel;

    goto :goto_1

    .line 1879
    :cond_3
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v2, v5

    .line 1880
    check-cast v2, Lcom/android/mms/model/ImageModel;

    goto :goto_1

    .line 1881
    :cond_4
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v4, v5

    .line 1882
    check-cast v4, Lcom/android/mms/model/VideoModel;

    goto :goto_1

    .line 1883
    :cond_5
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v1, v5

    .line 1884
    check-cast v1, Lcom/android/mms/model/AudioModel;

    goto :goto_1

    .line 1890
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->hasTopText(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1891
    if-eqz v3, :cond_8

    .line 1892
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v9, :cond_7

    const-string v9, "kkahn/Mms/MmsSinglePageActivity"

    const-string v10, "mTextModel"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    :cond_7
    invoke-virtual {p0, v3, v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentText(Lcom/android/mms/model/TextModel;I)V

    .line 1896
    :cond_8
    if-eqz v2, :cond_a

    .line 1897
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v9, :cond_9

    const-string v9, "kkahn/Mms/MmsSinglePageActivity"

    const-string v10, "mImageModel"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    :cond_9
    invoke-virtual {p0, v2, v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentImage(Lcom/android/mms/model/ImageModel;I)V

    .line 1900
    :cond_a
    if-eqz v4, :cond_c

    .line 1901
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v9, :cond_b

    const-string v9, "kkahn/Mms/MmsSinglePageActivity"

    const-string v10, "mVideoModel"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    :cond_b
    invoke-virtual {p0, v4, v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentVideo(Lcom/android/mms/model/VideoModel;I)V

    .line 1904
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->hasTopText(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 1905
    if-eqz v3, :cond_e

    .line 1906
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v9, :cond_d

    const-string v9, "kkahn/Mms/MmsSinglePageActivity"

    const-string v10, "mTextModel"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    :cond_d
    invoke-virtual {p0, v3, v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentText(Lcom/android/mms/model/TextModel;I)V

    .line 1911
    :cond_e
    if-eqz v1, :cond_f

    .line 1912
    const/4 v9, 0x1

    invoke-virtual {p0, v1, v9}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentAudioInfoOnly(Lcom/android/mms/model/AudioModel;Z)V

    .line 1860
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1915
    .end local v1           #mAudioModel:Lcom/android/mms/model/AudioModel;
    .end local v2           #mImageModel:Lcom/android/mms/model/ImageModel;
    .end local v3           #mTextModel:Lcom/android/mms/model/TextModel;
    .end local v4           #mVideoModel:Lcom/android/mms/model/VideoModel;
    .end local v6           #slideModel:Lcom/android/mms/model/SlideModel;
    :cond_10
    return-void
.end method

.method private presentSlide_inOnePage(Lcom/android/mms/model/SlideshowModel;I)V
    .locals 5
    .parameter "mSlideShowModel"
    .parameter "len"

    .prologue
    .line 1681
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->clearArrayListsForSinglePage()V

    .line 1685
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->addMmsInfoLayer()V

    .line 1691
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentModel(Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1699
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentAttachmentList()V

    .line 1702
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mScrollHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/MmsSinglePageActivity$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$7;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1708
    return-void

    .line 1692
    :catch_0
    move-exception v0

    .line 1693
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Mms/MmsSinglePageActivity"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1694
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c001b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private removeRecipientsListener()V
    .locals 0

    .prologue
    .line 3998
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 3999
    return-void
.end method

.method private saveAttachFile(Landroid/net/Uri;)V
    .locals 1
    .parameter "partUri"

    .prologue
    .line 2923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mCheckTextViewSelectable:Z

    .line 2924
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/samsung/mms/content/MmsPartExport;->savePart(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 2925
    return-void
.end method

.method private saveAttachFile(Lcom/android/mms/model/MediaModel;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 2929
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2930
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/drm/DrmWrapper;->getOriginalUri()Landroid/net/Uri;

    move-result-object v0

    .line 2934
    .local v0, partUri:Landroid/net/Uri;
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->saveAttachFile(Landroid/net/Uri;)V

    .line 2935
    return-void

    .line 2932
    .end local v0           #partUri:Landroid/net/Uri;
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #partUri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public static setAttachment(Lcom/android/mms/model/AttachmentModel;)V
    .locals 0
    .parameter "attachmentModel"

    .prologue
    .line 2085
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticAttachment:Lcom/android/mms/model/AttachmentModel;

    .line 2086
    return-void
.end method

.method public static setAudioModel(Lcom/android/mms/model/AudioModel;)V
    .locals 2
    .parameter "audioModel"

    .prologue
    .line 2080
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    const-string v1, "setAudioModel"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    :cond_0
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticAudioModel:Lcom/android/mms/model/AudioModel;

    .line 2082
    return-void
.end method

.method public static setClickUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 2065
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClickUri:uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    :cond_0
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticClickUri:Landroid/net/Uri;

    .line 2067
    return-void
.end method

.method public static setImageModel(Lcom/android/mms/model/ImageModel;)V
    .locals 0
    .parameter "imageModel"

    .prologue
    .line 2089
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticImageModel:Lcom/android/mms/model/ImageModel;

    .line 2090
    return-void
.end method

.method public static setSlideIndex(I)V
    .locals 3
    .parameter "slideindex"

    .prologue
    .line 2070
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlideIndex:slideindex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    :cond_0
    sput p0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticSlideIndex:I

    .line 2072
    return-void
.end method

.method public static setVideoModel(Lcom/android/mms/model/VideoModel;)V
    .locals 2
    .parameter "videoModel"

    .prologue
    .line 2075
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    const-string v1, "setVideoModel"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    :cond_0
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticVideoModel:Lcom/android/mms/model/VideoModel;

    .line 2077
    return-void
.end method

.method private touchListener(IIIIJ)V
    .locals 8
    .parameter "startTouchX"
    .parameter "endTouchX"
    .parameter "startTouchY"
    .parameter "endTouchY"
    .parameter "eventTime"

    .prologue
    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    .line 3295
    const/4 v0, 0x0

    .line 3296
    .local v0, bFlicktoNext:Z
    sub-int v1, p1, p2

    .line 3297
    .local v1, movedX:I
    sub-int v2, p3, p4

    .line 3299
    .local v2, movedY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x96

    if-le v3, v4, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_3

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    if-nez v3, :cond_3

    .line 3302
    if-gez v1, :cond_2

    .line 3303
    const/4 v0, 0x1

    .line 3312
    :goto_0
    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mBlockFlickUntilMillis:J

    cmp-long v3, p5, v3

    if-ltz v3, :cond_0

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mBlockFlickUntilMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 3313
    :cond_0
    sput-boolean v7, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    .line 3345
    :cond_1
    :goto_1
    return-void

    .line 3305
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3308
    :cond_3
    sput-boolean v7, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    goto :goto_1

    .line 3318
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsViewer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3319
    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    .line 3321
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3322
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 3324
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->navigateMsgFolderViewMode(Z)V

    goto :goto_1

    .line 3327
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->moveSmsView(Z)V

    goto :goto_1

    .line 3331
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->moveSmsView(Z)V

    goto :goto_1

    .line 3333
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForKor()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_8
    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v3, :cond_1

    .line 3334
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->moveSmsView(Z)V

    goto :goto_1
.end method

.method private updateActionBarTextSize()V
    .locals 9

    .prologue
    const/high16 v8, 0x4080

    const/4 v2, 0x1

    const/high16 v7, 0x4000

    const/4 v3, 0x0

    .line 644
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 648
    .local v0, config:Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 650
    .local v1, mIsLandscape:Z
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 654
    if-eqz v1, :cond_3

    .line 655
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v5, 0x4188

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 656
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v5, 0x4140

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 658
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v4

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v5

    invoke-virtual {v2, v4, v3, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 659
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v4

    const/high16 v5, 0x3f80

    invoke-static {v5}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v5

    invoke-virtual {v2, v4, v3, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .end local v1           #mIsLandscape:Z
    :cond_2
    move v1, v3

    .line 648
    goto :goto_1

    .line 661
    .restart local v1       #mIsLandscape:Z
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v5, 0x4198

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 662
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v5, 0x4160

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 664
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-static {v8}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v4

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v5

    invoke-static {v8}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 665
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-static {v8}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v4

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v5

    invoke-virtual {v2, v4, v3, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private updateActionBarTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->bar:Landroid/app/ActionBar;

    .line 481
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->bar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->bar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 485
    :cond_0
    return-void
.end method

.method private updateFontsizeForTextAreaVolumeKey()V
    .locals 7

    .prologue
    .line 3263
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_0

    .line 3264
    const v4, 0x7f0b0043

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 3266
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 3267
    .local v0, childCount:I
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_1

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshFontsizeForTextAreaVolumeKey: childCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3268
    :cond_1
    const/4 v2, 0x0

    .line 3271
    .local v2, i:I
    const/4 v4, 0x4

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v4

    float-to-int v1, v4

    .line 3273
    .local v1, fontSize:I
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 3275
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3278
    .local v3, viewObject:Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_3

    if-lez v2, :cond_3

    .line 3281
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_2

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hit TextView, i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3285
    :cond_2
    check-cast v3, Landroid/widget/TextView;

    .end local v3           #viewObject:Landroid/view/View;
    const/4 v4, 0x1

    int-to-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3273
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3290
    :cond_4
    return-void
.end method

.method private updateTitleIcon()V
    .locals 2

    .prologue
    .line 723
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "updateTitleIcon"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->createViewTitleHeader()V

    .line 725
    return-void
.end method


# virtual methods
.method public addAttachmentListView(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2748
    .local p1, attachmentListSaved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    const-string v4, "addAttachmentListView"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2751
    :cond_0
    if-eqz p1, :cond_1

    .line 2753
    move-object v0, p1

    .line 2754
    .local v0, attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const/4 v1, 0x0

    .line 2755
    .local v1, index:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2756
    .local v2, size:I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2757
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;)V

    .line 2756
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2761
    .end local v0           #attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    .end local v1           #index:I
    .end local v2           #size:I
    :cond_1
    return-void
.end method

.method public addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;)V
    .locals 19
    .parameter "attachmentSaved"

    .prologue
    .line 2764
    sget-boolean v14, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v14, :cond_0

    const-string v14, "kkahn/Mms/MmsSinglePageActivity"

    const-string v15, "addAttachmentOneView"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2765
    :cond_0
    move-object/from16 v4, p1

    .line 2768
    .local v4, attachment:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 2769
    .local v8, factory:Landroid/view/LayoutInflater;
    new-instance v5, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v5, v14}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2770
    .local v5, attachmentInfo:Landroid/view/View;
    const v14, 0x7f040014

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2774
    const v14, 0x7f0b0036

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2775
    .local v3, attachName:Landroid/widget/TextView;
    const v14, 0x7f0b0035

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2779
    .local v1, attachImage:Landroid/widget/ImageView;
    const v14, 0x7f0b0038

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    .line 2782
    .local v13, saveButton:Landroid/widget/ImageButton;
    const v14, 0x7f0b003a

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2784
    .local v2, attachList:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2785
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v11, v14, -0x1

    .line 2786
    .local v11, lastIndex_attachmentInfoArr:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 2789
    .local v9, height:I
    invoke-virtual {v4}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v12

    .line 2792
    .local v12, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2793
    .local v7, extension:Ljava/lang/String;
    const/16 v14, 0x2e

    invoke-virtual {v12, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 2794
    .local v10, index:I
    if-ltz v10, :cond_1

    .line 2795
    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 2797
    :cond_1
    const-string v14, "dm"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2798
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".dcf"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2802
    :cond_2
    const-string v14, "cid:"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "Cid:"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2803
    :cond_3
    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 2806
    :cond_4
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2809
    invoke-virtual {v4}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 2810
    .local v6, contentType:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 2811
    const-string v14, "text/x-vCard"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "text/x-vcard"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 2812
    :cond_5
    const v14, 0x7f0200e5

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2825
    :cond_6
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v14, :cond_7

    .line 2826
    const v14, 0x7f0b0043

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 2828
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2830
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG:Z

    if-eqz v14, :cond_8

    .line 2831
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    const/high16 v15, -0x1

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2834
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2837
    invoke-static {v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->setAttachment(Lcom/android/mms/model/AttachmentModel;)V

    .line 2843
    new-instance v14, Lcom/android/mms/ui/MmsSinglePageActivity$18;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/mms/ui/MmsSinglePageActivity$18;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2912
    new-instance v14, Lcom/android/mms/ui/MmsSinglePageActivity$19;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/mms/ui/MmsSinglePageActivity$19;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2920
    return-void

    .line 2813
    :cond_9
    const-string v14, "text/x-vCalendar"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 2814
    const v14, 0x7f0200e4

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2815
    :cond_a
    const-string v14, "text/x-vNote"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 2816
    const v14, 0x7f0200e6

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 2817
    :cond_b
    const-string v14, "text/x-vtodo"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 2818
    const v14, 0x7f0200e4

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 2820
    :cond_c
    const v14, 0x7f0200e3

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public addAudioInfo(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;Lcom/android/mms/model/AudioModel;)V
    .locals 15
    .parameter "audio"
    .parameter "name"
    .parameter
    .parameter "audioModel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/android/mms/model/AudioModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2424
    .local p3, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 2428
    .local v5, factory:Landroid/view/LayoutInflater;
    const v10, 0x7f040014

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    .line 2429
    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2433
    .local v6, height:I
    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    const v11, 0x7f0b0036

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2434
    .local v3, audioName:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    const v11, 0x7f0b0035

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2435
    .local v2, audioImage:Landroid/widget/ImageView;
    const v10, 0x7f0200d8

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2443
    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    const v11, 0x7f0b0038

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    .line 2447
    .local v9, saveButton:Landroid/widget/ImageButton;
    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    const v11, 0x7f0b003a

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2449
    .local v1, attachList:Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    .line 2450
    .local v4, extension:Ljava/lang/String;
    const/16 v10, 0x2e

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 2451
    .local v7, index:I
    if-ltz v7, :cond_0

    .line 2452
    add-int/lit8 v10, v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2454
    :cond_0
    const-string v10, "dm"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2455
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".dcf"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2459
    :cond_1
    const-string v10, "cid:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "Cid:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2460
    :cond_2
    const/4 v10, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 2463
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2465
    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v10, :cond_4

    .line 2466
    const v10, 0x7f0b0043

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 2468
    :cond_4
    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2470
    iget-boolean v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG:Z

    if-eqz v10, :cond_5

    .line 2471
    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    const/high16 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2474
    :cond_5
    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 2476
    .local v8, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v10, 0x3f80

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2477
    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2478
    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2480
    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->setClickUri(Landroid/net/Uri;)V

    .line 2483
    invoke-static/range {p4 .. p4}, Lcom/android/mms/ui/MmsSinglePageActivity;->setAudioModel(Lcom/android/mms/model/AudioModel;)V

    .line 2486
    new-instance v10, Lcom/android/mms/ui/MmsSinglePageActivity$14;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$14;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2598
    new-instance v10, Lcom/android/mms/ui/MmsSinglePageActivity$15;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$15;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2608
    return-void
.end method

.method public addMmsDetailInfoToSlidePresenter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xc

    .line 1940
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "kkahn/Mms/MmsSinglePageActivity"

    const-string v3, "addMmsDetailInfoToSlidePresenter"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    :cond_0
    const-string v0, ""

    .line 1943
    .local v0, displayText:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->viewMessageDetail(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1944
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1947
    .local v1, mTextViewDetail:Landroid/widget/TextView;
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1959
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1960
    invoke-virtual {v1, v4, v4, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1970
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    .line 1971
    const v2, 0x7f0b0043

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 1973
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1976
    return-void
.end method

.method public checkTextSelectorState()Z
    .locals 7

    .prologue
    .line 1493
    const/4 v2, 0x0

    .line 1494
    .local v2, retVal:Z
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_0

    .line 1495
    const v4, 0x7f0b0043

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 1498
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1499
    .local v0, childCount:I
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_1

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkTextSelectorState: childCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    :cond_1
    const/4 v1, 0x0

    .line 1502
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 1504
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1507
    .local v3, viewObject:Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    if-lez v1, :cond_4

    .line 1510
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_2

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hit TextView, i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1515
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_3

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hit TextView, i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "isSelected() TRUE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    :cond_3
    const/4 v2, 0x1

    .line 1502
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1520
    .end local v3           #viewObject:Landroid/view/View;
    :cond_5
    return v2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 1238
    .local v7, action:I
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent(),action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    :cond_0
    and-int/lit16 v0, v7, 0xff

    packed-switch v0, :pswitch_data_0

    .line 1298
    :cond_1
    :goto_0
    :pswitch_0
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent(), bMultiTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bMultiTouchFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouchFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    :cond_2
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    if-eq v0, v8, :cond_3

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouchFinished:Z

    if-ne v0, v8, :cond_d

    .line 1300
    :cond_3
    sput-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouchFinished:Z

    move v0, v8

    .line 1305
    :goto_1
    return v0

    .line 1243
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->startX:I

    .line 1244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->startY:I

    goto :goto_0

    .line 1249
    :pswitch_2
    sput-boolean v8, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    .line 1250
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_4

    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ACTION_POINTER_DOWN], bMultiTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    :cond_4
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    .line 1252
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->initMotionEventForPinchZoom()V

    .line 1255
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->findFirstVisibleTextView()V

    goto :goto_0

    .line 1261
    :pswitch_3
    sput-boolean v8, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouchFinished:Z

    .line 1262
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_6

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ACTION_POINTER_UP], bMultiTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :cond_6
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    .line 1265
    :cond_7
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->invokeRefreshTextArea()V

    goto/16 :goto_0

    .line 1269
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->endX:I

    .line 1270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->endY:I

    .line 1271
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_8

    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ACTION_UP]startY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->startY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    :cond_8
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    .line 1274
    :cond_9
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-eq v0, v8, :cond_a

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-nez v0, :cond_1

    .line 1276
    :cond_a
    iget v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->startX:I

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->endX:I

    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->startY:I

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->endY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MmsSinglePageActivity;->touchListener(IIIIJ)V

    goto/16 :goto_0

    .line 1282
    :pswitch_5
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_b

    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ACTION_MOVE],bMultiTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    :cond_b
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    .line 1284
    :cond_c
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    if-ne v0, v8, :cond_1

    .line 1285
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->enqueueMotionEvent(Landroid/view/MotionEvent;)V

    .line 1287
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->invokeResizeTextAreaOnlySelectedItem()V

    goto/16 :goto_0

    .line 1305
    :cond_d
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    .line 1241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public findAttachmentList(JZ)Ljava/util/ArrayList;
    .locals 2
    .parameter "msgId"
    .parameter "isSpam"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2040
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/mms/content/MmsPartExport;->getMmsAttachmentsAsModelList(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentList:Ljava/util/ArrayList;

    .line 2041
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2044
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    const-string v1, "findAttachmentList > No Attachment"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 5
    .parameter "contactList"

    .prologue
    const/4 v4, 0x1

    .line 4070
    const-string v2, ""

    .line 4071
    .local v2, recipient:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 4072
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 4073
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 4075
    .local v0, addr:Ljava/lang/String;
    const-string v3, "CBmessages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4076
    const v3, 0x7f0c00fb

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4092
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    :goto_0
    return-object v2

    .line 4078
    .restart local v0       #addr:Ljava/lang/String;
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    :cond_1
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4079
    const v3, 0x7f0c0161

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4081
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4083
    const v3, 0x7f0c013b

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4085
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4088
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 4089
    const-string v3, ", "

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3964
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    .line 3965
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3968
    :goto_0
    return-object v0

    .line 3967
    :cond_0
    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "mContactList is null!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3968
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3942
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    .line 3943
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 3946
    :goto_0
    return-object v0

    .line 3945
    :cond_0
    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "mRecipients is null!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3946
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3973
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v1, :cond_0

    .line 3974
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->hasName()Z

    move-result v0

    .line 3977
    :goto_0
    return v0

    .line 3976
    :cond_0
    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "mContactList is null!!!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hideSipForDirectCall()V
    .locals 0

    .prologue
    .line 4026
    return-void
.end method

.method public isAvailableDirectCall()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3983
    invoke-static {p0}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3990
    :cond_0
    :goto_0
    return v0

    .line 3986
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3990
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

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

    .line 3520
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "markAsRead()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3522
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    .line 3523
    if-eqz p2, :cond_1

    .line 3524
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMMSRead:I

    if-ne v0, v10, :cond_2

    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSeen:I

    if-ne v0, v10, :cond_2

    .line 3525
    if-eqz p1, :cond_0

    .line 3526
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3736
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3531
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMMSRead:I

    if-ne v0, v10, :cond_2

    .line 3532
    if-eqz p1, :cond_0

    .line 3533
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3520
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3539
    :cond_2
    :try_start_2
    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3540
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3541
    sget-object v0, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 3542
    .local v7, SpammsgUri:Landroid/net/Uri;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 3543
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3544
    if-eqz p2, :cond_3

    .line 3545
    const-string v0, "seen"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3548
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3549
    if-eqz p2, :cond_5

    .line 3550
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3551
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v7, v9, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3552
    const-wide/16 v0, -0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 3554
    if-eqz p1, :cond_0

    .line 3555
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3558
    :cond_4
    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const/16 v4, 0x80

    new-instance v5, Lcom/android/mms/ui/MmsSinglePageActivity$22;

    invoke-direct {v5, p0, v7, v9, p1}, Lcom/android/mms/ui/MmsSinglePageActivity$22;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1, v4, v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto :goto_0

    .line 3569
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v7, v9, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3570
    const-wide/16 v0, -0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 3571
    if-eqz p1, :cond_0

    .line 3572
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 3577
    :cond_6
    if-eqz p2, :cond_8

    .line 3578
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3579
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v7, v9, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3580
    const-wide/16 v0, -0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 3581
    if-eqz p1, :cond_0

    .line 3582
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 3585
    :cond_7
    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const/16 v4, 0x80

    new-instance v5, Lcom/android/mms/ui/MmsSinglePageActivity$23;

    invoke-direct {v5, p0, v7, v9, p1}, Lcom/android/mms/ui/MmsSinglePageActivity$23;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1, v4, v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportDataOne(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3599
    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v7, v9, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3600
    const-wide/16 v0, -0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 3601
    if-eqz p1, :cond_0

    .line 3602
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 3607
    .end local v7           #SpammsgUri:Landroid/net/Uri;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_9
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 3608
    .local v2, msgUri:Landroid/net/Uri;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 3609
    .restart local v9       #values:Landroid/content/ContentValues;
    const-string v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3610
    if-eqz p2, :cond_a

    .line 3611
    const-string v0, "seen"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3613
    :cond_a
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

    .line 3618
    .local v3, PROJECTION_READ_SEEN:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3620
    .local v8, readCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_d

    .line 3621
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3623
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_c

    .line 3624
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_c

    .line 3625
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v10, :cond_b

    .line 3626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_read:Z

    .line 3627
    :cond_b
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v10, :cond_c

    .line 3628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_seen:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3632
    :cond_c
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3636
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3637
    if-eqz p2, :cond_10

    .line 3638
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3639
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3640
    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const/16 v4, 0x80

    new-instance v5, Lcom/android/mms/ui/MmsSinglePageActivity$24;

    invoke-direct {v5, p0, v2, v9, p1}, Lcom/android/mms/ui/MmsSinglePageActivity$24;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1, v4, v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOneForMmsWithoutConfirmDlg(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3632
    :catchall_1
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3653
    :cond_e
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v9, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3654
    const-wide/16 v0, -0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 3656
    if-eqz p1, :cond_0

    .line 3657
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 3661
    :cond_f
    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const/16 v4, 0x80

    new-instance v5, Lcom/android/mms/ui/MmsSinglePageActivity$25;

    invoke-direct {v5, p0, v2, v9, p1}, Lcom/android/mms/ui/MmsSinglePageActivity$25;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1, v4, v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3678
    :cond_10
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v9, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3679
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_read:Z

    if-eqz v0, :cond_11

    .line 3680
    const-wide/16 v0, -0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 3683
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_read:Z

    .line 3684
    if-eqz p1, :cond_0

    .line 3685
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 3689
    :cond_12
    if-eqz p2, :cond_15

    .line 3690
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3691
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v9, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3692
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_seen:Z

    if-eqz v0, :cond_13

    .line 3693
    const-wide/16 v0, -0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 3696
    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_seen:Z

    .line 3697
    if-eqz p1, :cond_0

    .line 3698
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 3701
    :cond_14
    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const/16 v4, 0x80

    new-instance v5, Lcom/android/mms/ui/MmsSinglePageActivity$26;

    invoke-direct {v5, p0, v2, v9, p1}, Lcom/android/mms/ui/MmsSinglePageActivity$26;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1, v4, v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportDataOne(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3718
    :cond_15
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v9, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3719
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_read:Z

    if-eqz v0, :cond_16

    .line 3720
    const-wide/16 v0, -0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 3723
    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_read:Z

    .line 3724
    if-eqz p1, :cond_0

    .line 3725
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 3731
    .end local v2           #msgUri:Landroid/net/Uri;
    .end local v3           #PROJECTION_READ_SEEN:[Ljava/lang/String;
    .end local v8           #readCursor:Landroid/database/Cursor;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_17
    if-eqz p1, :cond_0

    .line 3732
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3062
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 3064
    packed-switch p2, :pswitch_data_0

    .line 3084
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->updateFontsizeForTextAreaVolumeKey()V

    .line 3088
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3089
    :goto_0
    return-void

    .line 3068
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    goto :goto_0

    .line 3064
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 1773
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->findCurrentScrollPos()V

    .line 1775
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1777
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mScrollHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/MmsSinglePageActivity$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$9;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1783
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1784
    const-string v0, "Mms/MmsSinglePageActivity"

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

    .line 1790
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->updateActionBarTextSize()V

    .line 1791
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->invalidateOptionsMenu()V

    .line 1792
    return-void

    .line 1786
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1787
    const-string v0, "Mms/MmsSinglePageActivity"

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

    .line 264
    const-string v0, "onCreate()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    .line 266
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 269
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->requestWindowFeature(I)Z

    .line 270
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 271
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mScrollHandler:Landroid/os/Handler;

    .line 274
    const v0, 0x7f04005e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->setContentView(I)V

    .line 275
    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 277
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getMessageInformationFromIntent()V

    .line 278
    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-string v3, "mms"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 280
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    .line 372
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 287
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-string v6, "mms"

    const/4 v7, 0x2

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    .line 293
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->updateFailedFlag()V

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 298
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->isValidSlideShow()Z

    move-result v0

    if-nez v0, :cond_4

    .line 299
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    goto :goto_0

    .line 289
    :cond_2
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-string v6, "mms"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_1

    .line 291
    :cond_3
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-string v6, "mms"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_1

    .line 304
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->inflateTitleHeader_Subject()V

    .line 306
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSlideShowModelLen:I

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no of slides "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSlideShowModelLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    .line 316
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->createModel()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->init()V

    .line 328
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->model:Lcom/android/mms/model/SlideshowModel;

    iget v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSlideShowModelLen:I

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentSlide_inOnePage(Lcom/android/mms/model/SlideshowModel;I)V

    .line 329
    const/4 v0, 0x4

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    .line 331
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getMmsRecipients(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRecipients:Ljava/util/ArrayList;

    .line 332
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->createDirectCallingManager()V

    .line 334
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$2;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {p0, v0, v9}, Lcom/android/mms/ui/MmsSinglePageActivity;->markAsRead(Ljava/lang/Runnable;Z)V

    .line 340
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_5

    .line 341
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {p0, v0, v1, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    .line 342
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 343
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 344
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v1, v9}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    const-string v1, "clipboardEx"

    invoke-virtual {v0, v1}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    .line 352
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x320

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mBlockFlickUntilMillis:J

    goto/16 :goto_0

    .line 317
    :catch_0
    move-exception v8

    .line 318
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "Cannot present the slide show."

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 319
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1152
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1154
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 1156
    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1160
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1161
    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    .line 1162
    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 1164
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v0, :cond_2

    .line 1165
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 1166
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2940
    sget-boolean v6, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v6, :cond_0

    const-string v6, "Mms/MmsSinglePageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onKeyDown(),keyCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2942
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2943
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    .line 3017
    :cond_1
    :goto_0
    return v4

    .line 2946
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 3017
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    .line 2948
    :sswitch_0
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-lt v6, v5, :cond_1

    .line 2950
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-eq v6, v5, :cond_4

    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-le v6, v5, :cond_3

    .line 2951
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v7, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    move v4, v5

    .line 2952
    goto :goto_0

    .line 2958
    :sswitch_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2964
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MmsSinglePageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 2965
    .local v2, manager:Landroid/media/AudioManager;
    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v6

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->misTalkbackOn:Z

    if-nez v6, :cond_1

    .line 2969
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2970
    .local v3, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2972
    .local v1, idxMsgPreferFontSize:I
    add-int/lit8 v1, v1, 0x1

    .line 2974
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2975
    .local v0, editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2976
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2979
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->updateFontsizeForTextAreaVolumeKey()V

    move v4, v5

    .line 2980
    goto :goto_0

    .end local v0           #editprefs:Landroid/content/SharedPreferences$Editor;
    .end local v1           #idxMsgPreferFontSize:I
    .end local v2           #manager:Landroid/media/AudioManager;
    .end local v3           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_5
    move v4, v5

    .line 2983
    goto :goto_0

    .line 2988
    :sswitch_2
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2994
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MmsSinglePageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 2995
    .restart local v2       #manager:Landroid/media/AudioManager;
    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v6

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->misTalkbackOn:Z

    if-nez v6, :cond_1

    .line 2999
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3000
    .restart local v3       #sharedPrefs:Landroid/content/SharedPreferences;
    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3002
    .restart local v1       #idxMsgPreferFontSize:I
    add-int/lit8 v1, v1, -0x1

    .line 3004
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3005
    .restart local v0       #editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3006
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3009
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->updateFontsizeForTextAreaVolumeKey()V

    move v4, v5

    .line 3010
    goto/16 :goto_0

    .end local v0           #editprefs:Landroid/content/SharedPreferences$Editor;
    .end local v1           #idxMsgPreferFontSize:I
    .end local v2           #manager:Landroid/media/AudioManager;
    .end local v3           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_6
    move v4, v5

    .line 3013
    goto/16 :goto_0

    .line 2946
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 3022
    const-string v1, "Mms/MmsSinglePageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp(),keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 3023
    sparse-switch p1, :sswitch_data_0

    .line 3056
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 3028
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3031
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->exitMmsSinglePageActivity()V

    goto :goto_0

    .line 3035
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3044
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3023
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/16 v5, 0x1d

    const/4 v1, 0x1

    .line 867
    const-string v2, "Mms/MmsSinglePageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOptionsItemSelected(),item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 876
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v2, :cond_5

    .line 877
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_0

    .line 878
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAddContactIntent:Landroid/content/Intent;

    .line 879
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAddContactIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 884
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    .line 885
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 888
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x2400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 889
    const-string v2, "msgId"

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 890
    const-string v2, "thread_id"

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 891
    const-string v2, "fromMmsSinglePageActivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 892
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v2, :cond_1

    .line 893
    const-string v2, "isSpam"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 896
    :cond_1
    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 901
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    .line 902
    .local v1, result:Z
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v2, :cond_4

    .line 903
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/MessageOptions;->SpamOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 914
    .end local v1           #result:Z
    :cond_3
    :goto_0
    return v1

    .line 872
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->exitMmsSinglePageActivity()V

    goto :goto_0

    .line 905
    .restart local v1       #result:Z
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 906
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_3

    .line 907
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 908
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    goto :goto_0

    .line 914
    .end local v1           #result:Z
    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1110
    const-string v5, "onPause()"

    invoke-direct {p0, v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1114
    iget-boolean v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mCheckTextViewSelectable:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    .line 1115
    iput-boolean v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mCheckTextViewSelectable:Z

    .line 1116
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1117
    .local v0, childCount:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1118
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1119
    .local v3, objView:Landroid/view/View;
    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    move-object v4, v3

    .line 1120
    check-cast v4, Landroid/widget/TextView;

    .line 1121
    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 1122
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mCheckTextViewSelectable:Z

    .line 1117
    .end local v4           #textView:Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1127
    .end local v0           #childCount:I
    .end local v2           #i:I
    .end local v3           #objView:Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v5, :cond_2

    .line 1129
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v5, p0}, Lcom/android/mms/util/DirectCallingManager;->pause(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    :cond_2
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1135
    return-void

    .line 1130
    :catch_0
    move-exception v1

    .line 1131
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 839
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 840
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v0, :cond_0

    .line 841
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v0, :cond_2

    .line 842
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createSpamOptionsMenu(Landroid/view/Menu;)V

    .line 849
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-nez v0, :cond_1

    .line 850
    const/16 v0, 0x64

    const v1, 0x7f0c03c0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200aa

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 854
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 844
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1078
    const-string v5, "onResume()"

    invoke-direct {p0, v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    .line 1080
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1081
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1082
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v5, :cond_0

    .line 1084
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v5, p0}, Lcom/android/mms/util/DirectCallingManager;->resume(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mCheckTextViewSelectable:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_2

    .line 1091
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1092
    .local v0, childCount:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1093
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1094
    .local v3, objView:Landroid/view/View;
    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    move-object v4, v3

    .line 1095
    check-cast v4, Landroid/widget/TextView;

    .line 1096
    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1097
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1098
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 1092
    .end local v4           #textView:Landroid/widget/TextView;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1085
    .end local v0           #childCount:I
    .end local v2           #i:I
    .end local v3           #objView:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 1086
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1103
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mCheckTextViewSelectable:Z

    .line 1105
    invoke-static {p0}, Lcom/android/mms/util/PackageInfo;->isTalkBackAvailable(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->misTalkbackOn:Z

    .line 1106
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 433
    const-string v0, "onStart()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    .line 434
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 436
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->isExitCase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->initActionBar()V

    .line 442
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->drawTitle_Subject()V

    .line 443
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->updateTitleIcon()V

    .line 452
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->addRecipientsListener()V

    .line 457
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1138
    const-string v0, "onStop()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    .line 1139
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1140
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 1146
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->removeRecipientsListener()V

    .line 1147
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 4003
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4005
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4021
    :cond_0
    :goto_0
    return-void

    .line 4007
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4010
    :cond_2
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$28;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$28;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected presentAudioInfoOnly(Lcom/android/mms/model/AudioModel;Z)V
    .locals 3
    .parameter "audio"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1936
    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->addAudioInfo(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;Lcom/android/mms/model/AudioModel;)V

    .line 1937
    return-void
.end method

.method protected presentImage(Lcom/android/mms/model/ImageModel;I)V
    .locals 2
    .parameter "image"
    .parameter "slideIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1918
    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1919
    .local v0, contentType:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1920
    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1922
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/mms/ui/MmsSinglePageActivity;->setImageWithFrame(Ljava/lang/String;Lcom/android/mms/model/ImageModel;I)V

    .line 1923
    return-void
.end method

.method protected presentText(Lcom/android/mms/model/TextModel;I)V
    .locals 6
    .parameter "text"
    .parameter "slideIndex"

    .prologue
    .line 2052
    const/4 v3, 0x0

    .line 2053
    .local v3, showAttachment:Z
    invoke-virtual {p1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 2054
    .local v0, msgText:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0132

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2055
    .local v2, notShownStrOne:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0133

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2057
    .local v1, notShownStrMore:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0, v3, p2}, Lcom/android/mms/ui/MmsSinglePageActivity;->setTextWithTextView(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 2058
    return-void
.end method

.method protected presentVideo(Lcom/android/mms/model/VideoModel;I)V
    .locals 3
    .parameter "video"
    .parameter "slideIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1926
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->createVideoThumbnailForManualPlay(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1928
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1929
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020222

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1932
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p2, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/mms/model/VideoModel;)V

    .line 1933
    return-void
.end method

.method public setImageWithFrame(Ljava/lang/String;Lcom/android/mms/model/ImageModel;I)V
    .locals 10
    .parameter "name"
    .parameter "imageModel"
    .parameter "slideIndex"

    .prologue
    .line 2093
    sget-boolean v7, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v7, :cond_0

    const-string v7, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:setImageWithFrame/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",index="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2097
    .local v2, factory:Landroid/view/LayoutInflater;
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2098
    .local v3, imageArea:Landroid/view/View;
    const v7, 0x7f04005c

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2099
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2102
    const v7, 0x7f0b0200

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2104
    .local v4, mImageView:Landroid/widget/ImageView;
    const v7, 0x7f0b0202

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 2106
    .local v5, saveButton:Landroid/widget/ImageButton;
    const v7, 0x7f0b0201

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 2107
    .local v6, videoPlayButton:Landroid/widget/ImageView;
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2112
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2113
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 2114
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02003d

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2117
    :cond_1
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2124
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v7, :cond_2

    .line 2125
    const v7, 0x7f0b0043

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 2127
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2132
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->setClickUri(Landroid/net/Uri;)V

    .line 2133
    invoke-static {p3}, Lcom/android/mms/ui/MmsSinglePageActivity;->setSlideIndex(I)V

    .line 2135
    invoke-static {p2}, Lcom/android/mms/ui/MmsSinglePageActivity;->setImageModel(Lcom/android/mms/model/ImageModel;)V

    .line 2138
    new-instance v7, Lcom/android/mms/ui/MmsSinglePageActivity$10;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$10;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2189
    new-instance v7, Lcom/android/mms/ui/MmsSinglePageActivity$11;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$11;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2199
    return-void

    .line 2118
    :catch_0
    move-exception v1

    .line 2119
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v7, "Mms/MmsSinglePageActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OutOfMemoryError"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2120
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 2121
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLockIcon(Z)V
    .locals 3
    .parameter "islock"

    .prologue
    .line 714
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLockIcon(), islock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_0
    if-eqz p1, :cond_1

    .line 716
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon02:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 721
    :goto_0
    return-void

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon02:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setScrollPosition(I)V
    .locals 7
    .parameter "mode"

    .prologue
    const/4 v6, 0x0

    .line 1806
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v3, :cond_0

    .line 1807
    const v3, 0x7f0b020c

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    .line 1809
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1849
    :cond_1
    :goto_0
    return-void

    .line 1811
    :pswitch_0
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_2

    const-string v3, "Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setScrollPosition**SCROLL_MODE_TOP]mMainScrollView.getScrollY() (1)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v6, v6}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1813
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_3

    const-string v3, "Mms/MmsSinglePageActivity"

    const-string v4, "[setScrollPosition]mMainScrollView.scrollTo(0, 0)"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    :cond_3
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_1

    const-string v3, "Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setScrollPosition]mMainScrollView.getScrollY() (2)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1822
    :pswitch_1
    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY:I

    if-lez v3, :cond_6

    .line 1823
    iput v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY_changed:I

    .line 1824
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_4

    .line 1825
    const v3, 0x7f0b0043

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 1827
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1828
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 1830
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1831
    .local v2, viewObject:Landroid/view/View;
    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY_changed:I

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY_changed:I

    .line 1828
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1834
    .end local v2           #viewObject:Landroid/view/View;
    :cond_5
    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY:I

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY_changed:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY_changed:I

    .line 1835
    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY_changed:I

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY:I

    .line 1837
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_6
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_7

    const-string v3, "Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setScrollPosition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY_changed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",totalHeightY_changed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY_changed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    :cond_7
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_8

    const-string v3, "Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setScrollPosition**SCROLL_MODE_KEEP_LATEST_POS]mMainScrollView.getScrollY() (1)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    :cond_8
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY:I

    invoke-virtual {v3, v6, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1842
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_9

    const-string v3, "Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setScrollPosition]mMainScrollView.scrollTo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    :cond_9
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_1

    const-string v3, "Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setScrollPosition]mMainScrollView.getScrollY() (2)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1809
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTextWithTextView(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 6
    .parameter "name"
    .parameter "text"
    .parameter "isAttachment"
    .parameter "slideIndex"

    .prologue
    const/16 v5, 0xe

    const/4 v4, 0x1

    .line 2612
    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:setTextWithTextView(),slideIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\ntext***start***\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\ntext***end***\n,isAttachment="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2618
    .local v0, mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2620
    if-nez p3, :cond_1

    .line 2621
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2622
    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    .line 2626
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2627
    const/4 v1, 0x4

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2631
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2632
    const/high16 v1, 0x4000

    invoke-static {v1}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2633
    const-string v1, "#00AEEF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 2635
    const/16 v1, 0xc

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2636
    iget-boolean v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG:Z

    if-eqz v1, :cond_2

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 2640
    :cond_2
    invoke-static {p2}, Lcom/android/mms/ui/MessageUtils;->formatMessage_smiley(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2645
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 2648
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2649
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2650
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 2653
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_3

    .line 2654
    const v1, 0x7f0b0043

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 2656
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2657
    return-void

    .line 2629
    :cond_4
    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method public setTitleIcon()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 698
    const-string v2, "mms"

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->isLockmessage(Ljava/lang/String;JLandroid/content/ContentResolver;)J

    move-result-wide v0

    .line 699
    .local v0, isMsgLock:J
    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "Mms/MmsSinglePageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTitleIcon, isMsgLock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon02:Landroid/widget/ImageView;

    const v3, 0x7f020218

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 701
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 702
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 707
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 708
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon01:Landroid/widget/ImageView;

    const v3, 0x7f020217

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 709
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 711
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->adjustSubjectWidth()V

    .line 712
    return-void

    .line 704
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon02:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/mms/model/VideoModel;)V
    .locals 10
    .parameter "name"
    .parameter "bitmap"
    .parameter "slideIndex"
    .parameter "videoModel"

    .prologue
    const/4 v9, 0x0

    .line 2310
    sget-boolean v6, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v6, :cond_0

    const-string v6, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:setImage/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2314
    .local v1, factory:Landroid/view/LayoutInflater;
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2315
    .local v4, videoArea:Landroid/view/View;
    const v6, 0x7f04005c

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2316
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2319
    const v6, 0x7f0b0200

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2321
    .local v2, mImageView:Landroid/widget/ImageView;
    const v6, 0x7f0b0202

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 2323
    .local v3, saveButton:Landroid/widget/ImageButton;
    const v6, 0x7f0b0201

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 2324
    .local v5, videoPlayButton:Landroid/widget/ImageView;
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2327
    if-nez p2, :cond_1

    .line 2328
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02003e

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 2332
    :cond_1
    if-eqz p2, :cond_3

    .line 2333
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {p0, v2, v6, v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->preCalculateImageBoudns(Landroid/widget/ImageView;II)V

    .line 2334
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2346
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v6, :cond_2

    .line 2347
    const v6, 0x7f0b0043

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 2349
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2353
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MmsSinglePageActivity;->setClickUri(Landroid/net/Uri;)V

    .line 2354
    invoke-static {p3}, Lcom/android/mms/ui/MmsSinglePageActivity;->setSlideIndex(I)V

    .line 2355
    invoke-static {p4}, Lcom/android/mms/ui/MmsSinglePageActivity;->setVideoModel(Lcom/android/mms/model/VideoModel;)V

    .line 2358
    new-instance v6, Lcom/android/mms/ui/MmsSinglePageActivity$12;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$12;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2411
    new-instance v6, Lcom/android/mms/ui/MmsSinglePageActivity$13;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$13;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2421
    return-void

    .line 2336
    :cond_3
    :try_start_1
    const-string v6, "Mms/MmsSinglePageActivity"

    const-string v7, "video thumbnail bitmap is null"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2338
    :catch_0
    move-exception v0

    .line 2339
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v6, "Mms/MmsSinglePageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OutOfMemoryError"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public viewContactDetailORList()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 600
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-nez v5, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.contacts"

    invoke-static {v5, v6}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.jcontacts"

    invoke-static {v5, v6}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 606
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-ne v5, v7, :cond_6

    .line 607
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 608
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 609
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 610
    .local v3, intent:Landroid/content/Intent;
    const/high16 v5, 0x2408

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 613
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactReplacePackageAs()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.jcontacts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 614
    const-string v5, "com.android.jcontacts"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 618
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_5

    .line 620
    const-string v5, "Mms/MmsSinglePageActivity"

    const-string v6, "getPhonemuber address is null"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 624
    :cond_5
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 625
    :catch_0
    move-exception v2

    .line 626
    .local v2, ex:Landroid/content/ActivityNotFoundException;
    const-string v5, "Mms/MmsSinglePageActivity"

    const-string v6, "Activity not found do not anyting!!!!"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 629
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #ex:Landroid/content/ActivityNotFoundException;
    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-le v5, v7, :cond_0

    .line 630
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v4

    .line 631
    .local v4, recipients:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v5

    if-nez v5, :cond_7

    .line 632
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/ui/RecipientListActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 633
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "recipients"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 636
    .end local v3           #intent:Landroid/content/Intent;
    :cond_7
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 637
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "recipients"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public viewMessageDetail(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 12
    .parameter "msgItem"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1979
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const/4 v0, 0x1

    const-string v5, "m_type"

    aput-object v5, v2, v0

    const/4 v0, 0x2

    const-string v5, "msg_box"

    aput-object v5, v2, v0

    .line 1987
    .local v2, PROJECTION_Mms:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1989
    .local v9, address:Ljava/lang/String;
    const-string v11, ""

    .line 1995
    .local v11, messageDetails:Ljava/lang/String;
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v0, :cond_1

    .line 1996
    sget-object v0, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1999
    .local v1, messageUri:Landroid/net/Uri;
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 2004
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_0

    .line 2006
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2007
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v5, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v8

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 2018
    if-eqz v4, :cond_0

    .line 2019
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2023
    :cond_0
    return-object v11

    .line 1998
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v4           #cursor:Landroid/database/Cursor;
    :cond_1
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #messageUri:Landroid/net/Uri;
    goto :goto_0

    .line 2015
    .restart local v4       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 2016
    .local v10, e:Landroid/view/WindowManager$BadTokenException;
    :try_start_1
    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v3, "Failed view message details"

    invoke-static {v0, v3, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2018
    if-eqz v4, :cond_0

    goto :goto_1

    .end local v10           #e:Landroid/view/WindowManager$BadTokenException;
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_2

    .line 2019
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2018
    :cond_2
    throw v0
.end method
