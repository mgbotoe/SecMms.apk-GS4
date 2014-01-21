.class public Lcom/android/mms/ui/ComposeDeleteMessage;
.super Ljava/lang/Object;
.source "ComposeDeleteMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ComposeDeleteMessage$CancelMessageListener;,
        Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/DeleteMessage"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field protected mCancelConfirmDialog:Landroid/content/DialogInterface;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field protected mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mDeleteLocked:Z

.field private mDeleteUri:Landroid/net/Uri;

.field private mHasLockedMessage:Z


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 2
    .parameter "composer"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    .line 37
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mHasLockedMessage:Z

    .line 47
    iput-object p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 48
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 49
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ComposeDeleteMessage;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ComposeDeleteMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/ComposeDeleteMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/mms/ui/ComposeDeleteMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mHasLockedMessage:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ComposeDeleteMessage;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private static confirmCancelDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;
    .locals 3
    .parameter "activity"
    .parameter "listener"
    .parameter "locked"

    .prologue
    .line 394
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 395
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c012f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 397
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 398
    if-eqz p2, :cond_0

    const v1, 0x7f0c0354

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 400
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 401
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 402
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 398
    :cond_0
    const v1, 0x7f0c0353

    goto :goto_0
.end method

.method private static confirmDeleteDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;
    .locals 3
    .parameter "activity"
    .parameter "listener"
    .parameter "locked"

    .prologue
    .line 277
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 280
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 281
    if-eqz p2, :cond_0

    const v1, 0x7f0c0078

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 283
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 284
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 281
    :cond_0
    const v1, 0x7f0c0077

    goto :goto_0
.end method

