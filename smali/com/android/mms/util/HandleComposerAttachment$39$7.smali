.class Lcom/android/mms/util/HandleComposerAttachment$39$7;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment$39;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/util/HandleComposerAttachment$39;

.field final synthetic val$urlIdxList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment$39;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2672
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$39$7;->this$1:Lcom/android/mms/util/HandleComposerAttachment$39;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$39$7;->val$urlIdxList:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2674
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$39$7;->this$1:Lcom/android/mms/util/HandleComposerAttachment$39;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2675
    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "addPickImage Fragment was detached"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2680
    :goto_0
    return-void

    .line 2678
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$39$7;->this$1:Lcom/android/mms/util/HandleComposerAttachment$39;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$39$7;->val$urlIdxList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment$39$7;->this$1:Lcom/android/mms/util/HandleComposerAttachment$39;

    iget-object v3, v3, Lcom/android/mms/util/HandleComposerAttachment$39;->val$uriList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeLimitErrorPopup(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
