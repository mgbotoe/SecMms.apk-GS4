.class Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SaveRestoreOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/util/SaveRestoreOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/util/SaveRestoreOperation;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/util/SaveRestoreOperation;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    .line 161
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 162
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 19
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 166
    packed-switch p1, :pswitch_data_0

    .line 249
    .end local p2
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 168
    .restart local p2
    :pswitch_1
    const/4 v13, 0x0

    .line 169
    .local v13, saveError:Z
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-lez v14, :cond_0

    .line 170
    const/4 v8, 0x0

    .line 171
    .local v8, filepath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v14, v14, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v7}, Lcom/samsung/mms/util/SaveRestoreOperation;->saveSmsToSdCard(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 173
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mSaveCompleteListener:Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;
    invoke-static {v14}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$000(Lcom/samsung/mms/util/SaveRestoreOperation;)Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mSaveCompleteListener:Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;
    invoke-static {v14}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$000(Lcom/samsung/mms/util/SaveRestoreOperation;)Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;

    move-result-object v14

    invoke-interface {v14}, Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;->onSaveCompleted()V

    .line 176
    :cond_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I
    invoke-static {v15}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$100(Lcom/samsung/mms/util/SaveRestoreOperation;)I

    move-result v15

    if-le v14, v15, :cond_2

    .line 177
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$200(Lcom/samsung/mms/util/SaveRestoreOperation;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 183
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v14}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$300(Lcom/samsung/mms/util/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v15}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$300(Lcom/samsung/mms/util/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0c03a5

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 180
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;
    invoke-static {v15}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$200(Lcom/samsung/mms/util/SaveRestoreOperation;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 185
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v14}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$300(Lcom/samsung/mms/util/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v15}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$300(Lcom/samsung/mms/util/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0c0397

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 191
    .end local v7           #filename:Ljava/lang/String;
    .end local v8           #filepath:Ljava/lang/String;
    .end local v13           #saveError:Z
    :pswitch_2
    if-eqz p3, :cond_4

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-lez v14, :cond_4

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    move-object/from16 v16, v0

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$100(Lcom/samsung/mms/util/SaveRestoreOperation;)I

    move-result v16

    add-int v15, v15, v16

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    move-object/from16 v16, v0

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$100(Lcom/samsung/mms/util/SaveRestoreOperation;)I

    move-result v16

    div-int v15, v15, v16

    #setter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mFileCount:I
    invoke-static {v14, v15}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$402(Lcom/samsung/mms/util/SaveRestoreOperation;I)I

    .line 194
    check-cast p2, [J

    .end local p2
    move-object/from16 v10, p2

    check-cast v10, [J

    .line 195
    .local v10, ids:[J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mIsThreadId:Z
    invoke-static {v15}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$500(Lcom/samsung/mms/util/SaveRestoreOperation;)Z

    move-result v15

    #calls: Lcom/samsung/mms/util/SaveRestoreOperation;->checkIfMmsInSelection([JZ)V
    invoke-static {v14, v10, v15}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$600(Lcom/samsung/mms/util/SaveRestoreOperation;[JZ)V

    goto/16 :goto_0

    .line 198
    .end local v10           #ids:[J
    .restart local p2
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    const/4 v15, 0x0

    #setter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mFileCount:I
    invoke-static {v14, v15}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$402(Lcom/samsung/mms/util/SaveRestoreOperation;I)I

    .line 199
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #calls: Lcom/samsung/mms/util/SaveRestoreOperation;->showNoSmsSelectedDialog()V
    invoke-static {v14}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$700(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    goto/16 :goto_0

    .line 204
    :pswitch_3
    check-cast p2, [J

    .end local p2
    move-object/from16 v10, p2

    check-cast v10, [J

    .line 205
    .restart local v10       #ids:[J
    if-eqz p3, :cond_5

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-lez v14, :cond_5

    .line 206
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #calls: Lcom/samsung/mms/util/SaveRestoreOperation;->showMmsSelectedDialog([J)V
    invoke-static {v14, v10}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$800(Lcom/samsung/mms/util/SaveRestoreOperation;[J)V

    goto/16 :goto_0

    .line 208
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mIsThreadId:Z
    invoke-static {v15}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$500(Lcom/samsung/mms/util/SaveRestoreOperation;)Z

    move-result v15

    #calls: Lcom/samsung/mms/util/SaveRestoreOperation;->showSavedMsgsListDialog([JZ)V
    invoke-static {v14, v10, v15}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$900(Lcom/samsung/mms/util/SaveRestoreOperation;[JZ)V

    goto/16 :goto_0

    .line 212
    .end local v10           #ids:[J
    .restart local p2
    :pswitch_4
    if-eqz p3, :cond_a

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-lez v14, :cond_a

    .line 214
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v12, noDuplicatesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    const-string v1, ""

    .line 216
    .local v1, bodyArray:Ljava/lang/String;
    const-string v2, ""

    .line 217
    .local v2, bodyString:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 218
    .local v3, dateArray:J
    const-wide/16 v5, 0x0

    .line 219
    .local v5, dateValue:J
    const/4 v11, 0x0

    .line 221
    .local v11, msgDuplicated:Z
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1000(Lcom/samsung/mms/util/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v9, v14, :cond_9

    .line 222
    const/4 v11, 0x0

    .line 223
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1000(Lcom/samsung/mms/util/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v14}, Lcom/samsung/mms/data/SavedSmsMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    .line 224
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1000(Lcom/samsung/mms/util/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v14}, Lcom/samsung/mms/data/SavedSmsMessage;->getDate()J

    move-result-wide v3

    .line 225
    const/4 v14, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 226
    :cond_6
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 227
    const-string v14, "body"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 228
    const-string v14, "date"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    cmp-long v14, v3, v5

    if-nez v14, :cond_6

    .line 231
    const-string v14, "Mms/SaveRestoreOperation"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Message: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] is duplicated"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v11, 0x1

    .line 236
    :cond_7
    if-nez v11, :cond_8

    .line 237
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #getter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1000(Lcom/samsung/mms/util/SaveRestoreOperation;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 240
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    #setter for: Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v14, v12}, Lcom/samsung/mms/util/SaveRestoreOperation;->access$1002(Lcom/samsung/mms/util/SaveRestoreOperation;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 244
    .end local v1           #bodyArray:Ljava/lang/String;
    .end local v2           #bodyString:Ljava/lang/String;
    .end local v3           #dateArray:J
    .end local v5           #dateValue:J
    .end local v9           #i:I
    .end local v11           #msgDuplicated:Z
    .end local v12           #noDuplicatesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->this$0:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-virtual {v14}, Lcom/samsung/mms/util/SaveRestoreOperation;->restoreSmsFromSdCard()V

    goto/16 :goto_0

    .line 242
    :cond_a
    const-string v14, "Mms/SaveRestoreOperation"

    const-string v15, "Thread ids not found - there are no duplicated messages"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
