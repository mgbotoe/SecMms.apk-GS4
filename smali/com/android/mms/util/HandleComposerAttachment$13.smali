.class Lcom/android/mms/util/HandleComposerAttachment$13;
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

.field final synthetic val$selectedNumbers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$13;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$13;->val$selectedNumbers:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 570
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$13;->val$selectedNumbers:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 571
    .local v0, contacts:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 572
    const-string v1, "Mms/HandleComposerAttachment"

    const-string v2, "fail to get the contact list"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$13;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/util/HandleComposerAttachment;->access$100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 587
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$13;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$13$1;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/util/HandleComposerAttachment$13$1;-><init>(Lcom/android/mms/util/HandleComposerAttachment$13;Lcom/android/mms/data/ContactList;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
