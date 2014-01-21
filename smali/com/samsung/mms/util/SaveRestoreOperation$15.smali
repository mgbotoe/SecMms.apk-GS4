.class Lcom/samsung/mms/util/SaveRestoreOperation$15;
.super Ljava/lang/Object;
.source "SaveRestoreOperation.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/util/SaveRestoreOperation;->getEditTextFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/mms/util/SaveRestoreOperation;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$15;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iput-object p2, p0, Lcom/samsung/mms/util/SaveRestoreOperation$15;->val$ctx:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

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
    const v4, 0x7f0c0142

    .line 1022
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1023
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xd83d

    if-eq v1, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xd83c

    if-eq v1, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x25e4

    if-le v1, v2, :cond_2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x270f

    if-ge v1, v2, :cond_2

    .line 1026
    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$15;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1800(Lcom/samsung/mms/util/SaveRestoreOperation;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1027
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$15;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation$15;->val$ctx:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1802(Lcom/samsung/mms/util/SaveRestoreOperation;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1031
    :goto_1
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$15;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1800(Lcom/samsung/mms/util/SaveRestoreOperation;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1032
    const-string v1, ""

    .line 1035
    :goto_2
    return-object v1

    .line 1029
    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$15;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1800(Lcom/samsung/mms/util/SaveRestoreOperation;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1

    .line 1022
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1035
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method
