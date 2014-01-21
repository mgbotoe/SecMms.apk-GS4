.class Lcom/android/mms/util/HandleComposerAttachment$40;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->singleAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$extrastring:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2691
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->val$extrastring:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->val$extras:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->val$handler:Landroid/os/Handler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 2694
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2695
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    monitor-enter v1

    .line 2697
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2701
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2704
    :cond_0
    const/4 v10, 0x0

    .line 2705
    .local v10, type:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    .line 2707
    :goto_1
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->val$extrastring:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->val$extrastring:Ljava/lang/String;

    const-string v1, "vcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2708
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getRawAttachableCountWithToast(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 2709
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->getAddContactUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 2710
    .local v2, contactUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    const/4 v1, 0x6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addMedia(ILandroid/net/Uri;ZZZ)I

    .line 2716
    .end local v2           #contactUri:Landroid/net/Uri;
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2717
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2719
    :cond_2
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->val$extras:Landroid/os/Bundle;

    const-string v1, "sendto"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2720
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->val$intent:Landroid/content/Intent;

    const-string v1, "sendto"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 2721
    .local v9, recipientList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2722
    .local v8, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v11, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2723
    .local v7, msg:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 2731
    .end local v7           #msg:Landroid/os/Message;
    .end local v8           #number:Ljava/lang/String;
    .end local v9           #recipientList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_3
    return-void

    .line 2698
    .end local v10           #type:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 2699
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2701
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2705
    .restart local v10       #type:Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getMimeTypeFromUri(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 2712
    :cond_5
    if-eqz v10, :cond_1

    .line 2713
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v10, v1, v11, v3}, Lcom/android/mms/util/HandleComposerAttachment;->addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)I

    goto :goto_2

    .line 2724
    :cond_6
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->val$intent:Landroid/content/Intent;

    const-string v1, "onlinealbum"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2725
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->val$handler:Landroid/os/Handler;

    const-string v1, "4444"

    invoke-static {v0, v11, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2726
    .restart local v7       #msg:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 2727
    .end local v7           #msg:Landroid/os/Message;
    :cond_7
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->val$intent:Landroid/content/Intent;

    const-string v1, "dropObject"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2728
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$40;->val$handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2729
    .restart local v7       #msg:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3
.end method
