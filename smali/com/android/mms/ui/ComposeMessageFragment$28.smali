.class Lcom/android/mms/ui/ComposeMessageFragment$28;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initRecipientsEditor()V
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
    .line 2905
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$28;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "motionEvent"

    .prologue
    const/4 v2, 0x0

    .line 2910
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$28;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$28;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2911
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$28;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setAttachmentList(Lcom/android/mms/model/SlideshowModel;Z)V

    .line 2914
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2915
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$28;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->setThawPaste()V

    .line 2916
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$28;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 2918
    :cond_1
    return v2
.end method
