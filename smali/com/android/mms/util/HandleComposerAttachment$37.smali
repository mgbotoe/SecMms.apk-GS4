.class Lcom/android/mms/util/HandleComposerAttachment$37;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->showVideoResizingEditDialog(Landroid/net/Uri;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;

.field final synthetic val$outputSize:J

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2330
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$37;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$37;->val$uri:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/android/mms/util/HandleComposerAttachment$37;->val$outputSize:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2333
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment$37;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v7, p0, Lcom/android/mms/util/HandleComposerAttachment$37;->val$uri:Landroid/net/Uri;

    #calls: Lcom/android/mms/util/HandleComposerAttachment;->getVideoFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/mms/util/HandleComposerAttachment;->access$1600(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 2334
    .local v1, filePath:Ljava/lang/String;
    const/16 v5, 0xb0

    .line 2335
    .local v5, video_output_width:I
    const/16 v4, 0x90

    .line 2337
    .local v4, video_output_height:I
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 2338
    .local v2, fileUri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2339
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "com.samsung.app.video/com.samsung.app.video.trimactivity.TrimActivity"

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2340
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2341
    const-string v6, "uri"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2342
    const-string v6, "VIDEO_OUTPUT_SIZE"

    iget-wide v7, p0, Lcom/android/mms/util/HandleComposerAttachment$37;->val$outputSize:J

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2343
    const-string v6, "VIDEO_OUTPUT_WIDTH"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2344
    const-string v6, "VIDEO_OUTPUT_HEIGHT"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2346
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment$37;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v6}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v6, v3, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2350
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2351
    return-void

    .line 2347
    :catch_0
    move-exception v0

    .line 2348
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
