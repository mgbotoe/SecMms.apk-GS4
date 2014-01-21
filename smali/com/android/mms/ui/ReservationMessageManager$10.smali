.class Lcom/android/mms/ui/ReservationMessageManager$10;
.super Ljava/lang/Object;
.source "ReservationMessageManager.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ReservationMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ReservationMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$10;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

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
    .line 1437
    .local p1, l:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    const-string v12, "Mms/ReservationMessageManager"

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

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    const v12, 0x7f0b00f0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/QuickContactBadge;

    sput-object v12, Lcom/android/mms/ui/ReservationMessageManager;->badge:Landroid/widget/QuickContactBadge;

    .line 1440
    sget-object v12, Lcom/android/mms/ui/ReservationMessageManager;->badge:Landroid/widget/QuickContactBadge;

    if-eqz v12, :cond_0

    .line 1441
    sget-object v12, Lcom/android/mms/ui/ReservationMessageManager;->badge:Landroid/widget/QuickContactBadge;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 1444
    :cond_0
    const/4 v8, 0x1

    .line 1445
    .local v8, isOpen:Z
    iget-object v12, p0, Lcom/android/mms/ui/ReservationMessageManager$10;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-virtual {v12}, Lcom/android/mms/ui/ReservationMessageManager;->getCurrentListMode()I

    move-result v12

    if-lez v12, :cond_4

    .line 1446
    iget-object v12, p0, Lcom/android/mms/ui/ReservationMessageManager$10;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v12}, Lcom/android/mms/ui/ReservationMessageManager;->access$000(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    .line 1447
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    if-gez v12, :cond_2

    .line 1476
    .end local v4           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 1449
    .restart local v4       #cursor:Landroid/database/Cursor;
    :cond_2
    const/4 v7, 0x0

    .line 1450
    .local v7, idxMsgType:I
    const/4 v6, 0x1

    .line 1452
    .local v6, idxMsgId:I
    :try_start_0
    const-string v12, "transport_type"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1453
    const-string v12, "_id"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1457
    :goto_1
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1458
    .local v11, msgType:Ljava/lang/String;
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1460
    .local v9, msgId:J
    iget-object v12, p0, Lcom/android/mms/ui/ReservationMessageManager$10;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;
    invoke-static {v12}, Lcom/android/mms/ui/ReservationMessageManager;->access$300(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/ReservationMessageListAdapter;

    move-result-object v12

    invoke-virtual {v12, v9, v10, v11}, Lcom/android/mms/ui/ReservationMessageListAdapter;->toggleCheckBox(JLjava/lang/String;)Z

    move-result v8

    .line 1461
    const v12, 0x7f0b00f7

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1462
    .local v2, checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v2, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1463
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 1465
    iget-object v12, p0, Lcom/android/mms/ui/ReservationMessageManager$10;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;
    invoke-static {v12}, Lcom/android/mms/ui/ReservationMessageManager;->access$300(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/ReservationMessageListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCheckedCount()I

    move-result v3

    .line 1466
    .local v3, checkedCount:I
    iget-object v12, p0, Lcom/android/mms/ui/ReservationMessageManager$10;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;
    invoke-static {v12}, Lcom/android/mms/ui/ReservationMessageManager;->access$300(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/ReservationMessageListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCount()I

    move-result v12

    if-ne v3, v12, :cond_3

    .line 1467
    iget-object v12, p0, Lcom/android/mms/ui/ReservationMessageManager$10;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v12}, Lcom/android/mms/ui/ReservationMessageManager;->access$200(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1471
    :goto_2
    iget-object v12, p0, Lcom/android/mms/ui/ReservationMessageManager$10;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #calls: Lcom/android/mms/ui/ReservationMessageManager;->updateCheckedMsgCount()V
    invoke-static {v12}, Lcom/android/mms/ui/ReservationMessageManager;->access$400(Lcom/android/mms/ui/ReservationMessageManager;)V

    goto :goto_0

    .line 1454
    .end local v2           #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v3           #checkedCount:I
    .end local v9           #msgId:J
    .end local v11           #msgType:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1455
    .local v5, e:Ljava/lang/IllegalArgumentException;
    const-string v12, "colsMap"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1469
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .restart local v3       #checkedCount:I
    .restart local v9       #msgId:J
    .restart local v11       #msgType:Ljava/lang/String;
    :cond_3
    iget-object v12, p0, Lcom/android/mms/ui/ReservationMessageManager$10;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v12}, Lcom/android/mms/ui/ReservationMessageManager;->access$200(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 1474
    .end local v2           #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v3           #checkedCount:I
    .end local v4           #cursor:Landroid/database/Cursor;
    .end local v6           #idxMsgId:I
    .end local v7           #idxMsgType:I
    .end local v9           #msgId:J
    .end local v11           #msgType:Ljava/lang/String;
    :cond_4
    iget-object v12, p0, Lcom/android/mms/ui/ReservationMessageManager$10;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    move/from16 v0, p3

    #calls: Lcom/android/mms/ui/ReservationMessageManager;->openThread(I)V
    invoke-static {v12, v0}, Lcom/android/mms/ui/ReservationMessageManager;->access$1700(Lcom/android/mms/ui/ReservationMessageManager;I)V

    goto :goto_0
.end method
