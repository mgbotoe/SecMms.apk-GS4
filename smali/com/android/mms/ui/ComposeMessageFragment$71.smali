.class Lcom/android/mms/ui/ComposeMessageFragment$71;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showAddtextDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 6635
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$71;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "which"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 6637
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$71;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddTextDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 6638
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$71;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6640
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$71;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerAttachmentHandler:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$71;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAddTextAdapter:Lcom/android/mms/ui/IconListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5300(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/IconListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/mms/ui/IconListAdapter;->buttonToCommand(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->startActivityForAddText(I)V

    .line 6641
    return-void
.end method
