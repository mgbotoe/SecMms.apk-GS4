.class public Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MoveThreadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 14426
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 19
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 14428
    const-string v14, "Mms/ComposeMessageFragment"

    const-string v15, "moveSelectedMessages()"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 14434
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v15, v15, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v15

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMoveListMsgCount:I
    invoke-static {v14, v15}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10502(Lcom/android/mms/ui/ComposeMessageFragment;I)I

    .line 14437
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedSMSMsgIds:Ljava/util/HashSet;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10600(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashSet;

    move-result-object v14

    if-nez v14, :cond_3

    .line 14438
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedSMSMsgIds:Ljava/util/HashSet;
    invoke-static {v14, v15}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10602(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 14442
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedMMSMsgIds:Ljava/util/HashSet;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10700(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashSet;

    move-result-object v14

    if-nez v14, :cond_4

    .line 14443
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedMMSMsgIds:Ljava/util/HashSet;
    invoke-static {v14, v15}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10702(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 14444
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedMMSThreadIds:Ljava/util/HashMap;
    invoke-static {v14, v15}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10802(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 14450
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v14}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 14452
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 14453
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMoveListMsgCount:I
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10500(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v14

    if-lez v14, :cond_2

    .line 14455
    :cond_0
    const/4 v14, 0x0

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 14456
    .local v13, type:Ljava/lang/String;
    const/4 v14, 0x1

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 14457
    .local v9, msgId:J
    const/4 v14, 0x0

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 14458
    .local v11, msgType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v14, v9, v10, v11}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 14459
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v14, v13, v9, v10, v1}, Lcom/android/mms/ui/MessageListAdapter;->canCachedMessageItemBeSelected(Ljava/lang/String;JLandroid/database/Cursor;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 14477
    :cond_1
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_0

    .line 14481
    .end local v9           #msgId:J
    .end local v11           #msgType:Ljava/lang/String;
    .end local v13           #type:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedSMSMsgIds:Ljava/util/HashSet;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10600(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashSet;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashSet;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedMMSMsgIds:Ljava/util/HashSet;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10700(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashSet;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashSet;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedMMSThreadIds:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10800(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 14482
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v15, 0x7f0c0328

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 14536
    :goto_3
    return-void

    .line 14440
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedSMSMsgIds:Ljava/util/HashSet;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10600(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashSet;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashSet;->clear()V

    goto/16 :goto_0

    .line 14446
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedMMSMsgIds:Ljava/util/HashSet;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10700(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashSet;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashSet;->clear()V

    .line 14447
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedMMSThreadIds:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10800(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_1

    .line 14461
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v9       #msgId:J
    .restart local v11       #msgType:Ljava/lang/String;
    .restart local v13       #type:Ljava/lang/String;
    :cond_5
    const-string v14, "sms"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 14462
    const/16 v14, 0x15

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 14463
    .local v5, msgGroupId:J
    const-wide/16 v14, 0x0

    cmp-long v14, v5, v14

    if-lez v14, :cond_6

    .line 14464
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    .line 14465
    .local v12, recipients:Lcom/android/mms/data/ContactList;
    const-wide/16 v2, 0x1

    .local v2, i:J
    :goto_4
    invoke-virtual {v12}, Lcom/android/mms/data/ContactList;->size()I

    move-result v14

    int-to-long v14, v14

    cmp-long v14, v2, v14

    if-gtz v14, :cond_1

    .line 14466
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedSMSMsgIds:Ljava/util/HashSet;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10600(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashSet;

    move-result-object v14

    const-wide/16 v15, 0x1

    add-long v7, v5, v15

    .end local v5           #msgGroupId:J
    .local v7, msgGroupId:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14465
    const-wide/16 v14, 0x1

    add-long/2addr v2, v14

    move-wide v5, v7

    .end local v7           #msgGroupId:J
    .restart local v5       #msgGroupId:J
    goto :goto_4

    .line 14470
    .end local v2           #i:J
    .end local v12           #recipients:Lcom/android/mms/data/ContactList;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedSMSMsgIds:Ljava/util/HashSet;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10600(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashSet;

    move-result-object v14

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 14473
    .end local v5           #msgGroupId:J
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedMMSMsgIds:Ljava/util/HashSet;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10700(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashSet;

    move-result-object v14

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14474
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedMMSThreadIds:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10800(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashMap;

    move-result-object v14

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 14486
    .end local v9           #msgId:J
    .end local v11           #msgType:Ljava/lang/String;
    .end local v13           #type:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v15, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->moveMsgCount:I
    invoke-static {v14, v15}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10902(Lcom/android/mms/ui/ComposeMessageFragment;I)I

    .line 14488
    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;)V

    .line 14532
    .local v4, moveMsgsThread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 14533
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v15, v15, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    const v18, 0x7f0c0325

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v15 .. v18}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v15

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->moveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v14, v15}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11102(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 14535
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->moveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto/16 :goto_3
.end method
