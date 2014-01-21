.class Lcom/android/mms/ui/ComposeMessageFragment$106;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$updated:Lcom/android/mms/data/Contact;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10384
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->val$updated:Lcom/android/mms/data/Contact;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 10386
    const-string v1, "Mms:app"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10387
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMA] onUpdate contact updated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->val$updated:Lcom/android/mms/data/Contact;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10391
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10445
    :goto_0
    return-void

    .line 10394
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    .line 10395
    .local v7, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 10396
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->updatePresence(Lcom/android/mms/data/Contact;)V
    invoke-static {v2, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8600(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Contact;)V

    .line 10401
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->updateActionBarText()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6200(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 10404
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v1

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mReplyAllBanner:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mReplyAllBanner:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 10406
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 10417
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10418
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3400(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10419
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->calcToButtonLayoutHeight()I
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3700(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v5

    .line 10420
    .local v5, mToLayoutHeight:I
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3600(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 10421
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->showAnimationFlag:Z
    invoke-static {v1, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8802(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 10423
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->showAnimationFlag:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8800(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10424
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    const/16 v3, 0x10b

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/view/View;IIII)V

    .line 10427
    .local v0, animation:Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ToButtonLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 10428
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->showAnimationFlag:Z
    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8802(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 10431
    .end local v0           #animation:Lcom/android/mms/ui/ComposeMessageFragment$ExpandCollapseAnimation;
    .end local v5           #mToLayoutHeight:I
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel(Z)V
    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3800(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    .line 10432
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v1, :cond_5

    .line 10433
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v1}, Lcom/android/mms/ui/ToButtonLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 10434
    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 10435
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientsInEditor()V

    .line 10444
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 10398
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->updatePresence(Lcom/android/mms/data/Contact;)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8600(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Contact;)V

    goto/16 :goto_1
.end method
