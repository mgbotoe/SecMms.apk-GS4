.class public Lcom/android/mms/ui/SignaturePreference;
.super Landroid/preference/EditTextPreference;
.source "SignaturePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SignaturePreference$toShowToastLengthFilter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SignaturePreference"

.field static prefDialog:Landroid/app/AlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditSignature:Landroid/widget/EditText;

.field private mMaxCharsInputToast:Landroid/widget/Toast;

.field private mTextSignature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object v4, p0, Lcom/android/mms/ui/SignaturePreference;->mContext:Landroid/content/Context;

    .line 36
    iput-object v4, p0, Lcom/android/mms/ui/SignaturePreference;->mTextSignature:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/android/mms/ui/SignaturePreference;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p0}, Lcom/android/mms/ui/SignaturePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    .line 49
    iget-object v4, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 50
    iget-object v4, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    const-string v5, "disableEmoticonInput=true"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 51
    iget-object v4, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    const v5, 0x7f0c0371

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 54
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDialogAlertWhenTextInputForKor()Z

    move-result v4

    if-nez v4, :cond_1

    .line 56
    new-array v0, v7, [Landroid/text/InputFilter;

    .line 57
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v4, Lcom/android/mms/ui/SignaturePreference$toShowToastLengthFilter;

    const/16 v5, 0x28

    invoke-direct {v4, p0, v5}, Lcom/android/mms/ui/SignaturePreference$toShowToastLengthFilter;-><init>(Lcom/android/mms/ui/SignaturePreference;I)V

    aput-object v4, v0, v8

    .line 58
    iget-object v4, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 59
    const/16 v2, 0x28

    .line 69
    .end local v0           #FilterArray:[Landroid/text/InputFilter;
    .local v2, maxLength:I
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    new-instance v5, Landroid/text/method/TextKeyListener;

    sget-object v6, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-direct {v5, v6, v7}, Landroid/text/method/TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 70
    iget-object v4, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 71
    iget-object v4, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    invoke-static {v4, v2}, Lcom/android/mms/ui/MessageUtils;->setMaximumLengthforWB(Landroid/widget/EditText;I)V

    .line 74
    .end local v2           #maxLength:I
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/SignaturePreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 75
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_signature_text"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SignaturePreference;->mTextSignature:Ljava/lang/String;

    .line 76
    return-void

    .line 63
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :cond_1
    new-array v1, v7, [Landroid/text/InputFilter;

    new-instance v4, Lcom/android/mms/util/LengthFilterWithDialog;

    iget-object v5, p0, Lcom/android/mms/ui/SignaturePreference;->mContext:Landroid/content/Context;

    const/16 v6, 0x20

    invoke-direct {v4, v5, v6, v7}, Lcom/android/mms/util/LengthFilterWithDialog;-><init>(Landroid/content/Context;II)V

    aput-object v4, v1, v8

    .line 66
    .local v1, inputFilters:[Landroid/text/InputFilter;
    iget-object v4, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 67
    const/16 v2, 0x20

    .restart local v2       #maxLength:I
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SignaturePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/mms/ui/SignaturePreference;->showToast()V

    return-void
.end method

.method public static disableOkButton(I)V
    .locals 3
    .parameter "length"

    .prologue
    .line 255
    sget-object v1, Lcom/android/mms/ui/SignaturePreference;->prefDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 257
    sget-object v1, Lcom/android/mms/ui/SignaturePreference;->prefDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 258
    .local v0, postiveButton:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 259
    if-nez p0, :cond_1

    .line 260
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 265
    .end local v0           #postiveButton:Landroid/widget/Button;
    :cond_0
    :goto_0
    return-void

    .line 262
    .restart local v0       #postiveButton:Landroid/widget/Button;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private savePreferences(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SignaturePreference;->mTextSignature:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcom/android/mms/ui/SignaturePreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 122
    const-string v1, "pref_key_signature_text"

    iget-object v2, p0, Lcom/android/mms/ui/SignaturePreference;->mTextSignature:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/android/mms/ui/SignaturePreference;->mTextSignature:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SignaturePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SignaturePreference;->notifyChanged()V

    goto :goto_0
.end method

.method private showToast()V
    .locals 3

    .prologue
    const v2, 0x7f0c0286

    .line 199
    iget-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mMaxCharsInputToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mMaxCharsInputToast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mMaxCharsInputToast:Landroid/widget/Toast;

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 210
    :cond_1
    return-void

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/preference/EditTextPreference;->onClick()V

    .line 105
    invoke-virtual {p0}, Lcom/android/mms/ui/SignaturePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 106
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 107
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 85
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 86
    invoke-direct {p0, p2}, Lcom/android/mms/ui/SignaturePreference;->savePreferences(I)V

    .line 87
    :cond_0
    if-eqz p1, :cond_1

    .line 88
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 89
    :cond_1
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/preference/EditTextPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mTextSignature:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SignaturePreference;->setText(Ljava/lang/String;)V

    .line 112
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 113
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->showDialog(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/mms/ui/SignaturePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    sput-object v0, Lcom/android/mms/ui/SignaturePreference;->prefDialog:Landroid/app/AlertDialog;

    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mTextSignature:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/mms/ui/SignaturePreference;->mEditSignature:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/ui/SignaturePreference;->disableOkButton(I)V

    .line 99
    :cond_0
    return-void
.end method
