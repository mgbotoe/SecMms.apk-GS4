.class Lcom/android/mms/ui/DraftMessageManager$2;
.super Ljava/lang/Object;
.source "DraftMessageManager.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DraftMessageManager;->initResourceRefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DraftMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager$2;->this$0:Lcom/android/mms/ui/DraftMessageManager;

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

    .line 417
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 418
    packed-switch p2, :pswitch_data_0

    .line 439
    :cond_0
    :goto_0
    return v2

    .line 421
    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager$2;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    iget-object v5, p0, Lcom/android/mms/ui/DraftMessageManager$2;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v5}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MsgSweepActionListView;->getSelectedItemPosition()I

    move-result v5

    #calls: Lcom/android/mms/ui/DraftMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;
    invoke-static {v4, v5}, Lcom/android/mms/ui/DraftMessageManager;->access$100(Lcom/android/mms/ui/DraftMessageManager;I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 422
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 424
    .local v1, recipients:Lcom/android/mms/data/ContactList;
    if-eqz v1, :cond_0

    .line 425
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-lt v4, v3, :cond_0

    .line 427
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-eq v4, v3, :cond_1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 428
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager$2;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-virtual {v4}, Lcom/android/mms/ui/DraftMessageManager;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    move v2, v3

    .line 429
    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
