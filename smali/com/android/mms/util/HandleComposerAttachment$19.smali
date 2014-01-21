.class Lcom/android/mms/util/HandleComposerAttachment$19;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->addVideo(Landroid/net/Uri;IZZZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$19;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$19;->val$uri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1162
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment$19;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->mmsMessageSize()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x400

    int-to-long v0, v2

    .line 1163
    .local v0, videoOuputSize:J
    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment$19;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment$19;->val$uri:Landroid/net/Uri;

    #calls: Lcom/android/mms/util/HandleComposerAttachment;->showVideoResizingEditDialog(Landroid/net/Uri;J)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->access$600(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;J)V

    .line 1164
    return-void
.end method
