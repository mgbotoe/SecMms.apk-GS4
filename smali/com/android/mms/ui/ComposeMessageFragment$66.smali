.class Lcom/android/mms/ui/ComposeMessageFragment$66;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$adapter:Lcom/android/mms/ui/IconListAdapter;

.field final synthetic val$toReplaceMedia:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/IconListAdapter;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6443
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$66;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$66;->val$adapter:Lcom/android/mms/ui/IconListAdapter;

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$66;->val$toReplaceMedia:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 6445
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 6446
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$66;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerAttachmentHandler:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$66;->val$adapter:Lcom/android/mms/ui/IconListAdapter;

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/IconListAdapter;->buttonToCommand(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$66;->val$toReplaceMedia:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment;->startActivityForAddMedia(IZ)V

    .line 6449
    return-void
.end method
