.class Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1921
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1925
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setAttachmentList(Lcom/android/mms/model/SlideshowModel;Z)V

    .line 1927
    :cond_0
    return-void
.end method
