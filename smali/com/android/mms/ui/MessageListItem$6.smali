.class Lcom/android/mms/ui/MessageListItem$6;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->bindCommonMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$6;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1217
    const-string v0, "Mms/MessageListItem"

    const-string v1, "mActiveMoreButton.onClick"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$1900(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1219
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageListItem;->access$2002(Lcom/android/mms/ui/MessageListItem;Z)Z

    .line 1222
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$6;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$6;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v2

    const/4 v3, 0x0

    #calls: Lcom/android/mms/ui/MessageListItem;->presentMms(Lcom/android/mms/ui/MessageItem;ZLcom/android/mms/ui/MessageListItem;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageListItem;->access$2100(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;ZLcom/android/mms/ui/MessageListItem;)V

    .line 1228
    :goto_0
    return-void

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$6;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    #calls: Lcom/android/mms/ui/MessageListItem;->bindBodyTextView(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageListItem;->access$2200(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    .line 1226
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    #calls: Lcom/android/mms/ui/MessageListItem;->hideMmsView()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$2300(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_0
.end method
