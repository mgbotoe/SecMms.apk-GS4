.class public Lcom/android/mms/spam/SetupSpamNumberWriteForm;
.super Landroid/app/Activity;
.source "SetupSpamNumberWriteForm.java"


# static fields
.field private static final ALERT_SPAM_NUMBER_EMPTY:I = 0x1

.field private static final ALERT_SPAM_NUMBER_SAME:I = 0x2

.field private static final ALERT_SPAM_NUMBER_SHORT:I = 0x3

.field private static final CANCEL:I = 0x2

.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent; = null

.field private static MAX_NUMBER_LENGTH:I = 0x0

.field private static final NUM_PROJECTION:[Ljava/lang/String; = null

.field public static final PICK_CONTACT_NUMBER:I = 0x2

.field public static final PICK_LOGS_NUMBER:I = 0x1

.field private static final SAVE:I = 0x1

.field private static final STATE_VALUE_MATCH_CRITERIA:Ljava/lang/String; = "match_criteria"

.field static mLeftSoftkey:Landroid/widget/Button;

.field static mSoftkeyView:Landroid/widget/LinearLayout;

.field private static sIsPhone:Z


# instance fields
.field private IMEHandler:Landroid/os/Handler;

.field final TAG:Ljava/lang/String;

.field createEdit:Landroid/widget/EditText;

.field createItem:Landroid/widget/LinearLayout;

.field criteria:Landroid/widget/LinearLayout;

.field criteriaSub:Landroid/widget/TextView;

.field factory:Landroid/view/LayoutInflater;

.field private handler:Landroid/os/Handler;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionbarAddListCancelButton:Landroid/widget/TextView;

.field private mActionbarAddListDoneButton:Landroid/widget/TextView;

.field private mActionbarAddListLayout:Landroid/widget/LinearLayout;

.field private mIsLandscape:Z

.field private mMatchCriteria:I

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuSave:Landroid/view/MenuItem;

.field mToast:Landroid/widget/Toast;

.field private m_DialogView:Landroid/app/AlertDialog;

.field private match_MODE:I

.field match_criteria:Ljava/lang/String;

.field private mtelephonyManager:Landroid/telephony/TelephonyManager;

.field private previous_NUM:Ljava/lang/String;

.field private previous_match_MODE:I

.field searchButton:Landroid/widget/Button;

.field selectAll:Landroid/widget/LinearLayout;

.field selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private select_NUM:Ljava/lang/String;

.field private update_ID:I

.field private update_MODE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    .line 81
    sget-object v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const/16 v0, 0x64

    sput v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->MAX_NUMBER_LENGTH:I

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->NUM_PROJECTION:[Ljava/lang/String;

    .line 120
    sput-boolean v3, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->sIsPhone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->IMEHandler:Landroid/os/Handler;

    .line 111
    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    .line 112
    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    .line 113
    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    .line 115
    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuSave:Landroid/view/MenuItem;

    .line 116
    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    .line 118
    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->match_criteria:Ljava/lang/String;

    .line 121
    const-string v0, "SetupSpamNumberWriteForm"

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->TAG:Ljava/lang/String;

    .line 534
    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$11;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$11;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->handler:Landroid/os/Handler;

    return-void
.end method

.method private LayoutInit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 228
    const v2, 0x7f0b011b

    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    .line 230
    const v2, 0x7f0b011c

    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->searchButton:Landroid/widget/Button;

    .line 231
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mtelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->sIsPhone:Z

    .line 233
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDialogAlertWhenTextInputForKor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    const/16 v2, 0x15

    sput v2, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->MAX_NUMBER_LENGTH:I

    .line 235
    new-array v0, v5, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/mms/util/LengthFilterWithDialog;

    sget v4, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->MAX_NUMBER_LENGTH:I

    invoke-direct {v3, p0, v4, v5}, Lcom/android/mms/util/LengthFilterWithDialog;-><init>(Landroid/content/Context;II)V

    aput-object v3, v0, v2

    .line 238
    .local v0, inputFilters:[Landroid/text/InputFilter;
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 241
    .end local v0           #inputFilters:[Landroid/text/InputFilter;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->searchButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/mms/spam/SetupSpamNumberWriteForm$2;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$2;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->searchButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0171

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 254
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->factory:Landroid/view/LayoutInflater;

    .line 265
    const v2, 0x7f0b011e

    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->criteria:Landroid/widget/LinearLayout;

    .line 266
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->criteria:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/mms/spam/SetupSpamNumberWriteForm$3;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$3;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, matchEntry:[Ljava/lang/String;
    const v2, 0x7f0b0120

    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->criteriaSub:Landroid/widget/TextView;

    .line 274
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->criteriaSub:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->sIsPhone:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->alertdialogSearch()V

    return-void
.end method

.method static synthetic access$200()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->alertdialogMatchCriteria()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->showSip()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/mms/spam/SetupSpamNumberWriteForm;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->update_MODE:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/spam/SetupSpamNumberWriteForm;Ljava/lang/String;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->addSpamNumber(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->update_ID:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/spam/SetupSpamNumberWriteForm;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->updateSpamNumber(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    return-void
.end method

.method private addSpamNumber(Ljava/lang/String;I)I
    .locals 8
    .parameter "string"
    .parameter "matched"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 839
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 840
    .local v7, values:Landroid/content/ContentValues;
    const-string v4, "filter_type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 841
    const-string v4, "filter"

    invoke-virtual {v7, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string v4, "enable"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 843
    const-string v4, "criteria"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 848
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 851
    .local v6, uri:Landroid/net/Uri;
    if-nez v6, :cond_0

    .line 861
    :goto_0
    return v2

    .line 854
    :cond_0
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 855
    .local v1, id:I
    new-instance v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    .line 860
    .local v0, spamdata:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    invoke-static {v1, v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->insert(ILcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    move v2, v1

    .line 861
    goto :goto_0
.end method

.method private alertdialogMatchCriteria()V
    .locals 5

    .prologue
    .line 381
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 382
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 383
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c029d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 384
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 385
    const v2, 0x7f0c017c

    new-instance v3, Lcom/android/mms/spam/SetupSpamNumberWriteForm$4;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$4;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 391
    new-instance v2, Lcom/android/mms/spam/SetupSpamNumberWriteForm$5;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$5;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 400
    const v2, 0x7f08002a

    iget v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    new-instance v4, Lcom/android/mms/spam/SetupSpamNumberWriteForm$6;

    invoke-direct {v4, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$6;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 411
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 412
    .local v1, createDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 413
    return-void
.end method

.method private alertdialogSearch()V
    .locals 5

    .prologue
    .line 417
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 419
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 420
    .local v0, SearchListDialog:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    const v2, 0x7f0c0171

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 426
    :goto_0
    const v2, 0x7f08002c

    new-instance v3, Lcom/android/mms/spam/SetupSpamNumberWriteForm$7;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$7;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 448
    new-instance v2, Lcom/android/mms/spam/SetupSpamNumberWriteForm$8;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$8;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 458
    const v2, 0x7f0c017c

    new-instance v3, Lcom/android/mms/spam/SetupSpamNumberWriteForm$9;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$9;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 467
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 469
    .local v1, searchListDlg:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 471
    return-void

    .line 423
    .end local v1           #searchListDlg:Landroid/app/AlertDialog;
    :cond_0
    const v2, 0x104000c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private checkAlreadyInUse(Ljava/lang/String;I)Z
    .locals 7
    .parameter "phoneNumber"
    .parameter "matchCriteria"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 774
    const/4 v1, 0x0

    .line 775
    .local v1, existSpam:Z
    new-array v0, v3, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v0, v4

    .line 776
    .local v0, COUNT_PROJECTION:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filter_type=0 AND filter=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "criteria"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 780
    .local v2, selection:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->update_MODE:Z

    if-eqz v5, :cond_0

    .line 781
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->update_ID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 784
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v6, v0, v2}, Lcom/android/mms/ui/MessageUtils;->queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    move v1, v3

    .line 786
    :goto_0
    return v1

    :cond_1
    move v1, v4

    .line 784
    goto :goto_0
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 815
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 817
    :cond_0
    return-void
.end method

.method private getSpamNumber()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 805
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "filter_type =0"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private isAvaliableNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 791
    if-nez p1, :cond_1

    .line 801
    :cond_0
    :goto_0
    return v2

    .line 795
    :cond_1
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 796
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 797
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 795
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 801
    .end local v0           #c:C
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showSip()V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->IMEHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberWriteForm$1;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$1;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
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

    .line 279
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040002

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    .line 282
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0013

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    .line 284
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    .line 286
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 288
    .local v0, title:Landroid/widget/TextView;
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0012

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    .end local v0           #title:Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 323
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    :cond_2
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuSave:Landroid/view/MenuItem;

    if-eqz v1, :cond_3

    .line 327
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 329
    iget-boolean v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mIsLandscape:Z

    if-eqz v1, :cond_5

    .line 330
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuSave:Landroid/view/MenuItem;

    const v2, 0x7f020006

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 335
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v1, :cond_4

    .line 336
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 338
    iget-boolean v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mIsLandscape:Z

    if-eqz v1, :cond_6

    .line 339
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    const v2, 0x7f02022c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 343
    :cond_4
    :goto_1
    return-void

    .line 332
    :cond_5
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 341
    :cond_6
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private updateSpamNumber(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 6
    .parameter "string"
    .parameter "checked"
    .parameter "matched"
    .parameter "rowId"

    .prologue
    const/4 v5, 0x0

    .line 820
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 821
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "filter"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v3, "enable"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 823
    const-string v3, "criteria"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    sget-object v3, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 828
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 832
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 833
    .local v0, enable:Z
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p4, p1, v0, v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->update(ILjava/lang/String;ZI)V

    .line 834
    return-void

    .line 832
    .end local v0           #enable:Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 474
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 475
    const-string v7, ""

    .line 477
    .local v7, output:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 522
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberWriteForm$10;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$10;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 530
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 532
    :cond_1
    return-void

    .line 479
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 480
    const-string v0, "TEST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LogsPickerActivity.onActivityResult] uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v0, "NUMBER"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 482
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 484
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->MAX_NUMBER_LENGTH:I

    if-le v0, v1, :cond_2

    .line 485
    sget v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->MAX_NUMBER_LENGTH:I

    invoke-virtual {v7, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 492
    :pswitch_1
    if-ne p2, v0, :cond_8

    .line 493
    const/4 v6, 0x0

    .line 495
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 497
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 498
    :cond_3
    const-string v0, "AutoReject"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :cond_4
    :goto_1
    if-eqz v6, :cond_0

    .line 511
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 500
    :cond_5
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 502
    if-eqz v7, :cond_4

    .line 503
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->MAX_NUMBER_LENGTH:I

    if-le v0, v1, :cond_6

    .line 504
    const/4 v0, 0x0

    sget v1, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->MAX_NUMBER_LENGTH:I

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 506
    :cond_6
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 510
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 511
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 514
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_8
    const-string v0, "AutoReject"

    const-string v1, "onActivityResult: cancelled."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mIsLandscape:Z

    .line 215
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->updateActionBar()V

    .line 216
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mtelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    .line 128
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mtelephonyManager:Landroid/telephony/TelephonyManager;

    .line 130
    :cond_0
    const v2, 0x7f040039

    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->setContentView(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mIsLandscape:Z

    .line 133
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->updateActionBar()V

    .line 134
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionBar:Landroid/app/ActionBar;

    .line 135
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 137
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 138
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 141
    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mToast:Landroid/widget/Toast;

    .line 142
    if-eqz p1, :cond_2

    .line 143
    const-string v2, "SetupSpamNumberWriteForm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate  savedInstanceState  mMatchCriteria = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v2, "match_criteria"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    .line 147
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->LayoutInit()V

    .line 148
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "UPDATE_MODE"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->update_MODE:Z

    .line 149
    iget-boolean v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->update_MODE:Z

    if-ne v2, v3, :cond_4

    .line 150
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "UPDATE_ID"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->update_ID:I

    .line 151
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "MATCH_MODE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->match_MODE:I

    .line 152
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "SELECT_NUMBER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->select_NUM:Ljava/lang/String;

    .line 153
    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->match_MODE:I

    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    .line 154
    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->match_MODE:I

    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->previous_match_MODE:I

    .line 155
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->select_NUM:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->previous_NUM:Ljava/lang/String;

    .line 156
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->select_NUM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 158
    .local v0, len:I
    if-lez v0, :cond_3

    .line 159
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 161
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, matchEntry:[Ljava/lang/String;
    const v2, 0x7f0b0120

    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->criteriaSub:Landroid/widget/TextView;

    .line 163
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->criteriaSub:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .end local v0           #len:I
    .end local v1           #matchEntry:[Ljava/lang/String;
    :cond_4
    return-void

    :cond_5
    move v2, v4

    .line 131
    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v3, 0x7f0c0297

    const v4, 0x104000a

    const/4 v1, 0x0

    .line 673
    const/4 v0, 0x0

    .line 675
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 726
    :goto_0
    return-object v1

    .line 677
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 679
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 680
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c028e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 681
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 682
    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberWriteForm$14;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$14;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 687
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    .line 688
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    goto :goto_0

    .line 691
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 693
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->match_criteria:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0c028d

    invoke-virtual {p0, v3}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 698
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 700
    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberWriteForm$15;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$15;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 706
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    .line 707
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    goto :goto_0

    .line 710
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 711
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 712
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 713
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0291

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 714
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 715
    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberWriteForm$16;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$16;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 720
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    .line 721
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 675
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
    .line 224
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 346
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 359
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 348
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->finish()V

    goto :goto_0

    .line 352
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    .line 356
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_0

    .line 346
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
    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 207
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 663
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 664
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->match_criteria:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c028d

    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 668
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 363
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 365
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 367
    const/4 v0, 0x2

    const v1, 0x7f0c017c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    .line 368
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 370
    const/4 v0, 0x1

    const v1, 0x7f0c00dd

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuSave:Landroid/view/MenuItem;

    .line 371
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 373
    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f02022c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 375
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuSave:Landroid/view/MenuItem;

    const v1, 0x7f02022d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 377
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "inState"

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 176
    if-eqz p1, :cond_0

    .line 177
    const-string v0, "match_criteria"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    .line 178
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 184
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 185
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->IMEHandler:Landroid/os/Handler;

    .line 186
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->showSip()V

    .line 187
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    const-string v0, "match_criteria"

    iget v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    return-void
.end method

.method public showNumberConfirmDialog()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 622
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 624
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c0297

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 625
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, showMessage:Ljava/lang/String;
    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    packed-switch v2, :pswitch_data_0

    .line 641
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 642
    const v2, 0x7f0c004f

    new-instance v3, Lcom/android/mms/spam/SetupSpamNumberWriteForm$13;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$13;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0050

    new-instance v4, Lcom/android/mms/spam/SetupSpamNumberWriteForm$12;

    invoke-direct {v4, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$12;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 658
    return-void

    .line 628
    :pswitch_0
    const v2, 0x7f0c0289

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 629
    goto :goto_0

    .line 631
    :pswitch_1
    const v2, 0x7f0c028a

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 632
    goto :goto_0

    .line 634
    :pswitch_2
    const v2, 0x7f0c028b

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 635
    goto/16 :goto_0

    .line 637
    :pswitch_3
    const v2, 0x7f0c028c

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 626
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 9
    .parameter "target"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 545
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 546
    invoke-virtual {p0, v7}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->showDialog(I)V

    .line 547
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 614
    :goto_0
    return-void

    .line 549
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForKor()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 550
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-ge v4, v5, :cond_1

    .line 551
    invoke-virtual {p0, v5}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->showDialog(I)V

    .line 552
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 555
    :cond_1
    iget v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    if-ne v4, v7, :cond_3

    .line 556
    const/4 v4, 0x6

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "010"

    aput-object v4, v0, v6

    const-string v4, "011"

    aput-object v4, v0, v7

    const-string v4, "016"

    aput-object v4, v0, v8

    const-string v4, "017"

    aput-object v4, v0, v5

    const/4 v4, 0x4

    const-string v5, "018"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "019"

    aput-object v5, v0, v4

    .line 560
    .local v0, arrayBlockingNumber:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 561
    .local v3, szNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 562
    aget-object v4, v0, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 563
    const v4, 0x7f0c0290

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->displayToast(Ljava/lang/String;)V

    goto :goto_0

    .line 561
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 571
    .end local v0           #arrayBlockingNumber:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #szNumber:Ljava/lang/String;
    :cond_3
    iget v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    packed-switch v4, :pswitch_data_0

    .line 589
    :goto_2
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    invoke-direct {p0, v4, v5}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->checkAlreadyInUse(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 590
    invoke-virtual {p0, v8}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->showDialog(I)V

    .line 591
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    .line 573
    :pswitch_0
    const v4, 0x7f0c029f

    invoke-virtual {p0, v4}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->match_criteria:Ljava/lang/String;

    goto :goto_2

    .line 577
    :pswitch_1
    const v4, 0x7f0c02a0

    invoke-virtual {p0, v4}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->match_criteria:Ljava/lang/String;

    goto :goto_2

    .line 581
    :pswitch_2
    const v4, 0x7f0c02a1

    invoke-virtual {p0, v4}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->match_criteria:Ljava/lang/String;

    goto :goto_2

    .line 585
    :pswitch_3
    const v4, 0x7f0c02a2

    invoke-virtual {p0, v4}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->match_criteria:Ljava/lang/String;

    goto :goto_2

    .line 595
    :cond_4
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 596
    const v4, 0x7f0c028f

    invoke-virtual {p0, v4}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->displayToast(Ljava/lang/String;)V

    .line 597
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    .line 601
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForKor()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 602
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->showNumberConfirmDialog()V

    goto/16 :goto_0

    .line 604
    :cond_6
    iget-boolean v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->update_MODE:Z

    if-ne v4, v7, :cond_7

    .line 605
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->update_ID:I

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->updateSpamNumber(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 610
    :goto_3
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 611
    .local v2, intent:Landroid/content/Intent;
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->setResult(ILandroid/content/Intent;)V

    .line 612
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->finish()V

    goto/16 :goto_0

    .line 607
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    invoke-direct {p0, v4, v5}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->addSpamNumber(Ljava/lang/String;I)I

    goto :goto_3

    .line 571
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 617
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->setResult(ILandroid/content/Intent;)V

    .line 618
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->finish()V

    .line 619
    return-void
.end method
