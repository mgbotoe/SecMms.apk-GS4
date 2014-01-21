.class Lcom/android/mms/ui/SpamMessageManager$2;
.super Ljava/lang/Object;
.source "SpamMessageManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SpamMessageManager;->initEtc()V
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
    .line 465
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$2;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "arg0"

    .prologue
    const/4 v8, 0x1

    .line 467
    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageManager$2;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v9}, Lcom/android/mms/ui/SpamMessageManager;->access$000(Lcom/android/mms/ui/SpamMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v9

    if-nez v9, :cond_2

    move v0, v8

    .line 469
    .local v0, checked:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 470
    const/4 v4, 0x0

    .line 471
    .local v4, idxMsgType:I
    const/4 v3, 0x1

    .line 472
    .local v3, idxMsgId:I
    const-wide/16 v5, 0x0

    .line 473
    .local v5, msgId:J
    const-string v7, "sms"

    .line 475
    .local v7, msgType:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageManager$2;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v9}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 476
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 478
    :cond_0
    const/4 v4, 0x0

    .line 479
    const/4 v3, 0x1

    .line 481
    :try_start_0
    const-string v9, "transport_type"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 482
    const-string v9, "_id"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 486
    :goto_1
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 487
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 489
    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageManager$2;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v9}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v9

    invoke-virtual {v9, v5, v6, v7}, Lcom/android/mms/ui/SpamMessageListAdapter;->setChecked(JLjava/lang/String;)V

    .line 490
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 495
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #idxMsgId:I
    .end local v4           #idxMsgType:I
    .end local v5           #msgId:J
    .end local v7           #msgType:Ljava/lang/String;
    :cond_1
    :goto_2
    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageManager$2;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v9}, Lcom/android/mms/ui/SpamMessageManager;->access$000(Lcom/android/mms/ui/SpamMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 496
    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageManager$2;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v9}, Lcom/android/mms/ui/SpamMessageManager;->access$000(Lcom/android/mms/ui/SpamMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 497
    iget-object v8, p0, Lcom/android/mms/ui/SpamMessageManager$2;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #calls: Lcom/android/mms/ui/SpamMessageManager;->updateCheckedMsgCount()V
    invoke-static {v8}, Lcom/android/mms/ui/SpamMessageManager;->access$200(Lcom/android/mms/ui/SpamMessageManager;)V

    .line 498
    iget-object v8, p0, Lcom/android/mms/ui/SpamMessageManager$2;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v8}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/SpamMessageListAdapter;->notifyDataSetChanged()V

    .line 499
    return-void

    .line 467
    .end local v0           #checked:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 483
    .restart local v0       #checked:Z
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v3       #idxMsgId:I
    .restart local v4       #idxMsgType:I
    .restart local v5       #msgId:J
    .restart local v7       #msgType:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 484
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v9, "colsMap"

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 493
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v3           #idxMsgId:I
    .end local v4           #idxMsgType:I
    .end local v5           #msgId:J
    .end local v7           #msgType:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/android/mms/ui/SpamMessageManager$2;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v9}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/ui/SpamMessageListAdapter;->clearCheckedList()V

    goto :goto_2
.end method
