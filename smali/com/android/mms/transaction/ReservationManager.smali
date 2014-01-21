.class public Lcom/android/mms/transaction/ReservationManager;
.super Ljava/lang/Object;
.source "ReservationManager.java"


# static fields
.field public static final ACTION_SEND_MSG_ID:Ljava/lang/String; = "MsgId"

.field public static final ACTION_SEND_MSG_TYPE:Ljava/lang/String; = "MsgSubType"

.field private static final ACTION_SEND_RESERVATION:Ljava/lang/String; = "com.android.mms.Intent.ACTION_SEND_RESERVATION"

.field private static final TAG:Ljava/lang/String; = "Mms/ReservationManager"

.field private static mAlarmManager:Landroid/app/AlarmManager;

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/mms/transaction/ReservationManager;


# instance fields
.field private mReservationBaseDeliveryTime:J

.field private mReservationBaseMessageID:J

.field private mReservationBaseMessageType:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private m_bAlarmSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/android/mms/transaction/ReservationManager;->sInstance:Lcom/android/mms/transaction/ReservationManager;

    .line 37
    sput-object v0, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    .line 38
    sput-object v0, Lcom/android/mms/transaction/ReservationManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const-wide/16 v0, -0x1

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide v0, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    .line 41
    iput-wide v0, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseDeliveryTime:J

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/ReservationManager;->m_bAlarmSet:Z

    .line 56
    const-string v0, "Mms/ReservationManager"

    const-string v1, "ReservationManager()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sput-object p1, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    .line 58
    sget-object v0, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/android/mms/transaction/ReservationManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 59
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    const-string v0, "Mms/ReservationManager"

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/android/mms/transaction/ReservationManager;->sInstance:Lcom/android/mms/transaction/ReservationManager;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/android/mms/transaction/ReservationManager;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/ReservationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/transaction/ReservationManager;->sInstance:Lcom/android/mms/transaction/ReservationManager;

    .line 70
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/ReservationManager;->sInstance:Lcom/android/mms/transaction/ReservationManager;

    return-object v0
.end method

