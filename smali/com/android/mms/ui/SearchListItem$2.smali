.class Lcom/android/mms/ui/SearchListItem$2;
.super Landroid/os/Handler;
.source "SearchListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 595
    iget-object v6, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/android/mms/ui/SearchListItem;->access$000(Lcom/android/mms/ui/SearchListItem;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/android/mms/ui/SearchListItem;->access$000(Lcom/android/mms/ui/SearchListItem;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 596
    iget-object v6, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/android/mms/ui/SearchListItem;->access$000(Lcom/android/mms/ui/SearchListItem;)Landroid/database/Cursor;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 597
    iget-object v6, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/android/mms/ui/SearchListItem;->access$000(Lcom/android/mms/ui/SearchListItem;)Landroid/database/Cursor;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/android/mms/ui/SearchListItem;->access$000(Lcom/android/mms/ui/SearchListItem;)Landroid/database/Cursor;

    move-result-object v7

    const-string v8, "thread_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 598
    .local v3, threadId:J
    const-wide/16 v1, -0x1

    .line 599
    .local v1, rowId:J
    iget-object v6, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/android/mms/ui/SearchListItem;->access$000(Lcom/android/mms/ui/SearchListItem;)Landroid/database/Cursor;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/android/mms/ui/SearchListItem;->access$000(Lcom/android/mms/ui/SearchListItem;)Landroid/database/Cursor;

    move-result-object v7

    const-string v8, "transport_type"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 601
    .local v5, transport_type:Ljava/lang/String;
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    if-le v6, v7, :cond_0

    .line 602
    iget-object v6, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/android/mms/ui/SearchListItem;->access$000(Lcom/android/mms/ui/SearchListItem;)Landroid/database/Cursor;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/android/mms/ui/SearchListItem;->access$000(Lcom/android/mms/ui/SearchListItem;)Landroid/database/Cursor;

    move-result-object v7

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 605
    :cond_0
    const-string v6, "Mms/SearchListListItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In Handler:threadId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "rowid :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/SearchListItem;->access$100(Lcom/android/mms/ui/SearchListItem;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 608
    .local v0, onClickIntent:Landroid/content/Intent;
    const-string v6, "thread_id"

    invoke-virtual {v0, v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 609
    const-string v6, "highlight"

    iget-object v7, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mSearchString:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/SearchListItem;->access$200(Lcom/android/mms/ui/SearchListItem;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    const-string v6, "select_id"

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 611
    const-string v6, "message_type"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    const-string v6, "FromSearchActivity"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 613
    iget-object v6, p0, Lcom/android/mms/ui/SearchListItem$2;->this$0:Lcom/android/mms/ui/SearchListItem;

    #getter for: Lcom/android/mms/ui/SearchListItem;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/SearchListItem;->access$100(Lcom/android/mms/ui/SearchListItem;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 615
    .end local v0           #onClickIntent:Landroid/content/Intent;
    .end local v1           #rowId:J
    .end local v3           #threadId:J
    .end local v5           #transport_type:Ljava/lang/String;
    :cond_1
    return-void
.end method
