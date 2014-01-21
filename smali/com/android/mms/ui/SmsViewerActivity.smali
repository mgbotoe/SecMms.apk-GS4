.class public Lcom/android/mms/ui/SmsViewerActivity;
.super Landroid/app/Activity;
.source "SmsViewerActivity.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/android/mms/ui/DirectCallActivityInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SmsViewerActivity$TtsInstallDlgKeyListener;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x32

.field static final COLUMN_SMS_DATE:I = 0x4

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x1b

.field public static final REQUEST_CODE_ADD_CONTACT:I = 0x1d

.field private static final TAG:Ljava/lang/String; = "Mms/SmsViewerActivity"

.field private static sOldLocale:Ljava/util/Locale;


# instance fields
.field public final FOLDER_NAVI_COLUMN_MSG_ID:I

.field public final FOLDER_NAVI_COLUMN_MSG_TYPE:I

.field public final FOLDER_NAVI_COLUMN_THREAD_ID:I

.field private PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

.field private bMultiTouch:Z

.field private endX:I

.field private isWapPush:Z

.field private mActionbarNormalListLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListTitle:Landroid/widget/TextView;

.field private mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListTitleNumber:Landroid/widget/TextView;

.field private mAddContactIntent:Landroid/content/Intent;

.field mBlockFlickUntilMillis:J

.field mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

.field private mContactList:Lcom/android/mms/data/ContactList;

.field private mContext:Landroid/content/Context;

.field private mDate:J

.field private mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

.field private mEndSlideAnim:I

.field public mFontSize:F

.field private mIntent:Landroid/content/Intent;

.field private mMainScrollView:Landroid/widget/ScrollView;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgOptions:Lcom/android/mms/ui/MessageOptions;

.field private final mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

.field private final mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

.field private mRequestLockedMessageView:Z

.field private mRequestReservedMessageView:Z

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mSeen:I

.field private mSelectedText:Ljava/lang/String;

.field private mSelectedUrl:Ljava/lang/String;

.field private mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSmsBodyView:Landroid/widget/TextView;

.field private mSmsViewerLayout:Landroid/widget/LinearLayout;

.field private mStartSlideAnim:I

.field private mSubTitleView:Landroid/widget/TextView;

.field private mTextSizeController:Lcom/android/mms/ui/TextSizeController;

.field private mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

.field misTalkbackOn:Z

.field private msgId:J

.field private msgUri:Landroid/net/Uri;

.field private startX:I

.field private final stateChangeObserver:Landroid/database/ContentObserver;

.field private threadId:J

.field update_read:Z