.method private makeAlarmIntent(Ljava/lang/String;J)Landroid/app/PendingIntent;
    .locals 5
    .parameter "type"
    .parameter "msgId"

    .prologue
    .line 419
    const-string v2, "Mms/ReservationManager"

    const-string v3, "makeAlarmIntent()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.Intent.ACTION_SEND_RESERVATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "MsgSubType"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const-string v2, "MsgId"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 423
    sget-object v2, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 424
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private registerAlarm(Ljava/lang/String;JJ)V
    .locals 24
    .parameter "type"
    .parameter "messageId"
    .parameter "deliveryTime"

    .prologue
    .line 335
    const-string v2, "Mms/ReservationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerAlarm() - deliveryTime : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "complete-conversations"

    invoke-static {v2, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 339
    .local v23, uri:Landroid/net/Uri;
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v6, "limit"

    const-string v8, "all"

    invoke-virtual {v2, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 341
    .local v3, uriContent:Landroid/net/Uri;
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "date"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "type"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "status"

    aput-object v6, v4, v2

    const/4 v2, 0x4

    const-string v6, "reserved"

    aput-object v6, v4, v2

    const/4 v2, 0x5

    const-string v6, "m_type"

    aput-object v6, v4, v2

    const/4 v2, 0x6

    const-string v6, "msg_box"

    aput-object v6, v4, v2

    const/4 v2, 0x7

    const-string v6, "reserved"

    aput-object v6, v4, v2

    .line 351
    .local v4, project:[Ljava/lang/String;
    const-string v5, "reserved = 1"

    .line 352
    .local v5, szWhere:Ljava/lang/String;
    const-string v7, "normalized_date ASC"

    .line 353
    .local v7, szSort:Ljava/lang/String;
    sget-object v2, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 357
    .local v21, cursor:Landroid/database/Cursor;
    if-eqz v21, :cond_3

    .line 358
    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    .line 359
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 360
    .local v20, count:I
    const-string v2, "Mms/ReservationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerAlarm() - count = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    if-lez v20, :cond_3

    .line 362
    const-string v9, "sms"

    .line 363
    .local v9, szTypeInDB:Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 364
    .local v10, lMsgIdInDB:J
    const-string v2, "type"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_5

    const-string v9, "sms"

    .line 365
    :goto_0
    const-string v2, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 367
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transaction/ReservationManager;->m_bAlarmSet:Z

    if-eqz v2, :cond_6

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    cmp-long v2, v14, v10

    if-eqz v2, :cond_2

    .line 369
    :cond_0
    const-wide/16 v12, 0x0

    .line 370
    .local v12, lMsgReservedDate:J
    const-string v2, "date"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 371
    const-string v2, "mms"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    .line 374
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14, v15}, Lcom/android/mms/transaction/ReservationManager;->cancelAlarm(Ljava/lang/String;J)V

    move-object/from16 v8, p0

    .line 375
    invoke-virtual/range {v8 .. v13}, Lcom/android/mms/transaction/ReservationManager;->setAlarm(Ljava/lang/String;JJ)V

    .line 376
    const-string v2, "Mms/ReservationManager"

    const-string v6, "registerAlarm - m_bAlarmSet"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .end local v12           #lMsgReservedDate:J
    :cond_2
    :goto_1
    const-string v2, "Mms/ReservationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "szTypeInDB:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " lMsgIdInDB:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v9           #szTypeInDB:Ljava/lang/String;
    .end local v10           #lMsgIdInDB:J
    .end local v20           #count:I
    :cond_3
    if-eqz v21, :cond_4

    .line 390
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 393
    :cond_4
    :goto_2
    return-void

    .line 364
    .restart local v9       #szTypeInDB:Ljava/lang/String;
    .restart local v10       #lMsgIdInDB:J
    .restart local v20       #count:I
    :cond_5
    :try_start_1
    const-string v9, "mms"

    goto/16 :goto_0

    .line 379
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v11}, Lcom/android/mms/transaction/ReservationManager;->cancelAlarm(Ljava/lang/String;J)V

    move-object/from16 v14, p0

    move-object v15, v9

    move-wide/from16 v16, v10

    move-wide/from16 v18, p4

    .line 380
    invoke-virtual/range {v14 .. v19}, Lcom/android/mms/transaction/ReservationManager;->setAlarm(Ljava/lang/String;JJ)V

    .line 381
    const-string v2, "Mms/ReservationManager"

    const-string v6, "registerAlarm - else"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 386
    .end local v9           #szTypeInDB:Ljava/lang/String;
    .end local v10           #lMsgIdInDB:J
    .end local v20           #count:I
    :catch_0
    move-exception v22

    .line 387
    .local v22, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "Mms/ReservationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerAlarm()"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    if-eqz v21, :cond_4

    .line 390
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 389
    .end local v22           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v21, :cond_7

    .line 390
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method


# virtual methods
.method public addMms(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;J)J
    .locals 14
    .parameter "persister"
    .parameter "sendReq"
    .parameter "slideshow"
    .parameter "deliveryTime"

    .prologue
    .line 305
    const-string v1, "Mms/ReservationManager"

    const-string v2, "addMms()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-wide/16 v3, 0x0

    .line 308
    .local v3, lMsgId:J
    const-wide/16 v11, 0x1

    .line 312
    .local v11, setReserved:J
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v10

    .line 313
    .local v10, pb:Lcom/google/android/mms/pdu/PduBody;
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 314
    const-wide/16 v1, 0x3e8

    div-long v1, p4, v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 315
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Lcom/google/android/mms/pdu/SendReq;->setReserved(J)V

    .line 317
    sget-object v1, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v13

    .line 318
    .local v13, uri:Landroid/net/Uri;
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    .line 319
    if-eqz v13, :cond_0

    .line 320
    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 327
    :cond_0
    const-string v2, "mms"

    move-object v1, p0

    move-wide/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/transaction/ReservationManager;->registerAlarm(Ljava/lang/String;JJ)V

    move-wide v8, v3

    .line 328
    .end local v3           #lMsgId:J
    .end local v10           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v13           #uri:Landroid/net/Uri;
    .local v8, lMsgId:J
    :goto_0
    return-wide v8

    .line 322
    .end local v8           #lMsgId:J
    .restart local v3       #lMsgId:J
    :catch_0
    move-exception v7

    .line 323
    .local v7, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms/ReservationManager"

    const-string v2, "addMms() error"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v8, v3

    .line 324
    .end local v3           #lMsgId:J
    .restart local v8       #lMsgId:J
    goto :goto_0
.end method

.method public addSms(JLjava/lang/String;Ljava/lang/String;JZZ)J
    .locals 13
    .parameter "threadId"
    .parameter "semiSepRecipients"
    .parameter "smsContents"
    .parameter "deliveryTime"
    .parameter "deliveryReport"
    .parameter "readReport"

    .prologue
    .line 251
    const-string v1, "Mms/ReservationManager"

    const-string v2, "addSms()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-wide/16 v3, 0x0

    .line 255
    .local v3, lMsgId:J
    :try_start_0
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 256
    .local v12, values:Landroid/content/ContentValues;
    const-string v1, "thread_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 257
    const-string v1, "address"

    move-object/from16 v0, p3

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v1, "body"

    move-object/from16 v0, p4

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v1, "date"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 261
    const-string v1, "read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string v1, "reserved"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 264
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    const/4 v10, 0x0

    .line 266
    .local v10, svcCmd:I
    if-eqz p7, :cond_0

    .line 267
    or-int/lit8 v10, v10, 0x1

    .line 269
    :cond_0
    if-eqz p8, :cond_1

    .line 270
    or-int/lit8 v10, v10, 0x2

    .line 272
    :cond_1
    const-string v1, "svc_cmd"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    .end local v10           #svcCmd:I
    :cond_2
    :goto_0
    sget-object v1, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v5, v12}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 279
    .local v11, uri:Landroid/net/Uri;
    if-eqz v11, :cond_3

    .line 280
    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 289
    :cond_3
    const-string v2, "sms"

    move-object v1, p0

    move-wide/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/transaction/ReservationManager;->registerAlarm(Ljava/lang/String;JJ)V

    move-wide v8, v3

    .line 290
    .end local v3           #lMsgId:J
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    .local v8, lMsgId:J
    :goto_1
    return-wide v8

    .line 275
    .end local v8           #lMsgId:J
    .restart local v3       #lMsgId:J
    .restart local v12       #values:Landroid/content/ContentValues;
    :cond_4
    :try_start_1
    const-string v1, "status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 284
    .end local v12           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 285
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "Mms/ReservationManager"

    const-string v2, "addSms() error"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v8, v3

    .line 286
    .end local v3           #lMsgId:J
    .restart local v8       #lMsgId:J
    goto :goto_1
