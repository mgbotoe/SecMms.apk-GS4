.class Lcom/android/mms/util/HandleComposerAttachment$2;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

.field final synthetic val$uriList:Ljava/util/ArrayList;

.field final synthetic val$uriListCount:I


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/util/ArrayList;ILandroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$2;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$2;->val$uriList:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/mms/util/HandleComposerAttachment$2;->val$uriListCount:I

    iput-object p4, p0, Lcom/android/mms/util/HandleComposerAttachment$2;->val$fileUri:Landroid/net/Uri;

    iput-boolean p5, p0, Lcom/android/mms/util/HandleComposerAttachment$2;->val$append:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$2;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->access$002(Lcom/android/mms/util/HandleComposerAttachment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 244
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$2;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 245
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$2;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$2;->val$uriList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/mms/util/HandleComposerAttachment$2;->val$uriListCount:I

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment$2;->val$fileUri:Landroid/net/Uri;

    iget-boolean v4, p0, Lcom/android/mms/util/HandleComposerAttachment$2;->val$append:Z

    #calls: Lcom/android/mms/util/HandleComposerAttachment;->addPickImage(Ljava/util/ArrayList;ILandroid/net/Uri;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/util/HandleComposerAttachment;->access$200(Lcom/android/mms/util/HandleComposerAttachment;Ljava/util/ArrayList;ILandroid/net/Uri;Z)V

    .line 246
    return-void
.end method