.field update_seen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/SmsViewerActivity;->sOldLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 119
    iput-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgUri:Landroid/net/Uri;

    .line 124
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 138
    sget-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_FONT_SIZE:[F

    aget v0, v0, v6

    iput v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mFontSize:F

    .line 139
    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    .line 140
    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestReservedMessageView:Z

    .line 142
    iput-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 143
    iput-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 144
    iput-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    .line 145
    iput-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    .line 150
    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    .line 152
    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->update_read:Z

    .line 153
    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->update_seen:Z

    .line 157
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mBlockFlickUntilMillis:J

    .line 158
    iput v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSeen:I

    .line 159
    iput-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->misTalkbackOn:Z

    .line 161
    new-instance v0, Lcom/android/mms/ui/SmsViewerActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SmsViewerActivity$1;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    .line 1486
    new-instance v0, Lcom/android/mms/ui/SmsViewerActivity$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SmsViewerActivity$12;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 1561
    new-instance v0, Lcom/android/mms/ui/SmsViewerActivity$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SmsViewerActivity$13;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

    .line 1588
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "m_type"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

    .line 1591
    iput v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->FOLDER_NAVI_COLUMN_MSG_TYPE:I

    .line 1592
    iput v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->FOLDER_NAVI_COLUMN_MSG_ID:I

    .line 1593
    iput v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->FOLDER_NAVI_COLUMN_THREAD_ID:I

    .line 1785
    iput-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMainScrollView:Landroid/widget/ScrollView;

    return-void
.end method

.method private UpdateActionBarTitleWithNumber()V
    .locals 11

    .prologue
    const/16 v8, 0x8

    const/high16 v10, 0x4080

    const/high16 v9, 0x4000

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 315
    .local v0, config:Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    move v1, v4

    .line 317
    .local v1, mIsLandscape:Z
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 319
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SmsViewerActivity;->getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, recipientsString:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 324
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 326
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDisplayNameAndNumberonTitle()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 327
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-ne v6, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->hasName()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, phoneNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 331
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 333
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    if-eqz v1, :cond_3

    .line 338
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v7, 0x4188

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 339
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v7, 0x4140

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 342
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-static {v9}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    invoke-static {v9}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v7

    invoke-virtual {v4, v6, v5, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 343
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-static {v9}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    const/high16 v7, 0x3f80

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v7

    invoke-virtual {v4, v6, v5, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 361
    .end local v2           #phoneNumber:Ljava/lang/String;
    .end local v3           #recipientsString:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .end local v1           #mIsLandscape:Z
    :cond_2
    move v1, v5

    .line 315
    goto/16 :goto_0

    .line 345
    .restart local v1       #mIsLandscape:Z
    .restart local v2       #phoneNumber:Ljava/lang/String;
    .restart local v3       #recipientsString:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v7, 0x4198

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 346
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v7, 0x4160

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 348
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-static {v10}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    invoke-static {v9}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v7

    invoke-static {v10}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v8

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 349
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-static {v10}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    invoke-static {v9}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v7

    invoke-virtual {v4, v6, v5, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 354
    .end local v2           #phoneNumber:Ljava/lang/String;
    .end local v3           #recipientsString:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 355
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const v5, 0x7f0c013b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 359
    :goto_2
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 357
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const v5, 0x7f0c000b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SmsViewerActivity;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SmsViewerActivity;)Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SmsViewerActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/SmsViewerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SmsViewerActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/SmsViewerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SmsViewerActivity;)Landroid/text/style/ForegroundColorSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SmsViewerActivity;)Lcom/android/mms/data/ContactList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SmsViewerActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SmsViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->initActionBar()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SmsViewerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->drawTitle()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SmsViewerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->startX:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SmsViewerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->endX:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SmsViewerActivity;IIJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/SmsViewerActivity;->flickMessage(IIJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SmsViewerActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgUri:Landroid/net/Uri;

    return-object v0
.end method

.method private addRecipientsListener()V
    .locals 0

    .prologue
    .line 591
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 592
    return-void
.end method

.method private createDirectCallingManager()V
    .locals 2

    .prologue
    .line 234
    invoke-static {p0}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/android/mms/util/DirectCallingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/mms/util/DirectCallingManager;-><init>(ILcom/android/mms/ui/DirectCallActivityInterface;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    goto :goto_0
.end method

.method private drawMainTextView()V
    .locals 8

    .prologue
    .line 794
    const-string v4, "Mms/SmsViewerActivity"

    const-string v5, "==================drawMainTextView start==============="

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v4, :cond_0

    .line 799
    const-string v4, "Mms/SmsViewerActivity"

    const-string v5, "mMsgItem is null"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V

    .line 883
    :goto_0
    return-void

    .line 806
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 808
    .local v2, msgBody_spannable:Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 809
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v3

    .line 810
    .local v3, parser:Lcom/android/mms/util/SmileyParser;
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 812
    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/text/Spannable;I)V

    .line 816
    .end local v3           #parser:Lcom/android/mms/util/SmileyParser;
    :cond_1
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 817
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 818
    const/4 v1, 0x0

    .line 819
    .local v1, length:I
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_5

    .line 820
    const/16 v1, 0x64

    .line 824
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, Body:Ljava/lang/String;
    const-string v4, "GATE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<GATE-M>SMSTEXT:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</GATE-M>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    .end local v0           #Body:Ljava/lang/String;
    .end local v1           #length:I
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 835
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 836
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 838
    const-string v4, "CB#: "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 839
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 840
    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/text/Spannable;I)V

    .line 857
    :cond_3
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mFontSize:F

    .line 858
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mFontSize:F

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 860
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    .line 864
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 865
    const-string v4, "GATE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<GATE-M>SMSTIMESTAMP:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</GATE-M>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    .line 882
    const-string v4, "Mms/SmsViewerActivity"

    const-string v5, "==================drawMainTextView end==============="

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 822
    .restart local v1       #length:I
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    goto/16 :goto_1

    .line 827
    .end local v1           #length:I
    :cond_6
    const-string v4, "GATE"

    const-string v5, "<GATE-M>SMSTEXT:</GATE-M>"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private drawTitle()V
    .locals 10

    .prologue
    .line 889
    const-string v0, "Mms/SmsViewerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawTitle,isWapPush="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-eqz v0, :cond_1

    .line 891
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v5, "wpm"

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ViewTitleHeader;->ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 896
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ViewTitleHeader;->setVisibility(I)V

    .line 898
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mFontSize:F

    .line 900
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 901
    .local v7, Time:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/SmsViewerActivity;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 902
    .local v6, Date:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 905
    .local v8, currentLanguage:Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 906
    :cond_0
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 907
    .local v9, result:Ljava/lang/StringBuffer;
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSubTitleView:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 911
    .end local v9           #result:Ljava/lang/StringBuffer;
    :goto_1
    return-void

    .line 894
    .end local v6           #Date:Ljava/lang/String;
    .end local v7           #Time:Ljava/lang/String;
    .end local v8           #currentLanguage:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v5, "sms"

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ViewTitleHeader;->ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    goto :goto_0

    .line 909
    .restart local v6       #Date:Ljava/lang/String;
    .restart local v7       #Time:Ljava/lang/String;
    .restart local v8       #currentLanguage:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSubTitleView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private flickMessage(IIJ)V
    .locals 21
    .parameter "startTouchX"
    .parameter "endTouchX"
    .parameter "eventTime"

    .prologue
    .line 1079
    const/4 v13, 0x0

    .line 1080
    .local v13, movedX:I
    const/4 v14, 0x0

    .line 1081
    .local v14, msgCount:I
    const/16 v19, 0x0

    .line 1082
    .local v19, notiIndMmsCount:I
    const/4 v10, 0x0

    .line 1083
    .local v10, curPos:I
    const/16 v18, 0x0

    .line 1089
    .local v18, nextPos:I
    sub-int v13, p1, p2

    .line 1091
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v4, 0x96

    if-le v2, v4, :cond_2

    .line 1092
    if-gez v13, :cond_1

    .line 1093
    const/4 v8, 0x1

    .line 1102
    .local v8, bFlicktoNext:Z
    :goto_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->mBlockFlickUntilMillis:J

    cmp-long v2, p3, v4

    if-gez v2, :cond_3

    .line 1103
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    .line 1287
    .end local v8           #bFlicktoNext:Z
    :cond_0
    :goto_1
    return-void

    .line 1095
    :cond_1
    const/4 v8, 0x0

    .restart local v8       #bFlicktoNext:Z
    goto :goto_0

    .line 1098
    .end local v8           #bFlicktoNext:Z
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    goto :goto_1

    .line 1107
    .restart local v8       #bFlicktoNext:Z
    :cond_3
    const/4 v3, 0x0

    .line 1108
    .local v3, contentThreadUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 1110
    .local v9, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v2, :cond_4

    .line 1111
    const-string v2, "Mms/SmsViewerActivity"

    const-string v4, "flickMessage : mMsgItem is null!"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1115
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1116
    sget-object v3, Lcom/android/mms/spam/SpamFilter;->SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    .line 1117
    if-eqz v3, :cond_0

    .line 1119
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1151
    :goto_2
    if-eqz v9, :cond_0

    .line 1154
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 1156
    const/4 v2, 0x1

    if-ge v14, v2, :cond_9

    .line 1157
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1120
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_6

    .line 1121
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1122
    if-eqz v3, :cond_0

    .line 1124
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "locked=1 AND hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_2

    .line 1125
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_7

    .line 1126
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1127
    if-eqz v3, :cond_0

    .line 1129
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "reserved=1 AND hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_2

    .line 1132
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1133
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    .line 1135
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/SmsViewerActivity;->navigateMsgFolderViewMode(Z)V

    goto/16 :goto_1

    .line 1145
    :cond_8
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1146
    if-eqz v3, :cond_0

    .line 1148
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_2

    .line 1161
    :cond_9
    const/4 v2, 0x1

    if-eq v14, v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b

    .line 1162
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    .line 1163
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1167
    :cond_b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1168
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_c

    if-ge v10, v14, :cond_c

    .line 1169
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1170
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_d

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1187
    :cond_c
    move/from16 v18, v10

    .line 1189
    if-eqz v8, :cond_11

    .line 1190
    if-nez v10, :cond_10

    .line 1191
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 1192
    add-int/lit8 v18, v14, -0x1

    .line 1197
    :goto_4
    const v20, 0x7f050005

    .line 1198
    .local v20, startSlideAnim:I
    const v11, 0x7f050006

    .line 1211
    .local v11, endSlideAnim:I
    :goto_5
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1212
    .local v17, nextMsgType:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1214
    .local v15, nextMsgId:J
    :goto_6
    const-string v2, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1215
    const/16 v2, 0xf

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v4, 0x82

    if-ne v2, v4, :cond_16

    .line 1216
    if-eqz v8, :cond_14

    .line 1217
    if-nez v18, :cond_13

    .line 1218
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 1219
    add-int/lit8 v18, v14, -0x1

    .line 1233
    :goto_7
    add-int/lit8 v19, v19, 0x1

    .line 1234
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1235
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    goto :goto_6

    .line 1173
    .end local v11           #endSlideAnim:I
    .end local v15           #nextMsgId:J
    .end local v17           #nextMsgType:Ljava/lang/String;
    .end local v20           #startSlideAnim:I
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1174
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1177
    :cond_e
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_f

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "sms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1180
    :cond_f
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1181
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 1194
    :cond_10
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1195
    add-int/lit8 v18, v18, -0x1

    goto :goto_4

    .line 1200
    :cond_11
    add-int/lit8 v2, v14, -0x1

    if-ne v10, v2, :cond_12

    .line 1201
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1202
    const/16 v18, 0x0

    .line 1207
    :goto_8
    const v20, 0x7f050003

    .line 1208
    .restart local v20       #startSlideAnim:I
    const v11, 0x7f050004

    .restart local v11       #endSlideAnim:I
    goto :goto_5

    .line 1204
    .end local v11           #endSlideAnim:I
    .end local v20           #startSlideAnim:I
    :cond_12
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1205
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 1221
    .restart local v11       #endSlideAnim:I
    .restart local v15       #nextMsgId:J
    .restart local v17       #nextMsgType:Ljava/lang/String;
    .restart local v20       #startSlideAnim:I
    :cond_13
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1222
    add-int/lit8 v18, v18, -0x1

    goto :goto_7

    .line 1225
    :cond_14
    add-int/lit8 v2, v14, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_15

    .line 1226
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1227
    const/16 v18, 0x0

    goto :goto_7

    .line 1229
    :cond_15
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1230
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 1240
    :cond_16
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1242
    add-int/lit8 v2, v14, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_0

    .line 1245
    const/4 v12, 0x0

    .line 1246
    .local v12, intent:Landroid/content/Intent;
    const-string v2, "sms"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1247
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1248
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1249
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1251
    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1252
    :cond_17
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_18

    .line 1253
    const-string v2, "requestLockedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1254
    :cond_18
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_19

    .line 1255
    const-string v2, "requestReservedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1283
    :cond_19
    :goto_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/SmsViewerActivity;->markAsRead(Z)V

    .line 1284
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V

    .line 1285
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1286
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lcom/android/mms/ui/SmsViewerActivity;->overridePendingTransition(II)V

    goto/16 :goto_1

    .line 1256
    :cond_1a
    const-string v2, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1257
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1258
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/MmsSinglePageActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1261
    .restart local v12       #intent:Landroid/content/Intent;
    :goto_a
    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1262
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1264
    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1265
    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_1c

    .line 1266
    const-string v2, "requestLockedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1267
    :cond_1c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_19

    .line 1268
    const-string v2, "requestReservedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_9

    .line 1260
    :cond_1d
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v12       #intent:Landroid/content/Intent;
    goto :goto_a

    .line 1269
    :cond_1e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "wpm"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1270
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1271
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1272
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1274
    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1275
    :cond_1f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_20

    .line 1276
    const-string v2, "requestLockedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1277
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-eqz v2, :cond_21

    .line 1278
    const-string v2, "isWapPush"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1279
    :cond_21
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_19

    .line 1280
    const-string v2, "requestReservedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_9
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "when"

    .prologue
    .line 242
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 245
    .local v0, df:Ljava/text/DateFormat;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, formatedDate:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 249
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
    .line 1753
    const-string v1, "Mms/SmsViewerActivity"

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

    .line 1754
    const/4 v0, 0x0

    .line 1756
    .local v0, uri:Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 1782
    :goto_0
    return-object v0

    .line 1759
    :pswitch_0
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_MESSAGE_URI:Landroid/net/Uri;

    .line 1760
    goto :goto_0

    .line 1763
    :pswitch_1
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_MESSAGE_URI:Landroid/net/Uri;

    .line 1764
    goto :goto_0

    .line 1767
    :pswitch_2
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_MESSAGE_URI:Landroid/net/Uri;

    .line 1768
    goto :goto_0

    .line 1771
    :pswitch_3
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_DRAFT_MESSAGE_URI:Landroid/net/Uri;

    .line 1772
    goto :goto_0

    .line 1775
    :pswitch_4
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_PUSH_MESSAGE_URI:Landroid/net/Uri;

    .line 1776
    goto :goto_0

    .line 1756
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;Z)Lcom/android/mms/ui/MessageItem;
    .locals 10
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"
    .parameter "isSpam"

    .prologue
    const/4 v2, 0x0

    .line 1442
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1443
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1446
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    if-nez v3, :cond_1

    .line 1479
    if-eqz v3, :cond_0

    .line 1480
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1483
    :cond_0
    :goto_1
    return-object v2

    .line 1449
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1450
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1479
    if-eqz v3, :cond_0

    goto :goto_0

    .line 1453
    :cond_2
    const/4 v1, 0x4

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J

    .line 1454
    const-string v1, "seen"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSeen:I

    .line 1457
    new-instance v9, Lcom/android/mms/ui/SmsViewerActivity$11;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v9, p0, v1, v2, v5}, Lcom/android/mms/ui/SmsViewerActivity$11;-><init>(Lcom/android/mms/ui/SmsViewerActivity;IFZ)V

    .line 1466
    .local v9, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 1467
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1469
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v8, item:Lcom/android/mms/ui/MessageItem;
    if-nez v8, :cond_5

    .line 1472
    :try_start_1
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1474
    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_2
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1479
    :goto_2
    if-eqz v3, :cond_3

    .line 1480
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v2, v0

    .line 1483
    goto :goto_1

    .line 1479
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v9           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v3, :cond_4

    .line 1480
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1479
    :cond_4
    throw v1

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v4       #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .restart local v8       #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_1
    move-exception v1

    move-object v0, v8

    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_3

    .line 1475
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v8       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v1

    move-object v0, v8

    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v8       #item:Lcom/android/mms/ui/MessageItem;
    :cond_5
    move-object v0, v8

    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_2
