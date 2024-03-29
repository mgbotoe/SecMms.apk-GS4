.class public Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;
.super Landroid/app/DialogFragment;
.source "MmsPartExportDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/content/MmsPartExportDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenameDialog"
.end annotation


# static fields
.field private static final MAX_FILENAME_LENGTH:I = 0x32


# instance fields
.field private mEditField:Landroid/widget/EditText;

.field private mExtension:Ljava/lang/String;

.field private mOrigName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private extractFileName()V
    .locals 4

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "filename"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, fileName:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 133
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->mOrigName:Ljava/lang/String;

    .line 134
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->mExtension:Ljava/lang/String;

    .line 145
    :goto_0
    return-void

    .line 137
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 138
    .local v0, dotIndex:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 139
    iput-object v1, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->mOrigName:Ljava/lang/String;

    .line 140
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->mExtension:Ljava/lang/String;

    goto :goto_0

    .line 142
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->mOrigName:Ljava/lang/String;

    .line 143
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->mExtension:Ljava/lang/String;

    goto :goto_0
.end method

.method private hideInputMethod()V
    .locals 3

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 183
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->mEditField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 186
    :cond_0
    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Landroid/app/DialogFragment;
    .locals 1
    .parameter "args"

    .prologue
    .line 110
    new-instance v0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;

    invoke-direct {v0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;-><init>()V

    .line 111
    .local v0, fg:Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;
    invoke-virtual {v0, p0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->setArguments(Landroid/os/Bundle;)V

    .line 112
    return-object v0
.end method

.method private notifyActivity()V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/content/MmsPartExportDialogActivity;

    #calls: Lcom/samsung/mms/content/MmsPartExportDialogActivity;->nextIntent()V
    invoke-static {v0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity;->access$000(Lcom/samsung/mms/content/MmsPartExportDialogActivity;)V

    .line 190
    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 173
    .local v1, window:Landroid/view/Window;
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 174
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 175
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method private setupDialogView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x32

    const/4 v5, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04006a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b0229

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->mEditField:Landroid/widget/EditText;

    .line 152
    if-nez p1, :cond_0

    .line 153
    iget-object v2, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->mEditField:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->mOrigName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v2, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->mEditField:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->mOrigName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 157
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [Landroid/text/InputFilter;

    new-instance v2, Lcom/samsung/mms/content/MmsPartExportDialogActivity$InvalidFilenameCharacterFilter;

    invoke-direct {v2}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$InvalidFilenameCharacterFilter;-><init>()V

    aput-object v2, v0, v5

    const/4 v2, 0x1

    new-instance v3, Lcom/android/mms/util/LengthFilterWithToast;

    invoke-direct {v3, v6}, Lcom/android/mms/util/LengthFilterWithToast;-><init>(I)V

    aput-object v3, v0, v2

    .line 161
    .local v0, filters:[Landroid/text/InputFilter;
    iget-object v2, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->mEditField:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 162
    iget-object v2, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->mEditField:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 163
    iget-object v2, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->mEditField:Landroid/widget/EditText;

    invoke-static {v2, v6}, Lcom/android/mms/ui/MessageUtils;->setMaximumLengthforWB(Landroid/widget/EditText;I)V

    .line 164
    return-object v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 216
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 212
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->notifyActivity()V

    .line 195
    invoke-direct {p0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->hideInputMethod()V

    .line 196
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 200
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "msg_uri"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 202
    .local v1, msgUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "part_uri"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 203
    .local v2, partUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->mEditField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->mExtension:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, fileName:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/mms/content/MmsPartExport;->queueSaveRequest(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 206
    .end local v0           #fileName:Ljava/lang/String;
    .end local v1           #msgUri:Landroid/net/Uri;
    .end local v2           #partUri:Landroid/net/Uri;
    :cond_0
    invoke-direct {p0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->notifyActivity()V

    .line 207
    invoke-direct {p0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->hideInputMethod()V

    .line 208
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->extractFileName()V

    .line 118
    invoke-direct {p0, p1}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->setupDialogView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, dialogView:Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c013f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 126
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-direct {p0, v0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->requestInputMethod(Landroid/app/Dialog;)V

    .line 127
    return-object v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/samsung/mms/content/MmsPartExportDialogActivity$RenameDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 221
    .local v0, dialog:Landroid/app/AlertDialog;
    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
