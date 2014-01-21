.class public Lcom/android/mms/transaction/MessageReservationSendReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessageReservationSendReceiver.java"


# static fields
.field private static final ACTION_SEND_RESERVATION:Ljava/lang/String; = "com.android.mms.Intent.ACTION_SEND_RESERVATION"

.field private static final TAG:Ljava/lang/String; = "MessageReservationSendReceiver"

.field private static mContext:Landroid/content/Context;

.field private static mReservationManager:Lcom/android/mms/transaction/ReservationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    .line 35
    sput-object v0, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mReservationManager:Lcom/android/mms/transaction/ReservationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;J)J
    .locals 8
    .parameter "type"
    .parameter "messageId"

    .prologue
    .line 66
    const-string v5, "MessageReservationSendReceiver"

    const-string v6, "sendMessage()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v5, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 70
    .local v3, pm:Landroid/os/PowerManager;
    const/4 v5, 0x1

    const-string v6, "ReservationManager"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 71
    .local v4, wakelock:Landroid/os/PowerManager$WakeLock;
    const/16 v0, 0x1388

    .line 72
    .local v0, WAKELOCK_DURATION:I
    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 74
    const-wide/16 v1, -0x1

    .line 75
    .local v1, lretDeliveryTime:J
    const-string v5, "sms"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->sendSmsMessage(Ljava/lang/String;J)J

    move-result-wide v1

    .line 81
    :cond_0
    :goto_0
    const-string v5, "MessageReservationSendReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lretDeliveryTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v5, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 85
    return-wide v1

    .line 77
    :cond_1
    const-string v5, "mms"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->sendMmsMessage(Ljava/lang/String;J)J

    move-result-wide v1

    goto :goto_0
.end method