.end method

.method private getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 12
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"

    .prologue
    .line 1801
    const-string v1, "SmsViewFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCachedMessageItemWpm : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " msgId "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1804
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1805
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    const/4 v9, 0x0

    .line 1808
    .local v9, invalidData:Z
    if-nez v3, :cond_1

    .line 1809
    const/4 v1, 0x0

    .line 1859
    if-eqz v3, :cond_0

    .line 1860
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1864
    :cond_0
    :goto_1
    return-object v1

    .line 1811
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1817
    :cond_2
    if-nez v3, :cond_4

    .line 1825
    :cond_3
    :goto_2
    const/4 v1, 0x1

    if-ne v9, v1, :cond_6

    .line 1826
    const-string v1, "SmsViewFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no msg id  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const/4 v1, 0x0

    .line 1859
    if-eqz v3, :cond_0

    goto :goto_0

    .line 1818
    :cond_4
    const-string v1, "_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-eqz v1, :cond_3

    .line 1819
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1820
    const/4 v9, 0x1

    .line 1821
    goto :goto_2

    .line 1823
    :cond_5
    if-nez v3, :cond_2

    goto :goto_2

    .line 1831
    :cond_6
    const-string v1, "seen"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSeen:I

    .line 1835
    new-instance v11, Lcom/android/mms/ui/SmsViewerActivity$14;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v11, p0, v1, v2, v5}, Lcom/android/mms/ui/SmsViewerActivity$14;-><init>(Lcom/android/mms/ui/SmsViewerActivity;IFZ)V

    .line 1841
    .local v11, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 1842
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1844
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v10, item:Lcom/android/mms/ui/MessageItem;
    if-nez v10, :cond_a

    .line 1847
    :try_start_1
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object/from16 v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1849
    .end local v10           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_2
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1855
    :goto_3
    if-eqz v0, :cond_7

    .line 1856
    :try_start_3
    iget-wide v1, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    iput-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDate:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1859
    :cond_7
    if-eqz v3, :cond_8

    .line 1860
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v1, v0

    .line 1864
    goto/16 :goto_1

    .line 1850
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v10       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    move-object v0, v10

    .line 1851
    .end local v10           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Lcom/google/android/mms/MmsException;
    :goto_4
    :try_start_4
    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1859
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    .end local v11           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_0
    move-exception v1

    :goto_5
    if-eqz v3, :cond_9

    .line 1860
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1859
    :cond_9
    throw v1

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v4       #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .restart local v10       #item:Lcom/android/mms/ui/MessageItem;
    .restart local v11       #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_1
    move-exception v1

    move-object v0, v10

    .end local v10           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_5

    .line 1850
    :catch_1
    move-exception v8

    goto :goto_4

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v10       #item:Lcom/android/mms/ui/MessageItem;
    :cond_a
    move-object v0, v10

    .end local v10           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_3
