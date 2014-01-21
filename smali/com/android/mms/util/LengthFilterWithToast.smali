.class public Lcom/android/mms/util/LengthFilterWithToast;
.super Landroid/text/InputFilter$LengthFilter;
.source "LengthFilterWithToast.java"


# instance fields
.field private final mMax:I

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 17
    iput p1, p0, Lcom/android/mms/util/LengthFilterWithToast;->mMax:I

    .line 18
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 23
    iget v1, p0, Lcom/android/mms/util/LengthFilterWithToast;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 24
    .local v0, keep:I
    if-gtz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/android/mms/util/LengthFilterWithToast;->showToast()V

    .line 27
    :cond_0
    if-gtz v0, :cond_1

    .line 28
    const-string v1, ""

    .line 35
    :goto_0
    return-object v1

    .line 29
    :cond_1
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_2

    .line 30
    const/4 v1, 0x0

    goto :goto_0

    .line 32
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 33
    invoke-virtual {p0}, Lcom/android/mms/util/LengthFilterWithToast;->showToast()V

    .line 35
    :cond_3
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public showToast()V
    .locals 4

    .prologue
    const v3, 0x7f0c03b2

    const/4 v1, 0x0

    .line 40
    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 41
    .local v0, isAlreadyShown:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 50
    :goto_1
    return-void

    .end local v0           #isAlreadyShown:Z
    :cond_0
    move v0, v1

    .line 40
    goto :goto_0

    .line 44
    .restart local v0       #isAlreadyShown:Z
    :cond_1
    iget-object v2, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_2

    .line 45
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    .line 49
    :goto_2
    iget-object v1, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/android/mms/util/LengthFilterWithToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2
.end method
