.class Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$2;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6758
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$2;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 6760
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerAttachmentHandler:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->access$5500(Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mAppend:Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->access$5600(Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;)Z

    move-result v2

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mReqCode:I
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->access$5800(Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;)I

    move-result v5

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addRawMedia(Landroid/net/Uri;ZZZI)I

    .line 6761
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->saveMmsStateForWarningMode()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5700(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 6763
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$2;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 6764
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$2;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 6765
    :cond_0
    return-void
.end method
