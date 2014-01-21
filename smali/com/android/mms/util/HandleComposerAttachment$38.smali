.class Lcom/android/mms/util/HandleComposerAttachment$38;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;)V
    .locals 0
    .parameter

    .prologue
    .line 2356
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$38;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$38;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeEditDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->access$1702(Lcom/android/mms/util/HandleComposerAttachment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2359
    return-void
.end method
