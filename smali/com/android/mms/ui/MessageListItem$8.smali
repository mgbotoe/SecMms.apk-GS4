.class Lcom/android/mms/ui/MessageListItem$8;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 2374
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$8;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 2377
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$8;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$2400(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$8;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$2400(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListView()Lcom/android/mms/ui/MessageListView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/MessageListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelectedIndex(I)V

    .line 2379
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$8;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$2400(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getComposerMenu()Lcom/android/mms/ui/ComposeMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$8;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/mms/ui/ComposeMenu;->addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V

    .line 2380
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$8;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$2400(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getComposerMenu()Lcom/android/mms/ui/ComposeMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$8;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$2500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/mms/ui/ComposeMenu;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageItem;)V

    .line 2381
    return-void
.end method