.method public static confirmDeleteMessageDialog(Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;ZZLandroid/content/Context;II)Landroid/app/AlertDialog;
    .locals 7
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "hasLockedMessages"
    .parameter "context"
    .parameter "resourceId"
    .parameter "lockResourceId"

    .prologue
    const/4 v6, 0x0

    .line 248
    const v4, 0x7f04002f

    invoke-static {p3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 249
    .local v3, contents:Landroid/view/View;
    const v4, 0x7f0b0105

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 250
    .local v2, checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v4, 0x7f0b0104

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 251
    .local v0, bodyMessage:Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 252
    invoke-virtual {v2, p5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setText(I)V

    .line 253
    if-nez p2, :cond_0

    .line 254
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 264
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_1

    const v4, 0x7f0c0076

    :goto_1
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 256
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 257
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->setDeleteLockedMessage(Z)V

    .line 258
    new-instance v4, Lcom/android/mms/ui/ComposeDeleteMessage$1;

    invoke-direct {v4, p0, v2}, Lcom/android/mms/ui/ComposeDeleteMessage$1;-><init>(Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 265
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    const v4, 0x7f0c0075

    goto :goto_1
.end method


# virtual methods
.method public clearConfirmDeleteDlg()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 59
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 62
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    .line 63
    return-void
.end method

.method public deleteMessage()V
    .locals 22

    .prologue
    .line 289
    const-string v5, "Mms/DeleteMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteMessage() mDeleteUri="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getBackgroundQueryHandler()Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    move-result-object v4

    .line 292
    .local v4, queryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    if-eqz v5, :cond_2

    .line 293
    const/16 v5, 0x25e4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 361
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/mms/data/Conversation;->removeCache(J)V

    .line 362
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/mms/ui/ComposeDeleteMessage$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/mms/ui/ComposeDeleteMessage$2;-><init>(Lcom/android/mms/ui/ComposeDeleteMessage;)V

    const-wide/16 v8, 0x96

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteWithAnimation(Z)V

    .line 370
    return-void

    .line 293
    :cond_1
    const-string v8, "locked=0"

    goto :goto_0

    .line 296
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 297
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mHasLockedMessage:Z

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    if-eqz v5, :cond_4

    .line 298
    :cond_3
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    .line 303
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v17

    .line 304
    .local v17, threadId:J
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 305
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getBackgroundQueryHandler()Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    move-result-object v5

    const/16 v6, 0x70a

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    const/4 v9, 0x1

    new-instance v20, Lcom/android/mms/ui/DeleteInfo;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    move-object/from16 v0, v20

    invoke-static {v5, v6, v8, v9, v0}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;)V

    goto/16 :goto_1

    .line 300
    .end local v17           #threadId:J
    :cond_4
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    goto :goto_2

    .line 308
    .restart local v17       #threadId:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getBackgroundQueryHandler()Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    move-result-object v5

    const/16 v6, 0x70a

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    const/4 v9, 0x0

    new-instance v20, Lcom/android/mms/ui/DeleteInfo;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    move-object/from16 v0, v20

    invoke-static {v5, v6, v8, v9, v0}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;)V

    goto/16 :goto_1

    .line 312
    .end local v17           #threadId:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    .line 317
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 319
    .local v11, deleteCount:I
    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 321
    :cond_7
    const/4 v5, 0x1

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 322
    .local v15, msgId:J
    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 323
    .local v19, type:Ljava/lang/String;
    const/16 v5, 0x15

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 325
    .local v12, groupId:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v5

    move-wide v0, v15

    move-object/from16 v2, v19

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 352
    :cond_8
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 355
    .end local v12           #groupId:J
    .end local v15           #msgId:J
    .end local v19           #type:Ljava/lang/String;
    :cond_9
    if-nez v11, :cond_0

    .line 356
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z

    goto/16 :goto_1

    .line 328
    .restart local v12       #groupId:J
    .restart local v15       #msgId:J
    .restart local v19       #type:Ljava/lang/String;
    :cond_a
    const/16 v5, 0x14

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_c

    const/4 v14, 0x1

    .line 330
    .local v14, locked:Z
    :goto_4
    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    if-eqz v5, :cond_8

    .line 333
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 334
    const-string v5, "mms"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 335
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 349
    .local v7, deleteUri:Landroid/net/Uri;
    :goto_5
    const/16 v5, 0x25e4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    if-eqz v8, :cond_10

    const/4 v8, 0x0

    :goto_6
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 328
    .end local v7           #deleteUri:Landroid/net/Uri;
    .end local v14           #locked:Z
    :cond_c
    const/4 v14, 0x0

    goto :goto_4

    .line 336
    .restart local v14       #locked:Z
    :cond_d
    const-string v5, "wpm"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 337
    sget-object v5, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .restart local v7       #deleteUri:Landroid/net/Uri;
    goto :goto_5

    .line 341
    .end local v7           #deleteUri:Landroid/net/Uri;
    :cond_e
    cmp-long v5, v15, v12

    if-nez v5, :cond_f

    .line 342
    sget-object v5, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .restart local v7       #deleteUri:Landroid/net/Uri;
    goto :goto_5

    .line 345
    .end local v7           #deleteUri:Landroid/net/Uri;
    :cond_f
    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .restart local v7       #deleteUri:Landroid/net/Uri;
    goto :goto_5

    .line 349
    :cond_10
    const-string v8, "locked=0"

    goto :goto_6
.end method

.method public deleteSelectedMessages()V
    .locals 15

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 182
    const-string v0, "Mms/DeleteMessage"

    const-string v3, "deleteSelectedMessages()"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListView()Lcom/android/mms/ui/MessageListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v7

    .line 192
    .local v7, count:I
    const/4 v2, 0x0

    .line 193
    .local v2, hasLockedMessage:Z
    const/4 v11, 0x0

    .line 196
    .local v11, lockedMessageCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v7, :cond_3

    .line 197
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListView()Lcom/android/mms/ui/MessageListView;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/mms/ui/MessageListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 198
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 196
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 201
    :cond_2
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 202
    .local v12, msgId:J
    const/16 v0, 0x14

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    move v10, v5

    .line 203
    .local v10, locked:Z
    :goto_2
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 205
    .local v14, msgType:Ljava/lang/String;
    if-ne v10, v5, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0, v12, v13, v14}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    const/4 v2, 0x1

    .line 207
    add-int/lit8 v11, v11, 0x1

    .line 208
    if-le v11, v5, :cond_1

    .line 214
    .end local v6           #c:Landroid/database/Cursor;
    .end local v10           #locked:Z
    .end local v12           #msgId:J
    .end local v14           #msgType:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_4

    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 216
    :cond_4
    new-instance v0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v2}, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;Z)V

    iget-object v3, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v4

    if-ne v4, v5, :cond_6

    const v4, 0x7f0c0077

    :goto_3
    if-le v11, v5, :cond_7

    const v5, 0x7f0c0213

    :goto_4
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeDeleteMessage;->confirmDeleteMessageDialog(Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;ZZLandroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v8

    .line 222
    .local v8, dlg:Landroid/app/AlertDialog;
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 223
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 224
    iput-object v8, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    goto :goto_0

    .end local v8           #dlg:Landroid/app/AlertDialog;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v12       #msgId:J
    :cond_5
    move v10, v1

    .line 202
    goto :goto_2

    .line 216
    .end local v6           #c:Landroid/database/Cursor;
    .end local v12           #msgId:J
    :cond_6
    const v4, 0x7f0c0177

    goto :goto_3

    :cond_7
    const v5, 0x7f0c0212

    goto :goto_4
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    .line 54
    return-void
.end method

.method public showCancelConfirmDlg(Lcom/android/mms/ui/MessageItem;Landroid/net/Uri;)V
    .locals 4
    .parameter "msgItem"
    .parameter "uri"

    .prologue
    .line 383
    new-instance v1, Lcom/android/mms/ui/ComposeDeleteMessage$CancelMessageListener;

    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-direct {v1, p0, p2, v2}, Lcom/android/mms/ui/ComposeDeleteMessage$CancelMessageListener;-><init>(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;Z)V

    .line 385
    .local v1, l:Lcom/android/mms/ui/ComposeDeleteMessage$CancelMessageListener;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    iget-boolean v3, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-static {v2, v1, v3}, Lcom/android/mms/ui/ComposeDeleteMessage;->confirmCancelDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    .line 388
    .local v0, dlg:Landroid/app/AlertDialog;
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 389
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 390
    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    .line 391
    return-void
.end method

.method public showDeleteConfirmDlg(Landroid/database/Cursor;)V
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 228
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    const/16 v2, 0x14

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_3

    move v5, v1

    .line 233
    .local v5, locked:Z
    :goto_1
    const/16 v2, 0x15

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 235
    .local v6, groupId:J
    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_2

    .line 236
    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 237
    :cond_2
    new-instance v0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeDeleteMessage;JLjava/lang/String;ZJ)V

    .line 240
    .local v0, l:Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, v5}, Lcom/android/mms/ui/ComposeDeleteMessage;->confirmDeleteDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;

    move-result-object v8

    .line 241
    .local v8, dlg:Landroid/app/AlertDialog;
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 242
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 243
    iput-object v8, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    goto :goto_0

    .end local v0           #l:Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;
    .end local v5           #locked:Z
    .end local v6           #groupId:J
    .end local v8           #dlg:Landroid/app/AlertDialog;
    :cond_3
    move v5, v4

    .line 232
    goto :goto_1
.end method

.method public showDeleteConfirmDlg(Lcom/android/mms/ui/MessageItem;Landroid/net/Uri;)V
    .locals 4
    .parameter "msgItem"
    .parameter "uri"

    .prologue
    .line 373
    new-instance v1, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;

    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-direct {v1, p0, p2, v2}, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;Z)V

    .line 375
    .local v1, l:Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_0

    .line 376
    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 377
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    iget-boolean v3, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-static {v2, v1, v3}, Lcom/android/mms/ui/ComposeDeleteMessage;->confirmDeleteDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    .line 378
    .local v0, dlg:Landroid/app/AlertDialog;
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 379
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 380
    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 381
    return-void
.end method
