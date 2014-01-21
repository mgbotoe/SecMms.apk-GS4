.class public Lcom/android/mms/ui/SignaturePreference$toShowToastLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "SignaturePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SignaturePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "toShowToastLengthFilter"
.end annotation


# instance fields
.field private mMax:I

.field final synthetic this$0:Lcom/android/mms/ui/SignaturePreference;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SignaturePreference;I)V
    .locals 0
    .parameter
    .parameter "max"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/mms/ui/SignaturePreference$toShowToastLengthFilter;->this$0:Lcom/android/mms/ui/SignaturePreference;

    .line 217
    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 218
    iput p2, p0, Lcom/android/mms/ui/SignaturePreference$toShowToastLengthFilter;->mMax:I

    .line 219
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 223
    iget v2, p0, Lcom/android/mms/ui/SignaturePreference$toShowToastLengthFilter;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 224
    .local v0, keep:I
    if-gtz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/android/mms/ui/SignaturePreference$toShowToastLengthFilter;->this$0:Lcom/android/mms/ui/SignaturePreference;

    #calls: Lcom/android/mms/ui/SignaturePreference;->showToast()V
    invoke-static {v2}, Lcom/android/mms/ui/SignaturePreference;->access$000(Lcom/android/mms/ui/SignaturePreference;)V

    .line 228
    :cond_0
    const/4 v1, 0x0

    .line 229
    .local v1, length:I
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 230
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 236
    :goto_0
    invoke-static {v1}, Lcom/android/mms/ui/SignaturePreference;->disableOkButton(I)V

    .line 238
    if-gtz v0, :cond_3

    .line 239
    const-string v2, ""

    .line 246
    :goto_1
    return-object v2

    .line 231
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    if-ne v2, v3, :cond_2

    .line 232
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_0

    .line 234
    :cond_2
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    goto :goto_0

    .line 240
    :cond_3
    sub-int v2, p3, p2

    if-lt v0, v2, :cond_4

    .line 241
    const/4 v2, 0x0

    goto :goto_1

    .line 243
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 244
    iget-object v2, p0, Lcom/android/mms/ui/SignaturePreference$toShowToastLengthFilter;->this$0:Lcom/android/mms/ui/SignaturePreference;

    #calls: Lcom/android/mms/ui/SignaturePreference;->showToast()V
    invoke-static {v2}, Lcom/android/mms/ui/SignaturePreference;->access$000(Lcom/android/mms/ui/SignaturePreference;)V

    .line 246
    :cond_5
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method
