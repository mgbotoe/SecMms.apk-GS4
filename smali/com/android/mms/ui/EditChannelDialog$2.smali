.class Lcom/android/mms/ui/EditChannelDialog$2;
.super Ljava/lang/Object;
.source "EditChannelDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EditChannelDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EditChannelDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EditChannelDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/mms/ui/EditChannelDialog$2;->this$0:Lcom/android/mms/ui/EditChannelDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog$2;->this$0:Lcom/android/mms/ui/EditChannelDialog;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog$2;->this$0:Lcom/android/mms/ui/EditChannelDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/EditChannelDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/EditChannelDialog;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0, v1}, Lcom/android/mms/ui/EditChannelDialog;->access$202(Lcom/android/mms/ui/EditChannelDialog;Landroid/widget/Button;)Landroid/widget/Button;

    .line 259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog$2;->this$0:Lcom/android/mms/ui/EditChannelDialog;

    #getter for: Lcom/android/mms/ui/EditChannelDialog;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/EditChannelDialog;->access$200(Lcom/android/mms/ui/EditChannelDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog$2;->this$0:Lcom/android/mms/ui/EditChannelDialog;

    #getter for: Lcom/android/mms/ui/EditChannelDialog;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/EditChannelDialog;->access$200(Lcom/android/mms/ui/EditChannelDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 252
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 255
    return-void
.end method
