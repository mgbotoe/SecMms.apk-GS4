.class public Lcom/android/mms/template/TextTemplateEditActivity;
.super Landroid/app/Activity;
.source "TextTemplateEditActivity.java"


# static fields
.field private static final MAX_TEMPLATE_LENGTH:I = 0xc8

.field private static final MENU_CANCEL:I = 0x1

.field private static final MENU_SAVE:I


# instance fields
.field private IMEHandler:Landroid/os/Handler;

.field private mEditor:Landroid/widget/EditText;

.field private mMsgText:Ljava/lang/CharSequence;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity;->IMEHandler:Landroid/os/Handler;

    .line 56
    iput-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method private TextTemplateSipHide()V
    .locals 3

    .prologue
    .line 187
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 188
    return-void
.end method

.method private TextTemplateSipShow()V
    .locals 4

    .prologue
    .line 191
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity;->IMEHandler:Landroid/os/Handler;

    .line 192
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity;->IMEHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/template/TextTemplateEditActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/template/TextTemplateEditActivity$1;-><init>(Lcom/android/mms/template/TextTemplateEditActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/template/TextTemplateEditActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateEditActivity;->invalidateOptionsMenu()V

    .line 139
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0xc8

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 66
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateEditActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 68
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 70
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 71
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 74
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 75
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v5, 0x7f04008b

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 76
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0, v4}, Lcom/android/mms/template/TextTemplateEditActivity;->setContentView(Landroid/view/View;)V

    .line 78
    const v5, 0x7f0b029a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    .line 79
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 80
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-static {v5, v9}, Lcom/android/mms/ui/MessageUtils;->setMaximumLengthforWB(Landroid/widget/EditText;I)V

    .line 82
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDialogAlertWhenTextInputForKor()Z

    move-result v5

    if-nez v5, :cond_1

    .line 83
    new-array v2, v7, [Landroid/text/InputFilter;

    new-instance v5, Lcom/android/mms/util/LengthFilterWithToast;

    invoke-direct {v5, v9}, Lcom/android/mms/util/LengthFilterWithToast;-><init>(I)V

    aput-object v5, v2, v8

    .line 86
    .local v2, inputFilters:[Landroid/text/InputFilter;
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 94
    :goto_0
    const-string v5, "android.intent.extra.TEMPLATE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mMsgText:Ljava/lang/CharSequence;

    .line 95
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mMsgText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 100
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    const/high16 v6, 0x200

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 101
    return-void

    .line 88
    .end local v2           #inputFilters:[Landroid/text/InputFilter;
    :cond_1
    new-array v2, v7, [Landroid/text/InputFilter;

    new-instance v5, Lcom/android/mms/util/LengthFilterWithDialog;

    invoke-direct {v5, p0, v9, v7}, Lcom/android/mms/util/LengthFilterWithDialog;-><init>(Landroid/content/Context;II)V

    aput-object v5, v2, v8

    .line 91
    .restart local v2       #inputFilters:[Landroid/text/InputFilter;
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 105
    const/4 v0, 0x1

    const v1, 0x7f0c017c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02022c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 109
    const v0, 0x7f0c00dd

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02022d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 228
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    const-string v2, "clipboardEx"

    invoke-virtual {v1, v2}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 229
    .local v0, mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 231
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 232
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "arg1"

    .prologue
    .line 180
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 174
    :cond_0
    :goto_0
    return v1

    .line 144
    :sswitch_0
    iget-object v3, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_1

    .line 146
    const v2, 0x7f0c020e

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mToast:Landroid/widget/Toast;

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mToast:Landroid/widget/Toast;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 152
    :cond_2
    const v1, 0x7f0c0210

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v0, result:Landroid/content/Intent;
    const-string v1, "android.intent.extra.TEMPLATE"

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/template/TextTemplateEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 156
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateEditActivity;->TextTemplateSipHide()V

    .line 157
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateEditActivity;->finish()V

    .line 174
    .end local v0           #result:Landroid/content/Intent;
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 162
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateEditActivity;->TextTemplateSipHide()V

    .line 163
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateEditActivity;->finish()V

    goto :goto_1

    .line 167
    :sswitch_2
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateEditActivity;->TextTemplateSipHide()V

    .line 168
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateEditActivity;->finish()V

    goto :goto_1

    .line 142
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 209
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 119
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 121
    .local v0, isLandscape:Z
    :goto_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 122
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 124
    if-eqz v0, :cond_1

    .line 125
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02022c

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 126
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02022d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 132
    :goto_1
    return v1

    .end local v0           #isLandscape:Z
    :cond_0
    move v0, v2

    .line 119
    goto :goto_0

    .line 128
    .restart local v0       #isLandscape:Z
    :cond_1
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 129
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 216
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 218
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateEditActivity;->TextTemplateSipShow()V

    .line 222
    :cond_0
    return-void
.end method
