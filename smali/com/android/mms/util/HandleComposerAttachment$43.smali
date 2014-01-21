.class Lcom/android/mms/util/HandleComposerAttachment$43;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->multiAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;

.field final synthetic val$dismissProgress:Ljava/lang/Runnable;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$numberToImport:I

.field final synthetic val$showProgress:Ljava/lang/Runnable;

.field final synthetic val$uris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;ILjava/util/ArrayList;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2766
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$43;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput p2, p0, Lcom/android/mms/util/HandleComposerAttachment$43;->val$numberToImport:I

    iput-object p3, p0, Lcom/android/mms/util/HandleComposerAttachment$43;->val$uris:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/mms/util/HandleComposerAttachment$43;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/mms/util/HandleComposerAttachment$43;->val$showProgress:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/android/mms/util/HandleComposerAttachment$43;->val$dismissProgress:Ljava/lang/Runnable;

    iput-object p7, p0, Lcom/android/mms/util/HandleComposerAttachment$43;->val$intent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 2769
    const/4 v4, 0x0

    .line 2770
    .local v4, alreadyShownUnsupported:Z
    const/4 v13, 0x0

    .line 2771
    .local v13, updateAttachmentChange:Z
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2772
    .local v16, urlIdxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, -0x1

    .line 2774
    .local v3, addResult:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->val$numberToImport:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_5

    .line 2775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->val$uris:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Parcelable;

    .line 2776
    .local v14, uri:Landroid/os/Parcelable;
    if-nez v14, :cond_1

    .line 2774
    .end local v14           #uri:Landroid/os/Parcelable;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2780
    .restart local v14       #uri:Landroid/os/Parcelable;
    :cond_1
    const-string v11, "content://com.android.contacts/contacts/as_vcard/"

    .line 2781
    .local v11, prefixstr:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2782
    .local v15, uriString:Ljava/lang/String;
    invoke-virtual {v15, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 2784
    .local v6, isContact:Z
    if-eqz v6, :cond_2

    .line 2785
    const-string v9, "text/x-vCard"

    .line 2789
    .local v9, mimeType:Ljava/lang/String;
    :goto_2
    if-eqz v9, :cond_4

    .line 2790
    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->isAttachSupportedType(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2791
    const/4 v13, 0x1

    .line 2792
    const-string v17, "Mms/HandleComposerAttachment"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "multiAttachMent() SupportedType is ready to attach. updateAttachmentChange = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " index = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    move-object/from16 v17, v0

    check-cast v14, Landroid/net/Uri;

    .end local v14           #uri:Landroid/os/Parcelable;
    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v14, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment;->addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)I

    move-result v3

    .line 2795
    const/16 v17, -0x2

    move/from16 v0, v17

    if-ne v3, v0, :cond_0

    .line 2796
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2787
    .end local v9           #mimeType:Ljava/lang/String;
    .restart local v14       #uri:Landroid/os/Parcelable;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v17, v14

    check-cast v17, Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getMimeTypeFromUri(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #mimeType:Ljava/lang/String;
    goto :goto_2

    .line 2799
    :cond_3
    if-nez v4, :cond_0

    .line 2800
    const/4 v4, 0x1

    .line 2801
    const-string v17, "Mms/HandleComposerAttachment"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "multiAttachMent() unSupportedFile index = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 2803
    .local v12, res:Landroid/content/res/Resources;
    const v17, 0x7f0c014d

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2805
    .local v7, message:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v17

    new-instance v18, Lcom/android/mms/util/HandleComposerAttachment$43$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/mms/util/HandleComposerAttachment$43$1;-><init>(Lcom/android/mms/util/HandleComposerAttachment$43;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 2813
    .end local v7           #message:Ljava/lang/String;
    .end local v12           #res:Landroid/content/res/Resources;
    :cond_4
    if-nez v9, :cond_0

    .line 2814
    if-nez v4, :cond_0

    .line 2815
    const/4 v4, 0x1

    .line 2816
    const-string v17, "Mms/HandleComposerAttachment"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "multiAttachMent() unSupportedFile index = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 2818
    .restart local v12       #res:Landroid/content/res/Resources;
    const v17, 0x7f0c014d

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2820
    .restart local v7       #message:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v17

    new-instance v18, Lcom/android/mms/util/HandleComposerAttachment$43$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/mms/util/HandleComposerAttachment$43$2;-><init>(Lcom/android/mms/util/HandleComposerAttachment$43;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 2829
    .end local v6           #isContact:Z
    .end local v7           #message:Ljava/lang/String;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v11           #prefixstr:Ljava/lang/String;
    .end local v12           #res:Landroid/content/res/Resources;
    .end local v14           #uri:Landroid/os/Parcelable;
    .end local v15           #uriString:Ljava/lang/String;
    :cond_5
    if-eqz v13, :cond_7

    .line 2830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static/range {v17 .. v17}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->onAttachmentChanged(Z)V

    .line 2831
    const-wide/16 v17, 0x12c

    invoke-static/range {v17 .. v18}, Landroid/os/SystemClock;->sleep(J)V

    .line 2833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static/range {v17 .. v17}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static/range {v17 .. v17}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static/range {v17 .. v17}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v8

    .line 2835
    .local v8, messageUri:Landroid/net/Uri;
    const-string v17, "Mms/HandleComposerAttachment"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "multiAttachMent() mComposer Attachments are changing on updateAttachmentChange messageUri = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2836
    if-nez v8, :cond_6

    .line 2837
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static/range {v17 .. v17}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 2839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static/range {v17 .. v17}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    .line 2843
    :cond_6
    sget-boolean v17, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v17, :cond_7

    .line 2844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static/range {v17 .. v17}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2849
    .end local v8           #messageUri:Landroid/net/Uri;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->val$handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->val$showProgress:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v17 .. v17}, Lcom/android/mms/util/HandleComposerAttachment;->access$100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;

    move-result-object v17

    if-eqz v17, :cond_8

    .line 2851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->val$handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->val$dismissProgress:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2854
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static/range {v17 .. v17}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->val$intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const-string v18, "dropObject"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_9

    .line 2855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->val$handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v10

    .line 2856
    .local v10, msg:Landroid/os/Message;
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 2860
    .end local v10           #msg:Landroid/os/Message;
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_a

    .line 2861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$43;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static/range {v17 .. v17}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v17

    new-instance v18, Lcom/android/mms/util/HandleComposerAttachment$43$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment$43$3;-><init>(Lcom/android/mms/util/HandleComposerAttachment$43;Ljava/util/ArrayList;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2868
    :cond_a
    return-void
.end method
