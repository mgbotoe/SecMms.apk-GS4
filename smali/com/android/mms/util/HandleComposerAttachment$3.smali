.class Lcom/android/mms/util/HandleComposerAttachment$3;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->processingActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;

.field final synthetic val$append:Z

.field final synthetic val$fileUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$3;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$3;->val$fileUri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/mms/util/HandleComposerAttachment$3;->val$append:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 264
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$3;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment$3;->val$fileUri:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/android/mms/util/HandleComposerAttachment$3;->val$append:Z

    const/4 v4, 0x0

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addMedia(ILandroid/net/Uri;ZZZ)I

    .line 265
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$3;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$3;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$3;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 267
    :cond_0
    return-void
.end method
