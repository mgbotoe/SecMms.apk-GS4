.class Lcom/android/mms/ui/ConversationListFragment$16;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->handle_focus_on_Select_All()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1508
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$16;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v0, 0x0

    .line 1512
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1513
    packed-switch p2, :pswitch_data_0

    .line 1523
    :cond_0
    :goto_0
    return v0

    .line 1515
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$16;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1900(Lcom/android/mms/ui/ConversationListFragment;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$16;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1900(Lcom/android/mms/ui/ConversationListFragment;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1518
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1513
    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method
