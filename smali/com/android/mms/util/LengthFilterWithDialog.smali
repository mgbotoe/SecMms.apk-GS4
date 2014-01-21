.class public Lcom/android/mms/util/LengthFilterWithDialog;
.super Landroid/text/InputFilter$LengthFilter;
.source "LengthFilterWithDialog.java"


# static fields
.field public static final CHARACTER:I = 0x1

.field public static final KSC5601:I = 0x3

.field public static final UTF8:I = 0x2


# instance fields
.field private final ACTIVITY_MESSAGING_PREF:Ljava/lang/String;

.field private final ACTIVITY_MESSAGING_TAB_PREF:Ljava/lang/String;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private final mMax:I

.field private mToast:Landroid/widget/Toast;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "max"
    .parameter "type"

    .prologue
    .line 52
    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 29
    const-string v0, "com.android.mms.ui.MessagingPreferenceActivity"

    iput-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->ACTIVITY_MESSAGING_PREF:Ljava/lang/String;

    .line 30
    const-string v0, "com.android.mms.ui.MessagingPreferenceTabActivity"

    iput-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->ACTIVITY_MESSAGING_TAB_PREF:Ljava/lang/String;

    .line 36
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mType:I

    .line 53
    iput-object p1, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mContext:Landroid/content/Context;

    .line 54
    iput p2, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mMax:I

    .line 55
    iput p3, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mType:I

    .line 56
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v8, 0x0

    .line 60
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 61
    .local v0, expected:Ljava/lang/String;
    const/4 v3, 0x0

    .line 62
    .local v3, nLength:I
    const/4 v5, 0x0

    .line 64
    .local v5, nSourceLength:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p4, v8, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v7

    invoke-interface {p4, p6, v7}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v6, "com.android.mms.ui.MessagingPreferenceActivity"

    iget-object v7, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.android.mms.ui.MessagingPreferenceTabActivity"

    iget-object v7, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 70
    :cond_0
    const/4 v2, 0x0

    .line 71
    .local v2, length:I
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 72
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 78
    :goto_0
    invoke-static {v2}, Lcom/android/mms/ui/SignaturePreference;->disableOkButton(I)V

    .line 81
    .end local v2           #length:I
    :cond_1
    iget v6, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mType:I

    packed-switch v6, :pswitch_data_0

    .line 95
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 127
    :goto_1
    return-object v6

    .line 73
    .restart local v2       #length:I
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v6

    sub-int v7, p6, p5

    if-ne v6, v7, :cond_3

    .line 74
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    goto :goto_0

    .line 76
    :cond_3
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    goto :goto_0

    .line 83
    .end local v2           #length:I
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 84
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 98
    :goto_2
    iget v6, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mMax:I

    if-le v3, v6, :cond_5

    .line 99
    iget v6, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mMax:I

    sub-int v6, v3, v6

    sub-int v4, v5, v6

    .line 101
    .local v4, nPasteLength:I
    iget v6, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mType:I

    packed-switch v6, :pswitch_data_1

    .line 113
    :goto_3
    invoke-virtual {p0}, Lcom/android/mms/util/LengthFilterWithDialog;->showDialog()V

    .line 115
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v1, imeBroadCast:Landroid/content/Intent;
    const-string v6, "imeAction:initComposing"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v6, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_4

    .line 121
    const-string v0, ""

    :cond_4
    move-object v6, v0

    .line 127
    goto :goto_1

    .line 87
    .end local v1           #imeBroadCast:Landroid/content/Intent;
    .end local v4           #nPasteLength:I
    :pswitch_1
    invoke-static {v0}, Lcom/android/mms/util/TelephonyUtils;->getByteSizeUtf8(Ljava/lang/String;)I

    move-result v3

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/util/TelephonyUtils;->getByteSizeUtf8(Ljava/lang/String;)I

    move-result v5

    .line 89
    goto :goto_2

    .line 91
    :pswitch_2
    invoke-static {v0}, Lcom/android/mms/util/TelephonyUtils;->getByteSize(Ljava/lang/String;)I

    move-result v3

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/util/TelephonyUtils;->getByteSize(Ljava/lang/String;)I

    move-result v5

    .line 93
    goto :goto_2

    .line 103
    .restart local v4       #nPasteLength:I
    :pswitch_3
    invoke-interface {p1, v8, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    goto :goto_3

    .line 106
    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/mms/util/TelephonyUtils;->substringByByteSizeUtf8(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 107
    goto :goto_3

    .line 109
    :pswitch_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/mms/util/TelephonyUtils;->substringByByteSizeKsc5601(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 124
    .end local v4           #nPasteLength:I
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 101
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public showDialog()V
    .locals 7

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    .line 133
    .local v6, isAlreadyShown:Z
    :goto_0
    iget-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/android/mms/util/LengthFilterWithDialog;->showToast()V

    .line 163
    :cond_0
    :goto_1
    return-void

    .line 131
    .end local v6           #isAlreadyShown:Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 138
    .restart local v6       #isAlreadyShown:Z
    :cond_2
    if-nez v6, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_3

    .line 140
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c030f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, title:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0148

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, message:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/mms/util/LengthFilterWithDialog$1;

    invoke-direct {v3, p0}, Lcom/android/mms/util/LengthFilterWithDialog$1;-><init>(Lcom/android/mms/util/LengthFilterWithDialog;)V

    new-instance v4, Lcom/android/mms/util/LengthFilterWithDialog$2;

    invoke-direct {v4, p0}, Lcom/android/mms/util/LengthFilterWithDialog$2;-><init>(Lcom/android/mms/util/LengthFilterWithDialog;)V

    new-instance v5, Lcom/android/mms/util/LengthFilterWithDialog$3;

    invoke-direct {v5, p0}, Lcom/android/mms/util/LengthFilterWithDialog$3;-><init>(Lcom/android/mms/util/LengthFilterWithDialog;)V

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_1

    .line 161
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #message:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method public showToast()V
    .locals 4

    .prologue
    const v3, 0x7f0c03b2

    const/4 v1, 0x0

    .line 166
    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mToast:Landroid/widget/Toast;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 168
    .local v0, isAlreadyShown:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 179
    :goto_1
    return-void

    .end local v0           #isAlreadyShown:Z
    :cond_0
    move v0, v1

    .line 166
    goto :goto_0

    .line 172
    .restart local v0       #isAlreadyShown:Z
    :cond_1
    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_2

    .line 173
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mToast:Landroid/widget/Toast;

    .line 178
    :goto_2
    iget-object v1, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/android/mms/util/LengthFilterWithDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2
.end method
