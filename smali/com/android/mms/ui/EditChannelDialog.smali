.class public Lcom/android/mms/ui/EditChannelDialog;
.super Landroid/app/AlertDialog;
.source "EditChannelDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;
    }
.end annotation


# static fields
.field private static MAX_SIGN_LENGTH:I = 0x0

.field public static final MODE_CREATE:I = 0x0

.field public static final MODE_EDIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/EditChannelDialog"


# instance fields
.field private final mCallback:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

.field private mChannelId:Ljava/lang/String;

.field private mChannelIdEdit:Landroid/widget/EditText;

.field private mChannelName:Ljava/lang/String;

.field private mChannelNameEdit:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field public mEditTextWatcher:Landroid/text/TextWatcher;

.field private mEnableCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mEnabled:Z

.field private mID:Ljava/lang/Long;

.field private mIdWatcher:Landroid/text/TextWatcher;

.field private mMaxCharsInputToast:Landroid/widget/Toast;

.field private mMode:I

.field private mSaveButton:Landroid/widget/Button;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x14

    sput v0, Lcom/android/mms/ui/EditChannelDialog;->MAX_SIGN_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;)V
    .locals 7
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 98
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/EditChannelDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "callback"
    .parameter "id"
    .parameter "channelId"
    .parameter "channelName"
    .parameter "bEnabled"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mMode:I

    .line 133
    new-instance v0, Lcom/android/mms/ui/EditChannelDialog$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EditChannelDialog$1;-><init>(Lcom/android/mms/ui/EditChannelDialog;)V

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mEditTextWatcher:Landroid/text/TextWatcher;

    .line 250
    new-instance v0, Lcom/android/mms/ui/EditChannelDialog$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EditChannelDialog$2;-><init>(Lcom/android/mms/ui/EditChannelDialog;)V

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mIdWatcher:Landroid/text/TextWatcher;

    .line 86
    iput-object p1, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/mms/ui/EditChannelDialog;->mCallback:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    .line 88
    iput-object p3, p0, Lcom/android/mms/ui/EditChannelDialog;->mID:Ljava/lang/Long;

    .line 89
    iput-object p4, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelId:Ljava/lang/String;

    .line 90
    iput-object p5, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelName:Ljava/lang/String;

    .line 91
    iput-boolean p6, p0, Lcom/android/mms/ui/EditChannelDialog;->mEnabled:Z

    .line 92
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mMode:I

    .line 95
    :cond_0
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/android/mms/ui/EditChannelDialog;->MAX_SIGN_LENGTH:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/EditChannelDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/mms/ui/EditChannelDialog;->showToast()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/EditChannelDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/EditChannelDialog;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/mms/ui/EditChannelDialog;->mSaveButton:Landroid/widget/Button;

    return-object p1
.end method

.method private onReferenceViews(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const v3, 0x7f0b0081

    const/4 v2, 0x0

    .line 165
    const v0, 0x7f0b007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelNameEdit:Landroid/widget/EditText;

    .line 166
    const v0, 0x7f0b0080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelNameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 172
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mEnableCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelNameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelNameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mEnableCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mEnableCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 185
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mIdWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 186
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 187
    return-void
.end method

.method private showToast()V
    .locals 3

    .prologue
    const v2, 0x7f0c0286

    .line 153
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mMaxCharsInputToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mMaxCharsInputToast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mMaxCharsInputToast:Landroid/widget/Toast;

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    :cond_1
    return-void

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->playSoundEffect(I)V

    .line 193
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 196
    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelNameEdit:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, channelName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, channelId:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mEnableCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    .line 200
    .local v0, bChecked:Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 201
    iget-object v6, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f0c0105

    invoke-static {v6, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 202
    iget-object v6, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 207
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CHANNEL_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    :cond_2
    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/android/mms/ui/ChannelUtils;->isChannelAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 211
    iget v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mMode:I

    if-ne v8, v6, :cond_3

    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelId:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 212
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f0c0106

    invoke-static {v6, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 217
    :cond_4
    if-eqz v0, :cond_5

    .line 218
    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 219
    .local v5, sharedPref:Landroid/content/SharedPreferences;
    const-string v8, "pref_cb_my_channel_max_count"

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 221
    .local v1, cb_channel_max:I
    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/ui/ChannelUtils;->getCheckedCount(Landroid/content/Context;)I

    move-result v4

    .line 222
    .local v4, checkedCount:I
    if-lt v4, v1, :cond_5

    .line 223
    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0c0074

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 226
    const/4 v0, 0x0

    .line 230
    .end local v1           #cb_channel_max:I
    .end local v4           #checkedCount:I
    .end local v5           #sharedPref:Landroid/content/SharedPreferences;
    :cond_5
    iget v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mMode:I

    if-ne v8, v6, :cond_7

    .line 231
    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/mms/ui/EditChannelDialog;->mID:Ljava/lang/Long;

    if-eqz v0, :cond_6

    :goto_1
    invoke-static {v8, v9, v2, v3, v6}, Lcom/android/mms/ui/ChannelUtils;->modifyChannel(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 236
    :goto_2
    iget-object v6, p0, Lcom/android/mms/ui/EditChannelDialog;->mCallback:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    if-eqz v6, :cond_0

    .line 237
    iget-object v6, p0, Lcom/android/mms/ui/EditChannelDialog;->mCallback:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    iget v7, p0, Lcom/android/mms/ui/EditChannelDialog;->mMode:I

    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelId:Ljava/lang/String;

    invoke-interface {v6, v7, v2, v8}, Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;->onMyChannelSet(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v6, v7

    .line 231
    goto :goto_1

    .line 233
    :cond_7
    iget-object v8, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_8

    :goto_3
    invoke-static {v8, v2, v3, v6}, Lcom/android/mms/ui/ChannelUtils;->addChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_8
    move v6, v7

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 103
    iget v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 104
    const v0, 0x7f0c0103

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditChannelDialog;->setTitle(I)V

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/EditChannelDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0c00dd

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v4, v0, p0}, Lcom/android/mms/ui/EditChannelDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 110
    const/4 v2, -0x2

    invoke-virtual {p0}, Lcom/android/mms/ui/EditChannelDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0c0101

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/mms/ui/EditChannelDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/mms/ui/EditChannelDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f04001d

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditChannelDialog;->setView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/EditChannelDialog;->onReferenceViews(Landroid/view/View;)V

    .line 116
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/EditChannelDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mSaveButton:Landroid/widget/Button;

    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/EditChannelDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 125
    return-void

    .line 106
    :cond_1
    const v0, 0x7f0c0102

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditChannelDialog;->setTitle(I)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/mms/ui/EditChannelDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method
