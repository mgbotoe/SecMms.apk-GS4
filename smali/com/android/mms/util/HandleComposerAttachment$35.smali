.class Lcom/android/mms/util/HandleComposerAttachment$35;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->showVideoResizingDialog(Landroid/net/Uri;IZZZLjava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;

.field final synthetic val$append:Z

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$flagCRMode:Z

.field final synthetic val$location:I

.field final synthetic val$mFilePathFromUri:Ljava/lang/String;

.field final synthetic val$obj:Lcom/samsung/app/share/via/external/ShareviaObj;

.field final synthetic val$outPutFilePath:Ljava/lang/String;

.field final synthetic val$sendMultiple:Z


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2288
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$35;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$35;->val$mFilePathFromUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/util/HandleComposerAttachment$35;->val$obj:Lcom/samsung/app/share/via/external/ShareviaObj;

    iput-object p4, p0, Lcom/android/mms/util/HandleComposerAttachment$35;->val$fileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mms/util/HandleComposerAttachment$35;->val$outPutFilePath:Ljava/lang/String;

    iput p6, p0, Lcom/android/mms/util/HandleComposerAttachment$35;->val$location:I

    iput-boolean p7, p0, Lcom/android/mms/util/HandleComposerAttachment$35;->val$flagCRMode:Z

    iput-boolean p8, p0, Lcom/android/mms/util/HandleComposerAttachment$35;->val$sendMultiple:Z

    iput-boolean p9, p0, Lcom/android/mms/util/HandleComposerAttachment$35;->val$append:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2291
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2292
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$35;->val$mFilePathFromUri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2312
    :goto_0
    return-void

    .line 2295
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$35;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$35;->val$obj:Lcom/samsung/app/share/via/external/ShareviaObj;

    #calls: Lcom/android/mms/util/HandleComposerAttachment;->nativeAccessForShareviaObj(Lcom/samsung/app/share/via/external/ShareviaObj;)V
    invoke-static {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->access$1100(Lcom/android/mms/util/HandleComposerAttachment;Lcom/samsung/app/share/via/external/ShareviaObj;)V

    .line 2296
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$35;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #calls: Lcom/android/mms/util/HandleComposerAttachment;->showVideoResizingProgressDialog()V
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$1200(Lcom/android/mms/util/HandleComposerAttachment;)V

    .line 2298
    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$35$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/HandleComposerAttachment$35$1;-><init>(Lcom/android/mms/util/HandleComposerAttachment$35;)V

    invoke-virtual {v0}, Lcom/android/mms/util/HandleComposerAttachment$35$1;->start()V

    goto :goto_0
.end method
