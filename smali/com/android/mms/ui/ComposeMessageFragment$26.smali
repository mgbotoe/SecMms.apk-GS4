.class Lcom/android/mms/ui/ComposeMessageFragment$26;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 2704
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 8
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 2707
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRemoveComposer:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3100(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2784
    :goto_0
    return-void

    .line 2710
    :cond_0
    if-nez p2, :cond_a

    .line 2711
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v7, 0x1

    .line 2712
    .local v7, showErrorDialog:Z
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x1

    const/4 v3, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZZ)Z
    invoke-static {v1, v2, v7, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3200(Lcom/android/mms/ui/ComposeMessageFragment;ZZZ)Z

    .line 2714
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3300(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2715
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v1, :cond_2

    .line 2717
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3400(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2719
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v1}, Lcom/android/mms/ui/ToButtonLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 2720
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->showAnimationFlagOnFocusChange:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3502(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 2722
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->showAnimationFlagOnFocusChange:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2723
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    const/16 v3, 0x10b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/view/View;IIII)V

    .line 2726
    .local v0, animation:Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ToButtonLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2727
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->showAnimationFlagOnFocusChange:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3502(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 2735
    .end local v0           #animation:Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientsInEditor()V

    .line 2738
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePlusButtonOnRecipient()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2739
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v1

    if-nez v1, :cond_9

    .line 2740
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->m_BtnReceiverAdd:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2741
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2746
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getErrorFlag()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2747
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setErrorFlagInRecipientEditor(Z)V

    .line 2783
    .end local v7           #showErrorDialog:Z
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 2711
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 2729
    .restart local v7       #showErrorDialog:Z
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    goto :goto_2

    .line 2732
    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    goto :goto_2

    .line 2743
    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->m_BtnReceiverAdd:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 2751
    .end local v7           #showErrorDialog:Z
    :cond_a
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    .line 2752
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setAttachmentList(Lcom/android/mms/model/SlideshowModel;Z)V

    .line 2754
    :cond_b
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->setWritingBuddyEnabled(Z)V

    .line 2756
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->setThawPaste()V

    .line 2757
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3302(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 2758
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {v1}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    .line 2760
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3600(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 2762
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3400(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2763
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v1}, Lcom/android/mms/ui/ToButtonLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_c

    .line 2764
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    .line 2765
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->showAnimationFlagOnFocusChange:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3502(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 2768
    :cond_c
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->calcToButtonLayoutHeight()I
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3700(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v5

    .line 2769
    .local v5, toButtonLayoutHeight:I
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->showAnimationFlagOnFocusChange:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2770
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    const/16 v3, 0x10b

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/view/View;IIII)V

    .line 2773
    .restart local v0       #animation:Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ToButtonLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2774
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->showAnimationFlagOnFocusChange:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3502(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 2776
    .end local v0           #animation:Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;
    :cond_d
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x1

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel(Z)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3800(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    goto/16 :goto_4

    .line 2778
    .end local v5           #toButtonLayoutHeight:I
    :cond_e
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    .line 2779
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$26;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x1

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel(Z)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3800(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    goto/16 :goto_4
.end method
