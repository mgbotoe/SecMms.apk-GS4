.class Lcom/android/mms/ui/LockedMessageManager$2;
.super Ljava/lang/Object;
.source "LockedMessageManager.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/LockedMessageManager;->initResourceRefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/LockedMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager$2;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 431
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 432
    packed-switch p2, :pswitch_data_0

    .line 453
    :cond_0
    :goto_0
    return v2

    .line 435
    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageManager$2;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageManager$2;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v5}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MsgSweepActionListView;->getSelectedItemPosition()I

    move-result v5

    #calls: Lcom/android/mms/ui/LockedMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;
    invoke-static {v4, v5}, Lcom/android/mms/ui/LockedMessageManager;->access$100(Lcom/android/mms/ui/LockedMessageManager;I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 436
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 438
    .local v1, recipients:Lcom/android/mms/data/ContactList;
    if-eqz v1, :cond_0

    .line 439
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-lt v4, v3, :cond_0

    .line 441
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-eq v4, v3, :cond_1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 442
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageManager$2;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v4}, Lcom/android/mms/ui/LockedMessageManager;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    move v2, v3

    .line 443
    goto :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
