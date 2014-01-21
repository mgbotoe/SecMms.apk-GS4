.class Lcom/android/mms/ui/ComposeMessageFragment$56;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->onProtocolChanged(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$mms:Z

.field final synthetic val$mmsState:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6131
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->val$mms:Z

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->val$mmsState:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 6133
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    .line 6134
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->val$mms:Z

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->val$mmsState:I

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->toastConvertInfo(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4900(Lcom/android/mms/ui/ComposeMessageFragment;ZI)V

    .line 6136
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->val$mms:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6137
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getMMSLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6138
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    .line 6146
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->val$mms:Z

    if-eqz v0, :cond_3

    .line 6147
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->vibrateChangingMms()V

    .line 6160
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 6161
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/GreekInputHandler;->updateCurrentStatus()V

    .line 6162
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 6163
    return-void

    .line 6141
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    goto :goto_0

    .line 6150
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    .line 6151
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateModeForComposer()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateModeForComposer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateBtnMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6154
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$56;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->setTranslateBtnMode(Z)V

    goto :goto_1
.end method
