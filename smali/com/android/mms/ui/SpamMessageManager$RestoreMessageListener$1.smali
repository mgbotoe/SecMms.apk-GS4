.class Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;
.super Ljava/lang/Object;
.source "SpamMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1523
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 51

    .prologue
    .line 1525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoreUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1900(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1900(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xca

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1530
    :cond_0
    const-string v3, "mms"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2200(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1531
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v44

    .line 1532
    .local v44, p:Lcom/google/android/mms/pdu/PduPersister;
    const/16 v32, 0x0

    .line 1534
    .local v32, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoreUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v45

    .line 1535
    .local v45, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v43

    .line 1537
    .local v43, mmsUri:Landroid/net/Uri;
    sget-object v3, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2200(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-wide v6, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1539
    .local v5, SpammsgUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v4, v4, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v10, "read"

    aput-object v10, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 1544
    if-eqz v32, :cond_1

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1545
    const-string v3, "read"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1546
    new-instance v16, Landroid/content/ContentValues;

    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1547
    .local v16, values:Landroid/content/ContentValues;
    const-string v3, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1548
    const-string v3, "seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1559
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    if-eqz v32, :cond_2

    .line 1560
    .end local v5           #SpammsgUri:Landroid/net/Uri;
    .end local v43           #mmsUri:Landroid/net/Uri;
    .end local v45           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :goto_1
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 1578
    .end local v32           #cursor:Landroid/database/Cursor;
    .end local v44           #p:Lcom/google/android/mms/pdu/PduPersister;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$2000(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    move-result-object v6

    const/16 v7, 0x70b

    new-instance v8, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v3, 0x0

    const/4 v10, 0x1

    invoke-direct {v8, v3, v4, v10}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoreUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1739
    :goto_3
    return-void

    .line 1552
    .restart local v5       #SpammsgUri:Landroid/net/Uri;
    .restart local v32       #cursor:Landroid/database/Cursor;
    .restart local v43       #mmsUri:Landroid/net/Uri;
    .restart local v44       #p:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v45       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    move-object/from16 v0, v45

    move-object/from16 v1, v43

    #calls: Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformationMMS(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V
    invoke-static {v3, v0, v1}, Lcom/android/mms/ui/SpamMessageManager;->access$2300(Lcom/android/mms/ui/SpamMessageManager;Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V

    .line 1553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotificationsForMarkAsRead(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1556
    .end local v5           #SpammsgUri:Landroid/net/Uri;
    .end local v43           #mmsUri:Landroid/net/Uri;
    .end local v45           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :catch_0
    move-exception v33

    .line 1557
    .local v33, e:Lcom/google/android/mms/MmsException;
    :try_start_2
    const-string v3, "Mms/SpamMessageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS restore failed !!!! MmsException ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1559
    if-eqz v32, :cond_2

    goto :goto_1

    .end local v33           #e:Lcom/google/android/mms/MmsException;
    :catchall_0
    move-exception v3

    if-eqz v32, :cond_4

    .line 1560
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 1559
    :cond_4
    throw v3

    .line 1563
    .end local v32           #cursor:Landroid/database/Cursor;
    .end local v44           #p:Lcom/google/android/mms/pdu/PduPersister;
    :cond_5
    new-instance v16, Landroid/content/ContentValues;

    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1564
    .restart local v16       #values:Landroid/content/ContentValues;
    const-string v3, "teleservice_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2200(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mTeleserviceId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1565
    const-string v3, "link_url"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2200(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mLinkUrl:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2200(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v8, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2200(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v9, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2200(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2200(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget v12, v3, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    #calls: Lcom/android/mms/ui/SpamMessageManager;->addMessageToUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;
    invoke-static/range {v6 .. v16}, Lcom/android/mms/ui/SpamMessageManager;->access$2400(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;

    .line 1571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2200(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget v3, v3, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    if-nez v3, :cond_2

    .line 1572
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2200(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v6}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2200(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    #getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v7}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2200(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v7

    iget-wide v10, v7, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    #calls: Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    invoke-static {v3, v4, v6, v7}, Lcom/android/mms/ui/SpamMessageManager;->access$2500(Lcom/android/mms/ui/SpamMessageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotificationsForMarkAsRead(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 1594
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_6
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 1595
    .local v30, arrayRestoreUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 1596
    .local v29, arrayRestoreMTypList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1597
    .local v23, arrayRestoreMAddrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1598
    .local v24, arrayRestoreMBodyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1599
    .local v28, arrayRestoreMTimeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1600
    .local v26, arrayRestoreMReadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1601
    .local v27, arrayRestoreMTIDList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1602
    .local v25, arrayRestoreMLinkUrlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v47, 0x0

    .line 1603
    .local v47, sizeCheckedMsg:I
    const/16 v46, 0x0

    .line 1605
    .local v46, restoreCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1900(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1900(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xca

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1609
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v32

    .line 1610
    .restart local v32       #cursor:Landroid/database/Cursor;
    if-eqz v32, :cond_a

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1611
    const/16 v31, 0x0

    .line 1612
    .local v31, checked:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCheckedCount()I

    move-result v47

    .line 1613
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->getCount()I

    move-result v48

    .line 1614
    .local v48, sizeCursor:I
    const/16 v34, 0x0

    .local v34, i:I
    :goto_4
    move/from16 v0, v34

    move/from16 v1, v48

    if-ge v0, v1, :cond_a

    .line 1615
    const/16 v37, 0x0

    .line 1616
    .local v37, idxMsgType:I
    const/16 v36, 0x1

    .line 1619
    .local v36, idxMsgId:I
    :try_start_3
    const-string v3, "transport_type"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v37

    .line 1623
    :goto_5
    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 1626
    .local v50, szMessageType:Ljava/lang/String;
    :try_start_4
    const-string v3, "_id"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v36

    .line 1631
    :goto_6
    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    .line 1633
    .local v39, lMessageId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$100(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v3

    move-wide/from16 v0, v39

    move-object/from16 v2, v50

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/mms/ui/SpamMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v31

    .line 1635
    if-nez v31, :cond_8

    .line 1636
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    .line 1614
    :goto_7
    add-int/lit8 v34, v34, 0x1

    goto :goto_4

    .line 1620
    .end local v39           #lMessageId:J
    .end local v50           #szMessageType:Ljava/lang/String;
    :catch_1
    move-exception v33

    .line 1621
    .local v33, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "colsMap"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1627
    .end local v33           #e:Ljava/lang/IllegalArgumentException;
    .restart local v50       #szMessageType:Ljava/lang/String;
    :catch_2
    move-exception v33

    .line 1628
    .restart local v33       #e:Ljava/lang/IllegalArgumentException;
    const-string v3, "colsMap"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1640
    .end local v33           #e:Ljava/lang/IllegalArgumentException;
    .restart local v39       #lMessageId:J
    :cond_8
    add-int/lit8 v46, v46, 0x1

    .line 1641
    const-string v3, "mms"

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1642
    sget-object v3, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v39

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 1643
    .local v20, restoreUri:Landroid/net/Uri;
    const-string v3, "read"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1649
    :goto_8
    const-string v3, "address"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1650
    const-string v3, "body"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1651
    const-string v3, "date"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1652
    move-object/from16 v0, v29

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1653
    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1654
    const-string v3, "teleservice_id"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1655
    const-string v3, "link_url"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1656
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_7

    .line 1645
    .end local v20           #restoreUri:Landroid/net/Uri;
    :cond_9
    sget-object v3, Landroid/provider/Telephony$SpamSms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v39

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 1646
    .restart local v20       #restoreUri:Landroid/net/Uri;
    const-string v3, "read"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 1660
    .end local v20           #restoreUri:Landroid/net/Uri;
    .end local v31           #checked:Z
    .end local v34           #i:I
    .end local v36           #idxMsgId:I
    .end local v37           #idxMsgType:I
    .end local v39           #lMessageId:J
    .end local v48           #sizeCursor:I
    .end local v50           #szMessageType:Ljava/lang/String;
    :cond_a
    if-nez v46, :cond_c

    .line 1661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1900(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1900(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xcb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1664
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1900(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1$1;-><init>(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1736
    :cond_b
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotificationsForMarkAsRead(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 1674
    :cond_c
    const/16 v38, 0x0

    .local v38, j:I
    :goto_a
    move/from16 v0, v38

    move/from16 v1, v46

    if-ge v0, v1, :cond_10

    .line 1675
    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/String;

    .line 1676
    .restart local v50       #szMessageType:Ljava/lang/String;
    const-string v3, "mms"

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1677
    move-object/from16 v0, v30

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;

    .line 1678
    .restart local v20       #restoreUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v44

    .line 1680
    .restart local v44       #p:Lcom/google/android/mms/pdu/PduPersister;
    :try_start_5
    move-object/from16 v0, v44

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v45

    .line 1681
    .restart local v45       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v43

    .line 1683
    .restart local v43       #mmsUri:Landroid/net/Uri;
    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    .line 1684
    new-instance v16, Landroid/content/ContentValues;

    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1685
    .restart local v16       #values:Landroid/content/ContentValues;
    const-string v3, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1686
    const-string v3, "seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1674
    .end local v16           #values:Landroid/content/ContentValues;
    .end local v20           #restoreUri:Landroid/net/Uri;
    .end local v43           #mmsUri:Landroid/net/Uri;
    .end local v44           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v45           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_d
    :goto_b
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_a

    .line 1690
    .restart local v20       #restoreUri:Landroid/net/Uri;
    .restart local v43       #mmsUri:Landroid/net/Uri;
    .restart local v44       #p:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v45       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    move-object/from16 v0, v45

    move-object/from16 v1, v43

    #calls: Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformationMMS(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V
    invoke-static {v3, v0, v1}, Lcom/android/mms/ui/SpamMessageManager;->access$2300(Lcom/android/mms/ui/SpamMessageManager;Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V
    :try_end_5
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_b

    .line 1692
    .end local v43           #mmsUri:Landroid/net/Uri;
    .end local v45           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :catch_3
    move-exception v33

    .line 1693
    .local v33, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/SpamMessageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS restore failed !!!! MmsException ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1696
    .end local v20           #restoreUri:Landroid/net/Uri;
    .end local v33           #e:Lcom/google/android/mms/MmsException;
    .end local v44           #p:Lcom/google/android/mms/pdu/PduPersister;
    :cond_f
    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1697
    .local v8, szMessageAddress:Ljava/lang/String;
    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1698
    .local v9, szMessageBody:Ljava/lang/String;
    move-object/from16 v0, v28

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    .line 1699
    .local v41, lMessageTime:J
    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1700
    .local v12, iMessageRead:I
    move-object/from16 v0, v27

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v35

    .line 1701
    .local v35, iMessageTid:I
    move-object/from16 v0, v25

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/String;

    .line 1702
    .local v49, szMessageLinkUrl:Ljava/lang/String;
    new-instance v16, Landroid/content/ContentValues;

    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1703
    .restart local v16       #values:Landroid/content/ContentValues;
    const-string v3, "teleservice_id"

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1704
    const-string v3, "link_url"

    move-object/from16 v0, v16

    move-object/from16 v1, v49

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    #calls: Lcom/android/mms/ui/SpamMessageManager;->addMessageToUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;
    invoke-static/range {v6 .. v16}, Lcom/android/mms/ui/SpamMessageManager;->access$2400(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;

    .line 1710
    if-nez v12, :cond_d

    .line 1711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #calls: Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    invoke-static {v3, v8, v9, v4}, Lcom/android/mms/ui/SpamMessageManager;->access$2500(Lcom/android/mms/ui/SpamMessageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_b

    .line 1719
    .end local v8           #szMessageAddress:Ljava/lang/String;
    .end local v9           #szMessageBody:Ljava/lang/String;
    .end local v12           #iMessageRead:I
    .end local v16           #values:Landroid/content/ContentValues;
    .end local v35           #iMessageTid:I
    .end local v41           #lMessageTime:J
    .end local v49           #szMessageLinkUrl:Ljava/lang/String;
    .end local v50           #szMessageType:Ljava/lang/String;
    :cond_10
    const/16 v34, 0x0

    .restart local v34       #i:I
    :goto_c
    move/from16 v0, v34

    move/from16 v1, v46

    if-ge v0, v1, :cond_14

    .line 1720
    move-object/from16 v0, v30

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;

    .line 1721
    .restart local v20       #restoreUri:Landroid/net/Uri;
    if-eqz v20, :cond_13

    .line 1722
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$2000(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    move-result-object v17

    const/16 v18, 0x70b

    new-instance v19, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v6, 0x0

    add-int/lit8 v3, v46, -0x1

    move/from16 v0, v34

    if-ne v0, v3, :cond_12

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, v19

    invoke-direct {v0, v6, v7, v3}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v22}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1719
    :cond_11
    :goto_e
    add-int/lit8 v34, v34, 0x1

    goto :goto_c

    .line 1722
    :cond_12
    const/4 v3, 0x0

    goto :goto_d

    .line 1725
    :cond_13
    add-int/lit8 v3, v46, -0x1

    move/from16 v0, v34

    if-ne v0, v3, :cond_11

    .line 1726
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1900(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 1727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1900(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xcb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_e

    .line 1733
    .end local v20           #restoreUri:Landroid/net/Uri;
    :cond_14
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    .line 1734
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_9
.end method
