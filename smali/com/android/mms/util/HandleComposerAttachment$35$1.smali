.class Lcom/android/mms/util/HandleComposerAttachment$35$1;
.super Ljava/lang/Thread;
.source "HandleComposerAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment$35;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/util/HandleComposerAttachment$35;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment$35;)V
    .locals 0
    .parameter

    .prologue
    .line 2298
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$35$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$35;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 2300
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$35$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$35;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$35;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$35$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$35;

    iget-object v1, v1, Lcom/android/mms/util/HandleComposerAttachment$35;->val$fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment$35$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$35;

    iget-object v2, v2, Lcom/android/mms/util/HandleComposerAttachment$35;->val$mFilePathFromUri:Ljava/lang/String;

    #calls: Lcom/android/mms/util/HandleComposerAttachment;->videoResizingProgress(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$1300(Lcom/android/mms/util/HandleComposerAttachment;Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    sget v0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccessReturnValue:I

    if-ne v0, v8, :cond_0

    .line 2303
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$35$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$35;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$35;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$35$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$35;

    iget-object v1, v1, Lcom/android/mms/util/HandleComposerAttachment$35;->val$outPutFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment$35$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$35;

    iget v2, v2, Lcom/android/mms/util/HandleComposerAttachment$35;->val$location:I

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment$35$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$35;

    iget-boolean v3, v3, Lcom/android/mms/util/HandleComposerAttachment$35;->val$flagCRMode:Z

    iget-object v4, p0, Lcom/android/mms/util/HandleComposerAttachment$35$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$35;

    iget-boolean v4, v4, Lcom/android/mms/util/HandleComposerAttachment$35;->val$sendMultiple:Z

    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment$35$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$35;

    iget-boolean v5, v5, Lcom/android/mms/util/HandleComposerAttachment$35;->val$append:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addVideo(Landroid/net/Uri;IZZZ)I

    .line 2308
    :goto_0
    sput v7, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccessReturnValue:I

    .line 2309
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$35$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$35;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$35;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #setter for: Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I
    invoke-static {v0, v8}, Lcom/android/mms/util/HandleComposerAttachment;->access$1402(Lcom/android/mms/util/HandleComposerAttachment;I)I

    .line 2310
    return-void

    .line 2305
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$35$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$35;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$35;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    const v2, 0x7f0c00c0

    const/4 v3, 0x0

    const/16 v4, 0xc

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$35$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$35;

    iget-boolean v5, v1, Lcom/android/mms/util/HandleComposerAttachment$35;->val$sendMultiple:Z

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$35$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$35;

    iget-boolean v6, v1, Lcom/android/mms/util/HandleComposerAttachment$35;->val$append:Z

    move v1, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_0
.end method