.end method

.method private initActionBar()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 255
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    .line 259
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f04

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 260
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 261
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 262
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    .line 263
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    .line 264
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 266
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 267
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/SmsViewerActivity$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SmsViewerActivity$2;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 297
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/SmsViewerActivity$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SmsViewerActivity$3;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v1, v1, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-eqz v1, :cond_4

    .line 305
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 307
    :cond_4
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 308
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 310
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->UpdateActionBarTitleWithNumber()V

    goto/16 :goto_0
.end method

.method private initialize()V
    .locals 13

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 728
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "msgId"

    const-wide/16 v2, 0x0

    invoke-virtual {v10, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    .line 729
    const-string v0, "thread_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v10, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    .line 730
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    const-string v0, "requestLockedMessageView"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    .line 733
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    const-string v0, "requestReservedMessageView"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestReservedMessageView:Z

    .line 737
    :cond_1
    const-string v0, "isSpam"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 745
    .local v11, isSpam:Z
    if-eqz v11, :cond_2

    .line 746
    sget-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 751
    .local v1, messageUri:Landroid/net/Uri;
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 752
    const-string v0, "isWapPush"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    .line 753
    const-string v0, "Mms/SmsViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize(), isWapPush="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 755
    const-string v0, "content://mms-sms/wap-push-messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 756
    .end local v1           #messageUri:Landroid/net/Uri;
    .local v12, messageUri:Landroid/net/Uri;
    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v0, "wpm"

    invoke-direct {p0, v12, v2, v3, v0}, Lcom/android/mms/ui/SmsViewerActivity;->getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 758
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 759
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v6, "wpm"

    const/4 v7, 0x2

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    move-object v1, v12

    .line 784
    .end local v12           #messageUri:Landroid/net/Uri;
    .restart local v1       #messageUri:Landroid/net/Uri;
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_8

    .line 785
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iput-boolean v11, v0, Lcom/android/mms/ui/MessageItem;->mIsSpam:Z

    .line 791
    :goto_2
    return-void

    .line 748
    .end local v1           #messageUri:Landroid/net/Uri;
    :cond_2
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #messageUri:Landroid/net/Uri;
    goto :goto_0

    .line 761
    .end local v1           #messageUri:Landroid/net/Uri;
    .restart local v12       #messageUri:Landroid/net/Uri;
    :cond_3
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v6, "wpm"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    move-object v1, v12

    .end local v12           #messageUri:Landroid/net/Uri;
    .restart local v1       #messageUri:Landroid/net/Uri;
    goto :goto_1

    .line 763
    :cond_4
    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v4, "sms"

    move-object v0, p0

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/SmsViewerActivity;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;Z)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 765
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 766
    new-instance v2, Lcom/android/mms/ui/MessageOptions;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v8, "sms"

    const/4 v9, 0x2

    move-object v4, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_1

    .line 768
    :cond_5
    new-instance v2, Lcom/android/mms/ui/MessageOptions;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v8, "sms"

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_1

    .line 772
    :cond_6
    const-string v0, "isWapPush"

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    .line 773
    const-string v0, "Mms/SmsViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize(), isWapPush="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 775
    const-string v0, "content://mms-sms/wap-push-messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 776
    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v0, "wpm"

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/mms/ui/SmsViewerActivity;->getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 777
    new-instance v2, Lcom/android/mms/ui/MessageOptions;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v8, "wpm"

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto/16 :goto_1

    .line 779
    :cond_7
    iget-wide v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v4, "sms"

    move-object v0, p0

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/SmsViewerActivity;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;Z)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 780
    new-instance v2, Lcom/android/mms/ui/MessageOptions;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-string v8, "sms"

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto/16 :goto_1

    .line 788
    :cond_8
    const-string v0, "Mms/SmsViewerActivity"

    const-string v2, "mMsgItem is null"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private markAsRead(Z)V
    .locals 11
    .parameter "isExit"

    .prologue
    .line 1296
    if-eqz p1, :cond_1

    .line 1297
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSeen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1439
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1306
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1308
    iget-wide v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms-sms/wap-push-messages/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgUri:Landroid/net/Uri;

    .line 1313
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1314
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1315
    if-eqz p1, :cond_3

    .line 1316
    const-string v0, "seen"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1319
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/SmsViewerActivity$6;

    invoke-direct {v1, p0, v10}, Lcom/android/mms/ui/SmsViewerActivity$6;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/content/ContentValues;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1334
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_5

    .line 1335
    const-string v0, "Mms/SmsViewerActivity"

    const-string v1, "markAsRead : mMsgItem is null!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1339
    :cond_5
    iget-wide v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1342
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1343
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isReadMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1347
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1348
    sget-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 1350
    .local v7, SpammsgUri:Landroid/net/Uri;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1351
    .local v8, Spamvalues:Landroid/content/ContentValues;
    const-string v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1352
    if-eqz p1, :cond_7

    .line 1353
    const-string v0, "seen"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1355
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/SmsViewerActivity$7;

    invoke-direct {v1, p0, v7, v8}, Lcom/android/mms/ui/SmsViewerActivity$7;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1367
    .end local v7           #SpammsgUri:Landroid/net/Uri;
    .end local v8           #Spamvalues:Landroid/content/ContentValues;
    :cond_8
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgUri:Landroid/net/Uri;

    .line 1369
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1370
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1371
    if-eqz p1, :cond_9

    .line 1372
    const-string v0, "seen"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1375
    :cond_9
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

    .line 1380
    .local v3, PROJECTION_READ_SEEN:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1382
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_c

    .line 1383
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1386
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_b

    .line 1387
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_b

    .line 1388
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 1389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->update_read:Z

    .line 1390
    :cond_a
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 1391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->update_seen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    :cond_b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1399
    :cond_c
    if-eqz p1, :cond_e

    .line 1400
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1401
    iget-wide v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const/4 v2, 0x0

    new-instance v4, Lcom/android/mms/ui/SmsViewerActivity$8;

    invoke-direct {v4, p0, v10}, Lcom/android/mms/ui/SmsViewerActivity$8;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/content/ContentValues;)V

    invoke-static {p0, v0, v1, v2, v4}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOneForSmsWithoutConfirmDlg(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1395
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1412
    :cond_d
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/SmsViewerActivity$9;

    invoke-direct {v1, p0, v10}, Lcom/android/mms/ui/SmsViewerActivity$9;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/content/ContentValues;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1424
    :cond_e
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/SmsViewerActivity$10;

    invoke-direct {v1, p0, v10}, Lcom/android/mms/ui/SmsViewerActivity$10;-><init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/content/ContentValues;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method private navigateMsgFolderViewMode(Z)V
    .locals 22
    .parameter "bFlicktoNext"

    .prologue
    .line 1596
    const/4 v15, 0x0

    .line 1597
    .local v15, msgCount:I
    const/16 v20, 0x0

    .line 1598
    .local v20, notiIndMmsCount:I
    const/4 v10, 0x0

    .line 1599
    .local v10, curPos:I
    const/16 v19, 0x0

    .line 1604
    .local v19, nextPos:I
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->getBoxId()I

    move-result v8

    .line 1605
    .local v8, boxId:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/SmsViewerActivity;->getBoxUriFromBoxId(I)Landroid/net/Uri;

    move-result-object v3

    .line 1606
    .local v3, contentThreadUri:Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 1750
    :cond_0
    :goto_0
    return-void

    .line 1609
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1611
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 1614
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 1616
    const/4 v2, 0x1

    if-ge v15, v2, :cond_2

    .line 1617
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1621
    :cond_2
    const/4 v2, 0x1

    if-eq v15, v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 1622
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    .line 1623
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1627
    :cond_4
    const-string v2, "Mms/SmsViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "navigateMsgFolderViewMode : bFlicktoNext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "curPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1630
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5

    if-ge v10, v15, :cond_5

    .line 1632
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->msgId:J

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_6

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "sms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1642
    :cond_5
    move/from16 v19, v10

    .line 1644
    const-string v2, "Mms/SmsViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "navigateMsgFolderViewMode : bFlicktoNext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "nextPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    if-eqz p1, :cond_8

    .line 1647
    if-nez v10, :cond_7

    .line 1648
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 1649
    add-int/lit8 v19, v15, -0x1

    .line 1654
    :goto_2
    const v21, 0x7f050005

    .line 1655
    .local v21, startSlideAnim:I
    const v12, 0x7f050006

    .line 1669
    .local v12, endSlideAnim:I
    :goto_3
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1670
    .local v18, nextMsgType:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v16

    .line 1680
    .local v16, nextMsgId:J
    const/4 v14, -0x1

    .line 1681
    .local v14, mmsMsgType:I
    :goto_4
    const-string v2, "mms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1682
    const-string v2, "m_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1683
    const-string v2, "Mms/SmsViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mmsMsgType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 1684
    const/16 v2, 0x82

    if-ne v14, v2, :cond_d

    .line 1685
    if-eqz p1, :cond_b

    .line 1686
    if-nez v19, :cond_a

    .line 1687
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 1688
    add-int/lit8 v19, v15, -0x1

    .line 1702
    :goto_5
    add-int/lit8 v20, v20, 0x1

    .line 1703
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1704
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    goto :goto_4

    .line 1636
    .end local v12           #endSlideAnim:I
    .end local v14           #mmsMsgType:I
    .end local v16           #nextMsgId:J
    .end local v18           #nextMsgType:Ljava/lang/String;
    .end local v21           #startSlideAnim:I
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1637
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1651
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1652
    add-int/lit8 v19, v19, -0x1

    goto :goto_2

    .line 1657
    :cond_8
    add-int/lit8 v2, v15, -0x1

    if-ne v10, v2, :cond_9

    .line 1658
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1659
    const/16 v19, 0x0

    .line 1664
    :goto_6
    const v21, 0x7f050003

    .line 1665
    .restart local v21       #startSlideAnim:I
    const v12, 0x7f050004

    .restart local v12       #endSlideAnim:I
    goto :goto_3

    .line 1661
    .end local v12           #endSlideAnim:I
    .end local v21           #startSlideAnim:I
    :cond_9
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1662
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 1671
    .restart local v12       #endSlideAnim:I
    .restart local v21       #startSlideAnim:I
    :catch_0
    move-exception v11

    .line 1672
    .local v11, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v2, "Mms/SmsViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "navigateMsgFolderViewMode total count :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "current position :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1690
    .end local v11           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .restart local v14       #mmsMsgType:I
    .restart local v16       #nextMsgId:J
    .restart local v18       #nextMsgType:Ljava/lang/String;
    :cond_a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1691
    add-int/lit8 v19, v19, -0x1

    goto :goto_5

    .line 1694
    :cond_b
    add-int/lit8 v2, v15, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_c

    .line 1695
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1696
    const/16 v19, 0x0

    goto :goto_5

    .line 1698
    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1699
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 1709
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1711
    add-int/lit8 v2, v15, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_0

    .line 1713
    const/4 v13, 0x0

    .line 1714
    .local v13, intent:Landroid/content/Intent;
    const-string v2, "sms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1715
    const-string v2, "Mms/SmsViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity : sms : nextMsgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    new-instance v13, Landroid/content/Intent;

    .end local v13           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1717
    .restart local v13       #intent:Landroid/content/Intent;
    const-string v2, "msgId"

    move-wide/from16 v0, v16

    invoke-virtual {v13, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1718
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v13, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1720
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-eqz v2, :cond_e

    .line 1721
    const-string v2, "isWapPush"

    const/4 v4, 0x1

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1744
    :cond_e
    :goto_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/SmsViewerActivity;->markAsRead(Z)V

    .line 1745
    const-string v2, "Mms/SmsViewerActivity"

    const-string v4, "startActivity"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V

    .line 1747
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1748
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Lcom/android/mms/ui/SmsViewerActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 1723
    :cond_f
    const-string v2, "mms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1724
    const-string v2, "Mms/SmsViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity : mms : nextMsgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1726
    new-instance v13, Landroid/content/Intent;

    .end local v13           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/MmsSinglePageActivity;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1729
    .restart local v13       #intent:Landroid/content/Intent;
    :goto_8
    const-string v2, "msgId"

    move-wide/from16 v0, v16

    invoke-virtual {v13, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1730
    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/SmsViewerActivity;->threadId:J

    invoke-virtual {v13, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    .line 1728
    :cond_10
    new-instance v13, Landroid/content/Intent;

    .end local v13           #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v13       #intent:Landroid/content/Intent;
    goto :goto_8
.end method

.method private removeRecipientsListener()V
    .locals 0

    .prologue
    .line 595
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 596
    return-void
.end method

.method private updateActionBarTextSize()V
    .locals 9

    .prologue
    const/high16 v8, 0x4080

    const/4 v2, 0x1

    const/high16 v7, 0x4000

    const/4 v3, 0x0

    .line 448
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 452
    .local v0, config:Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 454
    .local v1, mIsLandscape:Z
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 458
    if-eqz v1, :cond_3

    .line 459
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v5, 0x4188

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 460
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v5, 0x4140

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 462
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v4

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v5

    invoke-virtual {v2, v4, v3, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 463
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

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

    .line 452
    goto :goto_1

    .line 465
    .restart local v1       #mIsLandscape:Z
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v5, 0x4198

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 466
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v5, 0x4160

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 468
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-static {v8}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v4

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v5

    invoke-static {v8}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 469
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-static {v8}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v4

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v5

    invoke-virtual {v2, v4, v3, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 628
    .local v0, action:I
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 629
    iget-boolean v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    if-eqz v5, :cond_0

    .line 630
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v5}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 671
    :goto_0
    return v4

    .line 635
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 663
    and-int/lit16 v5, v0, 0xff

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 664
    iput-boolean v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    .line 671
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 637
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->bMultiTouch:Z

    if-eqz v5, :cond_1

    .line 639
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 640
    :catch_0
    move-exception v1

    .line 641
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 648
    .end local v1           #e:Ljava/lang/NullPointerException;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->endX:I

    .line 649
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    if-eq v5, v4, :cond_2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    if-nez v4, :cond_1

    .line 653
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 654
    .local v2, eventTime:J
    new-instance v4, Lcom/android/mms/ui/SmsViewerActivity$5;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/mms/ui/SmsViewerActivity$5;-><init>(Lcom/android/mms/ui/SmsViewerActivity;J)V

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SmsViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 666
    .end local v2           #eventTime:J
    :cond_3
    if-nez v0, :cond_1

    .line 667
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->startX:I

    goto :goto_1

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 5
    .parameter "contactList"

    .prologue
    const/4 v4, 0x1

    .line 1918
    const-string v2, ""

    .line 1919
    .local v2, recipient:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 1920
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 1921
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1923
    .local v0, addr:Ljava/lang/String;
    const-string v3, "CBmessages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1924
    const v3, 0x7f0c00fb

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1941
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    :goto_0
    return-object v2

    .line 1926
    .restart local v0       #addr:Ljava/lang/String;
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    :cond_1
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1927
    const v3, 0x7f0c0161

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1929
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1931
    const v3, 0x7f0c013b

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SmsViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1933
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1936
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 1937
    const-string v3, ", "

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    .line 1883
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1886
    :goto_0
    return-object v0

    .line 1885
    :cond_0
    const-string v0, "Mms/SmsViewerActivity"

    const-string v1, "mContactList is null!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    .line 1873
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1876
    :goto_0
    return-object v0

    .line 1875
    :cond_0
    const-string v0, "Mms/SmsViewerActivity"

    const-string v1, "mRecipients is null!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1891
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v1, :cond_0

    .line 1892
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->hasName()Z

    move-result v0

    .line 1895
    :goto_0
    return v0

    .line 1894
    :cond_0
    const-string v1, "Mms/SmsViewerActivity"

    const-string v2, "mContactList is null!!!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hideSipForDirectCall()V
    .locals 0

    .prologue
    .line 1915
    return-void
.end method

.method public isAvailableDirectCall()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1901
    invoke-static {p0}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1908
    :cond_0
    :goto_0
    return v0

    .line 1904
    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1908
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 687
    const/16 v2, 0x1d

    if-ne p1, v2, :cond_1

    .line 693
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 694
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 697
    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    :cond_0
    if-eqz v0, :cond_1

    .line 701
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 702
    .local v1, contact:Lcom/android/mms/data/Contact;
    if-eqz v1, :cond_1

    .line 703
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->reload()V

    .line 707
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 614
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 615
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v1, Lcom/android/mms/ui/SmsViewerActivity;->sOldLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/android/mms/ui/SmsViewerActivity;->sOldLocale:Ljava/util/Locale;

    .line 617
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailDialog()V

    .line 618
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailSpamDialog()V

    .line 619
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDeleteDialog()V

    .line 621
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->updateActionBarTextSize()V

    .line 622
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->invalidateOptionsMenu()V

    .line 623
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    const v1, 0x7f040084

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->setContentView(I)V

    .line 176
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v1, Lcom/android/mms/ui/SmsViewerActivity;->sOldLocale:Ljava/util/Locale;

    .line 177
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    .line 178
    const v1, 0x7f0b028c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsViewerLayout:Landroid/widget/LinearLayout;

    .line 181
    const v1, 0x7f0b0205

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 182
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    .line 188
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->initialize()V

    .line 195
    const v1, 0x7f0b0289

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSubTitleView:Landroid/widget/TextView;

    .line 198
    const v1, 0x7f0b028b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    .line 200
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 204
    new-instance v1, Lcom/android/mms/ui/TextSizeController;

    invoke-direct {v1}, Lcom/android/mms/ui/TextSizeController;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTextSizeController:Lcom/android/mms/ui/TextSizeController;

    .line 207
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTextSizeController:Lcom/android/mms/ui/TextSizeController;

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 211
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->createDirectCallingManager()V

    .line 215
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v1, v1, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {p0, v1, v2, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    .line 217
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    const-string v2, "clipboardEx"

    invoke-virtual {v1, v2}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    .line 227
    invoke-direct {p0, v4}, Lcom/android/mms/ui/SmsViewerActivity;->markAsRead(Z)V

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x320

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mBlockFlickUntilMillis:J

    .line 231
    return-void

    .line 185
    :cond_1
    const v1, 0x7f0b02ad

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 571
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 572
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailDialog()V

    .line 573
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailSpamDialog()V

    .line 574
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDeleteDialog()V

    .line 575
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 577
    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    .line 583
    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 588
    :cond_2
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1075
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 916
    sparse-switch p1, :sswitch_data_0

    .line 987
    :cond_0
    const-string v4, "VOL"

    const-string v5, "vol up, SUPER!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    :cond_1
    :goto_0
    return v4

    .line 919
    :sswitch_0
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-lt v6, v5, :cond_1

    .line 921
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-eq v6, v5, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-le v6, v5, :cond_0

    .line 922
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v7, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    move v4, v5

    .line 923
    goto :goto_0

    .line 931
    :sswitch_1
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 933
    const/16 v6, 0xa8

    if-ne p1, v6, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v6

    const/16 v7, 0x221

    if-eq v6, v7, :cond_3

    move v4, v5

    .line 934
    goto :goto_0

    .line 937
    :cond_3
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SmsViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 938
    .local v2, manager:Landroid/media/AudioManager;
    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v6

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->misTalkbackOn:Z

    if-nez v6, :cond_1

    .line 942
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 943
    .local v3, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 945
    .local v1, idxMsgPreferFontSize:I
    add-int/lit8 v1, v1, 0x1

    .line 947
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 948
    .local v0, editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 949
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 951
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->drawMainTextView()V

    move v4, v5

    .line 952
    goto :goto_0

    .line 960
    .end local v0           #editprefs:Landroid/content/SharedPreferences$Editor;
    .end local v1           #idxMsgPreferFontSize:I
    .end local v2           #manager:Landroid/media/AudioManager;
    .end local v3           #sharedPrefs:Landroid/content/SharedPreferences;
    :sswitch_2
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 961
    const/16 v6, 0xa9

    if-ne p1, v6, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v6

    const/16 v7, 0x222

    if-eq v6, v7, :cond_4

    move v4, v5

    .line 962
    goto/16 :goto_0

    .line 965
    :cond_4
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SmsViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 966
    .restart local v2       #manager:Landroid/media/AudioManager;
    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v6

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->misTalkbackOn:Z

    if-nez v6, :cond_1

    .line 970
    iget-object v6, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 971
    .restart local v3       #sharedPrefs:Landroid/content/SharedPreferences;
    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 973
    .restart local v1       #idxMsgPreferFontSize:I
    add-int/lit8 v1, v1, -0x1

    .line 975
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 976
    .restart local v0       #editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 977
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 979
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->drawMainTextView()V

    move v4, v5

    .line 980
    goto/16 :goto_0

    .line 916
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_2
        0xf1 -> :sswitch_2
        0xf2 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 994
    sparse-switch p1, :sswitch_data_0

    .line 1022
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 997
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->markAsRead(Z)V

    goto :goto_0

    .line 1004
    :sswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1014
    :sswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 994
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_2
        0xf1 -> :sswitch_2
        0xf2 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/16 v4, 0x1d

    const/4 v0, 0x1

    .line 1041
    const-string v1, "Mms/SmsViewerActivity"

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

    .line 1043
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1050
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v1, :cond_3

    .line 1051
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_1

    .line 1052
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    .line 1053
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mAddContactIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Lcom/android/mms/ui/SmsViewerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1070
    :cond_0
    :goto_0
    return v0

    .line 1045
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->markAsRead(Z)V

    .line 1046
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V

    goto :goto_0

    .line 1057
    :cond_1
    const/4 v0, 0x0

    .line 1058
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1059
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageOptions;->SpamOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1061
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1062
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mRequestLockedMessageView:Z

    if-eqz v1, :cond_0

    .line 1063
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1064
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V

    goto :goto_0

    .line 1070
    .end local v0           #result:Z
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1043
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 552
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 554
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DirectCallingManager;->pause(Landroid/content/Context;)V

    .line 560
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1028
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1029
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1031
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createSpamOptionsMenu(Landroid/view/Menu;)V

    .line 1035
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1033
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 495
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 498
    const/4 v4, 0x6

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string v4, "type"

    aput-object v4, v2, v9

    const/4 v4, 0x2

    const-string v5, "address"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "date"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "error_code"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "group_id"

    aput-object v5, v2, v4

    .line 507
    .local v2, PROJECTION_Sms:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v4

    if-nez v4, :cond_1

    .line 509
    const-string v4, "Mms/SmsViewerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume(), isWapPush="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 515
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    iget-boolean v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-ne v4, v9, :cond_4

    .line 516
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms-sms/wap-push-messages/#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v7, v5, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 520
    .local v1, messageUri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v1, v10, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 523
    iget-boolean v4, p0, Lcom/android/mms/ui/SmsViewerActivity;->isWapPush:Z

    if-nez v4, :cond_1

    move-object v4, v3

    move-object v5, v3

    .line 524
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 525
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 527
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 538
    .end local v0           #mContentResolver:Landroid/content/ContentResolver;
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v3, :cond_2

    .line 539
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v3, p0}, Lcom/android/mms/util/DirectCallingManager;->resume(Landroid/content/Context;)V

    .line 543
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 544
    iget-object v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 547
    :cond_3
    invoke-static {p0}, Lcom/android/mms/util/PackageInfo;->isTalkBackAvailable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/SmsViewerActivity;->misTalkbackOn:Z

    .line 548
    return-void

    .line 518
    .restart local v0       #mContentResolver:Landroid/content/ContentResolver;
    :cond_4
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v7, v5, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #messageUri:Landroid/net/Uri;
    goto :goto_0

    .line 531
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 475
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 476
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 480
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->addRecipientsListener()V

    .line 481
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->initActionBar()V

    .line 482
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->drawTitle()V

    .line 483
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->drawMainTextView()V

    .line 485
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mTextSizeController:Lcom/android/mms/ui/TextSizeController;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity;->mSmsBodyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/TextSizeController;->addTextViewToControl(Landroid/widget/TextView;)V

    .line 488
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    .line 491
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 564
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 566
    invoke-direct {p0}, Lcom/android/mms/ui/SmsViewerActivity;->removeRecipientsListener()V

    .line 567
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 599
    const-string v0, "Mms/SmsViewerActivity"

    const-string v1, "[onUpdate] contact updated"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    new-instance v0, Lcom/android/mms/ui/SmsViewerActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SmsViewerActivity$4;-><init>(Lcom/android/mms/ui/SmsViewerActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 609
    return-void
.end method

.method public setScrollTop()V
    .locals 2

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    .line 1788
    const v0, 0x7f0b028a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SmsViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMainScrollView:Landroid/widget/ScrollView;

    .line 1790
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity;->mMainScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->delayedScrollTo(Landroid/widget/ScrollView;I)V

    .line 1791
    return-void
.end method

.method public viewContactDetailORList()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 404
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-nez v5, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.contacts"

    invoke-static {v5, v6}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.jcontacts"

    invoke-static {v5, v6}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 410
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-ne v5, v7, :cond_7

    .line 411
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 412
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 413
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 414
    .local v3, intent:Landroid/content/Intent;
    const/high16 v5, 0x2408

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 417
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactReplacePackageAs()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.jcontacts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 418
    const-string v5, "com.android.jcontacts"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 422
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 424
    :cond_5
    const-string v5, "Mms/SmsViewerActivity"

    const-string v6, "getPhonemuber address is null"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_6
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v2

    .line 430
    .local v2, ex:Landroid/content/ActivityNotFoundException;
    const-string v5, "Mms/SmsViewerActivity"

    const-string v6, "Activity not found do not anyting!!!!"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 433
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #ex:Landroid/content/ActivityNotFoundException;
    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-le v5, v7, :cond_0

    .line 434
    iget-object v5, p0, Lcom/android/mms/ui/SmsViewerActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, recipients:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v5

    if-nez v5, :cond_8

    .line 436
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/ui/RecipientListActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "recipients"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 440
    .end local v3           #intent:Landroid/content/Intent;
    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 441
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "recipients"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SmsViewerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
