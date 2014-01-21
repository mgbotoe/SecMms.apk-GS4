.class Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidRecipientsListener"
.end annotation


# instance fields
.field private mInvalidRecipients:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "invalidRecipients"

    .prologue
    .line 1933
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1934
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->mInvalidRecipients:Ljava/lang/String;

    .line 1935
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 1918
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 1919
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->mInvalidRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 1920
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setSelection(I)V

    .line 1921
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1929
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    if-eqz v0, :cond_0

    .line 1930
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SipHandler;->showSipDelayed(Landroid/os/Handler;I)V

    .line 1932
    :cond_0
    return-void
.end method
