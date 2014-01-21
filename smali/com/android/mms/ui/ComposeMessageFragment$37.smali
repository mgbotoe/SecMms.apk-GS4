.class Lcom/android/mms/ui/ComposeMessageFragment$37;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->updateNormalModeActionBar()V
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
    .line 3830
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$37;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3833
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_1

    .line 3859
    :cond_0
    :goto_0
    return v3

    .line 3836
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 3839
    :pswitch_0
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$37;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 3840
    .local v0, contactList:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v2

    .line 3841
    .local v2, recipients:[Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-lt v5, v4, :cond_0

    .line 3843
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 3844
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$37;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_1
    move v3, v4

    .line 3856
    goto :goto_0

    .line 3845
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-le v3, v4, :cond_2

    .line 3846
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3847
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$37;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/android/mms/ui/RecipientListActivity;

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3848
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "recipients"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3849
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$37;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 3851
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$37;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3852
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "recipients"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3853
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$37;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 3836
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
