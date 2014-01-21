.class public Lcom/android/mms/spam/SetupSpamKeywordWriteForm;
.super Landroid/app/Activity;
.source "SetupSpamKeywordWriteForm.java"


# static fields
.field private static final ALERT_SPAM_KEYWORD_DIALOG:I = 0x1

.field private static final ALERT_SPAM_MAX_SIZE_DIALOG:I = 0x3

.field private static final ALERT_SPAM_SIZE_DIALOG:I = 0x2

.field private static final CANCEL:I = 0x2

.field private static final DIALOG_SPAM:I = 0x4

.field private static final SAVE:I = 0x1


# instance fields
.field private IMEHandler:Landroid/os/Handler;

.field private final TAG:Ljava/lang/String;

.field idx:I

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionbarAddListCancelButton:Landroid/widget/TextView;

.field private mActionbarAddListDoneButton:Landroid/widget/TextView;

.field private mActionbarAddListLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mIsLandscape:Z

.field private mMaxCharsInputToast:Landroid/widget/Toast;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuSave:Landroid/view/MenuItem;

.field private m_DialogView:Landroid/app/AlertDialog;

.field private m_SentenceText:Landroid/widget/EditText;

.field private m_TextChanged:Landroid/text/TextWatcher;

.field m_Title:Landroid/widget/TextView;

.field spamCriteria:I

.field spamText:Ljava/lang/String;

