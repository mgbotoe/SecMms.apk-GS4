.class Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;
.super Ljava/lang/Object;
.source "ComposeMultiCopyToSim.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMultiCopyToSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopytoSIMMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMultiCopyToSim;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "uri"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 20
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    #getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$000(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 98
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 99
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    #getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$100(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Landroid/app/Activity;

    move-result-object v4

    const-string v17, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    move-object/from16 v18, v0

    #getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$100(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Landroid/app/Activity;

    move-result-object v18

    const v19, 0x7f0c0180

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v4, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, v3, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mCopytoSimProgressDialog:Landroid/app/ProgressDialog;

    .line 100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    #getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$100(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    #getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$100(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Landroid/app/Activity;

    move-result-object v4

    const v17, 0x7f0c0020

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 101
    .local v10, toastMemoryfullSIM:Landroid/widget/Toast;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    #getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$100(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    #getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$100(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Landroid/app/Activity;

    move-result-object v4

    const v17, 0x7f0c0192

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 102
    .local v9, toastSuccess:Landroid/widget/Toast;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    #getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$100(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    #getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$100(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Landroid/app/Activity;

    move-result-object v4

    const v17, 0x7f0c00a0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 106
    .local v11, toastFail:Landroid/widget/Toast;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    #getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$000(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v12

    .line 111
    .local v12, cursor:Landroid/database/Cursor;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v5, msgTimeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v8, msgTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v6, msgBodyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v7, msgAddressList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_2

    .line 117
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 119
    :cond_0
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 120
    .local v13, msgId:J
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 121
    .local v16, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    #getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$000(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v13, v14, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageItemPublic(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v15

    .line 123
    .local v15, msgItem:Lcom/android/mms/ui/MessageItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    #getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$000(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v13, v14, v0}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 136
    :cond_1
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 139
    .end local v13           #msgId:J
    .end local v15           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v16           #type:Ljava/lang/String;
    :cond_2
    new-instance v17, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;-><init>(Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/Toast;Landroid/widget/Toast;Landroid/widget/Toast;)V

    const-string v4, "copy all"

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    #getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$000(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setCopyToSimModeLayout(ZZ)V

    .line 160
    return-void

    .line 126
    .restart local v13       #msgId:J
    .restart local v15       #msgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v16       #type:Ljava/lang/String;
    :cond_3
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    :cond_4
    if-eqz v15, :cond_1

    .line 131
    iget-wide v3, v15, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v3, v15, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v3, v15, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