.end method

.method public cancelAlarm(Ljava/lang/String;J)V
    .locals 5
    .parameter "type"
    .parameter "msgId"

    .prologue
    const-wide/16 v3, -0x1

    .line 409
    const-string v1, "Mms/ReservationManager"

    const-string v2, "cancelAlarm()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/ReservationManager;->makeAlarmIntent(Ljava/lang/String;J)Landroid/app/PendingIntent;

    move-result-object v0

    .line 411
    .local v0, pendingIntent:Landroid/app/PendingIntent;
    sget-object v1, Lcom/android/mms/transaction/ReservationManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 412
    iput-wide v3, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    .line 413
    iput-wide v3, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseDeliveryTime:J

    .line 414
    const-string v1, ""

    iput-object v1, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    .line 415
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/transaction/ReservationManager;->m_bAlarmSet:Z

    .line 416
    return-void
.end method

.method public getReservedSendMessageCount()I
    .locals 11

    .prologue
    .line 140
    const-string v0, "Mms/ReservationManager"

    const-string v4, "getReservedSendMessageCount()"

    invoke-static {v0, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v8, 0x0

    .line 143
    .local v8, retMessageCount:I
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 144
    .local v9, uri:Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v10, "all"

    invoke-virtual {v0, v4, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 145
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

    .line 155
    .local v2, project:[Ljava/lang/String;
    const-string v3, "reserved = 1"

    .line 156
    .local v3, szWhere:Ljava/lang/String;
    const-string v5, "normalized_date ASC"

    .line 157
    .local v5, szSort:Ljava/lang/String;
    sget-object v0, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 160
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 161
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 169
    :cond_0
    if-eqz v6, :cond_1

    .line 170
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_1
    :goto_0
    const-string v0, "Mms/ReservationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getReservedSendMessageCount(): retMessageCount="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return v8

    .line 166
    :catch_0
    move-exception v7

    .line 167
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Mms/ReservationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "registerAlarm()"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    if-eqz v6, :cond_1

    .line 170
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 169
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 170
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getServiceState(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 428
    const/4 v1, 0x0

    .line 431
    .local v1, isSmscapable:Z
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/mms/transaction/ReservationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 432
    iget-object v2, p0, Lcom/android/mms/transaction/ReservationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 438
    :goto_0
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isKorOperator()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/android/mms/util/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    invoke-static {p1}, Lcom/android/mms/util/TelephonyUtils;->isImsRegistered(Landroid/content/Context;)Z

    .line 446
    :cond_0
    return v1

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Mms/ReservationManager"

    const-string v3, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 22

    .prologue
    .line 181
    const-string v3, "Mms/ReservationManager"

    const-string v7, "reset()"

    invoke-static {v3, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "complete-conversations"

    invoke-static {v3, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 184
    .local v19, uri:Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v7, "limit"

    const-string v9, "all"

    invoke-virtual {v3, v7, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 185
    .local v4, uriContent:Landroid/net/Uri;
    const/16 v3, 0x8

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    const-string v7, "date"

    aput-object v7, v5, v3

    const/4 v3, 0x2

    const-string v7, "type"

    aput-object v7, v5, v3

    const/4 v3, 0x3

    const-string v7, "status"

    aput-object v7, v5, v3

    const/4 v3, 0x4

    const-string v7, "reserved"

    aput-object v7, v5, v3

    const/4 v3, 0x5

    const-string v7, "m_type"

    aput-object v7, v5, v3

    const/4 v3, 0x6

    const-string v7, "msg_box"

    aput-object v7, v5, v3

    const/4 v3, 0x7

    const-string v7, "reserved"

    aput-object v7, v5, v3

    .line 195
    .local v5, project:[Ljava/lang/String;
    const-string v6, "reserved = 1"

    .line 196
    .local v6, szWhere:Ljava/lang/String;
    const-string v8, "normalized_date ASC"

    .line 197
    .local v8, szSort:Ljava/lang/String;
    sget-object v3, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 200
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz v15, :cond_2

    .line 201
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 202
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 203
    const-string v10, "sms"

    .line 204
    .local v10, szTypeInDB:Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 205
    .local v11, lMsgIdInDB:J
    const-wide/16 v17, 0x0

    .line 206
    .local v17, lDeliveryTimeInDB:J
    const-string v3, "type"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_4

    const-string v10, "sms"

    .line 207
    :goto_0
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 208
    const-string v3, "date"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 209
    const-wide/16 v13, 0x0

    .line 210
    .local v13, lDeliveryTime:J
    const-string v3, "mms"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 211
    const-wide/16 v20, 0x3e8

    mul-long v13, v17, v20

    .line 215
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/transaction/ReservationManager;->m_bAlarmSet:Z

    if-eqz v3, :cond_6

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    move-wide/from16 v20, v0

    cmp-long v3, v20, v11

    if-eqz v3, :cond_1

    .line 217
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/mms/transaction/ReservationManager;->cancelAlarm(Ljava/lang/String;J)V

    move-object/from16 v9, p0

    .line 218
    invoke-virtual/range {v9 .. v14}, Lcom/android/mms/transaction/ReservationManager;->setAlarm(Ljava/lang/String;JJ)V

    .line 219
    const-string v3, "Mms/ReservationManager"

    const-string v7, "reset - m_bAlarmSet"

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_1
    :goto_2
    const-string v3, "Mms/ReservationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "szTypeInDB:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " lMsgIdInDB:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v10           #szTypeInDB:Ljava/lang/String;
    .end local v11           #lMsgIdInDB:J
    .end local v13           #lDeliveryTime:J
    .end local v17           #lDeliveryTimeInDB:J
    :cond_2
    if-eqz v15, :cond_3

    .line 233
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_3
    :goto_3
    return-void

    .line 206
    .restart local v10       #szTypeInDB:Ljava/lang/String;
    .restart local v11       #lMsgIdInDB:J
    .restart local v17       #lDeliveryTimeInDB:J
    :cond_4
    :try_start_1
    const-string v10, "mms"

    goto/16 :goto_0

    .line 213
    .restart local v13       #lDeliveryTime:J
    :cond_5
    move-wide/from16 v13, v17

    goto :goto_1

    .line 222
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12}, Lcom/android/mms/transaction/ReservationManager;->cancelAlarm(Ljava/lang/String;J)V

    move-object/from16 v9, p0

    .line 223
    invoke-virtual/range {v9 .. v14}, Lcom/android/mms/transaction/ReservationManager;->setAlarm(Ljava/lang/String;JJ)V

    .line 224
    const-string v3, "Mms/ReservationManager"

    const-string v7, "reset - else"

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 229
    .end local v10           #szTypeInDB:Ljava/lang/String;
    .end local v11           #lMsgIdInDB:J
    .end local v13           #lDeliveryTime:J
    .end local v17           #lDeliveryTimeInDB:J
    :catch_0
    move-exception v16

    .line 230
    .local v16, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Mms/ReservationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "registerAlarm()"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    if-eqz v15, :cond_3

    .line 233
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 232
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_7

    .line 233
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3
.end method

.method public resetAfterConnected()V
    .locals 4

    .prologue
    .line 77
    const-string v2, "Mms/ReservationManager"

    const-string v3, "resetAfterConnected()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReservationManager;->getReservedSendMessageCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 98
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 84
    .local v0, bNetworkAvailable:Z
    const/4 v1, 0x0

    .line 86
    .local v1, bSmsAvailable:Z
    sget-object v2, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/util/NetworkConnectionUtils;->isMmsNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 87
    sget-object v2, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/ReservationManager;->getServiceState(Landroid/content/Context;)Z

    move-result v1

    .line 89
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReservationManager;->reset()V

    goto :goto_0

    .line 93
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/transaction/ReservationManager$1;

    invoke-direct {v3, p0}, Lcom/android/mms/transaction/ReservationManager$1;-><init>(Lcom/android/mms/transaction/ReservationManager;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public resetThreadAfterConnected()V
    .locals 6

    .prologue
    .line 104
    const-string v3, "Mms/ReservationManager"

    const-string v4, "resetThreadAfterConnected()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/16 v2, 0x14

    .line 106
    .local v2, iMaxLimit:I
    const/4 v1, 0x0

    .line 108
    .local v1, bSmsAvailable:Z
    const/16 v2, 0x14

    .line 109
    sget-object v3, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/ReservationManager;->getServiceState(Landroid/content/Context;)Z

    move-result v1

    .line 110
    :goto_0
    if-nez v1, :cond_0

    .line 111
    const-string v3, "Mms/ReservationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cntTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bSmsAvailable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    if-gez v2, :cond_2

    .line 120
    :cond_0
    const/16 v2, 0x14

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, bNetworkAvailable:Z
    :goto_1
    if-nez v0, :cond_1

    .line 123
    sget-object v3, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/util/NetworkConnectionUtils;->isMmsNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 124
    const-string v3, "Mms/ReservationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cntTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bNetworkAvailable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-gez v2, :cond_3

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReservationManager;->reset()V

    .line 133
    return-void

    .line 113
    .end local v0           #bNetworkAvailable:Z
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 115
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v3

    goto :goto_0

    .line 126
    .restart local v0       #bNetworkAvailable:Z
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 128
    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 129
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public setAlarm(Ljava/lang/String;JJ)V
    .locals 5
    .parameter "type"
    .parameter "msgId"
    .parameter "deliveryTime"

    .prologue
    .line 396
    const-string v1, "Mms/ReservationManager"

    const-string v2, "setAlarm()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v1, "Mms/ReservationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlarm() type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " deliveryTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currenttTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/ReservationManager;->makeAlarmIntent(Ljava/lang/String;J)Landroid/app/PendingIntent;

    move-result-object v0

    .line 401
    .local v0, pendingIntent:Landroid/app/PendingIntent;
    sget-object v1, Lcom/android/mms/transaction/ReservationManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p4, p5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 402
    iput-wide p2, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    .line 403
    iput-wide p4, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseDeliveryTime:J

    .line 404
    iput-object p1, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    .line 405
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/transaction/ReservationManager;->m_bAlarmSet:Z

    .line 406
    return-void
.end method
