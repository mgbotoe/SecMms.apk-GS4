.class Lcom/android/mms/util/HandleComposerAttachment$39;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->addPickImage(Ljava/util/ArrayList;ILandroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;

.field final synthetic val$append:Z

.field final synthetic val$fileUri:Landroid/net/Uri;

.field final synthetic val$uriList:Ljava/util/ArrayList;

.field final synthetic val$uriListCount:I


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;ILjava/util/ArrayList;Landroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2504
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput p2, p0, Lcom/android/mms/util/HandleComposerAttachment$39;->val$uriListCount:I

    iput-object p3, p0, Lcom/android/mms/util/HandleComposerAttachment$39;->val$uriList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/mms/util/HandleComposerAttachment$39;->val$fileUri:Landroid/net/Uri;

    iput-boolean p5, p0, Lcom/android/mms/util/HandleComposerAttachment$39;->val$append:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 2507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 2509
    .local v17, res:Landroid/content/res/Resources;
    const/4 v9, 0x0

    .line 2512
    .local v9, alreadyShownUnsupported:Z
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2513
    .local v20, urlIdxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, -0x1

    .line 2515
    .local v8, addResult:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2516
    const-string v2, "Mms/HandleComposerAttachment"

    const-string v3, "addPickImage Fragment was detached"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2683
    :cond_0
    :goto_0
    return-void

    .line 2519
    :cond_1
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->val$uriListCount:I

    if-ge v11, v2, :cond_6

    .line 2520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->val$uriList:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    .line 2522
    .local v18, selectedUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttachmentFilenameEncoding()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2523
    if-eqz v18, :cond_3

    .line 2525
    :try_start_0
    new-instance v19, Lcom/android/mms/ui/UriImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2526
    .local v19, uriImage:Lcom/android/mms/ui/UriImage;
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v13

    .line 2527
    .local v13, mSrc:Ljava/lang/String;
    if-eqz v13, :cond_3

    const-string v2, "."

    invoke-virtual {v13, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_3

    .line 2528
    const v2, 0x7f0c014d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2529
    .local v14, message:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/mms/util/HandleComposerAttachment$39$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/android/mms/util/HandleComposerAttachment$39$1;-><init>(Lcom/android/mms/util/HandleComposerAttachment$39;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2519
    .end local v13           #mSrc:Ljava/lang/String;
    .end local v14           #message:Ljava/lang/String;
    .end local v19           #uriImage:Lcom/android/mms/ui/UriImage;
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2537
    :catch_0
    move-exception v10

    .line 2538
    .local v10, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Mms/HandleComposerAttachment"

    const-string v3, "Occur IllegalArgumentException"

    invoke-static {v2, v3, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2539
    const v2, 0x7f0c014d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2541
    .restart local v14       #message:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/mms/util/HandleComposerAttachment$39$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/android/mms/util/HandleComposerAttachment$39$2;-><init>(Lcom/android/mms/util/HandleComposerAttachment$39;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2552
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    .end local v14           #message:Ljava/lang/String;
    :cond_3
    if-eqz v18, :cond_2

    .line 2553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/mms/ui/MessageUtils;->getMimeTypeFromUri(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    .line 2555
    .local v16, mimeType:Ljava/lang/String;
    if-eqz v16, :cond_c

    .line 2556
    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/MessageUtils;->isAttachSupportedType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/mms/util/HandleComposerAttachment;->addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)I

    move-result v8

    .line 2559
    const/4 v2, -0x2

    if-ne v8, v2, :cond_8

    .line 2560
    move v12, v11

    .local v12, j:I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->val$uriListCount:I

    if-ge v12, v2, :cond_4

    .line 2561
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2560
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2563
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2565
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v15

    .line 2567
    .local v15, messageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v2, :cond_5

    .line 2568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2, v15}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    .line 2573
    .end local v15           #messageUri:Landroid/net/Uri;
    :cond_5
    :goto_4
    sget-boolean v2, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v2, :cond_6

    .line 2574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2635
    .end local v12           #j:I
    .end local v16           #mimeType:Ljava/lang/String;
    .end local v18           #selectedUri:Landroid/net/Uri;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->val$uriListCount:I

    if-gtz v2, :cond_e

    .line 2636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->val$fileUri:Landroid/net/Uri;

    if-eqz v2, :cond_e

    .line 2637
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttachmentFilenameEncoding()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 2639
    :try_start_1
    new-instance v19, Lcom/android/mms/ui/UriImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->val$fileUri:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2640
    .restart local v19       #uriImage:Lcom/android/mms/ui/UriImage;
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v13

    .line 2641
    .restart local v13       #mSrc:Ljava/lang/String;
    if-eqz v13, :cond_d

    const-string v2, "."

    invoke-virtual {v13, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_d

    .line 2642
    const v2, 0x7f0c014d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2644
    .restart local v14       #message:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/mms/util/HandleComposerAttachment$39$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/android/mms/util/HandleComposerAttachment$39$5;-><init>(Lcom/android/mms/util/HandleComposerAttachment$39;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2652
    .end local v13           #mSrc:Ljava/lang/String;
    .end local v14           #message:Ljava/lang/String;
    .end local v19           #uriImage:Lcom/android/mms/ui/UriImage;
    :catch_1
    move-exception v10

    .line 2653
    .restart local v10       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Mms/HandleComposerAttachment"

    const-string v3, "Occur IllegalArgumentException fileUri"

    invoke-static {v2, v3, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2654
    const v2, 0x7f0c014d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2656
    .restart local v14       #message:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/mms/util/HandleComposerAttachment$39$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/android/mms/util/HandleComposerAttachment$39$6;-><init>(Lcom/android/mms/util/HandleComposerAttachment$39;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2571
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    .end local v14           #message:Ljava/lang/String;
    .restart local v12       #j:I
    .restart local v16       #mimeType:Ljava/lang/String;
    .restart local v18       #selectedUri:Landroid/net/Uri;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    goto/16 :goto_4

    .line 2584
    .end local v12           #j:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->onAttachmentChanged(Z)V

    .line 2588
    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 2590
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->val$uriListCount:I

    add-int/lit8 v2, v2, -0x1

    if-ne v11, v2, :cond_2

    .line 2591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2593
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v15

    .line 2595
    .restart local v15       #messageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v2, :cond_9

    .line 2596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2, v15}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    .line 2601
    .end local v15           #messageUri:Landroid/net/Uri;
    :cond_9
    :goto_5
    sget-boolean v2, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v2, :cond_2

    .line 2602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_2

    .line 2599
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    goto :goto_5

    .line 2607
    :cond_b
    if-nez v9, :cond_2

    .line 2608
    const/4 v9, 0x1

    .line 2609
    const v2, 0x7f0c014d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2612
    .restart local v14       #message:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/mms/util/HandleComposerAttachment$39$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/android/mms/util/HandleComposerAttachment$39$3;-><init>(Lcom/android/mms/util/HandleComposerAttachment$39;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 2620
    .end local v14           #message:Ljava/lang/String;
    :cond_c
    if-nez v16, :cond_2

    .line 2621
    if-nez v9, :cond_2

    .line 2622
    const/4 v9, 0x1

    .line 2623
    const v2, 0x7f0c014d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2626
    .restart local v14       #message:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/mms/util/HandleComposerAttachment$39$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/android/mms/util/HandleComposerAttachment$39$4;-><init>(Lcom/android/mms/util/HandleComposerAttachment$39;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 2665
    .end local v14           #message:Ljava/lang/String;
    .end local v16           #mimeType:Ljava/lang/String;
    .end local v18           #selectedUri:Landroid/net/Uri;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->val$fileUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->val$append:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/util/HandleComposerAttachment;->addMedia(ILandroid/net/Uri;ZZZ)I

    .line 2668
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2671
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/mms/util/HandleComposerAttachment$39$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Lcom/android/mms/util/HandleComposerAttachment$39$7;-><init>(Lcom/android/mms/util/HandleComposerAttachment$39;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
