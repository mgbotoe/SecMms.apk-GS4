.class public Lcom/android/mms/ui/MessagePickerDialog;
.super Landroid/app/AlertDialog;
.source "MessagePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;
    }
.end annotation


# static fields
.field private static final NUMBER:Ljava/lang/String; = "number"

.field public static final PICKER_COMPOSER:I = 0x0

.field public static final PICKER_SETTINGS:I = 0x1

.field public static isWrongRange:Z

.field private static mRangeMax:I

.field private static mRangeMin:I


# instance fields
.field private endSel:I

.field private final mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

.field private mContext:Landroid/content/Context;

.field private mMaxLimitToast:Landroid/widget/Toast;

.field private mMinLimitToast:Landroid/widget/Toast;

.field private final mNumberPicker:Landroid/widget/NumberPicker;

.field private mOnkeyDown:Z

.field private mPickerType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/MessagePickerDialog;->isWrongRange:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V
    .locals 6
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title_id"
    .parameter "titleStr"
    .parameter "type"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 51
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPickerType:I

    .line 53
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->endSel:I

    .line 68
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mOnkeyDown:Z

    .line 69
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMinLimitToast:Landroid/widget/Toast;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMaxLimitToast:Landroid/widget/Toast;

    .line 92
    iput-object p1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    .line 93
    iput-object p3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    .line 94
    iput p9, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPickerType:I

    .line 95
    sput p6, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    .line 96
    sput p5, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    .line 98
    invoke-virtual {p0, p8}, Lcom/android/mms/ui/MessagePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    const/4 v4, -0x1

    const v3, 0x7f0c017b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v3, 0x0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/mms/ui/MessagePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 100
    const/4 v4, -0x2

    const v3, 0x7f0c0050

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v3, 0x0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/mms/ui/MessagePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 103
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040055

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 104
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagePickerDialog;->setView(Landroid/view/View;)V

    .line 106
    const v3, 0x7f0b01c0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    iput-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    .line 108
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v3

    const-string v4, "inputType=NumberPicker_edittext"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v3

    const/high16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 111
    const/4 v3, 0x1

    if-ne p9, v3, :cond_0

    .line 112
    const v3, 0x7f0b01c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    .local v0, content_text:Landroid/widget/TextView;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    .end local v0           #content_text:Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, p5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 118
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, p6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 119
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, p4}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 120
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 121
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 122
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 125
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/MessagePickerDialog$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/MessagePickerDialog$1;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 142
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/MessagePickerDialog$2;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/MessagePickerDialog$2;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/MessagePickerDialog$3;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/MessagePickerDialog$3;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 198
    iget-object v3, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    new-instance v4, Lcom/android/mms/ui/MessagePickerDialog$4;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/MessagePickerDialog$4;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V
    .locals 10
    .parameter "context"
    .parameter "numberSetListener"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title_id"
    .parameter "titleStr"
    .parameter "type"

    .prologue
    .line 79
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;ILcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagePickerDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/mms/ui/MessagePickerDialog;->showMinLimitWarning()V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessagePickerDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/mms/ui/MessagePickerDialog;->showMaxLimitWarning()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessagePickerDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mOnkeyDown:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/MessagePickerDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mOnkeyDown:Z

    return p1
.end method

.method private showMaxLimitWarning()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 310
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPickerType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 316
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0215

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, message:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMaxLimitToast:Landroid/widget/Toast;

    if-nez v1, :cond_2

    .line 325
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMaxLimitToast:Landroid/widget/Toast;

    .line 326
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMaxLimitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMaxLimitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMaxLimitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 319
    .end local v0           #message:Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0c018f

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .restart local v0       #message:Ljava/lang/String;
    goto :goto_1

    .line 314
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showMinLimitWarning()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 289
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mPickerType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 295
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0214

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, message:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMinLimitToast:Landroid/widget/Toast;

    if-nez v1, :cond_2

    .line 304
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMinLimitToast:Landroid/widget/Toast;

    .line 305
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMinLimitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMinLimitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mMinLimitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 298
    .end local v0           #message:Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0c018e

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .restart local v0       #message:Ljava/lang/String;
    goto :goto_1

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clearSelection()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->endSel:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 346
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 218
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 219
    .local v1, positiveButton:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 220
    new-instance v2, Lcom/android/mms/ui/MessagePickerDialog$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagePickerDialog$5;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    :cond_0
    const/4 v2, -0x2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 230
    .local v0, negativeButton:Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 231
    new-instance v2, Lcom/android/mms/ui/MessagePickerDialog$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagePickerDialog$6;-><init>(Lcom/android/mms/ui/MessagePickerDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 247
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 248
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, text:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 251
    .local v0, number:I
    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    if-lt v0, v2, :cond_0

    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    if-le v0, v2, :cond_1

    .line 252
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mOnkeyDown:Z

    .line 255
    .end local v0           #number:I
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 339
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 340
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 341
    .local v0, number:I
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 342
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 332
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 333
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 334
    return-object v0
.end method

.method public setLimitaion(Z)V
    .locals 5
    .parameter "isDismiss"

    .prologue
    .line 259
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, text:Ljava/lang/String;
    const/4 v0, 0x0

    .line 261
    .local v0, number:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 262
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 267
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    if-eqz v2, :cond_2

    .line 272
    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    if-le v2, v0, :cond_4

    .line 273
    invoke-direct {p0}, Lcom/android/mms/ui/MessagePickerDialog;->showMinLimitWarning()V

    .line 274
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 286
    :cond_2
    return-void

    .line 264
    :cond_3
    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMin:I

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 275
    :cond_4
    sget v2, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    if-ge v2, v0, :cond_5

    .line 276
    invoke-direct {p0}, Lcom/android/mms/ui/MessagePickerDialog;->showMaxLimitWarning()V

    .line 277
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lcom/android/mms/ui/MessagePickerDialog;->mRangeMax:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 279
    :cond_5
    if-eqz p1, :cond_1

    .line 280
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog;->mCallback:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    invoke-interface {v2, v0}, Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;->onNumberSet(I)V

    .line 281
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagePickerDialog;->dismiss()V

    goto :goto_1
.end method

.method public storeSelection()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessagePickerDialog;->endSel:I

    .line 349
    return-void
.end method
