.class Lcom/android/mms/ui/SpamMessageManager$9;
.super Ljava/lang/Object;
.source "SpamMessageManager.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SpamMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SpamMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SpamMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$9;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 15
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1314
    .local p1, l:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    const-string v12, "Mms/SpamMessageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onListItemClick(),position="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p4

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const v12, 0x7f0b00f0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/QuickContactBadge;

    sput-object v12, Lcom/android/mms/ui/SpamMessageManager;->badge:Landroid/widget/QuickContactBadge;

    .line 1318
    const/4 v8, 0x1

    .line 1319
    .local v8, isOpen:Z
    iget-object v12, p0, Lcom/android/mms/ui/SpamMessageManager$9;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v12}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v12

    if-lez v12, :cond_3

    .line 1320
    iget-object v12, p0, Lcom/android/mms/ui/SpamMessageManager$9;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v12}, Lcom/android/mms/ui/SpamMessageManager;->access$400(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    .line 1321
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    if-gez v12, :cond_1

    .line 1349
    .end local v4           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 1323
    .restart local v4       #cursor:Landroid/database/Cursor;
    :cond_1
    const/4 v7, 0x0

    .line 1324
    .local v7, idxMsgType:I
    const/4 v6, 0x1

    .line 1326
    .local v6, idxMsgId:I
    :try_start_0
    const-string v12, "transport_type"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1327
    const-string v12, "_id"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1331
    :goto_1
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1332
    .local v11, msgType:Ljava/lang/String;
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1334
    .local v9, msgId:J
    iget-object v12, p0, Lcom/android/mms/ui/SpamMessageManager$9;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v12}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v12

    invoke-virtual {v12, v9, v10, v11}, Lcom/android/mms/ui/SpamMessageListAdapter;->toggleCheckBox(JLjava/lang/String;)Z

    move-result v8

    .line 1335
    const v12, 0x7f0b00f7

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1336
    .local v2, checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v2, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1337
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 1339
    iget-object v12, p0, Lcom/android/mms/ui/SpamMessageManager$9;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v12}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCheckedCount()I

    move-result v3

    .line 1340
    .local v3, checkedCount:I
    iget-object v12, p0, Lcom/android/mms/ui/SpamMessageManager$9;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v12}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCount()I

    move-result v12

    if-ne v3, v12, :cond_2

    .line 1341
    iget-object v12, p0, Lcom/android/mms/ui/SpamMessageManager$9;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v12}, Lcom/android/mms/ui/SpamMessageManager;->access$000(Lcom/android/mms/ui/SpamMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1345
    :goto_2
    iget-object v12, p0, Lcom/android/mms/ui/SpamMessageManager$9;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #calls: Lcom/android/mms/ui/SpamMessageManager;->updateCheckedMsgCount()V
    invoke-static {v12}, Lcom/android/mms/ui/SpamMessageManager;->access$200(Lcom/android/mms/ui/SpamMessageManager;)V

    goto :goto_0

    .line 1328
    .end local v2           #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v3           #checkedCount:I
    .end local v9           #msgId:J
    .end local v11           #msgType:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1329
    .local v5, e:Ljava/lang/IllegalArgumentException;
    const-string v12, "colsMap"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1343
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .restart local v3       #checkedCount:I
    .restart local v9       #msgId:J
    .restart local v11       #msgType:Ljava/lang/String;
    :cond_2
    iget-object v12, p0, Lcom/android/mms/ui/SpamMessageManager$9;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v12}, Lcom/android/mms/ui/SpamMessageManager;->access$000(Lcom/android/mms/ui/SpamMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 1347
    .end local v2           #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v3           #checkedCount:I
    .end local v4           #cursor:Landroid/database/Cursor;
    .end local v6           #idxMsgId:I
    .end local v7           #idxMsgType:I
    .end local v9           #msgId:J
    .end local v11           #msgType:Ljava/lang/String;
    :cond_3
    iget-object v12, p0, Lcom/android/mms/ui/SpamMessageManager$9;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    move/from16 v0, p3

    #calls: Lcom/android/mms/ui/SpamMessageManager;->startViewer(I)V
    invoke-static {v12, v0}, Lcom/android/mms/ui/SpamMessageManager;->access$1500(Lcom/android/mms/ui/SpamMessageManager;I)V

    goto :goto_0
.end method