.method private sendMmsMessage(Ljava/lang/String;J)J
    .locals 24
    .parameter "type"
    .parameter "messageId"

    .prologue
    .line 177
    const-string v3, "MessageReservationSendReceiver"

    const-string v7, "sendMmsMessage()"

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-wide/16 v17, -0x1

    .line 180
    .local v17, lretDeliveryTime:J
    const-wide/16 v19, -0x1

    .line 182
    .local v19, lretReserved:J
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 183
    .local v4, messageUri:Landroid/net/Uri;
    const-string v3, "MessageReservationSendReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "sendMmsMessage()- messageUri = "

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/16 v3, 0x9

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    const-string v7, "thread_id"

    aput-object v7, v5, v3

    const/4 v3, 0x2

    const-string v7, "date"

    aput-object v7, v5, v3

    const/4 v3, 0x3

    const-string v7, "m_type"

    aput-object v7, v5, v3

    const/4 v3, 0x4

    const-string v7, "msg_box"

    aput-object v7, v5, v3

    const/4 v3, 0x5

    const-string v7, "m_size"

    aput-object v7, v5, v3

    const/4 v3, 0x6

    const-string v7, "d_rpt"

    aput-object v7, v5, v3

    const/4 v3, 0x7

    const-string v7, "rr"

    aput-object v7, v5, v3

    const/16 v3, 0x8

    const-string v7, "reserved"

    aput-object v7, v5, v3

    .line 185
    .local v5, project:[Ljava/lang/String;
    const-string v6, "reserved=1"

    .line 186
    .local v6, szWhere:Ljava/lang/String;
    const-string v8, "date ASC"

    .line 187
    .local v8, szSort:Ljava/lang/String;
    sget-object v3, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 189
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 190
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 191
    const-string v3, "_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 192
    .local v15, l_id:J
    const-string v3, "thread_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 193
    .local v13, lThreadId:J
    const-string v3, "m_size"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 195
    .local v11, iMsgSize:I
    const-string v3, "date"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 196
    const-string v3, "reserved"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 199
    sget-object v3, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/util/NetworkConnectionUtils;->isMmsNetworkAvailable(Landroid/content/Context;)Z

    move-result v12

    .line 200
    .local v12, isAvailable:Z
    const-string v3, "MessageReservationSendReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "sendMmsMessage()- isavailable = "

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    if-nez v12, :cond_2

    .line 203
    const-string v3, "MessageReservationSendReceiver"

    const-string v7, "sendMmsMessage() is rejected...."

    invoke-static {v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v3, "MessageReservationSendReceiver"

    const-string v7, "sendMmsMessage()- isavailable = false "

    invoke-static {v3, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->failSendMessageMMS(Landroid/net/Uri;J)Z

    .line 223
    :goto_0
    const-wide/16 v22, 0x3e8

    mul-long v17, v17, v22

    .line 226
    .end local v11           #iMsgSize:I
    .end local v12           #isAvailable:Z
    .end local v13           #lThreadId:J
    .end local v15           #l_id:J
    :cond_0
    if-eqz v9, :cond_1

    .line 227
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 230
    :cond_1
    return-wide v17

    .line 209
    .restart local v11       #iMsgSize:I
    .restart local v12       #isAvailable:Z
    .restart local v13       #lThreadId:J
    .restart local v15       #l_id:J
    :cond_2
    new-instance v21, Lcom/android/mms/transaction/MmsMessageSender;

    sget-object v3, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    int-to-long v0, v11

    move-wide/from16 v22, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 211
    .local v21, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    move-object/from16 v0, v21

    invoke-interface {v0, v13, v14}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v3

    if-nez v3, :cond_3

    .line 214
    sget-object v3, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v3, v7, v4, v0, v1}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 217
    :cond_3
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v3

    sget-object v7, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7, v13, v14}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v10

    .line 219
    .local v10, e:Ljava/lang/Exception;
    const-string v3, "MessageReservationSendReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to send message: "

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v22, ", threadId="

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendSameTimeMessages(JLjava/lang/String;J)V
    .locals 19
    .parameter "baseTime"
    .parameter "excludeMsgType"
    .parameter "excludeMessageId"

    .prologue
    .line 234
    const-string v1, "MessageReservationSendReceiver"

    const-string v5, "sendSameTimeMessages()"

    invoke-static {v1, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "complete-conversations"

    invoke-static {v1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 238
    .local v16, uri:Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "limit"

    const-string v17, "all"

    move-object/from16 v0, v17

    invoke-virtual {v1, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 239
    .local v2, uriContent:Landroid/net/Uri;
    const/16 v1, 0x8

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v1

    const/4 v1, 0x1

    const-string v5, "date"

    aput-object v5, v3, v1

    const/4 v1, 0x2

    const-string v5, "type"

    aput-object v5, v3, v1

    const/4 v1, 0x3

    const-string v5, "status"

    aput-object v5, v3, v1

    const/4 v1, 0x4

    const-string v5, "reserved"

    aput-object v5, v3, v1

    const/4 v1, 0x5

    const-string v5, "m_type"

    aput-object v5, v3, v1

    const/4 v1, 0x6

    const-string v5, "msg_box"

    aput-object v5, v3, v1

    const/4 v1, 0x7

    const-string v5, "reserved"

    aput-object v5, v3, v1

    .line 250
    .local v3, project:[Ljava/lang/String;
    const-string v4, "reserved = 1"

    .line 251
    .local v4, szWhere:Ljava/lang/String;
    const-string v6, "normalized_date ASC"

    .line 252
    .local v6, szSort:Ljava/lang/String;
    sget-object v1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 255
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_6

    .line 256
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 257
    const-string v15, "sms"

    .line 258
    .local v15, szTypeInDB:Ljava/lang/String;
    const-wide/16 v13, 0x0

    .line 259
    .local v13, lMsgIdInDB:J
    const-wide/16 v11, 0x0

    .line 261
    .local v11, lDeliveryTimeInDB:J
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_6

    .line 263
    const-wide/16 v13, 0x0

    .line 264
    const-wide/16 v11, 0x0

    .line 265
    const-string v1, "type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_2

    const-string v15, "sms"

    .line 266
    :goto_1
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 267
    const-string v1, "date"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 269
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    cmp-long v1, v13, p4

    if-nez v1, :cond_3

    .line 261
    :cond_0
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    .end local v11           #lDeliveryTimeInDB:J
    .end local v13           #lMsgIdInDB:J
    .end local v15           #szTypeInDB:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 286
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "MessageReservationSendReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "sendSameTimemessages()"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    if-eqz v7, :cond_1

    .line 289
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 292
    .end local v8           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-void

    .line 265
    .restart local v11       #lDeliveryTimeInDB:J
    .restart local v13       #lMsgIdInDB:J
    .restart local v15       #szTypeInDB:Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v15, "mms"

    goto :goto_1

    .line 272
    :cond_3
    const-wide/16 v9, 0x0

    .line 273
    .local v9, lDeliveryTime:J
    const-string v1, "mms"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 274
    const-wide/16 v17, 0x3e8

    mul-long v9, v11, v17

    .line 279
    :goto_4
    cmp-long v1, v9, p1

    if-gtz v1, :cond_0

    .line 280
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13, v14}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->sendMessage(Ljava/lang/String;J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 288
    .end local v9           #lDeliveryTime:J
    .end local v11           #lDeliveryTimeInDB:J
    .end local v13           #lMsgIdInDB:J
    .end local v15           #szTypeInDB:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    .line 289
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 276
    .restart local v9       #lDeliveryTime:J
    .restart local v11       #lDeliveryTimeInDB:J
    .restart local v13       #lMsgIdInDB:J
    .restart local v15       #szTypeInDB:Ljava/lang/String;
    :cond_5
    move-wide v9, v11

    goto :goto_4

    .line 288
    .end local v9           #lDeliveryTime:J
    .end local v11           #lDeliveryTimeInDB:J
    .end local v13           #lMsgIdInDB:J
    .end local v15           #szTypeInDB:Ljava/lang/String;
    :cond_6
    if-eqz v7, :cond_1

    .line 289
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method private sendSmsMessage(Ljava/lang/String;J)J
    .locals 26
    .parameter "type"
    .parameter "messageId"

    .prologue
    .line 89
    const-string v2, "MessageReservationSendReceiver"

    const-string v6, "sendSmsMessage()"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-wide/16 v22, -0x1

    .line 92
    .local v22, lretDeliveryTime:J
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 93
    .local v3, messageUri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 94
    .local v4, project:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    const/16 v2, 0xa

    new-array v4, v2, [Ljava/lang/String;

    .end local v4           #project:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "thread_id"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "address"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "date"

    aput-object v6, v4, v2

    const/4 v2, 0x4

    const-string v6, "locked"

    aput-object v6, v4, v2

    const/4 v2, 0x5

    const-string v6, "body"

    aput-object v6, v4, v2

    const/4 v2, 0x6

    const-string v6, "type"

    aput-object v6, v4, v2

    const/4 v2, 0x7

    const-string v6, "status"

    aput-object v6, v4, v2

    const/16 v2, 0x8

    const-string v6, "reserved"

    aput-object v6, v4, v2

    const/16 v2, 0x9

    const-string v6, "svc_cmd"

    aput-object v6, v4, v2

    .line 105
    .restart local v4       #project:[Ljava/lang/String;
    :goto_0
    const-string v5, "reserved=1"

    .line 106
    .local v5, szWhere:Ljava/lang/String;
    const-string v7, "date ASC"

    .line 108
    .local v7, szSort:Ljava/lang/String;
    sget-object v2, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 110
    .local v19, cursor:Landroid/database/Cursor;
    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 112
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 114
    const-wide/16 v16, 0x0

    .line 115
    .local v16, lThreadId:J
    const-string v25, ""

    .line 116
    .local v25, szRecipients:Ljava/lang/String;
    const-string v15, ""

    .line 117
    .local v15, szBody:Ljava/lang/String;
    const/4 v14, 0x0

    .line 118
    .local v14, szDests:[Ljava/lang/String;
    const/16 v18, 0x0

    .line 119
    .local v18, bLocked:Z
    const/16 v24, 0x0

    .line 122
    .local v24, svcCmd:I
    :try_start_0
    const-string v2, "thread_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 123
    const-string v2, "address"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 124
    const-string v2, "body"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 125
    const-string v2, ";"

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 126
    const-string v2, "date"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 127
    const-string v2, "locked"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    const/16 v18, 0x1

    .line 128
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    const-string v2, "svc_cmd"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v24

    .line 139
    :cond_0
    :goto_2
    sget-object v2, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mReservationManager:Lcom/android/mms/transaction/ReservationManager;

    sget-object v6, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/android/mms/transaction/ReservationManager;->getServiceState(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 141
    const-string v2, "MessageReservationSendReceiver"

    const-string v6, "sendSmsMessage() is rejected...."

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v11, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v11, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 144
    .local v11, values:Landroid/content/ContentValues;
    const-string v2, "type"

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    const-string v2, "reserved"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    sget-object v8, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v3

    invoke-static/range {v8 .. v13}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 169
    .end local v11           #values:Landroid/content/ContentValues;
    .end local v14           #szDests:[Ljava/lang/String;
    .end local v15           #szBody:Ljava/lang/String;
    .end local v16           #lThreadId:J
    .end local v18           #bLocked:Z
    .end local v24           #svcCmd:I
    .end local v25           #szRecipients:Ljava/lang/String;
    :cond_1
    :goto_3
    if-eqz v19, :cond_2

    .line 170
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_2
    return-wide v22

    .line 100
    .end local v5           #szWhere:Ljava/lang/String;
    .end local v7           #szSort:Ljava/lang/String;
    .end local v19           #cursor:Landroid/database/Cursor;
    :cond_3
    const/16 v2, 0x9

    new-array v4, v2, [Ljava/lang/String;

    .end local v4           #project:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "thread_id"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "address"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "date"

    aput-object v6, v4, v2

    const/4 v2, 0x4

    const-string v6, "locked"

    aput-object v6, v4, v2

    const/4 v2, 0x5

    const-string v6, "body"

    aput-object v6, v4, v2

    const/4 v2, 0x6

    const-string v6, "type"

    aput-object v6, v4, v2

    const/4 v2, 0x7

    const-string v6, "status"

    aput-object v6, v4, v2

    const/16 v2, 0x8

    const-string v6, "reserved"

    aput-object v6, v4, v2

    .restart local v4       #project:[Ljava/lang/String;
    goto/16 :goto_0

    .line 127
    .restart local v5       #szWhere:Ljava/lang/String;
    .restart local v7       #szSort:Ljava/lang/String;
    .restart local v14       #szDests:[Ljava/lang/String;
    .restart local v15       #szBody:Ljava/lang/String;
    .restart local v16       #lThreadId:J
    .restart local v18       #bLocked:Z
    .restart local v19       #cursor:Landroid/database/Cursor;
    .restart local v24       #svcCmd:I
    .restart local v25       #szRecipients:Ljava/lang/String;
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 133
    :catch_0
    move-exception v21

    .line 134
    .local v21, e1:Ljava/lang/Exception;
    const-string v2, "MessageReservationSendReceiver"

    const-string v6, "The exception is occurred in sendSmsMessage()"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 149
    .end local v21           #e1:Ljava/lang/Exception;
    :cond_5
    const/4 v12, 0x0

    .line 150
    .local v12, sender:Lcom/android/mms/transaction/MessageSender;
    new-instance v12, Lcom/android/mms/transaction/SmsMessageSender;

    .end local v12           #sender:Lcom/android/mms/transaction/MessageSender;
    sget-object v13, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-direct/range {v12 .. v17}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .restart local v12       #sender:Lcom/android/mms/transaction/MessageSender;
    move-object v2, v12

    .line 151
    check-cast v2, Lcom/android/mms/transaction/SmsMessageSender;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/mms/transaction/SmsMessageSender;->setLocked(Z)V

    .line 152
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 153
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v12

    .line 154
    check-cast v2, Lcom/android/mms/transaction/SmsMessageSender;

    const/4 v6, 0x0

    move/from16 v0, v24

    invoke-virtual {v2, v0, v6}, Lcom/android/mms/transaction/SmsMessageSender;->setServiceCommand(ILjava/lang/String;)V

    .line 158
    :cond_6
    :try_start_1
    move-wide/from16 v0, v16

    invoke-interface {v12, v0, v1}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 160
    sget-object v2, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v6, v3, v8, v9}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 162
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v2

    sget-object v6, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v6, v0, v1}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 163
    :catch_1
    move-exception v20

    .line 164
    .local v20, e:Ljava/lang/Exception;
    const-string v2, "MessageReservationSendReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to send SMS message, threadId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-static {v2, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method

.method private setNextAlarm(J)V
    .locals 19
    .parameter "baseTime"

    .prologue
    .line 295
    const-string v0, "MessageReservationSendReceiver"

    const-string v4, "setNextAlarm()"

    invoke-static {v0, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 299
    .local v16, uri:Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v6, "all"

    invoke-virtual {v0, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 301
    .local v1, uriContent:Landroid/net/Uri;
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "date"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "type"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "status"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "reserved"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "m_type"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "msg_box"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "reserved"

    aput-object v4, v2, v0

    .line 312
    .local v2, project:[Ljava/lang/String;
    const-string v3, "reserved = 1"

    .line 313
    .local v3, szWhere:Ljava/lang/String;
    const-string v5, "normalized_date ASC"

    .line 314
    .local v5, szSort:Ljava/lang/String;
    sget-object v0, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 317
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_1

    .line 318
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 319
    const-string v7, "sms"

    .line 320
    .local v7, szTypeInDB:Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 321
    .local v8, lMsgIdInDB:J
    const-wide/16 v14, 0x0

    .line 323
    .local v14, lDeliveryTimeInDB:J
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    const-wide/16 v8, 0x0

    .line 325
    const-wide/16 v14, 0x0

    .line 326
    const-string v0, "type"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_3

    const-string v7, "sms"

    .line 327
    :goto_1
    const-string v0, "_id"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 328
    const-string v0, "date"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 329
    const-wide/16 v10, 0x0

    .line 330
    .local v10, lDeliveryTime:J
    const-string v0, "mms"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 331
    const-wide/16 v17, 0x3e8

    mul-long v10, v14, v17

    .line 336
    :goto_2
    cmp-long v0, v10, p1

    if-lez v0, :cond_5

    .line 337
    sget-object v0, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mReservationManager:Lcom/android/mms/transaction/ReservationManager;

    if-nez v0, :cond_0

    .line 338
    sget-object v0, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mReservationManager:Lcom/android/mms/transaction/ReservationManager;

    .line 339
    :cond_0
    sget-object v6, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mReservationManager:Lcom/android/mms/transaction/ReservationManager;

    invoke-virtual/range {v6 .. v11}, Lcom/android/mms/transaction/ReservationManager;->setAlarm(Ljava/lang/String;JJ)V

    .line 340
    const-string v0, "MessageReservationSendReceiver"

    const-string v4, "setNextAlarm / setAlarm"

    invoke-static {v0, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v7           #szTypeInDB:Ljava/lang/String;
    .end local v8           #lMsgIdInDB:J
    .end local v10           #lDeliveryTime:J
    .end local v14           #lDeliveryTimeInDB:J
    :cond_1
    if-eqz v12, :cond_2

    .line 350
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 353
    :cond_2
    :goto_3
    return-void

    .line 326
    .restart local v7       #szTypeInDB:Ljava/lang/String;
    .restart local v8       #lMsgIdInDB:J
    .restart local v14       #lDeliveryTimeInDB:J
    :cond_3
    :try_start_1
    const-string v7, "mms"

    goto :goto_1

    .line 333
    .restart local v10       #lDeliveryTime:J
    :cond_4
    move-wide v10, v14

    goto :goto_2

    .line 323
    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 346
    .end local v7           #szTypeInDB:Ljava/lang/String;
    .end local v8           #lMsgIdInDB:J
    .end local v10           #lDeliveryTime:J
    .end local v14           #lDeliveryTimeInDB:J
    :catch_0
    move-exception v13

    .line 347
    .local v13, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MessageReservationSendReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendSameTimemessages()"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    if-eqz v12, :cond_2

    .line 350
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 349
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v12, :cond_6

    .line 350
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method


# virtual methods
.method public failSendMessageMMS(Landroid/net/Uri;J)Z
    .locals 18
    .parameter "messageUri"
    .parameter "messageId"

    .prologue
    .line 361
    const-string v1, "MessageReservationSendReceiver"

    const-string v2, "failSendMessageMMS()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    if-nez p1, :cond_0

    .line 363
    const/4 v1, 0x0

    .line 406
    :goto_0
    return v1

    .line 367
    :cond_0
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 368
    .local v4, values:Landroid/content/ContentValues;
    const-string v1, "resp_st"

    const/16 v2, 0x82

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    const-string v1, "msg_box"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    const-string v1, "read"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    const-string v1, "reserved"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    sget-object v1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    sget-object v1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 379
    new-instance v17, Landroid/content/ContentValues;

    const/4 v1, 0x2

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 380
    .local v17, valuesPending:Landroid/content/ContentValues;
    const-string v1, "err_type"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    const-string v1, "last_try"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 383
    sget-object v1, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v16

    .line 384
    .local v16, uriBuilder:Landroid/net/Uri$Builder;
    const-string v1, "protocol"

    const-string v2, "mms"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 385
    const-string v1, "message"

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 387
    const/4 v13, 0x0

    .line 389
    .local v13, cursorPending:Landroid/database/Cursor;
    :try_start_1
    sget-object v5, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 392
    if-eqz v13, :cond_1

    .line 393
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    const-string v1, "_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 395
    .local v12, columnIndex:I
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 397
    .local v14, id:J
    sget-object v5, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v8, v17

    invoke-static/range {v5 .. v10}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 402
    .end local v12           #columnIndex:I
    .end local v14           #id:J
    :cond_1
    if-eqz v13, :cond_2

    .line 403
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_2
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 374
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v13           #cursorPending:Landroid/database/Cursor;
    .end local v16           #uriBuilder:Landroid/net/Uri$Builder;
    .end local v17           #valuesPending:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    throw v1

    .line 402
    .restart local v4       #values:Landroid/content/ContentValues;
    .restart local v13       #cursorPending:Landroid/database/Cursor;
    .restart local v16       #uriBuilder:Landroid/net/Uri$Builder;
    .restart local v17       #valuesPending:Landroid/content/ContentValues;
    :catchall_1
    move-exception v1

    if-eqz v13, :cond_3

    .line 403
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    const-string v0, "MessageReservationSendReceiver"

    const-string v4, "onReceive()"

    invoke-static {v0, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-wide/16 v1, -0x1

    .line 40
    .local v1, baseTime:J
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, action:Ljava/lang/String;
    const-string v0, "MessageReservationSendReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive()- action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    if-eqz v6, :cond_1

    .line 44
    const-string v0, "com.android.mms.Intent.ACTION_SEND_RESERVATION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sput-object p1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    .line 46
    sget-object v0, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mReservationManager:Lcom/android/mms/transaction/ReservationManager;

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mReservationManager:Lcom/android/mms/transaction/ReservationManager;

    .line 49
    :cond_0
    const-string v0, "MsgSubType"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, szType:Ljava/lang/String;
    const-string v0, "MsgId"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 53
    .local v8, lMsgId:Ljava/lang/Long;
    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mReservationManager:Lcom/android/mms/transaction/ReservationManager;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/mms/transaction/ReservationManager;->cancelAlarm(Ljava/lang/String;J)V

    .line 54
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->sendMessage(Ljava/lang/String;J)J

    move-result-wide v1

    .line 55
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->sendSameTimeMessages(JLjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    invoke-direct {p0, v1, v2}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->setNextAlarm(J)V

    .line 63
    .end local v3           #szType:Ljava/lang/String;
    .end local v8           #lMsgId:Ljava/lang/Long;
    :cond_1
    :goto_0
    return-void

    .line 56
    .restart local v3       #szType:Ljava/lang/String;
    .restart local v8       #lMsgId:Ljava/lang/Long;
    :catch_0
    move-exception v7

    .line 57
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MessageReservationSendReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BroadcastReceiver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-direct {p0, v1, v2}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->setNextAlarm(J)V

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, v2}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->setNextAlarm(J)V

    throw v0
.end method
