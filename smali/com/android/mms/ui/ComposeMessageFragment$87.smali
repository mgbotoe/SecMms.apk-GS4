.class Lcom/android/mms/ui/ComposeMessageFragment$87;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initResourceRefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 7860
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$87;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 7862
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$87;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v7

    if-nez v7, :cond_2

    move v1, v5

    .line 7864
    .local v1, checked:Z
    :goto_0
    if-eqz v1, :cond_3

    .line 7865
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$87;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 7868
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7870
    :cond_0
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 7871
    .local v2, msgId:J
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 7872
    .local v4, msgType:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$87;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v7, v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->setChecked(JLjava/lang/String;)V

    .line 7873
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 7878
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #msgId:J
    .end local v4           #msgType:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$87;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 7879
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$87;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 7880
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$87;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetInvalidated()V

    .line 7881
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$87;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->updateActionBarText()V
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6200(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 7882
    return-void

    .end local v1           #checked:Z
    :cond_2
    move v1, v6

    .line 7862
    goto :goto_0

    .line 7876
    .restart local v1       #checked:Z
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$87;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListAdapter;->clearCheckedList()V

    goto :goto_1
.end method
