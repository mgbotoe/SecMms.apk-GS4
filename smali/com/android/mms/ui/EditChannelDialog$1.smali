.class Lcom/android/mms/ui/EditChannelDialog$1;
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
    .line 133
    iput-object p1, p0, Lcom/android/mms/ui/EditChannelDialog$1;->this$0:Lcom/android/mms/ui/EditChannelDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 136
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 140
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 144
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 145
    .local v0, length:I
    invoke-static {}, Lcom/android/mms/ui/EditChannelDialog;->access$000()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog$1;->this$0:Lcom/android/mms/ui/EditChannelDialog;

    #calls: Lcom/android/mms/ui/EditChannelDialog;->showToast()V
    invoke-static {v1}, Lcom/android/mms/ui/EditChannelDialog;->access$100(Lcom/android/mms/ui/EditChannelDialog;)V

    .line 148
    :cond_0
    return-void
.end method
