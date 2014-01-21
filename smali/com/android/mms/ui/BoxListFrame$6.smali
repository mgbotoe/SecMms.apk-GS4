.class Lcom/android/mms/ui/BoxListFrame$6;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 913
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$6;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 13
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 915
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick(),position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const/4 v10, 0x1

    .line 923
    .local v10, isOpen:Z
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$6;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$900(Lcom/android/mms/ui/BoxListFrame;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$6;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mIsMoveMode:Z
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1000(Lcom/android/mms/ui/BoxListFrame;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 925
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$6;->this$0:Lcom/android/mms/ui/BoxListFrame;

    move/from16 v0, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;
    invoke-static {v3, v2}, Lcom/android/mms/ui/BoxListFrame;->access$102(Lcom/android/mms/ui/BoxListFrame;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 926
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$6;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$100(Lcom/android/mms/ui/BoxListFrame;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 928
    .local v11, msgId:J
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$6;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$6;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$100(Lcom/android/mms/ui/BoxListFrame;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v12, v3}, Lcom/android/mms/ui/BoxListAdapter;->toggleCheckBox(JLjava/lang/String;)Z

    move-result v10

    .line 929
    const v2, 0x7f0b0073

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 930
    .local v8, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v8, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 931
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$6;->this$0:Lcom/android/mms/ui/BoxListFrame;

    move/from16 v0, p3

    #calls: Lcom/android/mms/ui/BoxListFrame;->setChecked(IZ)V
    invoke-static {v2, v0, v10}, Lcom/android/mms/ui/BoxListFrame;->access$300(Lcom/android/mms/ui/BoxListFrame;IZ)V

    .line 933
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$6;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListAdapter;->getCheckedCount()I

    move-result v9

    .line 934
    .local v9, checkedCount:I
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$6;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v2

    if-ne v9, v2, :cond_1

    .line 935
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$6;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$000(Lcom/android/mms/ui/BoxListFrame;)Landroid/widget/CheckBox;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 940
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$6;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->updateCheckedMsgCount()V
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)V

    .line 952
    .end local v8           #checkbox:Landroid/widget/CheckBox;
    .end local v9           #checkedCount:I
    .end local v11           #msgId:J
    :goto_1
    return-void

    .line 937
    .restart local v8       #checkbox:Landroid/widget/CheckBox;
    .restart local v9       #checkedCount:I
    .restart local v11       #msgId:J
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$6;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$000(Lcom/android/mms/ui/BoxListFrame;)Landroid/widget/CheckBox;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 949
    .end local v8           #checkbox:Landroid/widget/CheckBox;
    .end local v9           #checkedCount:I
    .end local v11           #msgId:J
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$6;->this$0:Lcom/android/mms/ui/BoxListFrame;

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/ui/BoxListFrame;->listItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    goto :goto_1
.end method
