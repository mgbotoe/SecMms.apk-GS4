.class Lcom/android/mms/ui/RecipientListActivity$2;
.super Ljava/lang/Object;
.source "RecipientListActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RecipientListActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RecipientListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/RecipientListActivity$2;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v4, 0x0

    .line 123
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v4

    .line 126
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    iget-object v5, p0, Lcom/android/mms/ui/RecipientListActivity$2;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    #getter for: Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/mms/ui/RecipientListActivity;->access$100(Lcom/android/mms/ui/RecipientListActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v3

    .line 130
    .local v3, selectedPosition:I
    iget-object v5, p0, Lcom/android/mms/ui/RecipientListActivity$2;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    iget-object v5, v5, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 131
    .local v2, listCount:I
    if-ltz v3, :cond_0

    if-ge v3, v2, :cond_0

    .line 134
    iget-object v5, p0, Lcom/android/mms/ui/RecipientListActivity$2;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    iget-object v5, v5, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientListItem;

    .line 136
    .local v0, contact:Lcom/android/mms/ui/RecipientListItem;
    if-eqz v0, :cond_0

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientListItem;->getContact()Lcom/android/mms/data/Contact;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 138
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/mms/ui/RecipientListActivity$2;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    invoke-virtual {v4, v1}, Lcom/android/mms/ui/RecipientListActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    const/4 v4, 0x1

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