.field private update_MODE:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const-string v0, "Mms/SetupSpamKeywordWriteForm"

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->TAG:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamText:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamCriteria:I

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->idx:I

    .line 68
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_Title:Landroid/widget/TextView;

    .line 81
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->IMEHandler:Landroid/os/Handler;

    .line 83
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    .line 84
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    .line 85
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    .line 87
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuSave:Landroid/view/MenuItem;

    .line 88
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    .line 91
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mContext:Landroid/content/Context;

    .line 490
    new-instance v0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$4;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$4;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_TextChanged:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->update_MODE:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->insert(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getSpamWordData()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->updateSapmKeyWord()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMaxCharsInputToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMaxCharsInputToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->IMEHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private duplicationCheck(Ljava/lang/String;)I
    .locals 9
    .parameter "keyword"

    .prologue
    const/4 v2, 0x0

    .line 351
    const/4 v6, 0x0

    .line 352
    .local v6, countResult:I
    const/4 v7, 0x0

    .line 353
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 354
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v8, sbWhere:Ljava/lang/StringBuilder;
    const-string v1, "filter_type = 1 AND filter = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-static {v8, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 365
    sget-object v1, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 368
    if-nez v7, :cond_0

    .line 369
    const/4 v1, 0x0

    .line 375
    :goto_0
    return v1

    .line 371
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 372
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 373
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v1, v6

    .line 375
    goto :goto_0
.end method

.method private getSpamWordData()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 453
    const/4 v6, 0x0

    .line 454
    .local v6, count:I
    const-string v3, ""

    .line 455
    .local v3, sWhereSQL:Ljava/lang/String;
    const-string v3, "filter_type = 1"

    .line 460
    const/4 v7, 0x0

    .line 461
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 462
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 465
    if-nez v7, :cond_0

    .line 466
    const/4 v1, 0x0

    .line 472
    :goto_0
    return v1

    .line 468
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 469
    if-eqz v7, :cond_1

    .line 470
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v6

    .line 472
    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v2, 0x1

    .line 215
    const v1, 0x7f0b0117

    invoke-virtual {p0, v1}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    .line 216
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 217
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDialogAlertWhenTextInputForKor()Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_TextChanged:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 225
    :goto_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-static {v1, v4}, Lcom/android/mms/ui/MessageUtils;->setMaximumLengthforWB(Landroid/widget/EditText;I)V

    .line 239
    return-void

    .line 220
    :cond_0
    new-array v0, v2, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/mms/util/LengthFilterWithDialog;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v4, v3}, Lcom/android/mms/util/LengthFilterWithDialog;-><init>(Landroid/content/Context;II)V

    aput-object v2, v0, v1

    .line 223
    .local v0, inputFilters:[Landroid/text/InputFilter;
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private insert(Ljava/lang/String;)V
    .locals 8
    .parameter "pStr"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 311
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 312
    .local v7, values:Landroid/content/ContentValues;
    const-string v3, "filter_type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    const-string v3, "filter"

    invoke-virtual {v7, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v3, "criteria"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    const-string v3, "enable"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v3, v4, v7}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 324
    .local v6, new_uri:Landroid/net/Uri;
    if-eqz v6, :cond_0

    .line 325
    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 326
    .local v1, id:I
    new-instance v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    move v3, v2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    .line 329
    .local v0, spamdata:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    invoke-static {v1, v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->insert(ILcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    .line 331
    .end local v0           #spamdata:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    .end local v1           #id:I
    :cond_0
    return-void
.end method

.method private updateActionBar()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 242
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040002

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    .line 245
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0013

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    .line 247
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    .line 249
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 251
    .local v0, title:Landroid/widget/TextView;
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0012

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    .end local v0           #title:Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    :cond_2
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuSave:Landroid/view/MenuItem;

    if-eqz v1, :cond_3

    .line 289
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 291
    iget-boolean v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mIsLandscape:Z

    if-eqz v1, :cond_5

    .line 292
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuSave:Landroid/view/MenuItem;

    const v2, 0x7f020006

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 297
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v1, :cond_4

    .line 298
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 300
    iget-boolean v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mIsLandscape:Z

    if-eqz v1, :cond_6

    .line 301
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    const v2, 0x7f02022c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 305
    :cond_4
    :goto_1
    return-void

    .line 294
    :cond_5
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 303
    :cond_6
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private updateSapmKeyWord()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 337
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 338
    .local v2, values:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, strSpamData:Ljava/lang/String;
    const-string v3, "filter"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-object v3, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    iget v4, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->idx:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 343
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 344
    iget v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->idx:I

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->update(ILjava/lang/String;)V

    .line 345
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 678
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 679
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mIsLandscape:Z

    .line 680
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->updateActionBar()V

    .line 687
    return-void

    .line 679
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mContext:Landroid/content/Context;

    .line 103
    const v1, 0x7f040038

    invoke-virtual {p0, v1}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mIsLandscape:Z

    .line 107
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->updateActionBar()V

    .line 108
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionBar:Landroid/app/ActionBar;

    .line 109
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 111
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 112
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->init()V

    .line 116
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 117
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "UPDATE_MODE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->update_MODE:Z

    .line 119
    iget-boolean v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->update_MODE:Z

    if-ne v1, v2, :cond_1

    .line 120
    const-string v1, "SpamWord"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamText:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const-string v1, "UPDATE_ID"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->idx:I

    .line 128
    :cond_1
    const-string v1, "SpamCriteria"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamCriteria:I

    .line 129
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    move v1, v3

    .line 105
    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const v4, 0x7f0c0297

    const v8, 0x104000a

    const/4 v2, 0x0

    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, sales_code:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 653
    :goto_0
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 654
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 669
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    .line 672
    :cond_0
    return-object v2

    .line 581
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 584
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 585
    if-eqz v1, :cond_2

    const-string v3, "CHN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "CHU"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "CHM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "CHC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "TGY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "BRI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 586
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0293

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 593
    :goto_1
    invoke-virtual {v0, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 594
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    goto :goto_0

    .line 587
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForKor()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 588
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0294

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 590
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0292

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 599
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 601
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 602
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0295

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 603
    invoke-virtual {v0, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 604
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 609
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 611
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 612
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0296

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 613
    invoke-virtual {v0, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 614
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 477
    packed-switch p1, :pswitch_data_0

    .line 483
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 479
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    const/4 v0, 0x1

    goto :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 181
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 183
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->finish()V

    goto :goto_0

    .line 186
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    .line 189
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_0

    .line 181
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 168
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 196
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 198
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 200
    const/4 v0, 0x2

    const v1, 0x7f0c017c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    .line 201
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 203
    const/4 v0, 0x1

    const v1, 0x7f0c00dd

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuSave:Landroid/view/MenuItem;

    .line 204
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 206
    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f02022c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 208
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuSave:Landroid/view/MenuItem;

    const v1, 0x7f02022d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 211
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->IMEHandler:Landroid/os/Handler;

    .line 135
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 137
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->IMEHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$1;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$1;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 691
    const/4 v0, 0x1

    return v0
.end method

.method public showKeyWordConfirmDialog(IILjava/lang/String;)V
    .locals 7
    .parameter "id"
    .parameter "resString"
    .parameter "textMessage"

    .prologue
    .line 417
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 419
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 420
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0288

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, showMessage:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 423
    const v2, 0x7f0c004f

    new-instance v3, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0050

    new-instance v4, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$2;

    invoke-direct {v4, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$2;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 446
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 6
    .parameter "target"

    .prologue
    const/4 v4, 0x1

    .line 379
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, strKeyWord:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/util/TelephonyUtils;->getByteSize(Ljava/lang/String;)I

    move-result v1

    .line 382
    .local v1, sSize:I
    const/4 v0, 0x4

    .line 384
    .local v0, nMinLength:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForKor()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 386
    const/4 v0, 0x2

    .line 389
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 390
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->showDialog(I)V

    .line 407
    :goto_0
    return-void

    .line 391
    :cond_1
    if-ge v1, v0, :cond_2

    .line 392
    invoke-virtual {p0, v4}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->showDialog(I)V

    goto :goto_0

    .line 393
    :cond_2
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->duplicationCheck(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 394
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->showDialog(I)V

    goto :goto_0

    .line 397
    :cond_3
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v4, :cond_4

    .line 399
    const v3, 0x7f0c0210

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 400
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 402
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->finish()V

    goto :goto_0

    .line 404
    :cond_4
    const/4 v3, 0x4

    const v4, 0x7f0c0297

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->showKeyWordConfirmDialog(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 3
    .parameter "target"

    .prologue
    const/4 v2, 0x0

    .line 410
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->setResult(ILandroid/content/Intent;)V

    .line 412
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 413
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->finish()V

    .line 414
    return-void
.end method
