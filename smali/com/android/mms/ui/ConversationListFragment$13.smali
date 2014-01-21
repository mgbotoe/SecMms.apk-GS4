.class Lcom/android/mms/ui/ConversationListFragment$13;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->onPrepareListOptionsMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;

.field final synthetic val$adapter:Lcom/android/mms/ui/SPinnerArrayAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/SPinnerArrayAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationListFragment$13;->val$adapter:Lcom/android/mms/ui/SPinnerArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 1226
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->CheckInitSpinner:Z
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1400(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1227
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$13;->val$adapter:Lcom/android/mms/ui/SPinnerArrayAdapter;

    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->getSpinnerItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SPinnerArrayAdapter;->setCurrentPosition(I)V

    .line 1228
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->CheckInitSpinner:Z
    invoke-static {v0, v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1402(Lcom/android/mms/ui/ConversationListFragment;Z)Z

    .line 1235
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1300(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1236
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1300(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1300(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1237
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1300(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 1239
    :cond_1
    return-void

    .line 1230
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$13;->val$adapter:Lcom/android/mms/ui/SPinnerArrayAdapter;

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/SPinnerArrayAdapter;->setCurrentPosition(I)V

    .line 1231
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1500(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1500(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1602(I)I

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1244
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
