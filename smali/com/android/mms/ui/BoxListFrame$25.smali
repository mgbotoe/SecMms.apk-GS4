.class Lcom/android/mms/ui/BoxListFrame$25;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BoxListFrame;->moveSelectedMessages()V
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
    .line 3709
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3712
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v0

    .line 3714
    .local v0, count:I
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectedSMSMsgIds:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$5100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;

    move-result-object v8

    if-nez v8, :cond_1

    .line 3715
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mSelectedSMSMsgIds:Ljava/util/HashSet;
    invoke-static {v8, v9}, Lcom/android/mms/ui/BoxListFrame;->access$5102(Lcom/android/mms/ui/BoxListFrame;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 3719
    :goto_0
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectedMMSMsgIds:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$5200(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;

    move-result-object v8

    if-nez v8, :cond_2

    .line 3720
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mSelectedMMSMsgIds:Ljava/util/HashSet;
    invoke-static {v8, v9}, Lcom/android/mms/ui/BoxListFrame;->access$5202(Lcom/android/mms/ui/BoxListFrame;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 3721
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mSelectedMMSThreadIds:Ljava/util/HashMap;
    invoke-static {v8, v9}, Lcom/android/mms/ui/BoxListFrame;->access$5302(Lcom/android/mms/ui/BoxListFrame;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 3727
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_6

    .line 3728
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckStates:Landroid/util/SparseBooleanArray;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$3500(Lcom/android/mms/ui/BoxListFrame;)Landroid/util/SparseBooleanArray;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3729
    iget-object v9, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$400(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/Cursor;

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;
    invoke-static {v9, v8}, Lcom/android/mms/ui/BoxListFrame;->access$102(Lcom/android/mms/ui/BoxListFrame;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 3730
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$100(Lcom/android/mms/ui/BoxListFrame;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 3731
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$100(Lcom/android/mms/ui/BoxListFrame;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3732
    .local v4, msgType:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$100(Lcom/android/mms/ui/BoxListFrame;)Landroid/database/Cursor;

    move-result-object v8

    const/16 v9, 0x8

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 3734
    .local v2, mmsType:I
    const-string v8, "sms"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3735
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$100(Lcom/android/mms/ui/BoxListFrame;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3740
    .local v3, msgAddress:Ljava/lang/String;
    :goto_3
    if-eqz v3, :cond_0

    const-string v8, "CBmessages"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "Pushmessage"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3727
    .end local v2           #mmsType:I
    .end local v3           #msgAddress:Ljava/lang/String;
    .end local v4           #msgType:Ljava/lang/String;
    :cond_0
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3717
    .end local v1           #i:I
    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectedSMSMsgIds:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$5100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    goto/16 :goto_0

    .line 3723
    :cond_2
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectedMMSMsgIds:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$5200(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 3724
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectedMMSThreadIds:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$5300(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_1

    .line 3737
    .restart local v1       #i:I
    .restart local v2       #mmsType:I
    .restart local v4       #msgType:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$100(Lcom/android/mms/ui/BoxListFrame;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 3738
    .local v6, threadId:J
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$5400(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6, v7}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #msgAddress:Ljava/lang/String;
    goto :goto_3

    .line 3743
    .end local v6           #threadId:J
    :cond_4
    const-string v8, "sms"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3744
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectedSMSMsgIds:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$5100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/android/mms/ui/BoxListFrame;->access$100(Lcom/android/mms/ui/BoxListFrame;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3745
    :cond_5
    const-string v8, "mms"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3746
    const/16 v8, 0x82

    if-eq v2, v8, :cond_0

    .line 3747
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectedMMSMsgIds:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$5200(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/android/mms/ui/BoxListFrame;->access$100(Lcom/android/mms/ui/BoxListFrame;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3748
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectedMMSThreadIds:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$5300(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/android/mms/ui/BoxListFrame;->access$100(Lcom/android/mms/ui/BoxListFrame;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/android/mms/ui/BoxListFrame;->access$100(Lcom/android/mms/ui/BoxListFrame;)Landroid/database/Cursor;

    move-result-object v10

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 3755
    .end local v2           #mmsType:I
    .end local v3           #msgAddress:Ljava/lang/String;
    .end local v4           #msgType:Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectedSMSMsgIds:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$5100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectedMMSMsgIds:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$5200(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectedMMSThreadIds:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$5300(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3756
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v8

    const v9, 0x7f0c0328

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 3813
    :goto_5
    return-void

    .line 3760
    :cond_7
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    const/4 v9, 0x0

    #setter for: Lcom/android/mms/ui/BoxListFrame;->moveMsgCount:I
    invoke-static {v8, v9}, Lcom/android/mms/ui/BoxListFrame;->access$5502(Lcom/android/mms/ui/BoxListFrame;I)I

    .line 3762
    new-instance v5, Lcom/android/mms/ui/BoxListFrame$25$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/BoxListFrame$25$1;-><init>(Lcom/android/mms/ui/BoxListFrame$25;)V

    .line 3806
    .local v5, t:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 3809
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    new-instance v9, Landroid/app/ProgressDialog;

    iget-object v10, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/mms/ui/BoxListFrame;->moveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8, v9}, Lcom/android/mms/ui/BoxListFrame;->access$5702(Lcom/android/mms/ui/BoxListFrame;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 3810
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->moveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$5700(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/ProgressDialog;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v9}, Lcom/android/mms/ui/BoxListFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0325

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3811
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->moveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$5700(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->show()V

    .line 3812
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$25;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->moveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$5700(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/ProgressDialog;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_5
.end method
