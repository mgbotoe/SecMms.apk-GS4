.class Lcom/android/mms/ui/MmsSinglePageActivity$3;
.super Ljava/lang/Object;
.source "MmsSinglePageActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageActivity;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$3;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 505
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v2

    .line 508
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 511
    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity$3;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    #getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;
    invoke-static {v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$300(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, recipients:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity$3;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    #getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;
    invoke-static {v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$300(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-lt v4, v3, :cond_0

    .line 515
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity$3;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    #getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;
    invoke-static {v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$300(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 516
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity$3;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity$3;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    #getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;
    invoke-static {v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$300(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_1
    move v2, v3

    .line 528
    goto :goto_0

    .line 517
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity$3;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    #getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;
    invoke-static {v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$300(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 518
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v2

    if-nez v2, :cond_4

    .line 519
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity$3;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    const-class v4, Lcom/android/mms/ui/RecipientListActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 520
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "recipients"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity$3;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 523
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity$3;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    const-class v4, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 524
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "recipients"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity$3;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 508
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
