.class Lcom/android/mms/ui/SearchActivity$5;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$5;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 397
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 398
    packed-switch p2, :pswitch_data_0

    .line 420
    :cond_0
    :goto_0
    return v2

    .line 400
    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$5;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/SearchActivity;->access$100(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/SearchListAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$5;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/SearchActivity;->access$100(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/SearchListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/SearchListAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 401
    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$5;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/SearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 402
    .local v0, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 407
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 409
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SearchListItem;

    .line 410
    .local v1, sl:Lcom/android/mms/ui/SearchListItem;
    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {v1}, Lcom/android/mms/ui/SearchListItem;->requestFocus()Z

    move v2, v3

    .line 415
    goto :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method
