.class Lcom/android/mms/ui/ComposeMessageFragment$2;
.super Landroid/os/Handler;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
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
    .line 648
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 650
    iget v7, p1, Landroid/os/Message;->what:I

    .line 651
    .local v7, what:I
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 652
    .local v3, position:I
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 654
    .local v5, type:I
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->isEditingMode()Z
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    .line 655
    .local v1, editingMode:Z
    sparse-switch v7, :sswitch_data_0

    .line 828
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 658
    :sswitch_1
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 659
    const/16 v8, 0xa

    if-ne v5, v8, :cond_1

    .line 660
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 662
    :cond_1
    const/16 v8, 0xb

    if-ne v5, v8, :cond_2

    .line 663
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 665
    :cond_2
    const/16 v8, 0xc

    if-ne v5, v8, :cond_3

    .line 666
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 668
    :cond_3
    const/16 v8, 0xd

    if-ne v5, v8, :cond_4

    .line 669
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->removeText()Z

    .line 671
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 672
    const/16 v8, 0xe

    if-ne v5, v8, :cond_7

    .line 676
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 677
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->removeLocation()Z

    .line 679
    :cond_5
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 680
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 683
    :cond_6
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    .line 684
    .local v4, size:I
    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    const/4 v8, 0x1

    if-lt v2, v8, :cond_7

    .line 685
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 684
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 690
    .end local v2           #i:I
    .end local v4           #size:I
    :cond_7
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 692
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    if-nez v8, :cond_8

    .line 693
    const/16 v6, 0x20

    .line 704
    .local v6, updateType:I
    :goto_2
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8, v9, v6}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 707
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 708
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    goto/16 :goto_0

    .line 695
    .end local v6           #updateType:I
    :cond_8
    const/16 v8, 0xa

    if-eq v5, v8, :cond_9

    const/16 v8, 0xb

    if-ne v5, v8, :cond_a

    .line 697
    :cond_9
    const/16 v6, 0x1f

    .restart local v6       #updateType:I
    goto :goto_2

    .line 698
    .end local v6           #updateType:I
    :cond_a
    const/16 v8, 0xc

    if-ne v5, v8, :cond_b

    .line 699
    const/16 v6, 0x21

    .restart local v6       #updateType:I
    goto :goto_2

    .line 701
    .end local v6           #updateType:I
    :cond_b
    const/16 v6, 0x1e

    .restart local v6       #updateType:I
    goto :goto_2

    .line 712
    .end local v6           #updateType:I
    :sswitch_2
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 713
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8, v3}, Lcom/android/mms/data/WorkingMessage;->removeSlide(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 714
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v10, 0x22

    invoke-virtual {v8, v9, v10}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 715
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 718
    :cond_c
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    goto/16 :goto_0

    .line 722
    :sswitch_3
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 723
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8, v3}, Lcom/android/mms/data/WorkingMessage;->removeSlide(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 724
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v10, 0x23

    invoke-virtual {v8, v9, v10}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 725
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 729
    :cond_d
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 730
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    goto/16 :goto_0

    .line 733
    :sswitch_4
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v9

    iput-boolean v9, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mForceShowSip:Z

    .line 734
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v8}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 736
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, v9, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    invoke-static {v8, v9, v3, v5, v1}, Lcom/android/mms/ui/MessageUtils;->viewMediaContents(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 742
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_5
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V

    goto/16 :goto_0

    .line 747
    :sswitch_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v8, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v8}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 748
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v8, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v8}, Lcom/android/mms/ui/ConversationComposer;->closeSearchView()V

    goto/16 :goto_0

    .line 752
    :cond_e
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 754
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 755
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-virtual {v8, v9, v10}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 760
    :goto_3
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_f

    .line 761
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->setAttachmentList(Lcom/android/mms/model/SlideshowModel;Z)V

    .line 764
    :cond_f
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v8, :cond_0

    .line 765
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v8}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    goto/16 :goto_0

    .line 757
    :cond_10
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-virtual {v8, v9, v10}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_3

    .line 785
    :sswitch_7
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    .line 786
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeAttachButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto/16 :goto_0

    .line 791
    :sswitch_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_11

    .line 792
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButtonLeft:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 793
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButtonLeft:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_0

    .line 797
    :cond_11
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButtonLeft:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 798
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButtonLeft:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_0

    .line 805
    :sswitch_9
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    if-eqz v8, :cond_0

    .line 806
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 807
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_12

    .line 808
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mEasyModeSendButtonLinear:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto/16 :goto_0

    .line 810
    :cond_12
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_0

    .line 814
    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisabledLeftAttachButtonUI()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    .line 815
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButtonLeft:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 816
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButtonLeft:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_0

    .line 819
    :cond_14
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 820
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$2;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_0

    .line 655
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x28 -> :sswitch_6
        0x32 -> :sswitch_0
        0x33 -> :sswitch_7
        0x34 -> :sswitch_9
        0x35 -> :sswitch_8
    .end sparse-switch
.end method
