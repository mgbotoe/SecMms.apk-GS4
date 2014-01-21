.class Lcom/android/mms/util/HandleComposerAttachment$21;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;

.field final synthetic val$append:Z

.field final synthetic val$dataUri:Landroid/net/Uri;

.field final synthetic val$error:I

.field final synthetic val$mediaTypeStringId:I

.field final synthetic val$reqCode:I

.field final synthetic val$sendMultiple:Z


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;IIZLandroid/net/Uri;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput p2, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$mediaTypeStringId:I

    iput p3, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$error:I

    iput-boolean p4, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$sendMultiple:Z

    iput-object p5, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$dataUri:Landroid/net/Uri;

    iput p6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$reqCode:I

    iput-boolean p7, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$append:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1268
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v6}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1269
    const-string v6, "Mms/HandleComposerAttachment"

    const-string v7, "handleAddAttachmentError() Fragment is detached"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v6}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1273
    .local v3, res:Landroid/content/res/Resources;
    iget v6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$mediaTypeStringId:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1274
    .local v1, mediaType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1276
    .local v2, message:Ljava/lang/String;
    iget v6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$error:I

    packed-switch v6, :pswitch_data_0

    .line 1318
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$error:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1278
    :pswitch_0
    const v6, 0x7f0c014d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1279
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1282
    :pswitch_1
    const v6, 0x7f0c014e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1283
    .local v5, title:Ljava/lang/String;
    const v6, 0x7f0c014f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1321
    :goto_1
    iget-boolean v6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$sendMultiple:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v6}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z

    if-nez v6, :cond_3

    .line 1322
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v6}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showErrorPopup(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1287
    .end local v5           #title:Ljava/lang/String;
    :pswitch_2
    const v6, 0x7f0c0032

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1288
    .restart local v5       #title:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v6}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v6

    const v7, 0x7f0c015f

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1289
    const v6, 0x7f0c0148

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1290
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v6}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v0

    .line 1291
    .local v0, focusedIndex:I
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v6}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1292
    .local v4, text:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v6}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1293
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v6}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 1295
    .end local v0           #focusedIndex:I
    .end local v4           #text:Ljava/lang/CharSequence;
    :cond_2
    iget-boolean v6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$sendMultiple:Z

    if-nez v6, :cond_0

    .line 1299
    const v6, 0x7f0c0158

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1302
    goto/16 :goto_1

    .line 1304
    .end local v5           #title:Ljava/lang/String;
    :pswitch_3
    const v6, 0x7f0c0034

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1305
    .restart local v5       #title:Ljava/lang/String;
    const v6, 0x7f0c0035

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1306
    goto/16 :goto_1

    .line 1309
    .end local v5           #title:Ljava/lang/String;
    :pswitch_4
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v6}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$dataUri:Landroid/net/Uri;

    iget v8, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$reqCode:I

    iget-boolean v9, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$append:Z

    invoke-virtual {v6, v1, v7, v8, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCreationModeDialog(Ljava/lang/String;Landroid/net/Uri;IZ)V

    goto/16 :goto_0

    .line 1313
    :pswitch_5
    const v6, 0x7f0c0174

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1314
    .restart local v5       #title:Ljava/lang/String;
    const v6, 0x7f0c0175

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1315
    goto/16 :goto_1

    .line 1323
    :cond_3
    iget-boolean v6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$sendMultiple:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v6}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z

    if-nez v6, :cond_0

    .line 1324
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v6}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showErrorPopup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1276
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
