.class public Lcom/android/mms/transaction/MmsMessageSender;
.super Ljava/lang/Object;
.source "MmsMessageSender.java"

# interfaces
.implements Lcom/android/mms/transaction/MessageSender;


# static fields
.field private static final DEFAULT_DELIVERY_REPORT_MODE:Z = false

.field private static final DEFAULT_EXPIRY_TIME:J = 0x93a80L

.field private static final DEFAULT_MESSAGE_CLASS:Ljava/lang/String; = "personal"

.field private static final DEFAULT_PRIORITY:I = 0x81

.field private static final DEFAULT_READ_REPORT_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms:transaction"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMessageSize:J

.field private final mMessageUri:Landroid/net/Uri;

.field private mPriority:I

.field private mPriorityLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 2
    .parameter "context"
    .parameter "location"
    .parameter "messageSize"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v0, 0x81

    iput v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mPriority:I

    .line 68
    iput-object p1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    .line 70
    iput-wide p3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageSize:J

    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null message URI."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JI)V
    .locals 0
    .parameter "context"
    .parameter "location"
    .parameter "messageSize"
    .parameter "priority"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 84
    iput p5, p0, Lcom/android/mms/transaction/MmsMessageSender;->mPriority:I

    .line 85
    return-void
.end method

.method public static sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .parameter "context"
    .parameter "to"
    .parameter "messageId"
    .parameter "status"

    .prologue
    .line 200
    const/4 v1, 0x1

    new-array v5, v1, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 201
    .local v5, sender:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v2, p1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v2, v5, v1

    .line 204
    :try_start_0
    new-instance v0, Lcom/google/android/mms/pdu/ReadRecInd;

    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v2, "insert-address-token"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0x12

    move/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/EncodedStringValue;[BII[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 211
    .local v0, readRec:Lcom/google/android/mms/pdu/ReadRecInd;
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    sget-object v8, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x1

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v10

    const/4 v11, 0x0

    move-object v7, v0

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    .line 213
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 221
    .end local v0           #readRec:Lcom/google/android/mms/pdu/ReadRecInd;
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v12

    .line 215
    .local v12, e:Lcom/google/android/mms/InvalidHeaderValueException;
    const-string v1, "Mms:transaction"

    const-string v2, "[MmsMessageSender] Invalide header value"

    invoke-static {v1, v2, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 216
    .end local v12           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_1
    move-exception v12

    .line 217
    .local v12, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms:transaction"

    const-string v2, "[MmsMessageSender] Persist message failed"

    invoke-static {v1, v2, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 218
    .end local v12           #e:Lcom/google/android/mms/MmsException;
    :catch_2
    move-exception v12

    .line 219
    .local v12, e:Ljava/lang/NullPointerException;
    const-string v1, "Mms:transaction"

    const-string v2, "[MmsMessageSender] Invalid message ID value"

    invoke-static {v1, v2, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static sendReadRec(Landroid/content/Context;Ljava/util/Map;I)V
    .locals 24
    .parameter "context"
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/data/ReadReportData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/data/ReadReportData;>;"
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v8

    .line 225
    .local v8, p:Lcom/google/android/mms/pdu/PduPersister;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 227
    .local v11, prefs:Landroid/content/SharedPreferences;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v15, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 230
    .local v15, sender:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 232
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/data/ReadReportData;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/data/ReadReportData;

    .line 233
    .local v13, readReport:Lcom/android/mms/data/ReadReportData;
    const/16 v20, 0x0

    new-instance v21, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {v13}, Lcom/android/mms/data/ReadReportData;->getRecvAddress()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v21, v15, v20

    .line 237
    new-instance v12, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v12}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 240
    .local v12, readRec:Lcom/google/android/mms/pdu/SendReq;
    const-string v20, "personal"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/google/android/mms/pdu/SendReq;->setMessageClass([B)V

    .line 241
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getExpiryTimeLong(Landroid/content/Context;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_0

    .line 242
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getExpiryTimeLong(Landroid/content/Context;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    .line 244
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 245
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getMmsPiority(Landroid/content/Context;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V

    .line 247
    :cond_1
    const/16 v20, 0x81

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    .line 248
    const/16 v20, 0x81

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    .line 249
    invoke-virtual {v12, v15}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 250
    const/16 v20, 0x80

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 252
    const/16 v20, 0x0

    invoke-virtual {v13}, Lcom/android/mms/data/ReadReportData;->getSubject()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/ReadReportData;->makeReadReportSubject(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 253
    .local v18, subject:Ljava/lang/String;
    new-instance v20, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 254
    const/16 v20, 0x0

    invoke-virtual {v13}, Lcom/android/mms/data/ReadReportData;->getRecvTime()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    invoke-virtual {v13}, Lcom/android/mms/data/ReadReportData;->getMmsSize()J

    move-result-wide v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/data/ReadReportData;->makeReadReport(Landroid/content/Context;IIJ)Ljava/lang/String;

    move-result-object v14

    .line 269
    .local v14, report:Ljava/lang/String;
    :goto_1
    new-instance v10, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v10}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 271
    .local v10, pduBody:Lcom/google/android/mms/pdu/PduBody;
    const-string v16, "<smil><head><layout><root-layout width=\"320px\" height=\"480px\"/><region id=\"Text\" left=\"0\" top=\"320\" width=\"320px\" height=\"160px\" fit=\"meet\"/></layout></head><body><par><text src=\"attach.txt\" region=\"Text\"/></par></body></smil>"

    .line 276
    .local v16, smilDoc:Ljava/lang/String;
    new-instance v17, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 277
    .local v17, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const-string v20, "smil.txt"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 278
    const-string v20, "smil.txt"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 279
    const-string v20, "application/smil"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 280
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 281
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 283
    new-instance v9, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v9}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 284
    .local v9, part:Lcom/google/android/mms/pdu/PduPart;
    const-string v20, "attach.txt"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 285
    const-string v20, "attach.txt"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 286
    const/16 v20, 0x6a

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 287
    const-string v20, "text/plain"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 288
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 289
    invoke-virtual {v10, v9}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 291
    invoke-virtual {v12, v10}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 294
    sget-object v20, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-virtual {v8, v12, v0}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v19

    .line 295
    .local v19, uri:Landroid/net/Uri;
    sget-object v20, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 298
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/data/ReadReportData;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v10           #pduBody:Lcom/google/android/mms/pdu/PduBody;
    .end local v12           #readRec:Lcom/google/android/mms/pdu/SendReq;
    .end local v13           #readReport:Lcom/android/mms/data/ReadReportData;
    .end local v14           #report:Ljava/lang/String;
    .end local v16           #smilDoc:Ljava/lang/String;
    .end local v17           #smilPart:Lcom/google/android/mms/pdu/PduPart;
    .end local v18           #subject:Ljava/lang/String;
    .end local v19           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    .line 299
    .local v5, e:Lcom/google/android/mms/InvalidHeaderValueException;
    const-string v20, "Mms:transaction"

    const-string v21, "[MmsMessageSender] Invalide header value"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    .end local v5           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :goto_2
    return-void

    .line 260
    .restart local v6       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/data/ReadReportData;>;"
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v12       #readRec:Lcom/google/android/mms/pdu/SendReq;
    .restart local v13       #readReport:Lcom/android/mms/data/ReadReportData;
    :cond_2
    const/16 v20, 0x1

    :try_start_1
    invoke-virtual {v13}, Lcom/android/mms/data/ReadReportData;->getSubject()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/ReadReportData;->makeReadReportSubject(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 261
    .restart local v18       #subject:Ljava/lang/String;
    new-instance v20, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 262
    const/16 v20, 0x1

    invoke-virtual {v13}, Lcom/android/mms/data/ReadReportData;->getRecvTime()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    invoke-virtual {v13}, Lcom/android/mms/data/ReadReportData;->getMmsSize()J

    move-result-wide v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/data/ReadReportData;->makeReadReport(Landroid/content/Context;IIJ)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #report:Ljava/lang/String;
    goto/16 :goto_1

    .line 297
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/data/ReadReportData;>;"
    .end local v12           #readRec:Lcom/google/android/mms/pdu/SendReq;
    .end local v13           #readReport:Lcom/android/mms/data/ReadReportData;
    .end local v14           #report:Ljava/lang/String;
    .end local v18           #subject:Ljava/lang/String;
    :cond_3
    new-instance v20, Landroid/content/Intent;

    const-class v21, Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 300
    .end local v7           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v5

    .line 301
    .local v5, e:Lcom/google/android/mms/MmsException;
    const-string v20, "Mms:transaction"

    const-string v21, "[MmsMessageSender] Persist message failed"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 302
    .end local v5           #e:Lcom/google/android/mms/MmsException;
    :catch_2
    move-exception v5

    .line 303
    .local v5, e:Ljava/lang/NullPointerException;
    const-string v20, "Mms:transaction"

    const-string v21, "[MmsMessageSender] Invalid message ID value"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private updatePreferencesHeaders(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 11
    .parameter "sendReq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0x0

    const/16 v4, 0x80

    const/4 v8, 0x0

    const/16 v5, 0x81

    .line 147
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 149
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    iget v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mPriorityLevel:I

    packed-switch v3, :pswitch_data_0

    .line 168
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsExpiryDate()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 169
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getExpiryTimeLong(Landroid/content/Context;)J

    move-result-wide v6

    cmp-long v3, v6, v9

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getExpiryTimeLong(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    .line 178
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v3

    if-nez v3, :cond_1

    .line 180
    const-string v3, "pref_key_mms_delivery_reports"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 182
    .local v0, dr:Z
    if-eqz v0, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    .line 185
    const-string v3, "pref_key_mms_read_reports"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 186
    .local v2, rr:Z
    if-eqz v2, :cond_7

    :goto_3
    invoke-virtual {p1, v4}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    .line 190
    .end local v0           #dr:Z
    .end local v2           #rr:Z
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDeliveryTime()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getMmsDeliveryTimeLong(Landroid/content/Context;)J

    move-result-wide v3

    cmp-long v3, v3, v9

    if-eqz v3, :cond_2

    .line 192
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getMmsDeliveryTimeLong(Landroid/content/Context;)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryTime(J)V

    .line 197
    :cond_2
    return-void

    .line 153
    :pswitch_0
    const-string v3, "pref_key_mms_priority"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V

    goto :goto_0

    .line 156
    :pswitch_1
    const-string v3, "pref_key_mms_priority"

    const/16 v6, 0x82

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V

    goto :goto_0

    .line 159
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsPriority()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 160
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getMmsPiority(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V

    goto :goto_0

    .line 163
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V

    goto :goto_0

    .line 173
    :cond_5
    const-wide/32 v6, 0x93a80

    invoke-virtual {p1, v6, v7}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    goto :goto_1

    .restart local v0       #dr:Z
    :cond_6
    move v3, v5

    .line 182
    goto :goto_2

    .restart local v2       #rr:Z
    :cond_7
    move v4, v5

    .line 186
    goto :goto_3

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public queueMessageForPending(J)Z
    .locals 1
    .parameter "threadId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(J)Z
    .locals 10
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v6, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    .line 90
    .local v3, p:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v6, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v4

    .line 92
    .local v4, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v6

    const/16 v7, 0x80

    if-eq v6, v7, :cond_0

    .line 93
    new-instance v6, Lcom/google/android/mms/MmsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object v5, v4

    .line 96
    check-cast v5, Lcom/google/android/mms/pdu/SendReq;

    .line 98
    .local v5, sendReq:Lcom/google/android/mms/pdu/SendReq;
    const/4 v1, 0x0

    .line 99
    .local v1, array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 101
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 102
    if-nez v1, :cond_1

    iget-object v6, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    if-eqz v6, :cond_1

    .line 103
    const-string v6, "Mms:transaction"

    const-string v7, "sendMessage() - sendReq.getTo() is null"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v6, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-static {v6, v7}, Lcom/android/mms/util/AddressUtils;->getToMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, address:[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v6, v0

    if-lez v6, :cond_3

    .line 106
    invoke-static {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 107
    .local v2, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_2

    .line 108
    invoke-virtual {v5, v2}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 121
    .end local v0           #address:[Ljava/lang/String;
    .end local v2           #encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1
    :goto_0
    invoke-direct {p0, v5}, Lcom/android/mms/transaction/MmsMessageSender;->updatePreferencesHeaders(Lcom/google/android/mms/pdu/SendReq;)V

    .line 124
    const-string v6, "personal"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/mms/pdu/SendReq;->setMessageClass([B)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 129
    iget-wide v6, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageSize:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/mms/pdu/SendReq;->setMessageSize(J)V

    .line 131
    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/mms/pdu/SendReq;->setReserved(J)V

    .line 133
    iget-object v6, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V

    .line 136
    iget-object v6, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    sget-object v7, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v6, v7}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    .line 139
    iget-object v6, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, p1, p2}, Lcom/android/mms/util/SendingProgressTokenManager;->put(Ljava/lang/Object;J)V

    .line 140
    iget-object v6, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 142
    const/4 v6, 0x1

    return v6

    .line 110
    .restart local v0       #address:[Ljava/lang/String;
    .restart local v2       #encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2
    const-string v6, "Mms:transaction"

    const-string v7, "sendMessage() - encodedNumbers is null "

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    .end local v2           #encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_3
    const-string v6, "Mms:transaction"

    const-string v7, "sendMessage() - address is null "

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPriorityLevel(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mPriorityLevel:I

    .line 78
    return-void
.end method
